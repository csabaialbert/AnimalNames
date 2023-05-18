@extends('template')

@section('content')
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"
        integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
    <script src="{{ asset('js/form-validation.js') }}"></script>
    <div class="mb-8">
        <a href="{{ route('messages.index') }}" class="text-yellow-700">
            <i class="fa-solid fa-arrow-left"></i>
            Back to the Messageboard
        </a>
    </div>
    <div>
        @auth
            <form id="editMessage" method="POST" action="{{ route('messages.update', $message->id) }}">
                @csrf
                @method('PUT')

                <div class="grid md:grid-cols-2 md:gap-6">
                    <div class="relative z-0 w-full mb-6 group">
                        <input type="text" name="title" id="title" value="{{ old('title', $message->title) }}"
                            class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none dark:text-white dark:border-gray-600 dark:focus:border-purple-500 focus:outline-none focus:ring-0 focus:border-purple-600 peer"
                            placeholder=" " />
                        <label for="name"
                            class="peer-focus:font-medium absolute text-xl font-semibold text-black dark:text-gray-400 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:left-0 peer-focus:text-purple-600 peer-focus:dark:text-purple-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6">Title</label>
                        @error('name')
                            <p class="mt-2 text-sm text-red-600 dark:text-red-500" role="alert">
                                {{ $message }}
                            </p>
                        @enderror
                    </div>
                </div>
                <div
                    class="w-full mb-4 bg-opacity-80 border border-gray-200 rounded-lg bg-gray-50 dark:bg-gray-700 dark:border-gray-600">
                    <div class="px-4 py-2 bg-white rounded-t-lg dark:bg-gray-800">
                        <label for="message" class="sr-only">Your comment</label>
                        <textarea id="message" name="message" rows="4"
                            class="w-full px-0 text-sm text-gray-900 bg-white bg-opacity-80 border-0 dark:bg-gray-800 focus:ring-0 dark:text-white dark:placeholder-gray-400"
                            placeholder="Write a comment...">{{ old('message', $message->message) }}</textarea>
                    </div>
                </div>
                @error('message')
                    <p class="mt-2 text-sm text-red-600 dark:text-red-500" role="alert">
                        {{ $message }}
                    </p>
                @enderror
                <button type="submit" id="submitMessage"
                    class="text-white bg-purple-700 disabled:bg-gray-500 hover:bg-purple-800 focus:ring-4 focus:outline-none focus:ring-purple-300 font-medium rounded-lg text-sm w-full sm:w-auto px-5 py-2.5 text-center dark:bg-purple-600 dark:hover:bg-purple-700 dark:focus:ring-purple-800">Update
                    Message</button>
            </form>

            <form id="deleteMessage" method="POST" action="{{ route('messages.destroy', $message->id) }}">
                @csrf
                @method('DELETE')

                <button type="submit" id="deleteMessage"
                    class="text-white bg-red-700 disabled:bg-gray-500 hover:bg-red-800 focus:ring-4 focus:outline-none focus:ring-purple-300 font-medium rounded-lg text-sm w-full sm:w-auto px-5 py-2.5 text-center mt-2 dark:bg-red-600 dark:hover:bg-red-700 dark:focus:bg-red-800">Delete
                    Message</button>
            </form>
        @endauth

        @guest
            <p>To send a message, <a href="{{ route('login') }}">please log ing.</a></p>
        @endguest

    </div>
@endsection
