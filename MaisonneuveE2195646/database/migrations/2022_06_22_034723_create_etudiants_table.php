<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateEtudiantsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('etudiants', function (Blueprint $table) {
            $table->id();
            $table->string('nom', 100); 
            $table->string('adresse', 300);
            $table->string('phone', 12)->unique();
            $table->string('email')->unique();
            $table->date('date_de_naissance');
            // $table->integer('villeId');
            // $table ->foreignId('villeId')->references('id')->on('villes');
            $table->foreignId('villeId')->constrained('villes');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('etudiants');
    }
}
