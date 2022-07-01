<?php

namespace App\Http\Controllers;

use App\Models\Etudiant;
use App\Models\Ville;
use Illuminate\Http\Request;

class EtudiantController extends Controller
{
    /**
     * query afficher les etudiants avec leur nom de ville 
     *
     * @return void
     */
    public function query(Etudiant $etudiant){
        // inner join
        // $listeEtudiants = Etudiant::select('etudiants.*', 'villes.nom as ville')
        //                             ->JOIN('villes','villes.id','=','etudiants.villeId')
        //                             ->ORDERBY('ville')
        //                             ->get();

        // return $listeEtudiants;

        // $resultat = Etudiant::select('etudiants.*', 'villes.nom as ville')
        //                             ->JOIN('villes','villes.id','=','etudiants.villeId')
        //                             ->WHERE('etudiants.id', $etudiant->id ) 
        //                             ->get();

        // // return $resultat;
        // return view('layouts.index',['listeEtudiants' => $listeEtudiants, 'listeVlles' => $reponseModel de ville]);
        
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $listeEtudiants = Etudiant::all();
        return view('layouts.index',['listeEtudiants' => $listeEtudiants]);
    }


    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('layouts.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // return $request;
        $newEtudiant = Etudiant::create([
            'nom' => $request->nom,
            'adresse' => $request->adresse,
            'phone' => $request->phone,
            'email' => $request->email,
            'date_de_naissance' => $request->date_de_naissance,
            'villeId' => 1
        ]);

        return redirect(route('etudiant.show', $newEtudiant->id));
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Etudiant  $etudiant
     * @return \Illuminate\Http\Response
     */
    public function show(Etudiant $etudiant)
    {
        // return etudiant;
        // return view('layouts.show', ['etudiant' => $etudiant]);

        $etudiant = Etudiant::select('etudiants.*', 'villes.nom as ville')
                                    ->JOIN('villes','villes.id','=','etudiants.villeId')
                                    ->WHERE('etudiants.id', $etudiant->id ) 
                                    ->get();

        // return $etudiant;
        return view('layouts.show', ['etudiant' => $etudiant[0]]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Etudiant  $etudiant
     * @return \Illuminate\Http\Response
     */
    public function edit(Etudiant $etudiant)
    {

        $selectVilles = Ville::all(); 
        return view('layouts.edit', ['etudiant' => $etudiant, 'listeVilles' => $selectVilles]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Etudiant  $etudiant
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Etudiant $etudiant)
    {
        $etudiant->update([
            'nom' => $request->nom,
            'adresse' => $request->adresse,
            'phone' => $request->phone,
            'email' => $request->email,
            'date_de_naissance' => $request->date_de_naissance,
            'villeId' => $request->villeId
        ]);

        return redirect(route('etudiant.show', $etudiant->id));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Etudiant  $etudiant
     * @return \Illuminate\Http\Response
     */
    public function destroy(Etudiant $etudiant)
    {
        $etudiant->delete();
        return redirect(route('etudiants'));
    }
}
