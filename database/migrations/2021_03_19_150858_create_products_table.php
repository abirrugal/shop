<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up():void
    {
        Schema::create('products', function (Blueprint $table) {
            
            $table->increments('id');
            $table->unsignedInteger('category_id');
            $table->string('title',200);
            $table->string('slug', 200);
            $table->string('image', 200);
            $table->longText('description');
            $table->tinyInteger('in_stock')->default(1);
            $table->decimal('price', 8, 2);
            $table->decimal('sale_price', 8, 2)->nullable();
            $table->unsignedBigInteger('stock_amount')->default(0);
            $table->unsignedBigInteger('sale_amount')->default(0);
            $table->unsignedBigInteger('remaining_amount')->default(0);
            $table->tinyInteger('active')->default(1);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down():void
    {
        Schema::dropIfExists('products');
    }
}
