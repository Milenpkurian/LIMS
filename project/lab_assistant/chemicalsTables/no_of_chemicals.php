<?php
    include 'connection.php';

    $sql="select count(distinct username) as count from users;";

    $result=mysqli_query($con,$sql);
    $GLOBALS['noOfChemicals'] = $result->fetch_assoc();
    // while ($GLOBALS['noOfChemicals'] = $result->fetch_assoc()) {
        // echo $noOfChemicals['count'] ;
    // }

?>