<?php

namespace App\Controllers;
use  App\Models\UserModel;

use App\Controllers\BaseController;

class LoginController extends BaseController
{
    //open the login file
    public function index()
    {
        helper(['form']);
        return  view('/inc/header') . view('signin') .  view('/inc/footer');
    }

    public function signup()
    {
        //
    }
    //save the data from signup form
    public function save(){
        helper(['form']);
        $userModel = new UserModel();
        $data = [
            'fullName' => $this->request->getVar('full_name'),
            'username' => $this->request->getVar('username'),
            'userphone' => $this->request->getVar('phoneNo'),
            'useremail' => $this->request->getVar('email'),
            'address' => $this->request->getVar('address'),
            'gender' => $this->request->getVar('gender'),
            'role' => $this->request->getVar('role'),
            'userpassword' => password_hash($this->request->getVar('password'), PASSWORD_DEFAULT),
            
        ];
        
        $userModel->insert($data);
        return $this->response->redirect('/signin');
    
        
    }
    //this is the login function
    public function login()
    {
        $session = session();
        $userModel = new UserModel();
        $email = $this->request->getVar('useremail');
        $password = $this->request->getVar('pass');

        $data = $userModel->where('useremail', $email)->first();

        if ($data) {
            $pass = $data['userpassword'];
            $authenticatePassword = password_verify($password, $pass);
            if ($authenticatePassword) {
                $ses_data = [
                    'user_id' => $data['id'],
                    'fullName' => $data['fullName'],
                    'role' => $data['role'],
                    'isLoggedIn' => TRUE
                ];
                $session->set($ses_data);
                
                return $this->response->redirect('/dashboard');
            } else {
                
                $session->setFlashdata('msg', 'Password is incorrect.');
                
                return $this->response->redirect('/signin');
            }
        } else {
            
            $session->setFlashdata('msg', $email);
            
            return $this->response->redirect('/signin');
        }
    }

    public function logout()
    {
        $session = session();
        $session->destroy();
        return  view('/inc/header') . view('signin') .  view('/inc/footer');
        
    }
}
