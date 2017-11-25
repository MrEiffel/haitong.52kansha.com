<?php
namespace Home\Controller;

class FinanceAfficheController extends HomeController
{
	public function index()
	{
        redirect(U('mycz'));
	}
	
	public function mycz()
	{
		if (!userid()) {
			redirect('/#login');
		}

		$data = D('FinanceAffiche')
            ->field('account_rechange')
            ->find(1);

		$this->assign('data', $data);
		$this->display();
	}
	
	
	public function mytx()
	{
        if (!userid()) {
            redirect('/#login');
        }

        $data = D('FinanceAffiche')
            ->field('account_withdraw_cash')
            ->find(1);

        $this->assign('data', $data);
        $this->display();
	}
}

?>