<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\EtudiantController;
use App\Http\Controllers\VilleController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
})->name('home');

// Route::get('etudiants', [EtudiantController::class, 'index'])->name('indexEtudiant');
// Route::get('etudiants/{etudiant}', [EtudiantController::class, 'show'])->name('showEtudiant');

Route::get('etudiants', [EtudiantController::class, 'index'])->name('etudiants');
Route::get('etudiant/{etudiant}', [EtudiantController::class, 'show'])->name('etudiant.show');

Route::get('etudiant-create', [EtudiantController::class, 'create'])->name('etudiant.create');
Route::post('etudiant-create', [EtudiantController::class, 'store'])->name('etudiant.store');

Route::get('etudiant-edit/{etudiant}', [EtudiantController::class, 'edit'])->name('etudiant.edit');
Route::put('etudiant-edit/{etudiant}', [EtudiantController::class, 'update'])->name('etudiant.update');

Route::delete('etudiant/{etudiant}', [EtudiantController::class, 'destroy'])->name('etudiant.delete');

Route::get('villes', [VilleController::class, 'index'])->name('indexVilles');
// Route::get('villes/{ville}', [VilleController::class, 'show']);

Route::get('query/{etudiant}', [EtudiantController::class, 'query'])->name('query');
