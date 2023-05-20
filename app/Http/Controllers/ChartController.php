<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;

class ChartController extends Controller
{
    public function chart()
    {
        $animals = DB::table('animals')
            ->select('species', DB::raw('count(id) as animal_count'))
            ->groupBy('species')
            ->orderByDesc('animals.animal_count')
            ->havingRaw('count(id) >= ?', [3])
            ->get();

        return view('database.chart.chart', compact('animals'));
    }
}
