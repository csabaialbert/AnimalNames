<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Validation\Rule;

class AdminUserController extends Controller
{
    public function __construct()
    {
        $this->middleware('admin', ['except' => ['show']]);
    }

    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $users = User::orderBy('id', 'asc')->paginate(10);

        return view('users.index')->with('users', $users);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('users.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $userData = $request->validate([
            'name' => ['required', 'min:3'],
            'email' => ['required', 'email', Rule::unique('users', 'email')],
            'password' => ['required', 'min:6'],
            'role' => ['required', 'min:1', 'max:2'],
        ]);
        //hash password
        $userData['password'] = bcrypt($userData['password']);
        //create User
        $user = User::create($userData);

        if ($user) {
            return redirect()->route('adminusers.index');
        } else {
            return redirect()->route('adminusers.create');
        }
    }

    /**
     * Display the specified resource.
     */
    public function show(User $user)
    {
        // not implemented
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $user = User::findOrFail($id);
        if (Auth::user()->role < 2) {
            return abort(403);
        }

        return view('users.edit')->with('user', $user);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $user = User::findOrFail($id);
        if (Auth::user()->role < 2) {
            return abort(403);
        }
        $user->name = $request->name;
        $user->email = $request->email;
        if ($request->password) {
            $user->password = bcrypt($request->password);
        }
        $user->role = $request->role;
        $user->save();
        if ($user->save()) {
            return redirect()->route('adminusers.index');
        } else {
            return redirect()->route('users.edit');
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $user = User::findOrFail($id);
        if (Auth::user()->role < 2) {
            return abort(403);
        }
        $user->delete();

        return redirect()->route('adminusers.index');
    }
}
