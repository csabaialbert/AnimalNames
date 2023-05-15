@extends('template')

@section('content')
    <x-card class="p-10 rounded max-w-lg mx-auto mt-24">
        <header class="text-center">
            <h2 class="text-3xl font-semibold text-center mb-8">
                Edit Animal
            </h2>
            <p class="mb-4">Edit: {{ $animal->aname }}</p>
        </header>

        <form method="POST" action="/database/animal/{{ $animal->id }}" enctype="multipart/form-data">
            @csrf
            @method('PUT')
            <div class="mb-6">
                <label for="aname" class="inline-block text-lg mb-2">Animal Name</label>
                <input type="text" class="border border-gray-200 rounded p-2 w-full" name="aname"
                    value="{{ $animal->aname }}" />
                @error('aname')
                    <p class="text-red-500 text-xs mt-1">{{ $message }}</p>
                @enderror
            </div>

            <div class="mb-6">
                <label for="species" class="inline-block text-lg mb-2">Species</label>
                <input type="text" class="border border-gray-200 rounded p-2 w-full" name="species"
                value="{{ $animal->species }}" />
                @error('species')
                    <p class="text-red-500 text-xs mt-1">{{ $message }}</p>
                @enderror
            </div>
            <div class="mb-6">
                <button class=" bg-laravel rounded py-2 px-4 hover:bg-black text-white">
                    Update animal
                </button>

                <a href="{{ route('all') }}" class="text-black ml-4"> Back </a>
            </div>
        </form>
    </x-card>
@endsection
