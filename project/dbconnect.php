<?php
     // connecting with database
     $GLOBALS['conn']=mysqli_connect("localhost","root","root","ims_project");
     if($conn->connect_error){
         die("Conection Failed:".$conn->connect_error);
     }
?>