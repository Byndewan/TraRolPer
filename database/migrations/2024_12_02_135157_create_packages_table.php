<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('packages', function (Blueprint $table) {
            $table->id();
            $table->integer('destination_id');
            $table->string('name')->nullable();
            $table->string('slug')->nullable();
            $table->text('description')->nullable();
            $table->string('featured_photo')->nullable();
            $table->string('banner')->nullable();
            $table->text('map')->nullable();
            $table->float('price')->nullable();
            $table->text('old_price')->nullable();
            $table->integer('total_rating');
            $table->integer('total_score');
            $table->integer('min_person')->nullable();
            $table->integer('max_person')->nullable();
            $table->integer('include_hostel')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('packages');
    }
};
