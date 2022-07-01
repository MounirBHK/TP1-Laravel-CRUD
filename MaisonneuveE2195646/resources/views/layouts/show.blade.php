@extends('layouts.layout')
@section('title', 'Détails Étudiant')
@section('content')
    
    <!-- Page Header-->
    <header class="masthead" style="background-image: url('../assets/img/rec09.jpg')">
        <div class="container position-relative px-4 px-lg-5">
            <div class="row gx-4 gx-lg-5 justify-content-center">
                <div class="col-md-10 col-lg-8 col-xl-7">
                    <div class="site-heading">
                        <h1>Détails d'un Étudiant</h1>
                        <span class="subheading">Collège Maisonneuve</span>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- Main Content-->
    <!-- 
    {{$etudiant}}    
    -->
    <div class="container">
        <div class="row">
            <div class="col-8 text-start py-5">
                <h1 class="display-one">Détails de l'Étudiant </h1>
            </div>
            <div class="col-4 text-end py-5">
                <a href="{{ route('etudiants') }}" class="btn btn-outline-primary ">Retour à la liste des Étudiants</a>
            </div>
        </div>
        <hr>
        <div class="row">
            <div class="col-12 text-start">
                <div class="display-one">
                    <ul>
                        <li>Id : <span class="fw-bolder">{{$etudiant->id}}</span></li>
                        <li>Nom : <span class="fw-bolder">{{$etudiant->nom}}</span></li>
                        <li>Adresse : <span class="fw-bolder">{{$etudiant->adresse}}</span></li>
                        <li>Phone : <span class="fw-bolder">{{$etudiant->phone}}</span></li>
                        <li>Email : <span class="fw-bolder">{{$etudiant->email}}</span></li>
                        <li>Date de Naissance : <span class="fw-bolder">{{$etudiant->date_de_naissance}}</span></li>
                        <li>Ville : <span class="fw-bolder">{{$etudiant->ville}}</span></li>
                    </ul>
                </div>
            </div>
            <hr>
        </div>
        <div class="row">
            <div class="col-6 text-end py-5">
                <a href="{{ route('etudiant.edit',$etudiant->id) }}" class="btn btn-outline-success col-4  ">Modifier</a>
            </div>
            <div class="col-6 text-start py-5">
                <form method="POST">
                    @csrf
                    @method('DELETE')
                    <button class="btn btn-outline-danger col-4 ">Supprimer</button>
                </form>
            </div>
        </div>
    </div>
    
@endsection