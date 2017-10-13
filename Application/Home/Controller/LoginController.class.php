<?php
namespace Home\Controller;

class LoginController extends HomeController
{
	public function register()
	{
		$this->display();
	}

	public function webreg()
	{
		$this->display();
	}

	public function upregister($username='', $password='', $repassword='', $verify='', $invit='', $moble='', $moble_verify='')
	{
		if(M_ONLY==0){
			if (!check_verify(strtoupper($verify))) {
				$this->error('图形验证码错误!');
			}

			if (!check($username, 'username')) {
				$this->error('用户名格式错误！');
			}

			if (!check($password, 'password')) {
				$this->error('登录密码格式错误！');
			}

			if ($password != $repassword) {
				$this->error('确认登录密码错误！');
			}
		}else{
			
			if (!check($password, 'password')) {
				$this->error('登录密码格式错误！');
			}
			$username=$moble;
		}
		
		if (!check($moble, 'moble')) {
			$this->error('手机号码格式错误！');
		}

		if (!check($moble_verify, 'd')) {
			$this->error('短信验证码格式错误！');
		}

		if ($moble_verify != session('real_verify')) {
			$this->error('短信验证码错误！');
		}
		
		if (M('User')->where(array('moble' => $moble))->find()) {
			$this->error('手机号码已存在！');
		}

		if (M('User')->where(array('username' => $username))->find()) {
			$this->error('用户名已存在');
		}

		if (!$invit) {
			$invit = session('invit');
		}

		$invituser = M('User')->where(array('invit' => $invit))->find();

		if (!$invituser) {
			$invituser = M('User')->where(array('id' => $invit))->find();
		}

		if (!$invituser) {
			$invituser = M('User')->where(array('username' => $invit))->find();
		}

		if (!$invituser) {
			$invituser = M('User')->where(array('moble' => $invit))->find();
		}

		if ($invituser) {
			$invit_1 = $invituser['id'];
			$invit_2 = $invituser['invit_1'];
			$invit_3 = $invituser['invit_2'];
		}
		else {
			$invit_1 = 0;
			$invit_2 = 0;
			$invit_3 = 0;
		}

		for (; true; ) {
			$tradeno = tradenoa();

			if (!M('User')->where(array('invit' => $tradeno))->find()) {
				break;
			}
		}

		$mo = M();
		$mo->execute('set autocommit=0');
		$mo->execute('lock tables ecshecom_user write , ecshecom_user_coin write ');
		$rs = array();
		$rs[] = $mo->table('ecshecom_user')->add(array('username' => $username, 'moble' => $moble, 'mobletime' => time(), 'password' => md5($password), 'invit' => $tradeno, 'tpwdsetting' => 1, 'invit_1' => $invit_1, 'invit_2' => $invit_2, 'invit_3' => $invit_3, 'addip' => get_client_ip(), 'addr' => get_city_ip(), 'addtime' => time(), 'status' => 1));
		$rs[] = $mo->table('ecshecom_user_coin')->add(array('userid' => $rs[0]));

		if (check_arr($rs)) {
			$mo->execute('commit');
			$mo->execute('unlock tables');
			session('reguserId', $rs[0]);

			// 新增用户时为该用户每个自定义币种分配钱包地址
			$update_qianbao_address_result = $this->distributeCustomCoinWalletAddressToUsers($rs[0]);
			if ($update_qianbao_address_result < 0) {
                $error = array(
                    -10001 => '钱包地址不足',
                    -10002 => '绑定失败',
                );
                $this->error('注册失败：' . $error[$update_qianbao_address_result]);
            } else {
                $this->success('注册成功！');
            }
		}
		else {
			$mo->execute('rollback');
			$this->error('注册失败！');
		}
	}

