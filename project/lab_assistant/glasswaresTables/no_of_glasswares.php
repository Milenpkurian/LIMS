<?php
    include 'connection.php';

    $sql="select count(distinct email) as count from users;";

    $result=mysqli_query($con,$sql);
    $GLOBALS['noOfGlasswares'] = $result->fetch_assoc();
    // while ($GLOBALS['noOfChemicals'] = $result->fetch_assoc()) {
        // echo $noOfGlasswares['count'] ;
    // }

?>