<?php

use App\Http\Controllers\AdminUserController;
use App\Http\Controllers\ChartController;
use App\Http\Controllers\MessageController;
use App\Http\Controllers\PageController;
use App\Http\Controllers\UserController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', [PageController::class, 'home'])->name('/');
Route::get('/home', [PageController::class, 'home'])->name('home');

Route::get('/database/all', [PageController::class, 'all'])->name('all');
Route::get('/database/novels', [PageController::class, 'novels'])->name('novels');
Route::get('/database/novel/create', [PageController::class, 'createNovel'])->name('createNovel');
Route::post('/database/novel', [PageController::class, 'storeNovel'])->name('storeNovel');
Route::get('/database/novel/{novel}', [PageController::class, 'novelShow'])->name('novelShow');
Route::get('/database/novel/{novel}/edit', [PageController::class, 'novelEdit'])->name('novelEdit');
Route::post('/database/novel/{novel}', [PageController::class, 'updateNovel'])->name('updateNovel');
Route::delete('/database/novel/{novel}', [PageController::class, 'deleteNovel'])->name('deleteNovel');

Route::get('/database/species', [PageController::class, 'species'])->name('species');
Route::put('/database/specie/list', [PageController::class, 'specieList'])->name('specieList');

Route::get('/database/years', [PageController::class, 'years'])->name('years');
Route::put('/database/year/list', [PageController::class, 'yearList'])->name('yearList');

Route::get('/database/animal/{animal}', [PageController::class, 'animalShow'])->name('animalShow');
Route::get('/database/animal/{animal}/edit', [PageController::class, 'animalEdit'])->name('animalEdit');
Route::put('/database/animal/{animal}', [PageController::class, 'update'])->name('update');

Route::get('/database/showboth', [PageController::class, 'showBoth'])->name('showBoth');
Route::get('/chart', [ChartController::class, 'chart'])->name('chart');

Route::resource('/messages', MessageController::class)->missing(function (Request $request) {
    return Redirect::route('messages.index');
});

Route::resource('/adminusers', AdminUserController::class)->missing(function (Request $request) {
    return Redirect::route('adminusers.index');
})->middleware('admin');

//Show register create form
Route::get('/register', [UserController::class, 'create'])->middleware('guest');

//Create new user
Route::post('/users', [UserController::class, 'store'])->middleware('guest');

//log user out
Route::post('/logout', [UserController::class, 'logout'])->middleware('auth');

//Show login form
Route::get('/login', [UserController::class, 'login'])->name('login')->middleware('guest');

//Login user
Route::post('/users/authenticate', [UserController::class, 'authenticate']);
