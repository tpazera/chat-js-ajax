<?php
mysql_connect("127.0.0.1","root","mysql");
mysql_select_db("tpazera");
mysql_query("SET NAMES utf8");

if (isset($_REQUEST['name']) && isset($_REQUEST['color']) && isset($_REQUEST['date']) && isset($_REQUEST['text'])) {
	//mysql_query("DELETE FROM chat WHERE `Time` < DATE_SUB( CURRENT_TIME(), INTERVAL 10 MINUTE)");
	$name = $_REQUEST['name'];
	$color = $_REQUEST['color'];
	$time = $_REQUEST['date'];
	$text = $_REQUEST['text'];
	mysql_query("INSERT into chat(Name,Color,Time,Text) values ('$name','$color','$time','$text')");
	$qry = mysql_query("SELECT ID from chat ORDER BY id DESC LIMIT 1");
	$dbArr = Array();
	while ($w = mysql_fetch_row($qry)) $dbArr[] = $w;
	$maxId = $dbArr[0][0];
	echo $maxId;
	mysql_query("DELETE FROM chat WHERE Time < (NOW() - INTERVAL 5 MINUTE)");
}
?>