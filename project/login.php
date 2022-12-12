<?php
  session_start();
	include 'dbconnect.php';

	if(isset($_POST['username'])){
		$uname=$_POST['username'];
		$psswd=$_POST['password'];
    $_SESSION['username']=$uname;
		$sql="select * from login where username='$uname' and password='$psswd' limit 1";
		$result=$conn->query($sql);
		if($result->num_rows==1){
			echo "success";
			?>

      <script>
          location.replace("lab_assistant/home.php");
      </script>

      <?php
		}else{
			echo "Wrong";
		}
	}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Login</title>
    <link rel="stylesheet" href="css/login.css">
</head>
<body>
    <div class="wrapper fadeInDown">
        <div id="formContent">
          <!-- Tabs Titles -->
          <h2 class="active"> Sign In </h2>
          <!-- <h2 class="inactive underlineHover">Sign Up </h2>
       -->
          <!-- Icon -->
          <div class="fadeIn first">
            <img src="images/login.png" id="icon" alt="User Icon" />
          </div>
      
          <!-- Login Form -->
          <form action="" method="POST">
            <input type="text" id="login" class="fadeIn second" name="username" placeholder="username">
            <input type="password" id="password" class="fadeIn third" name="password" placeholder="password">
            <input type="submit" class="fadeIn fourth" value="Log In">
          </form>
      
          <!-- Remind Passowrd -->
          <div id="formFooter">
            <a class="underlineHover" href="#">Forgot Password?</a>
          </div>
      
        </div>
      </div>
</body>
</html>