<?php

namespace Db\Model;
use Think\Model;

/**
 * DB基础表模型
 */
class DbModel extends Model{
	/**
	 * 数据表前缀
	 * @var string
	 */
	protected $tablePrefix = "s_";

	/*DB模型自动验证*/
	protected $_validate = array(
		array('tname','require','表名必须填写'),
		array('tnamec','require','表名别称必须填写'),
		array('tname','','表名已经存在！',0,'unique',1),
	);

	/* DB模型自动完成 */
	protected $_auto = array(
		array('tflag', 0),
		array('ttype',0)
	);

	/**
	 * 注册一个新表
	 * @param  string $tname 表名
	 * @param  string $tnamec 别称
	 * @return integer 注册结果
	 */
	public function InsertDb($tname,$tnamec){
		$data = array(
			'tname' => $tname,
			'tnamec'    => $tnamec,
		);
		
		if($this->create($data)){
			$dbId = $this->add();
			return $dbId ? $dbId : 0; //0-未知错误，大于0-成功

		} else {
			return $this->getError(); //错误详情见自动验证注释
		}
	}

	/**
	 * 获取数据库中存在的用户表
	 */
	public function lists(){
		return $this->where($where)->field('tid,tname,tflag,tnamec,ttype')->find();
	}
}