@extends('template')

@section('content')
    <div class="flex justify-center items-center">Most frequently used animal species in István Fekete's novels</div>
    <div class="w-1/2 block mx-auto my-0">
        <canvas id="myChart"></canvas>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

    <script>
        const ctx = document.getElementById('myChart').getContext('2d');
        var animals = @json($animals);
        var animalLabels = [];
        var animalCount = [];

        animals.forEach(animal => {
            animalLabels.push(animal.species.replace('\n', ''));
            animalCount.push(animal.animal_count);
        });

        const data = {
            labels: animalLabels,
            datasets: [{
                label: 'No. of characters of this species',
                data: animalCount,
                hoverOffset: 4,
            }],
        };

        const config = {
            type: 'doughnut',
            data: data,
        };

        var myChart = new Chart(ctx, config);
    </script>
@endsection
