@props(['animal'])
<x-card>
    <div class="flex">
        <div>
            <h3 class="text-2xl">
                <a href="/database/animal/{{ $animal->id }}">{{ $animal->aname }}</a>
            </h3>
            <div class="text-xl mb-4">Species: {{ $animal->species }}</div>
        </div>
    </div>
</x-card>
