<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateHanZisTable extends Migration
{
    /**
     * Run the migrations.
     *s
     * @return void
     */
    public function up()
    {
        Schema::create('han_zis', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('name')->unique()->comment('简体字');
            $table->string('main_pronunciation')->comment('主要发音');
            $table->string('other_pronunciation')->nullable()->comment('其它发音');
            $table->text('oracle')->nullable()->comment('甲骨文');
            $table->text('bronze')->nullable()->comment('金文');
            $table->text('seal')->nullable()->comment('篆文');
            $table->text('lishu')->nullable()->comment('隶书');
            $table->text('kaishu')->nullable()->comment('楷书');
            $table->text('transformation')->nullable()->comment('异体字');   
            $table->text('original_meaning')->nullable()->comment('字源本义');         
            $table->text('interpretation')->nullable()->comment('字源释义');
            $table->unsignedInteger('liushu')->default(1)->comment('六书');
            $table->string('img')->nullable()->comment('图像');
            $table->unsignedInteger('category')->default(0)->comment('分类');
            $table->string('association')->nullable()->comment('关联汉字');            
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('han_zis');
    }
}
