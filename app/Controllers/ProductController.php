<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\ProductModel;
use App\Models\UserModel;

class ProductController extends BaseController
{
    //View all products
    public function index()
    {
        $session = session();
                
		if ($session->get('role') == 'Admin'){
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
    //addproduct file
    public function add() {
        return  view('/inc/appheader') . view('addproduct') .  view('/inc/appfooter');
    }
    //save product
    public function save() {
        $session = session();
        if (!$session->get('isLoggedIn')){
            $session = session();  
            $session->destroy();
            return redirect()->to('/');
        }
        
        $ProductModel = new ProductModel();
        $data = [
            'productname'     => $this->request->getVar('prod_name'),
            'productprice'     => $this->request->getVar('prod_price'),
            'productquantity'     => $this->request->getVar('prod_qtty'),
            'remarks'     => $this->request->getVar('prod_remark')
        ];
        $ProductModel->insert($data);
        return $this->response->redirect(site_url('/products'));
    }
    //delete product 
    public function delete($id = null){
        $session = session();
        if (!$session->get('isLoggedIn')){
            echo view('/');
        }
        $ProductModel = new ProductModel();
        
        $data['producttable'] = $ProductModel->where('id', $id)->delete($id);
        return $this->response->redirect(site_url('/products'));
    }
    //view product
    public function viewProduct($id = null){
        $session = session();
        if (!$session->get('isLoggedIn')){
            echo view('homepage');
        }
        $ProductModel = new ProductModel();
        $data['producttable'] = $ProductModel->where('id', $id)->first();
        return  view('/inc/appheader') . view('viewProduct', $data) .  view('/inc/appfooter');
    }
}
