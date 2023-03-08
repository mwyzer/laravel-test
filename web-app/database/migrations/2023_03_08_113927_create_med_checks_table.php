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
        Schema::create('med_checks', function (Blueprint $table) {
            $table->increments('id');
            $table->decimal('tinggi_badan', 3, 2);
            $table->decimal('berat_badan', 3, 2);
            $table->float('data_mata_kanan');
            $table->float('data_mata_kiri');
            $table->enum('custom_value', ['normal', 'minus', 'plus', 'silindris']);
            $table->text('gigi_mulut');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('med_checks');
    }
};
