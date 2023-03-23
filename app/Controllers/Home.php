<?php

namespace App\Controllers;

class Home extends BaseController
{
    public function index()
    {
        return  view('/inc/header') . view('index') .  view('/inc/footer');
    }

    public function signup(){
        return  view('/inc/header') . view('signup') .  view('/inc/footer');
    }

}
