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
        Schema::create('connecting', function (Blueprint $table) {
            $table->foreignId('animalid')->constrained('animals', 'id')->onUpdate('cascade')->onDelete('cascade');
            $table->foreignId('novelid')->constrained('novels', 'id')->onUpdate('cascade')->onDelete('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('connecting');
    }
};
