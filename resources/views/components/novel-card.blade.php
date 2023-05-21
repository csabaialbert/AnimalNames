@props(['novel'])
<x-card>
    <div class="flex">
        <div>
            <h3 class="text-2xl font-bold">
                <a href="/database/novel/{{ $novel->id }}">{{ $novel->title }}</a>
            </h3>
            <div class="text-xl mb-4">Publish year: {{ $novel->pyear }}</div>
            <div class="text-xl mb-4">Publisher: {{ $novel->publisher }}</div>
        </div>
    </div>
</x-card>
