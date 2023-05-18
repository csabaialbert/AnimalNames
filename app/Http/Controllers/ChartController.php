<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;

class ChartController extends Controller
{
    public function chart()
    {
        $animals = DB::table('animals')
            ->select(DB::raw('species, count(id) as animal_count'))
            ->groupBy('species')
            ->orderByDesc('animal_count')
            ->having('animal_count', '>=', 3)
            ->get();

        return view('database.chart.chart', compact('animals'));
    }
}