    /**
     * 用户主动操作：用户绑定自定义币种地址的操作
     * @param null $coin_name
     * @param null $code_verify
     */
    public function bindQianbaoAddress($coin = NULL, $code_verify = NULL)
    {
        $user_id = intval(userid());
        if (empty($user_id)) {
            $this->error('您没有登录请先登录！');
        }

        if (empty($code_verify) || !check_verify($code_verify, 'custom_coin_zc_address')) {
            $this->error('验证码输入错误！');
        }

        $coin_name = trim($coin);
        if (empty($coin_name) || !check($coin_name, 'n')) {
            $this->error('币种格式错误！');
        }

        if (!C('coin')[$coin_name]) {
            $this->error('币种错误！');
        }

        $coin = D('Coin')
            ->where(array(
                'name' => $coin_name,
                'status' => 1,
                'type' => array('in', array_keys(C('CUSTOM_COIN_TYPE')))
            ))
            ->find();
        if (empty($coin)) {
            $this->error('币种不存在或已停用');
        }

        $user_id = userid();
        $UserCoin = D('UserCoin');
        $user_coin = $UserCoin
            ->where(array('userid' => $user_id))
            ->find();
        if (!isset($user_coin[$coin_name . 'b']) || !empty($user_coin[$coin_name . 'b'])) {
            $this->error('币种地址已绑定或币种不存在');
        }

        $Address = D('UserQianbaoAddress');
        $address = $Address
            ->where(array(
                'status' => 1,
                'user_id' => 0,
                'bind_time' => 0,
                'coin_name' => $coin_name,
            ))
            ->find();
        if (empty($address)) {
            $this->error('币种地址不足，获取失败，请联系网站管理员');
        }

        $result = $this->bindCustomCoinWalletAddress($user_id, $coin_name, $address['address']);
        if ($result === true) {
            $this->success('获取成功');
        } else {
            $this->error('获取失败，请联系网站管理员');
        }
	}

    /**
     * 新增用户时为该用户每个自定义币种分配钱包地址
     * @param $user_id
     * @return int
     */
	private function distributeCustomCoinWalletAddressToUsers($user_id)
    {
        $coin = D('Coin')
            ->field('id,name,type,title')
            ->where(array(
                'status' => 1,
                'type' => array('in', array_keys(C('CUSTOM_COIN_TYPE')))
            ))
            ->select();
        if (empty($coin)) {
            return 0;
        }

        $QianbaoAddress = D('UserQianbaoAddress');

        // 设置响应时间
        set_time_limit(300);
        foreach ($coin as $value) {
            $qianbao_address = $QianbaoAddress
                ->field('id,coin_name,address')
                ->where(array(
                    'status' => 1,
                    'user_id' => 0,
                    'bind_time' => 0,
                    'coin_name' => $value['name'],
                ))
                ->find();
            if (empty($qianbao_address)) {
                return -10001;
            }

            $result = $this->bindCustomCoinWalletAddress($user_id, $value['name'], $qianbao_address['address']);
            if ($result === false) {
                return -10002;
            }
        }

        return 0;
    }

    /**
     * 绑定自定义币种的钱包地址
     * @param int $user_id
     * @param null $coin_name
     * @param null $address
     * @return bool
     */
    private function bindCustomCoinWalletAddress($user_id = 0, $coin_name = NULL, $address = NULL)
    {
        $model = M();
        $model->execute('set autocommit=0');
        $model->execute('lock tables ecshecom_user_coin write,ecshecom_myzr write,ecshecom_finance write,ecshecom_invit write,ecshecom_user write,ecshecom_user_qianbao_address write');

        $result = array();
        /*$result[] = $model
            ->table('ecshecom_user_qianbao_address')
            ->where(array(
                'coin_name' => $coin_name,
                'user_id' => 0,
                'bind_time' => 0,
                'address' => trim($address),
                'status' => 1
            ))
            ->save(array(
                'user_id' => $user_id,
                'bind_time' => time(),
            ));*/
        $result[] = $model
            ->table('ecshecom_user_coin')
            ->where(array(
                'userid' => $user_id,
                $coin_name . 'b' => ''
            ))
            ->save(array(
                $coin_name . 'b' => $address
            ));
        $result[] = $model
            ->table('ecshecom_user_qianbao_address')
            ->where(array(
                'coin_name' => $coin_name,
                'user_id' => 0,
                'bind_time' => 0,
                'address' => trim($address),
                'status' => 1
            ))
            ->delete();

        if (check_arr($result)) {
            $model->execute('commit');
            $model->execute('unlock tables');
            return true;
        } else {
            $model->execute('rollback');
            return false;
        }
    }
	
