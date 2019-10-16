<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\HanZi;

class HanZiController extends Controller
{
    public function detail()
    {
        $name = request('name');
        $data = HanZi::detail($name)->get()[0];
        return json_encode($data);
    }
}
