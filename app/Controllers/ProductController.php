<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\ProductModel;
use App\Models\UserModel;

class ProductController extends BaseController
{
    public function index()
    {
        $session = session();

        if ($session->get('role') == 'Admin' || $session->get('role') == 'Relationship Manager' || $session->get('role') == 'Creator' ) {
            helper(['form']);
            $data = [];

            $userModel = new ProductModel();
            $data['products'] = $userModel->orderBy('id', 'asc')->findAll();
            return  view('/inc/appheader') . view('products', $data) .  view('/inc/appfooter');
        } else {
            $session = session();
            $session->destroy();
            return redirect()->to('/');
        }
    }

    public function approvedideas()
    {
        $session = session();        
        $userid = $session->get('user_id');

        helper(['form']);
        $data = [];

        $userModel = new ProductModel();
        $data['products'] = $userModel
        ->orderBy('id', 'asc')
        ->where('idea_status','Approved')
        //->where("JSON_CONTAINS('taggedusers', '[\"$userid\"]')")
        ->where("(JSON_CONTAINS(taggedusers,'[\"$userid\"]')) > ",0)
        ->findAll();
        return  view('/inc/appheader') . view('products', $data) .  view('/inc/appfooter');
    }

    public function add()
    {
        return  view('/inc/appheader') . view('addproduct') .  view('/inc/appfooter');
    }

    public function save()
    {
        $session = session();
        if (!$session->get('isLoggedIn')) {
            $session = session();
            $session->destroy();
            return redirect()->to('/');
        }

        $ProductModel = new ProductModel();
        $data = [
            'author' => $this->request->getVar('userid'),
            'productname' => $this->request->getVar('idea_title'),
            'idea_type' => $this->request->getVar('idea_type'),
            'idea_abstract' => $this->request->getVar('idea_abstract'),
            'idea_descr' => $this->request->getVar('idea_descr'),
            'idea_expiry' => $this->request->getVar('idea_expiry'),
            'idea_risk' => $this->request->getVar('idea_risk'),
            'idea_instruments' => $this->request->getVar('idea_instruments'),
            'idea_currency' => $this->request->getVar('idea_currency'),
            'idea_major' => $this->request->getVar('idea_major'),
            'idea_minor' => $this->request->getVar('idea_minor'),
            'idea_region' => $this->request->getVar('idea_region'),
            'idea_country' => $this->request->getVar('idea_country'),
        ];
        $ProductModel->insert($data);
        return $this->response->redirect(site_url('/products'));
    }

    public function delete($id = null)
    {
        $session = session();
        if (!$session->get('isLoggedIn')) {
            echo view('/');
        }
        $ProductModel = new ProductModel();

        $data['producttable'] = $ProductModel->where('id', $id)->delete($id);
        return $this->response->redirect(site_url('/products'));
    }

    public function viewProduct($id = null)
    {
        $session = session();
        if (!$session->get('isLoggedIn')) {
            echo view('homepage');
        }
        $ProductModel = new ProductModel();
        $data['producttable'] = $ProductModel->where('id', $id)->first();
        return  view('/inc/appheader') . view('viewProduct', $data) .  view('/inc/appfooter');
    }

    public function invest($id = null)
    {
        $session = session();
        if (!$session->get('isLoggedIn')) {
            echo view('homepage');
        }
        $ProductModel = new ProductModel();
        $data['producttable'] = $ProductModel->where('id', $id)->first();
        return  view('/inc/appheader') . view('invest', $data) .  view('/inc/appfooter');
    }

    public function reviewidea($id = null)
    {
        $session = session();
        if (!$session->get('isLoggedIn')) {
            echo view('homepage');
        }
        $ProductModel = new ProductModel();
        $data['producttable'] = $ProductModel->where('id', $id)->first();
        return  view('/inc/appheader') . view('reviewidea', $data) .  view('/inc/appfooter');
    }

    public function approveidea()
    {

        $session = session();
        $productModel = new ProductModel();
        $id = $this->request->getVar('ideaid');
        $data = [
            'approved_by'     => $this->request->getVar('userid'),
            'idea_status'     => $this->request->getVar('ideastatus'),
        ];
        $productModel->update($id, $data);
        return $this->response->redirect(site_url('/products'));
    }
    public function tag($id = null)
    {
        $session = session();
        if (!$session->get('isLoggedIn')) {
            echo view('homepage');
        }
        $userModel = new UserModel();
        $data['users'] = $userModel->where('role', 'Investor')->orderBy('id', 'asc')->findAll();

        $ProductModel = new ProductModel();
        $data['producttable'] = $ProductModel->where('id', $id)->first();
        return  view('/inc/appheader') . view('tag', $data) .  view('/inc/appfooter');
    }

    public function taguser()
    {

        $session = session();
        $productModel = new ProductModel();
        $id = $this->request->getVar('ideaid');
        $taggedusers = json_encode($this->request->getVar('tagged_users'));
        $data = [
            'taggedusers'     => $taggedusers,
        ];
        $productModel->update($id, $data);
        return $this->response->redirect(site_url('/products'));
    }


}
