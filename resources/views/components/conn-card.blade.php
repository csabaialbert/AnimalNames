@props(['item'])
<x-card>
    <div class="flex">
        <div>
            <div class="text-xl mb-4">Novel title: {{ $item->novel->title }}.</div>
            <div class="text-xl mb-4">Publish year: {{ $item->novel->pyear }}.</div>
            <div class="text-xl mb-4">Publisher: {{ $item->novel->publisher }}.</div>
            <div class="text-xl mb-4">Animal name: {{ $item->animal->aname }}.</div>
            <div class="text-xl mb-4">Species: {{ $item->animal->species }}.</div>
        </div>
    </div>
</x-card>
