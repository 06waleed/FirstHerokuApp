<?php
define('DB_HOST', 'br-cdbr-azure-south-a.cloudapp.net');
define('DB_USER', 'b201a727616964');
define('DB_PASS', 'cffff81d');
define('DB_NAME', 'qmdata');

$dbc = mysql_connect(DB_HOST, DB_USER, DB_PASS);
mysql_select_db(DB_NAME, $dbc);
?>