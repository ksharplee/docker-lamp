<?php
  // 测试连接mysql
  // $mysqli = new mysqli("mysql8", "root", "Jiuyukeji!@#123");
  //   if(!$mysqli)  {
  //       echo"database error";
  //   }else{
  //       echo"php env successful";
  //   }
  //   $mysqli->close();

  $memcache = new Memcache;             //创建一个memcache对象
  $memcache->addServer('memcached', 11211) or die ("Could not connect"); //连接Memcached服务器
  $memcache->set('key', 'test');        //设置一个变量到内存中，名称是key 值是test
  $get_value = $memcache->get('key');   //从内存中取出key的值
  echo $get_value;
?>
