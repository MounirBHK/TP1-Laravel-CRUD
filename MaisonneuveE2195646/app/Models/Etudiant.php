<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Etudiant extends Model
{
    use HasFactory;

    // notre class Etudiant à des champs protecteds qui s'appellent fillable
    protected $fillable = ['nom' , 'adresse', 'phone', 'email', 'date_de_naissance', 'villeId'];


    // public function ville()
    // {
    //     return $this->belongsTo(Ville::class, 'ville_id', 'id')->withDefault([
    //         'name' => 'nom_ville',
    //     ]);
    // }
}
