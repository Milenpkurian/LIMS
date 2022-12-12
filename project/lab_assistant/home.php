<?php
	include 'session.php';
	include 'chemicalsTables/no_of_chemicals.php';
	include 'equipmentsTables/no_of_equipments.php' ;
	include 'glasswaresTables/no_of_glasswares.php';
?>


<!Doctype HTML>
	<html>
	<head>
		<title></title>
		<link rel="stylesheet" href="css/home.css" type="text/css"/>
		<!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> -->
	</head>


	<body>
		
		<div id="mySidenav" class="sidenav">
		<p class="logo"><span>CHEM</span>-Lab</p>
	  <a href="#" class="icon-a"><i class="fa fa-dashboard icons"></i>   Dashboard</a>
	  <a href="#"class="icon-a"><i class="fa fa-users icons"></i>   View Items</a>
	  <a href="#"class="icon-a"><i class="fa fa-list icons"></i>   Update Items</a>
	  <a href="#"class="icon-a"><i class="fa fa-shopping-bag icons"></i>   Buy</a>
	  <a href="#"class="icon-a"><i class="fa fa-tasks icons"></i>   Expired Items</a>
	  <a href="#"class="icon-a"><i class="fa fa-user icons"></i>   Request</a>
	  <a href="#"class="icon-a"><i class="fa fa-list-alt icons"></i>   Notifications</a>

	</div>
	<div id="main">

		<div class="head">
			<div class="col-div-6">
	<span style="font-size:30px;cursor:pointer; color: white;" class="nav"  > Dashboard</span>
	<span style="font-size:30px;cursor:pointer; color: white;" class="nav2"  > Dashboard</span>
	</div>
		
		<div class="col-div-6">
		<div class="profile">

			<img src="images/dashboard_admin.png" class="pro-img" />
			<p><?php echo $_SESSION['username']; ?> <span><a class="a_tag" href="../logout.php">Logout</a></span></p>
		</div>
	</div>
		<div class="clearfix"></div>
	</div>

		<div class="clearfix"></div>
		<br/>
		
		<div class="col-div-3">
			<div class="box">
				<a href="chemicalsTables/index.php"><p><?php echo $noOfChemicals['count'] ; ?><br/><span> Chemicals</span></p></a>
				<i class="fa fa-users box-icon"></i>
			</div>
		</div>
		<div class="col-div-3">
			<div class="box">
				<a href="glasswaresTables/index.php"><p><?php echo $noOfGlasswares['count'] ; ?><br/><span>Glasswares</span></p></a>
				<i class="fa fa-list box-icon"></i>
			</div>
		</div>
		<div class="col-div-3">
			<div class="box">
				<a href="equipmentsTables/index.php"><p><?php echo $noOfEquipments['count'] ; ?><br/><span>Equipments</span></p></a>
				<i class="fa fa-shopping-bag box-icon"></i>
			</div>
		</div>
		<div class="col-div-3">
			<div class="box">
				<a href=""><p>3<br/><span>Out Of Stock</span></p></a>
				<i class="fa fa-tasks box-icon"></i>
			</div>
		</div>
		<div class="clearfix"></div>
		<br/><br/>
		<div class="col-div-8">
			<div class="box-8">
			<div class="content-box">
				<p>About to Expire <span>View All</span></p>
				<br/>
				<table>
	  <tr>
	    <th>Name</th>
	    <th>Quantity Left</th>
	    <th>Best Before</th>
	  </tr>
	  <tr>
	    <td>Methane</td>
	    <td>2 L</td>
	    <td>25/12/2022</td>
	  </tr>
	  <tr>
	    <td>Acetylene</td>
	    <td>1 L</td>
	    <td>01/12/2022</td>
	  </tr>
	  <tr>
	    <td>Ethylene</td>
	    <td>40 ml</td>
	    <td>05/12/2022</td>
	  </tr>
	  <tr>
	    <td>Methyl alcohol</td>
	    <td>500 ml</td>
	    <td>10/12/2022</td>
	  </tr>
	  
	  
	</table>
			</div>
		</div>
		</div>

		<div class="col-div-4">
			<div class="box-4">
				<div class="content-box">
					<p>Defective <span>View All</span></p>
					<br/>
					<table>
						<tr>
							<th>Equipments</th>
						</tr>
						<tr>
							<td>Bunsen Burner</td>
						</tr>
						<tr>
							<td>Bunsen Burner</td>
						</tr>
						<tr>
							<td>Bunsen Burner</td>
						</tr>
						<tr>
							<td>Bunsen Burner</td>
						</tr>
					</table>
				
					<!-- <div class="circle-wrap">
						<div class="circle">
							<div class="mask full">
								<div class="fill"></div>
							</div>
								<div class="mask half">
									<div class="fill"></div>
								</div>
								<div class="inside-circle"> 75% </div>
						</div>
					</div> -->
				</div>
			</div>
		</div>
			
		<div class="clearfix"></div>
	</div>


	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script>

	//   $(".nav").click(function(){
	//     $("#mySidenav").css('width','70px');
	//     $("#main").css('margin-left','70px');
	//     $(".logo").css('visibility', 'hidden');
	//     $(".logo span").css('visibility', 'visible');
	//      $(".logo span").css('margin-left', '-10px');
	//      $(".icon-a").css('visibility', 'hidden');
	//      $(".icons").css('visibility', 'visible');
	//      $(".icons").css('margin-left', '-8px');
	//       $(".nav").css('display','none');
	//       $(".nav2").css('display','block');
	//   });

	$(".nav2").click(function(){
	    $("#mySidenav").css('width','300px');
	    $("#main").css('margin-left','300px');
	    $(".logo").css('visibility', 'visible');
	     $(".icon-a").css('visibility', 'visible');
	     $(".icons").css('visibility', 'visible');
	     $(".nav").css('display','block');
	      $(".nav2").css('display','none');
	 });

	</script>

	</body>


	</html>