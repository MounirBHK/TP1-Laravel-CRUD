@extends('layouts.layout')
@section('title', 'Nouvel Étudiant')
@section('content')
    <!-- Page Header-->
    <header class="masthead" style="background-image: url('assets/img/ajouter.jpg')">
        <div class="container position-relative px-4 px-lg-5">
            <div class="row gx-4 gx-lg-5 justify-content-center">
                <div class="col-md-10 col-lg-8 col-xl-7">
                    <div class="site-heading">
                        <h1>Ajouter un Étudiant</h1>
                        <span class="subheading">Collège Maisonneuve</span>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- Main Content-->

   
    <div class="container">
        <div class="row">
            <div class="col-12 pt-2">
                <div class="col-8 text-start pb-5">
                    <h1 class="display-one">Ajouter un nouvel Étudiant</h1>
                </div>
                <div class="card my-5">
                    <div class="card-header">
                        Nouvel Étudiant
                    </div>
                    <div class="card-body">
                        <form method="post">
                            @csrf
                            <div class="row">
                                <div class="control-group">
                                    <label for="nom">Nom</label>
                                    <input type="text" name="nom" id="nom" class="form-control mt-2">
                                </div>
                                <div class="control-group">
                                    <label for="adresse">Adresse</label>
                                    <textarea name="adresse" id="adresse" class="form-control mt-2"></textarea> 
                                </div>
                                <div class="control-group">
                                    <label for="phone">Phone</label>
                                    <input type="tel" name="phone" id="phone" class="form-control mt-2">
                                </div>
                                <div class="control-group">
                                    <label for="email">Email</label>
                                    <input type="email" name="email" id="email" class="form-control mt-2">
                                </div>
                                <div class="control-group">
                                    <label for="date_de_naissance">Date de naissance</label>
                                    <input type="date" name="date_de_naissance" id="date_de_naissance" class="form-control mt-2">
                                </div>
                                
                                <div class="control-group d-grid py-3">
                                    <input type="submit" class="btn btn-success mt-2" value="Envoyer">
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    
    

@endsection