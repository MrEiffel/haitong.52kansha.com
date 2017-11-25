<?php
namespace Admin\Controller;

class FinanceAfficheController extends AdminController
{
    public function index()
    {
        //$this->checkUpdata();
        $this->data = D('FinanceAffiche')->find(1);
        $this->display();
    }

    public function edit()
    {
        if (APP_DEMO) {
            $this->error('测试站暂时不能修改！');
        }

        if (D('FinanceAffiche')->where(array('id' => 1))->save($_POST)) {
            $this->success('修改成功！');
        } else {
            $this->error('修改失败');
        }
    }
}
?>