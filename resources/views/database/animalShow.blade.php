@extends('template')

@section('content')
    <script>
        document.write('<a href="' + document.referrer +'" class="inline-block text-black ml-4 mb-4"><i class="fa-solid fa-arrow-left"></i> Back</a>')
    </script>
    <div class="mx-4">
        <x-card class="p-10">
            <div class="flex flex-col items-center justify-center text-center">
                <h3 class="text-2xl mb-2">Animal name: {{ $animal->aname }}</h3>
                <div class="text-xl font-bold mb-4">Animal specie: {{ $animal->species }}</div>
            </div>
        </x-card>
        <x-card class="mt-4 p-2 flex space-x-6">
            <a href="/database/animal/{{ $animal->id }}/edit">
                <i class="fa-solid fa-pencil"></i> Edit
            </a>
        </x-card>
    </div>
@endsection
