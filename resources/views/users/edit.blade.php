@extends('template')

@section('content')
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"
        integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
    <div>
        <div class="mb-8">
            <a href="{{ route('adminusers.index') }}" class="text-yellow-700">
                <i class="fa-solid fa-arrow-left"></i>
                Back to the User board
            </a>
        </div>
        @auth
            @if (Auth::user()->role === 2)
                <form id="adminEditUser" method="POST" action="{{ route('adminusers.update', ['adminuser' => $user]) }}">
                    @csrf
                    @method('PUT')

                    <div class="grid md:grid-cols-2 md:gap-6 mb-6">
                        <div class="relative z-0 w-full mb-6 group">
                            <input type="text" name="name" id="name" value="{{ old('name', $user->name) }}"
                                class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none dark:text-white dark:border-gray-600 dark:focus:border-purple-500 focus:outline-none focus:ring-0 focus:border-purple-600 peer"
                                placeholder=" " />
                            <label for="name"
                                class="peer-focus:font-medium absolute text-xl font-semibold text-black dark:text-gray-400 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:left-0 peer-focus:text-purple-600 peer-focus:dark:text-purple-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6">Name</label>
                            @error('name')
                                <p class="mt-2 text-sm text-red-600 dark:text-red-500" role="alert">
                                    {{ $message }}
                                </p>
                            @enderror
                        </div>
                        <div class="relative z-0 w-full mb-6 group">
                            <input type="email" name="email" id="email" value="{{ old('email', $user->email) }}"
                                class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none dark:text-white dark:border-gray-600 dark:focus:border-purple-500 focus:outline-none focus:ring-0 focus:border-purple-600 peer"
                                placeholder=" " />
                            <label for="email"
                                class="peer-focus:font-medium absolute text-xl font-semibold text-black dark:text-gray-400 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:left-0 peer-focus:text-purple-600 peer-focus:dark:text-purple-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6">Email
                                address</label>
                            @error('email')
                                <p class="mt-2 text-sm text-red-600 dark:text-red-500" role="alert">
                                    {{ $message }}
                                </p>
                            @enderror
                        </div>
                    </div>
                    <div class="grid md:grid-cols-2 md:gap-6">
                        <div class="relative z-0 w-full my-7 group">
                            <input type="password" name="password" id="password" value="{{ old('password') }}"
                                class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none dark:text-white dark:border-gray-600 dark:focus:border-purple-500 focus:outline-none focus:ring-0 focus:border-purple-600 peer"
                                placeholder=" " />
                            <label for="password"
                                class="peer-focus:font-medium absolute text-xl font-semibold text-black dark:text-gray-400 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:left-0 peer-focus:text-purple-600 peer-focus:dark:text-purple-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6">Password</label>
                            <p id="helper-text-explanation" class="mt-2 text-sm text-gray-500 dark:text-gray-400">Leave empty if
                                password should not be changed. Any value written here will be the new password.</p>
                            @error('password')
                                <p class="mt-2 text-sm text-red-600 dark:text-red-500" role="alert">
                                    {{ $message }}
                                </p>
                            @enderror
                        </div>
                        <div class="relative z-0 w-full mb-6 group">
                            <label for="role" class="block mb-2 text-md font-bold text-gray-900 dark:text-white">Select
                                role</label>
                            <select name="role" id="role"
                                class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-purple-500 focus:border-purple-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-purple-500 dark:focus:border-purple-500">
                                <option value="1" {{ $user->role === 1 ? 'selected' : '' }}>User</option>
                                <option value="2" {{ $user->role === 2 ? 'selected' : '' }}>Admin</option>
                            </select>
                            @error('role')
                                <p class="mt-2 text-sm text-red-600 dark:text-red-500" role="alert">
                                    {{ $message }}
                                </p>
                            @enderror
                        </div>
                    </div>
                    <button type="submit" id="submitUser"
                        class="text-white bg-purple-700 disabled:bg-gray-500 hover:bg-purple-800 focus:ring-4 focus:outline-none focus:ring-purple-300 font-medium rounded-lg text-sm w-full sm:w-auto px-5 py-2.5 text-center dark:bg-purple-600 dark:hover:bg-purple-700 dark:focus:ring-purple-800">Save
                        User</button>
                </form>

                <form id="adminDeleteUser" method="POST" action="{{ route('adminusers.destroy', $user) }}">
                    @csrf
                    @method('DELETE')

                    <button type="submit" id="deleteUser"
                        class="text-white bg-red-700 disabled:bg-gray-500 hover:bg-red-800 focus:ring-4 focus:outline-none focus:ring-purple-300 font-medium rounded-lg text-sm w-full sm:w-auto px-5 py-2.5 text-center mt-2 dark:bg-red-600 dark:hover:bg-red-700 dark:focus:bg-red-800">Delete
                        User</button>
                </form>
            @else
                <p class="text-red-600">Insufficient user privileges.</p>
            @endif
        @endauth

        @guest
            <p class="text-red-600">Insufficient user privileges.</p>
        @endguest

    </div>
@endsection
