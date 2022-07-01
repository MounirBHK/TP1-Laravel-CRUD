@extends('layouts.layout')
@section('title', 'Modifier Étudiant')
@section('content')
    <!-- Page Header-->
    <header class="masthead" style="background-image: url('../assets/img/img0550.jpg')">
        <div class="container position-relative px-4 px-lg-5">
            <div class="row gx-4 gx-lg-5 justify-content-center">
                <div class="col-md-10 col-lg-8 col-xl-7">
                    <div class="site-heading">
                        <h1>Modifier Étudiant </h1>
                        <span class="subheading">Collège Maisonneuve</span>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- Main Content-->

    <!--
    {{ $listeVilles }}
    {{ $etudiant }}
    -->


    

    <div class="container">
        <div class="row">
            <div class="col-12 pt-2">
                <div class="col-8 text-start pb-5">
                    <h1 class="display-one">Modifier l'Étudiant n° {{$etudiant->id}}</h1>
                </div>
                <div class="card my-5">
                    <div class="card-header">
                        Modification de l'Étudiant
                    </div>
                    <div class="card-body">
                        <form method="post">
                            @csrf
                            @method('PUT')
                            <div class="row">
                                <div class="control-group">
                                    <label for="nom" class="pt-3">Nom</label>
                                    <input type="text" name="nom" id="nom" class="form-control mt-2" value="{{$etudiant->nom}}">
                                </div>
                                <div class="control-group">
                                    <label for="adresse" class="pt-3">Adresse</label>
                                    <textarea name="adresse" id="adresse" class="form-control mt-2">{{$etudiant->adresse}}</textarea> 
                                </div>
                                <div class="control-group">
                                    <label for="phone" class="pt-3">Phone</label>
                                    <input type="tel" name="phone" id="phone" class="form-control mt-2" value="{{$etudiant->phone}}">
                                </div>
                                <div class="control-group">
                                    <label for="email" class="pt-3">Email</label>
                                    <input type="email" name="email" id="email" class="form-control mt-2" value="{{$etudiant->email}}">
                                </div>
                                <div class="control-group">
                                    <label for="date_de_naissance" class="pt-3">Date de naissance</label>
                                    <input type="date" name="date_de_naissance" id="date_de_naissance" class="form-control mt-2" value="{{$etudiant->date_de_naissance}}">
                                </div>
                                
                                <div class="control-group">
                                    <label for="villeiD" class="pt-3">Ville</label>

                                    <select name="villeId">
                                    @foreach ($listeVilles as $ville)
                                        <option value="{{ $ville->id }}"
                                        @if ($ville->id == $etudiant->villeId)
                                        
                                            selected="selected"
                                        
                                        @endif
                                        >{{ $ville->id }} - {{ $ville->nom }}</option>
                                    @endforeach
                                    </select>
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