@extends('template')

@section('content')
    <h2 class="text-3xl font-semibold text-center mb-8">The selected publishing year is: {{ $selectedYear }}</h2>
    <div class="grid xl:grid-cols-4 lg:grid-cols-3 md:grid-cols-2 sm:grid-cols-1 gap-4 space-y-4 md:space-y-0 mx-4">
        @foreach ($novels as $novel)
            @if ($novel->pyear == $selectedYear)
                <x-novel-card :novel="$novel" />
            @endif
        @endforeach
    </div>
@endsection
