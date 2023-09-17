<?php
	session_start();
	include ('configdb.php');

    $pnm= $_POST["pname"];
    $pfile= $_POST["pfile"];
   
    $pprice= $_POST["pprice"];
    $pcat= $_POST["pcat"];

	$qry= "SELECT p_name FROM product WHERE p_name='$pnm'";
	$res= mysqli_query($conn, $qry);
	$row= mysqli_num_rows($res);

	if (isset($_POST['Submit']))
	{
		$_SESSION['error'] = array();
		extract($_POST);

		if(empty($pnm)){
			$_SESSION['error']['pname']="Please Enter Product Name";
		}
		if(empty($pfile)){
			$_SESSION['error']['pfile']="Please Select Photo";
		}
		if(empty($pprice)){
			$_SESSION['error']['pprice']="Please Enter Price";
		}
		if(!empty($_SESSION['error'])){
			header("location:add_product.php");
		}
		else
		{
			if($row){
				$_SESSION['perror']="Product Already Added";
				header("location:add_product.php");
			}
			else
			{
				$query= "INSERT INTO product(p_name, p_photo, p_price, p_detail, p_cat )VALUES('$pnm','$pfile', '$pprice','$pkg', '$pcat')";
				mysqli_query($conn, $query);

				$_SESSION['Success']="Product Successfully Added";
				header("location:add_product.php");
			}
		}
	}
	else
	{
		header("location:add_product.php");
	}
?>
