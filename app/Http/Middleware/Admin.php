<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class Admin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next)
    {
        // check session
        if ($request->user()->role != "Admin") {
            return response()->json([
                'message'=>'akses ditolak'
            ]);
        }else{
            $idUser = $request->user()->id;
            $Admin = \App\Models\User::where('id', $idUser)->first();
            if (!$Admin->id) {
                return response()->json([
                    'message'=>'akses ditolak'
                ]);
            }
            return $next($request);
        }

    }
}
