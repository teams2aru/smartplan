<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\Investment;

class InvestmentController extends BaseController
{
    public function index()
    {
        $session = session();
        if (!$session->get('isLoggedIn')) {
            $session = session();
            $session->destroy();
            return redirect()->to('/');
        }

        $investmentModel = new Investment();
        $data = [
            'user_id' => $this->request->getVar('userid'),
            'idea_id' => $this->request->getVar('ideaid'),
        ];
        $investmentModel->insert($data);
        return $this->response->redirect(site_url('/approvedideas'));
    }
}
