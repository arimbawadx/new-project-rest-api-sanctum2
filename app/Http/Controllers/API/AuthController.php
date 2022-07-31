<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Mail\sendEmailVerifikasi;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\Models\User;
use Illuminate\Support\Facades\Validator;
use Illuminate\Auth\Events\Registered;
use League\OAuth2\Client\Provider\Google;


class AuthController extends Controller
{
    public function VerifikasiReg(Request $request, $id)
    {
        $user = User::find($id);
        if ($user) {
            if (Hash::check($user->email, $request->e)) {
                if ($user->password == $request->p) {
                    $user->email_verified_at = date('Y-m-d h:i:s');
                    $user->save();
                    // return response()->json([
                    //     'message' => 'success',
                    //     'note' => 'berhasil verifikasi email'
                    // ]);
                    return view('emails.verified');
                } else {
                    return response()->json([
                        'message' => 'error',
                        'note' => 'Unauthorized'
                    ]);
                }
            } else {
                return response()->json([
                    'message' => 'error',
                    'note' => 'Unauthorized'
                ]);
            }
        } else {
            return response()->json([
                'message' => 'error',
                'note' => 'gagal verifikasi email'
            ]);
        }
    }

    public function register(Request $request)
    {
        try {
            $validator = Validator::make($request->all(), [
                'name' => 'required',
                'email' => 'required|unique:users',
                'password' => 'required',
            ]);

            if ($validator->fails()) {
                return response()->json([
                    'success' => false,
                    'message' => $validator->messages()
                ]);
            }


            $user = new User;
            $user->name = $request->name;
            $user->role = 'User';
            $user->email = $request->email;
            $user->password = Hash::make($request->password);
            $user->save();


            // event(new Registered($user));

            // // send email
            $emailDataVerifikasi = [
                'title' => 'Halo ' . $request->name,
                'id' => $user->id,
                'email' => Hash::make($user->email),
                'password' => $user->password,
                'ip' => $request->ip()
            ];

            \Mail::to($request->email)->send(new sendEmailVerifikasi($emailDataVerifikasi));

            return response()->json([
                'success' => true,
                'message' => 'Pendaftaran berhasil!',
                'data' => $user,
            ]);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => $e->getMessage()
            ], 401);
        }
    }

    public function login(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'email' => 'required|email',
            'password' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'message' => $validator->messages()
            ]);
        }

        $user = User::where('email', $request->email)->first();

        if (!$user || !Hash::check($request->password, $user->password)) {
            return response()->json([
                'success' => false,
                'message' => 'Unauthorized'
            ]);
        }

        $token = $user->createToken('token')->plainTextToken;

        return response()->json([
            'success' => true,
            'message' => 'Login Berhasil',
            'data' => $user,
            'token' => $token,
        ], 200);
    }

    public function logout(Request $request)
    {
        $user = $request->user();
        if ($user) {
            $user->currentAccessToken()->delete();

            return response()->json([
                'success' => true,
                'message' => 'Berhasil Logout',
            ], 200);
        } else {
            return response()->json([
                'success' => true,
                'message' => 'Gagal Logout',
            ], 401);
        }
    }

    public function GAuthExample()
    {
        // https://packagist.org/packages/league/oauth2-google
        $provider = new Google([
            'clientId'     => env('GOOGLE_CLIENT_ID', ''),
            'clientSecret' => env('GOOGLE_CLIENT_SECRET', ''),
            'redirectUri'  => env('GOOGLE_REDIRECT', ''),
        ]);

        if (!empty($_GET['error'])) {

            // Got an error, probably user denied access
            exit('Got error: ' . htmlspecialchars($_GET['error'], ENT_QUOTES, 'UTF-8'));
        } elseif (empty($_GET['code'])) {

            // If we don't have an authorization code then get one
            $authUrl = $provider->getAuthorizationUrl();
            header('Location: ' . $authUrl);
            exit;
        } elseif (empty($_GET['state'])) {

            // State is invalid, possible CSRF attack in progress
            unset($_SESSION['oauth2state']);
            exit('Invalid state');
        } else {

            // Try to get an access token (using the authorization code grant)
            $token = $provider->getAccessToken('authorization_code', [
                'code' => $_GET['code']
            ]);

            // Optional: Now you have a token you can look up a users profile data
            try {

                // We got an access token, let's now get the owner details
                $ownerDetails = $provider->getResourceOwner($token);
                // $name = $ownerDetails->name;
                // $email = $ownerDetails->email;
                // $email_verified = $ownerDetails->email_verified;
                // $picture = $ownerDetails->picture;

                echo $ownerDetails->getName() . "</br>";
                echo $ownerDetails->getEmail() . "</br>";
                echo "<img src='" . $ownerDetails->getAvatar() . "' ></br>";

                // Use these details to create a new profile
                // printf('Hello %s!', $ownerDetails->getFirstName());
                // dd($ownerDetails);
            } catch (Exception $e) {

                // Failed to get user details
                exit('Something went wrong: ' . $e->getMessage());
            }

            // Use this to interact with an API on the users behalf
            echo $token->getToken();

            // Use this to get a new access token if the old one expires
            echo $token->getRefreshToken();

            // Unix timestamp at which the access token expires
            echo $token->getExpires();
        }
    }
}
