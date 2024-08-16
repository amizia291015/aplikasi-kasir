<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\RedirectResponse;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Route;

class ProfileController extends Controller
{
    public function edit($id)
    {
        $user = User::findOrFail($id);

        return view('user.profile', compact('user'));
    }

    public function update(Request $request, $id): RedirectResponse
    {
        $user = User::findOrFail($id);

        try {
            $data = [
                'nama' => $request->nama,
                'email' => $request->email,
            ];

            if ($request->hasFile('foto')) {
                $foto = $request->file('foto');
                $data['foto'] = $foto->hashName();
                Storage::disk('public')->put('avatars/' . $data['foto'], file_get_contents($foto));
            }

            if ($request->filled('password')) {
                $data['password'] = Hash::make($request->password);
            }

            $user->update($data);

            return redirect('/' . Auth::user()->level . '/profile' . '/' . $id)->with('sukses', 'Data Berhasil di Edit');
        } catch (\Exception $e) {
            return redirect('/' . Auth::user()->level . '/profile' . '/' . $id)->with('gagal', 'Data Tidak Berhasil di Edit. Pesan Kesalahan: ' . $e->getMessage());
        }
    }
}