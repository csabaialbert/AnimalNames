@extends('template')

@section('content')
    <x-card class="p-10 rounded max-w-lg mx-auto mt-24">
        <header class="text-center">
            <h2 class="text-3xl font-semibold text-center mb-8">
                Edit Novel
            </h2>
            <p class="mb-4">Edit: {{ $novel->title }}</p>
        </header>

        <form method="POST" action="/database/novel/{{ $novel->id }}" enctype="multipart/form-data">
            @csrf
            @method('PUT')
            <div class="mb-6">
                <label for="title" class="inline-block text-lg mb-2">Title</label>
                <input type="text" class="border border-gray-200 rounded p-2 w-full" name="title"
                    value="{{ $novel->title }}" />
                @error('title')
                    <p class="text-red-500 text-xs mt-1">{{ $message }}</p>
                @enderror
            </div>

            <div class="mb-6">
                <label for="pyear" class="inline-block text-lg mb-2">Year</label>
                <input type="number" class="border border-gray-200 rounded p-2 w-full" name="pyear"
                value="{{ $novel->pyear }}" />
                @error('pyear')
                    <p class="text-red-500 text-xs mt-1">{{ $message }}</p>
                @enderror
            </div>

            <div class="mb-6">
                <label for="publisher" class="inline-block text-lg mb-2">Publisher</label>
                <input type="text" class="border border-gray-200 rounded p-2 w-full" name="publisher"
                value="{{ $novel->publisher }}" />
                @error('publisher')
                    <p class="text-red-500 text-xs mt-1">{{ $message }}</p>
                @enderror
            </div>

            <div class="mb-6">
                <button class=" bg-laravel rounded py-2 px-4 hover:bg-black text-white">
                    Update novel
                </button>

                <a href="{{ route('novels') }}" class="text-black ml-4"> Back </a>
            </div>
        </form>
    </x-card>
@endsection
