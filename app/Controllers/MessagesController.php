<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\MessagesModel;
use App\Models\UserModel;
use Config\Database;

class MessagesController extends BaseController
{

    public function index()
    {
        $session = session();
        $user = $session->get('user_id');
        
        $db = \Config\Database::connect();
        
        $sql = 'SELECT meesage_id, usertable.fullName as sender, messages.message as message
        FROM messages 
        JOIN usertable on usertable.id = messages.sender 
        WHERE receiver = ?';
        $query = $db->query($sql, [$user]);

        $data['messages'] = $query->getResultArray();

        return  view('/inc/appheader') . view('messages', $data) .  view('/inc/appfooter');
    }
    public function compose()
    {
        $session = session();
        $user = $session->get('user_id');
        $messagesModel = new MessagesModel();

        $userModel = new UserModel();
        $data['users'] = $userModel->orderBy('id', 'asc')->findAll();

        return  view('/inc/appheader') . view('compose', $data) .  view('/inc/appfooter');
    }
    public function send(){
        $messagesModel = new MessagesModel();
        $data = [
            'sender' => $this->request->getVar('sender'),
            'receiver' => $this->request->getVar('receiver'),
            'message' => $this->request->getVar('message')
        ];

        $messagesModel->insert($data);
        return $this->response->redirect(site_url('/messages'));
    }

    public function read($id){
        $session = session();
        if (!$session->get('isLoggedIn')) {
            echo view('homepage');
        }
        //$messagesModel = new MessagesModel();
        // $data['messages'] = $messagesModel
        // ->where('meesage_id', $id)
        // ->join('usertable', 'usertable.id', '=', 'sender' )
        // ->first();
        $db = \Config\Database::connect();
        
        $query = $db->query('SELECT meesage_id, usertable.fullName as sender, messages.message as message
        FROM messages 
        JOIN usertable on usertable.id = messages.sender 
        WHERE meesage_id = ' . $id );

        $data['messages'] = $query->getResultArray();
         

        return  view('/inc/appheader') . view('read', $data) .  view('/inc/appfooter');
    }
}
