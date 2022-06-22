<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Ville;

class EtudiantFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'nom' => $this->faker->name(),
            'adresse' => $this->faker->sentence,
            'phone' => $this->faker->numerify('###-###-####'),
            'email' => $this->faker->unique()->safeEmail(),
            'date_de_naissance' => $this->faker->dateTimeBetween($startDate = '-80 years', $endDate = 'now', $timezone = null),
            'villeId' => Ville::factory()
        ];
    }
}
