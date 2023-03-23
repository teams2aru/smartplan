<?php

namespace App\Controllers;

use App\Controllers\BaseController;

class DashController extends BaseController
{

    public function index()
    {
        $session = session();
        if ($session->get('isLoggedIn') && $session->get('role') == 'Admin') {

            return  view('/inc/appheader') . view('admindash') .  view('/inc/appfooter');

        } else if ($session->get('isLoggedIn') && $session->get('role') == 'rm') {

            return  view('/inc/appheader') . view('dashboard') .  view('/inc/appfooter');

        } else if ($session->get('isLoggedIn') && $session->get('role') == 'Investor') {

            return  view('/inc/appheader') . view('investordash') .  view('/inc/appfooter');

        } else if (!$session->get('isLoggedIn')) {
            
            return  view('/inc/header') . view('signin') .  view('/inc/footer');

        }
    }
}
