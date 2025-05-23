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
        Schema::create('home_items', function (Blueprint $table) {
            $table->id();
            $table->text('destination_heading')->nullable();
            $table->text('destination_subheading')->nullable();
            $table->text('destination_status')->nullable();
            $table->text('featured_status')->nullable();
            $table->text('package_heading')->nullable();
            $table->text('package_subheading')->nullable();
            $table->text('package_status')->nullable();
            $table->text('testimonial_heading')->nullable();
            $table->text('testimonial_subheading')->nullable();
            $table->text('testimonial_background')->nullable();
            $table->text('testimonial_status')->nullable();
            $table->text('blog_heading')->nullable();
            $table->text('blog_subheading')->nullable();
            $table->text('blog_status')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('home_items');
    }
};
