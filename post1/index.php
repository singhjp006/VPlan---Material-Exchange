<?php
	error_reporting(0); 
	require_once("_includes/connection.php");
	require_once("_includes/functions.php");
	{
	$msg=$_GET['msg'];
}
?>
<html> 
<head>
	<title> Post and Sale </title>
	<link href="_css/homepage.css" rel="stylesheet" type="text/css"/>
	<link href="_css/header.css" rel="stylesheet" type="text/css">
	<link  href="_css/foot.css" rel="stylesheet" type="text/css">
<!--/*colors used:
#b07df4
#FFB51A
#d0affd */-->
   
   
</head>

<body>
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1&appId=239326496139606";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<div id="body">
<?php include("_includes/header.html"); ?>
<div id="indexmaincontent">
<div id="topheading">
<p>Find some Treasure</p>
</div>
<span style="color:#ffb51a; line-height:20px; font-size:14px; font-family:'Comic Sans MS', cursive; text-align:center;" ><?php echo $msg; ?> </span>

        	
<div id="category">

<?php echo navigation_index_1($sel_subject, $sel_page); ?>
	
</div>

<div id="category">
<?php echo navigation_index_2($sel_subject, $sel_page); ?>
	
</div>
<div id="category">
<?php echo navigation_index_3($sel_subject, $sel_page); ?>
	
</div>
	
	</div>
<div id="freead">
<a href="category.php">Get rid of Trash</a>
</div>

	
</div>

<?php include("_includes/ender.php"); ?>

</body>

</html>