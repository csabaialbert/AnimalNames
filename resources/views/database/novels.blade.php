@extends('template')

@section('content')
    <h2 class="text-3xl font-semibold text-center mb-8">All Novels</h2>
    <div class="grid xl:grid-cols-4 lg:grid-cols-3 md:grid-cols-2 sm:grid-cols-1 gap-4 space-y-4 md:space-y-0 mx-4">
        @unless (count($novels) > 0)
            <p>No novel found.</p>
        @else
            @foreach ($novels as $novel)
                <x-novel-card :novel="$novel" />
            @endforeach
        @endunless

    </div>
    <div class="mt-6 p-4 bg-cyan-50/[.40] hover:bg-cyan-200/[.40]">
        {{ $novels->onEachSide(1)->links() }}
    </div>
@endsection
