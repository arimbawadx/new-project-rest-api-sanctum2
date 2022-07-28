<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        try {
            if ($request->search) {
                $user = User::where('name', 'LIKE', '%' . $request->search . '%')->get();

                if ($user->count() != 0) {
                    return response()->json([
                        'success' => true,
                        'message' => 'success',
                        'data' => $user
                    ]);
                } else {
                    return response()->json([
                        'success' => false,
                        'message' => 'Data tidak ditemukan!',
                    ]);
                }
            } elseif ($request->role) {
                $user = User::where('role', $request->role)->get();

                if ($user->count() != 0) {
                    return response()->json([
                        'success' => true,
                        'message' => 'success',
                        'data' => $user
                    ]);
                } else {
                    return response()->json([
                        'success' => false,
                        'message' => 'Data tidak ditemukan!',
                    ]);
                }
            } else {
                $user = User::all();

                return response()->json([
                    'success' => true,
                    'message' => 'get data success',
                    'data' => $user
                ]);
            }
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => $e->getMessage()
            ], 401);
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        try {
            $validator = Validator::make($request->all(), [
                'name' => 'required',
                'email' => 'required|unique:users',
                'role' => 'required',
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
            $user->role = $request->role;
            $user->email = $request->email;
            $user->email_verified_at = date("Y-m-d H:i:s");
            $user->password = Hash::make($request->password);
            $user->save();

            return response()->json([
                'success' => true,
                'message' => 'success',
                'data' => $user
            ]);
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => $e->getMessage()
            ], 401);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        try {
            $user = User::find($id);

            if ($user) {
                return response()->json([
                    'success' => true,
                    'message' => 'success',
                    'data' => $user
                ]);
            } else {
                return response()->json([
                    'success' => false,
                    'message' => 'User tidak ditemukan'
                ]);
            }
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => $e->getMessage()
            ], 401);
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        try {
            $validator = Validator::make($request->all(), [
                'name' => 'required',
                'email' => 'required',
                'role' => 'required',
            ]);

            if ($validator->fails()) {
                return response()->json([
                    'success' => false,
                    'message' => 'error',
                    'note' => $validator->messages()
                ]);
            }

            $user = User::find($id);
            if ($user) {
                $user->name = $request->name;
                $user->role = $request->role;
                $user->email = $request->email;
                $user->save();

                return response()->json([
                    'success' => true,
                    'message' => 'success',
                    'data' => $user
                ]);
            } else {
                return response()->json([
                    'success' => false,
                    'message' => 'Id user tidak ditemukan!',
                ]);
            }
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => $e->getMessage()
            ], 401);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        try {
            $user = User::find($id);

            if ($user) {
                $user->delete();

                return response()->json([
                    'success' => true,
                    'message' => 'Data berhasil dihapus!'
                ]);
            } else {
                return response()->json([
                    'success' => false,
                    'message' => 'Data tidak ditemukan',
                ]);
            }
        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => $e->getMessage()
            ], 401);
        }
    }
}