	public function check_moble($moble=0){
		
		if (!check($moble, 'moble')) {
			$this->error('手机号码格式错误！');
		}
		
		if (M('User')->where(array('moble' => $moble))->find()) {
			$this->error('手机号码已存在！');
		}
		
		$this->success('');
		
	}
	
	
	public function check_pwdmoble($moble=0){
		
		if (!check($moble, 'moble')) {
			$this->error('手机号码格式错误！');
		}
		
		if (!M('User')->where(array('moble' => $moble))->find()) {
			$this->error('手机号码不存在！');
		}
		
		$this->success('');
		
	}
	
	
	
	
	
	public function real($moble, $verify)
	{

		if (!check_verify(strtoupper($verify))) {
			$this->error('图形验证码错误!');
		}

		if (!check($moble, 'moble')) {
			$this->error('手机号码格式错误！');
		}

		if (M('User')->where(array('moble' => $moble))->find()) {
			$this->error('手机号码已存在！');
		}

		$code = rand(111111, 999999);
		session('real_verify', $code);
		$content = '您正在进行手机操作，您的验证码是' . $code;

		if (send_moble($moble, $content)) {
			if(MOBILE_CODE ==0 ){
				$this->success('目前是演示模式,请输入'.$code);
			}else{
				$this->success('验证码已发送');
			}
		}
		else {
			$this->error('验证码发送失败,请重发');
		}
	}
	
	
	
	
	public function register2()
	{
		if (!session('reguserId')) {
			redirect('/#login');
		}
		$this->display();
	}
	
	
	public function paypassword(){
		if (!session('reguserId')) {
			redirect('/#login');
		}
		$this->display();
	}
	
	

	public function upregister2($paypassword, $repaypassword)
	{
		if (!check($paypassword, 'password')) {
			$this->error('交易密码格式错误！');
		}

		if ($paypassword != $repaypassword) {
			$this->error('确认密码错误！');
		}

		if (!session('reguserId')) {
			$this->error('非法访问！');
		}

		if (M('User')->where(array('id' => session('reguserId'), 'password' => md5($paypassword)))->find()) {
			$this->error('交易密码不能和登录密码一样！');
		}

		if (M('User')->where(array('id' => session('reguserId')))->save(array('paypassword' => md5($paypassword)))) {
			$this->success('成功！');
		}
		else {
			$this->error('失败！');
		}
	}

	public function register3()
	{
		if (!session('reguserId')) {
			redirect('/#login');
		}
		$this->display();
	}
	
	public function truename()
	{
        redirect(U('info'));
		if (!session('reguserId')) {
			redirect('/#login');
		}
		$this->display();
	}
	
	

	public function upregister3($truename, $idcard)
	{
		if (!check($truename, 'truename')) {
			$this->error('真实姓名格式错误！');
		}

		if (!check($idcard, 'idcard')) {
			$this->error('身份证号格式错误！');
		}

		if (!session('reguserId')) {
			$this->error('非法访问！');
		}

		if (M('User')->where(array('id' => session('reguserId')))->save(array('truename' => $truename, 'idcard' => $idcard))) {
			$this->success('成功！');
		}
		else {
			$this->error('失败！');
		}
	}

	public function register4()
	{
		
		if (!session('reguserId')) {
			redirect('/#login');
		}
		
		$user = M('User')->where(array('id' => session('reguserId')))->find();
		
		
		if(!$user){
			$this->error('请先注册');
		}
		if($user['regaward']==0){
			if(C('reg_award')==1 && C('reg_award_num')>0){
				M('UserCoin')->where(array('userid' => session('reguserId')))->setInc(C('reg_award_coin'),C('reg_award_num'));
				M('User')->where(array('id' => session('reguserId')))->save(array('regaward'=>1));
			}
		}	

		session('userId', $user['id']);
		session('userName', $user['username']);
		$this->assign('user', $user);
		$this->display();
	}
	
	
	public function info()
	{
		
		if (!session('reguserId')) {
			redirect('/#login');
		}
		
		$user = M('User')->where(array('id' => session('reguserId')))->find();
		
		
		if(!$user){
			$this->error('请先注册');
		}
		if($user['regaward']==0){
			if(C('reg_award')==1 && C('reg_award_num')>0){
				M('UserCoin')->where(array('id' => session('reguserId')))->setInc(C('reg_award_coin'),C('reg_award_num'));
				M('User')->where(array('id' => session('reguserId')))->save(array('regaward'=>1));
			}
		}	

		session('userId', $user['id']);
		session('userName', $user['username']);
		$this->assign('user', $user);
		$this->display();
	}
	
	
	
	
	
	
	

