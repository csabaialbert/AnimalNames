@extends('template')

@section('content')
    <div class="relative overflow-x-auto shadow-md sm:rounded-lg">
        @auth
            @if (Auth::user()->role === 2)
                <div>
                    <button
                        class="mb-4 text-white bg-blue-800 disabled:bg-gray-500 hover:bg-blue-900 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm w-full sm:w-auto px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">
                        <a href="{{ route('adminusers.create') }}">Click here to create a new user.</a>
                    </button>
                </div>
                <table class="w-full text-sm text-left text-gray-500 dark:text-gray-400">
                    <thead class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
                        <tr>
                            <th scope="col" class="px-6 py-3">ID</th>
                            <th scope="col" class="px-6 py-3">Name</th>
                            <th scope="col" class="px-6 py-3">Email</th>
                            <th scope="col" class="px-6 py-3">Role</th>
                            <th scope="col" class="px-6 py-3">Registered on</th>
                            <th scope="col" class="px-6 py-3">Last update</th>
                            <th scope="col" class="px-6 py-3"></th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($users as $user)
                            <tr
                                class="bg-white border-b dark:bg-gray-800 dark:border-gray-700 hover:bg-gray-50 dark:hover:bg-gray-600">
                                <th scope="row"
                                    class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                                    {{ $user->id }}
                                </th>
                                <th scope="row"
                                    class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                                    {{ $user->name }}
                                </th>
                                <td class="px-6 py-4 font-semibold">
                                    {{ $user->email }}
                                </td>
                                <td class="px-6 py-4 font-semibold">
                                    {{ $user->role === 2 ? 'Admin' : 'User' }}
                                </td>
                                <td class="px-6 py-4 italic">
                                    {{ $user->created_at }}
                                </td>
                                <td class="px-6 py-4 italic">
                                    {{ $user->updated_at }}
                                </td>
                                <td>
                                    <a href="{{ route('adminusers.edit', ['adminuser' => $user]) }}">Edit</a>
                                </td>
                            </tr>
                        @endforeach

                        {{ $users->links() }}
                    </tbody>
                </table>
            @else
                <p class="text-red-600">Insufficient user privileges.</p>
            @endif
        @endauth

        @guest
            <p class="text-red-600">Insufficient user privileges.</p>
        @endguest
    </div>
@endsection
