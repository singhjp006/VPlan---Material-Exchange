<?php
require("constants.php");

// 1. Create a database connection
$connection = mysqli_connect("127.0.0.1", "root", "");
if (!$connection) {
	die("Database connection failed: " . mysqli_error());
}

// 2. Select a database to use 
$db_select = mysqli_select_db($connection, "post");
if (!$db_select) {
	die("Database selection failed: " . mysqli_error());
}
?>
