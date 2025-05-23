<?php

namespace Database\Seeders;

use App\Models\User;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // User::factory(10)->create();

        // $this->call([AdminSeeder::class]);
        // $this->call([WelcomeItemSeeder::class]);
        // $this->call([CounterItemSeeder::class]);
        // $this->call([HomeItemSeeder::class]);
        // $this->call([AboutItemSeeder::class]);
        // $this->call([ContactItemSeeder::class]);
        // $this->call([TermPrivacyItemSeeder::class]);
        $this->call([SettingSeeder::class]);

        // User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);
    }
}
