@extends('template')

@section('content')
    <h2 class="text-3xl font-semibold text-center mb-8">All animals</h2>
    <div class="grid xl:grid-cols-4 lg:grid-cols-3 md:grid-cols-2 sm:grid-cols-1 gap-4 space-y-4 md:space-y-0 mx-4">
        @unless (count($animals) > 0)
            <p>No animal found.</p>
        @else
            @foreach ($animals as $animal)
                <x-animal-card :animal="$animal" />
            @endforeach
        @endunless

    </div>
    <div class="mt-6 p-4">
        {{ $animals->onEachSide(1)->links() }}
    </div>
@endsection
