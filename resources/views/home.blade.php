@extends('template')

@section('content')
    <div class="container">
        <h2 class="text-3xl font-semibold text-center mb-8">Welcome to Animal Names App!</h2>
        <div class="grid lg:grid-cols-2">
            <div class="my-4 lg:text-left text-center">
                <p class="font-semibold">This application is based on Istvan Fekete's novels.</p>
                <p>
                    István Fekete’s animal novels are popular works of children’s literature. 
                    These books bring nature closer to the reader, they introduce the life of animals to young readers, 
                    but some also demonstrate human traits and relationships on the symbolical level.
                </p>
                <p>
                    The animal names invented by István Fekete, most of which appear in his novels as well,
                     are available in the files provided. The source files contain the name and the species of the animals and the
                     title of the novels, the year of their first publishing and the name of the publishing company.
                </p>
            </div>
        </div>
    </div>
@endsection
