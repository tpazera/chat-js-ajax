<?php
mysql_connect("127.0.0.1","root","mysql");
mysql_select_db("tpazera");
mysql_query("SET NAMES utf8");

$qry = mysql_query("SELECT ID FROM chat ORDER BY id DESC LIMIT 1");
$dbID = Array();
while ($w = mysql_fetch_row($qry)) $dbID[] = $w;
$maxIdDB = $dbID[0][0];
echo $maxIdDB;
usleep(55000);

?>