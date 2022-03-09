<?php
$con= mysqli_connect("139.5.147.31","shopping","IklD6Hih2ifK","shopping") or die("Error: " . mysqli_error($con));
mysqli_query($con, "SET NAMES 'utf8' ");
error_reporting( error_reporting() & ~E_NOTICE );
date_default_timezone_set('Asia/Bangkok');
?>