	public function chkUser($username)
	{
		if (!check($username, 'username')) {
			$this->error('用户名格式错误！');
		}

		if (M('User')->where(array('username' => $username))->find()) {
			$this->error('用户名已存在');
		}

		$this->success('');
	}

	public function submit($username="", $password="",$moble="", $verify = NULL)
	{
		if (C('login_verify')) {
			if (!check_verify(strtoupper($verify))) {
				$this->error('图形验证码错误!');
			}
		}
		
		if(M_ONLY==0){
			if (check($username, 'email')) {
				$user = M('User')->where(array('email' => $username))->find();
				$remark = '通过邮箱登录';
			}

			if (!$user && check($username, 'moble')) {
				$user = M('User')->where(array('moble' => $username))->find();
				$remark = '通过手机号登录';
			}

			if (!$user) {
				$user = M('User')->where(array('username' => $username))->find();
				$remark = '通过用户名登录';
			}
		}else{
			if (check($moble, 'moble')) {
				$user = M('User')->where(array('moble' => $moble))->find();
				$remark = '通过手机号登录';
			}
			
			if (!$user) {
				$user = M('User')->where(array('username' => $username))->find();
				$remark = '通过用户名登录';
			}
			
			
		}

		if (!$user) {
			$this->error('用户不存在！');
		}

		if (!check($password, 'password')) {
			$this->error('登录密码格式错误！');
		}

		if (md5($password) != $user['password']) {
			$this->error('登录密码错误！');
		}

		if ($user['status'] != 1) {
			$this->error('你的账号已冻结请联系管理员！');
		}

		
		$ip = get_client_ip();
		$logintime = time();
		$token_user = md5($user['id'].$logintime);
		session('token_user' , $token_user);
		
		$mo = M();
		$mo->execute('set autocommit=0');
		$mo->execute('lock tables ecshecom_user write , ecshecom_user_log write ');
		$rs = array();
		$rs[] = $mo->table('ecshecom_user')->where(array('id' => $user['id']))->setInc('logins', 1);
		
		$rs[] = $mo->table('ecshecom_user')->where(array('id' => $user['id']))->save(array('token'=>$token_user));
		
		$rs[] = $mo->table('ecshecom_user_log')->add(array('userid' => $user['id'], 'type' => '登录', 'remark' => $remark, 'addtime' => $logintime, 'addip' => $ip, 'addr' => get_city_ip(), 'status' => 1));

		if (check_arr($rs)) {
			$mo->execute('commit');
			$mo->execute('unlock tables');

			if (!$user['invit']) {
				for (; true; ) {
					$tradeno = tradenoa();

					if (!M('User')->where(array('invit' => $tradeno))->find()) {
						break;
					}
				}

				M('User')->where(array('id' => $user['id']))->setField('invit', $tradeno);
			}

			session('userId', $user['id']);
			session('userName', $user['username']);

			if (!$user['paypassword']) {
				session('regpaypassword', $rs[0]);
				session('reguserId', $user['id']);
			}

			if (!$user['truename']) {
				session('regtruename', $rs[0]);
				session('reguserId', $user['id']);
			}
			session('ecshecom_already',0);
			$this->success('登录成功！');
		}
		else {
			session('ecshecom_already',0);
			$mo->execute('rollback');
			$this->error('登录失败！');
		}
	}

	public function loginout()
	{
		session(null);
		redirect('/');
	}

