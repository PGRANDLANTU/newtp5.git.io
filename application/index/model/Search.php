<?php
namespace app\index\model;
use think\Model;
class Search extends Model
{

	public function Search($keywords){
		
            $map['title']=['like','%'.$keywords.'%'];
            $searchres=db('article')->where($map)->order('id desc')->paginate($listRows = 3, $simple = false, $config = [
                'query'=>array('keywords'=>$keywords),
                ]);
            
        
	}



}
