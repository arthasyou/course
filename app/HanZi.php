<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class HanZi extends Model
{
    public function scopeDetail ($query, $name) {
        $query->join('liu_shus', 'liushu', 'liu_shus.id')
        ->selectRaw("
            han_zis.name as name, main_pronunciation, other_pronunciation,
            oracle, bronze, seal, lishu, kaishu,
            transformation, original_meaning, interpretation,
            liu_shus.name as liushu, img, association, simplified
        ")
        ->where('han_zis.name', $name);
    }
}