	public function findpwd()
	{
		if (IS_POST) {
			$input = I('post.');
			if(M_ONLY==0){
				if (!check_verify(strtoupper($input['verify']))) {
					$this->error('图形验证码错误!');
				}

				if (!check($input['username'], 'username')) {
					$this->error('用户名格式错误！');
				}

				if (!check($input['moble'], 'moble')) {
					$this->error('手机号码格式错误！');
				}

				if (!check($input['moble_verify'], 'd')) {
					$this->error('短信验证码格式错误！');
				}

				if ($input['moble_verify'] != session('findpwd_verify')) {
					$this->error('短信验证码错误！');
				}

				$user = M('User')->where(array('username' => $input['username']))->find();
				
				
				
				if (!$user) {
					$this->error('用户名不存在！');
				}

				if ($user['moble'] != $input['moble']) {
					$this->error('用户名或手机号码错误！');
				}

				if (!check($input['password'], 'password')) {
					$this->error('新登录密码格式错误！');
				}
				

				if ($input['password'] != $input['repassword']) {
					$this->error('确认密码错误！');
				}


				$mo = M();
				$mo->execute('set autocommit=0');
				$mo->execute('lock tables ecshecom_user write , ecshecom_user_log write ');
				$rs = array();
				$rs[] = $mo->table('ecshecom_user')->where(array('id' => $user['id']))->save(array('password' => md5($input['password'])));

				if (check_arr($rs)) {
					$mo->execute('commit');
					$mo->execute('unlock tables');
					$this->success('修改成功');
				}
				else {
					$mo->execute('rollback');
					$this->error('修改失败');
				}
				
				
				
				
				
				
				
				
				
			
			}else{
				

				if (!check($input['moble'], 'moble')) {
					$this->error('手机号码格式错误！');
				}

				$user = M('User')->where(array('moble' => $input['moble']))->find();
				
				if(!$user){
					$this->error('不存在该手机号码');
				}
				
				if (!check($input['moble_verify'], 'd')) {
					$this->error('短信验证码格式错误！');
				}

				if ($input['moble_verify'] != session('findpwd_verify')) {
					$this->error('短信验证码错误！');
				}
				session("findpwdmoble",$user['moble']);
				$this->success('验证成功');
			}
			
		}
		else {
			$this->display();
		}
	}
	
	
	public function findpwdconfirm(){
		
		if(empty(session('findpwdmoble'))){
			session(null);
			redirect('/');
		}
		
		$this->display();
	}
	
	public function password_up($password=""){
		
		
		if(empty(session('findpwdmoble'))){
			$this->error('请返回第一步重新操作！');
		}
		
		if (!check($password, 'password')) {
			$this->error('新登录密码格式错误！');
		}
		$user = M('User')->where(array('moble' => session('findpwdmoble')))->find();
		
		if(!$user){
			$this->error('不存在该手机号码');
		}
		
		if($user['paypassword']==md5($password)){
			$this->error("登录密码不能和交易密码一样");
		}
		
		
		$mo = M();
		$mo->execute('set autocommit=0');
		$mo->execute('lock tables ecshecom_user write , ecshecom_user_log write ');
		$rs = array();
		$rs[] = $mo->table('ecshecom_user')->where(array('moble' => $user['moble']))->save(array('password' => md5($password)));

		if (check_arr($rs)) {
			$mo->execute('commit');
			$mo->execute('unlock tables');
			$this->success('操作成功');
		}
		else {
			$mo->execute('rollback');
			$this->error('操作失败');
		}
		
	}
	
	public function findpwdinfo(){
		
		if(empty(session('findpwdmoble'))){
			session(null);
			redirect('/');
		}
		session(null);
		$this->display();
	}
	
	
	public function findpaypwd()
	{
		if (IS_POST) {
			$input = I('post.');

			if (!check($input['username'], 'username')) {
				$this->error('用户名格式错误！');
			}

			if (!check($input['moble'], 'moble')) {
				$this->error('手机号码格式错误！');
			}

			if (!check($input['moble_verify'], 'd')) {
				$this->error('短信验证码格式错误！');
			}

			if ($input['moble_verify'] != session('findpaypwd_verify')) {
				$this->error('短信验证码错误！');
			}

			$user = M('User')->where(array('username' => $input['username']))->find();

			if (!$user) {
				$this->error('用户名不存在！');
			}

			if ($user['moble'] != $input['moble']) {
				$this->error('用户名或手机号码错误！');
			}

			if (!check($input['password'], 'password')) {
				$this->error('新交易密码格式错误！');
			}

			if ($input['password'] != $input['repassword']) {
				$this->error('确认密码错误！');
			}

			$mo = M();
			$mo->execute('set autocommit=0');
			$mo->execute('lock tables ecshecom_user write , ecshecom_user_log write ');
			$rs = array();
			$rs[] = $mo->table('ecshecom_user')->where(array('id' => $user['id']))->save(array('paypassword' => md5($input['password'])));

			if (check_arr($rs)) {
				$mo->execute('commit');
				$mo->execute('unlock tables');
				$this->success('修改成功');
			}
			else {
				$mo->execute('rollback');
				$this->error('修改失败' . $mo->table('ecshecom_user')->getLastSql());
			}
		}
		else {
			$this->display();
		}
	}

}

?>