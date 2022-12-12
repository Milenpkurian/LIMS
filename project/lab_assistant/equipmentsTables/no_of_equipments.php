<?php
    include 'connection.php';

    $sql="select count(distinct email) as count from users;";

    $result=mysqli_query($con,$sql);
    $GLOBALS['noOfEquipments'] = $result->fetch_assoc();
    // while ($GLOBALS['noOfChemicals'] = $result->fetch_assoc()) {
        // echo $noOfEquipments['count'] ;
    // }

?>