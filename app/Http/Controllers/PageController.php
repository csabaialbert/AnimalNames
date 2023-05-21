<?php

namespace App\Http\Controllers;

use App\Models\Animal;
use App\Models\Connection;
use App\Models\Novel;
use Illuminate\Http\Request;

class PageController extends Controller
{
    public function home()
    {
        return view('home');
    }

    public function all()
    {
        return view('database.all', ['animals' => Animal::orderBy('aname')->paginate(32)]);
    }

    public function novels()
    {
        return view('database.novels', ['novels' => Novel::orderBy('title')->paginate(20)]);
    }

    public function species()
    {
        $animals = Animal::get();
        $grouped = $animals->groupBy('species');
        $species[] = '';
        foreach ($grouped as $value) {
            array_push($species, $value[0]->species);
        }

        sort($species);

        return view('database.species', ['species' => $species]);
    }

    public function specieList()
    {
        return view('database.specieList', ['animals' => Animal::get(), 'selectedSpecie' => $_POST['specie']]);
    }

    public function years()
    {
        $novels = Novel::get();
        $grouped = $novels->groupBy('pyear');
        $years[] = '';
        foreach ($grouped as $value) {
            array_push($years, $value[0]->pyear);
        }

        return view('database.years', ['years' => $years]);
    }

    public function yearList()
    {
        return view('database.yearList', ['novels' => Novel::get(), 'selectedYear' => $_POST['year']]);
    }

    public function animalShow(Animal $animal)
    {
        return view('database.animalShow', ['animal' => $animal]);
    }

    public function AnimalEdit(Animal $animal)
    {
        return view('database.animalEdit', ['animal' => $animal]);
    }

    public function update(Request $request, Animal $animal)
    {
        $formFields = $request->validate([
            'aname' => 'required',
            'species' => 'required',
        ]);

        $animal->update($formFields);

        return redirect('/database/all')->with('message', 'Animal updated successfully!');
    }

    public function novelShow(Novel $novel)
    {
        return view('database.novelShow', ['novel' => $novel]);
    }

    public function novelEdit(Novel $novel)
    {
        return view('database.novelEdit', ['novel' => $novel]);
    }

    public function updateNovel(Request $request, Novel $novel)
    {
        $formFields = $request->validate([
            'pyear' => 'required',
            'title' => 'required',
            'publisher' => 'required',
        ]);

        $novel->update($formFields);

        return redirect('/database/novels')->with('message', 'Novel updated successfully!');
    }

    public function createNovel()
    {
        return view('database.createNovel');
    }

    public function storeNovel(Request $request)
    {
        $formFields = $request->validate([
            'pyear' => 'required',
            'title' => 'required',
            'publisher' => 'required',
        ]);

        Novel::create($formFields);

        return redirect('/database/novels')->with('message', 'Novel created succesfully!');
    }

    public function deleteNovel(Novel $novel)
    {

        $novel->delete();

        return redirect('/database/novels')->with('message', 'Novel deleted succesfully!');
    }

    public function showBoth()
    {
        $connections = Connection::get();
        $val = [];
        foreach ($connections as $connection) {
            array_push($val, $connection->load('animal', 'novel'));
        }

        return view('database.showBoth', ['val' => $val]);
    }

    public function adminPanel()
    {
        return view('adminlte::page');
    }
}
