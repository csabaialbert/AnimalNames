<?php

namespace App\Http\Controllers;

use App\Models\Message;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class MessageController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth', ['except' => ['show']]);
    }

    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $messages = Message::orderBy('id', 'desc')->paginate(10);

        return view('database.messages.index')->with('messages', $messages);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('database.messages.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        // validate form data
        $this->validate($request, [
            'title' => ['required', 'min:3', 'max:60'],
            'message' => ['required', 'min:3', 'max:500'],
        ]);

        $message = new Message();
        $message->user()->associate(Auth::id());
        $message->title = $request->title;
        $message->message = $request->message;
        $message->save();

        if ($message->save()) {
            return redirect()->route('messages.index');
        } else {
            return redirect()->route('messages.create');
        }
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        // not implemented
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $message = Message::findOrFail($id);
        if ($message->user->id !== Auth::id() && Auth::user()->role < 2) {
            return abort(403);
        }

        return view('database.messages.edit')->with('message', $message);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $message = Message::findOrFail($id);
        if ($message->user->id !== Auth::id() && Auth::user()->role < 2) {
            return abort(403);
        }
        $message->title = $request->title;
        $message->message = $request->message;
        $message->save();

        if ($message->save()) {
            return redirect()->route('messages.index');
        } else {
            return redirect()->route('messages.edit');
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $message = Message::findOrFail($id);
        if ($message->user->id !== Auth::id() && Auth::user()->role < 2) {
            return abort(403);
        }
        $message->delete();

        return redirect()->route('messages.index');
    }
}
