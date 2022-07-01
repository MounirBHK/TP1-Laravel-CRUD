@extends('layouts.layout')
@section('title', 'Welcome')
@section('content')

    <!-- Page Header-->
    <header class="masthead" style="background-image: url('assets/img/home-bg.jpg')">
        <div class="container position-relative px-4 px-lg-5">
            <div class="row gx-4 gx-lg-5 justify-content-center">
                <div class="col-md-10 col-lg-8 col-xl-7">
                    <div class="site-heading">
                        <h1>Plateforme Gestion des Étudiants</h1>
                        <span class="subheading">Collège Maisonneuve</span>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- Main Content-->

    

    <div class="container">
        <div class="row">
            <div class="col-12 text-center py-5">
                <h1 class="display-one">Bienvenue sur la plateforme de gestion des étudiants du collège Maisonneuve</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <hr>
            </div>
        </div>
        <div class="row">
            <div class="col-12 text-center py-5 ">
                <a href="{{ route('etudiants') }}" class="btn btn-outline-primary ">Afficher la liste des Étudiants</a>
            </div>
        </div>
    </div>


@endsection