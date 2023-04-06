<?php

namespace App\Controllers;
use  App\Models\UserModel;

use App\Controllers\BaseController;

class LoginController extends BaseController
{
    public function index()
    {
        helper(['form']);
        return  view('/inc/header') . view('signin') .  view('/inc/footer');
    }

    public function signup()
    {
        //
    }

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
    public function users(){
        $session = session();
                
		if ($session->get('role') == 'Admin'){
			helper(['form']);
            $data = [];
                        
                $userModel = new UserModel();
                
                $data['users'] = $userModel->orderBy('id', 'asc')->findAll(); 
                return  view('/inc/appheader') . view('users', $data) .  view('/inc/appfooter');
            

		} else {
			$session = session();  
            $session->destroy();
            return redirect()->to('/');
		}        
        
    }
    public function createuser() {
        return  view('/inc/appheader') . view('createuser') .  view('/inc/appfooter');
    }
    public function store(){
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
        return $this->response->redirect('/users');
    
        
    }

    public function investors(){
        $session = session();
                
		if ($session->get('role') == 'Relationship Manager'){
			helper(['form']);
            $data = [];
                        
                $userModel = new UserModel();
                
                $data['users'] = $userModel->where('role', 'Investor')->orderBy('id', 'asc')->findAll(); 
                return  view('/inc/appheader') . view('investors', $data) .  view('/inc/appfooter');
            

		} else {
			$session = session();  
            $session->destroy();
            return redirect()->to('/');
		}        
        
    }
}
