@extends('template')

@section('content')
<div class="relative overflow-x-auto shadow-md sm:rounded-lg">
    <table class="w-full text-sm text-left text-gray-500 dark:text-gray-400">
        <thead class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
            <tr>
                <th scope="col" class="px-6 py-3">Name</th>
                <th scope="col" class="px-6 py-3">Title</th>
                <th scope="col" class="px-6 py-3">Date</th>
                <th scope="col" class="px-6 py-3">Message</th>
                <th scope="col" class="px-6 py-3"></th>
            </tr>
        </thead>
        <tbody>
            @foreach ($messages as $msg)
                <tr
                    class="bg-white border-b dark:bg-gray-800 dark:border-gray-700 hover:bg-gray-50 dark:hover:bg-gray-600">
                    <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                        {{ $msg->user->name }}
                    </th>
                    <td class="px-6 py-4 font-semibold">
                        {{ $msg->title }}
                    </td>
                    <td class="px-6 py-4 italic">
                        {{ $msg->created_at->diffForHumans() }}
                        @if ($msg->updated_at->diffInSeconds($msg->created_at) > 0)
                            <br><small><i>Updated {{ $msg->updated_at->diffForHumans() }}</i></small>
                        @endif
                    </td>
                    <td class="px-6 py-4">
                        {{ $msg->message }}
                    </td>
                    <td>
                        @auth
                            @if (Auth::user()->role === 2 || $msg->user_id === auth()->id())
                                <a href="{{ route('messages.edit', $msg->id) }}">Edit</a>
                            @endif
                        @endauth
                    </td>
                </tr>
            @endforeach

            {{ $messages->links() }}
        </tbody>
    </table>
</div>
@endsection
