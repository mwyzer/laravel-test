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
            $table->float('R-SPH');
            $table->float('R-CYL');
            $table->float('R-AXIS');
            $table->float('R-ADD');
            $table->float('R-PRISM');
            $table->float('L-SPH');
            $table->float('L-CYL');
            $table->float('L-AXIS');
            $table->float('L-ADD');
            $table->float('L-PRISM');
            $table->enum('custom_value', ['normal', 'minus', 'buruk', 'cek klinik']);
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
