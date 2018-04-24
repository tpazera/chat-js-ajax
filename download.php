<?php
mysql_connect("127.0.0.1","root","mysql");
mysql_select_db("tpazera");
mysql_query("SET NAMES utf8");

$time=time();
while(time()-$time < 5){
	$maxid = $_REQUEST['maxid'];
	$qry = mysql_query("SELECT ID FROM chat ORDER BY ID DESC LIMIT 1");
	$dbID = Array();
	while ($w = mysql_fetch_row($qry)) $dbID[] = $w;
	$maxIdDB = $dbID[0][0];
	if ($maxid > 0) {
		if ($maxid < $maxIdDB) {
		$id = mysql_query("SELECT * FROM chat WHERE ID > $maxid");
		$arr = Array();
		while ($w = mysql_fetch_row($id)) $arr[] = $w;
		$val = json_encode($arr);
		echo $val;
		break;
	}
	}
	
	usleep(25000);
}

?>