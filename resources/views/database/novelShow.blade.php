@extends('template')

@section('content')
    <script>
        document.write('<a href="' + document.referrer +'" class="inline-block text-black ml-4 mb-4"><i class="fa-solid fa-arrow-left"></i> Back</a>')
    </script>
    <div class="mx-4">
        <x-card class="p-10">
            <div class="flex flex-col items-center justify-center text-center">
                <h3 class="text-2xl mb-2">Novel title: {{ $novel->title }}</h3>
                <div class="text-xl font-bold mb-4">Publish year: {{ $novel->pyear }}</div>
                <div class="text-xl font-bold mb-4">Publisher: {{ $novel->publisher }}</div>
            </div>
        </x-card>
        <x-card class="mt-4 p-2 flex space-x-6">
            <a href="/database/novel/{{ $novel->id }}/edit">
                <i class="fa-solid fa-pencil"></i> Edit
            </a>
            <form method="POST" action="/database/novel/{{$novel->id}}">
                @csrf
                @method('DELETE')
                <button class="text-red-500"> <i class="fa-solid fa-trash"></i> Delete</button>
                </form>
        </x-card>
    </div>
@endsection
