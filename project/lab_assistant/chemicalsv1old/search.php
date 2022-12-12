<?php
	include 'session.php';
    include '../../dbconnect.php';
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>search</title>
</head>
<body>
    <?php
       
        if(isset($_POST['search'])){
            $search=$_POST['search'];
            $sql="select * from glasswares where item_name='$search'";
            $result=$conn->query($sql);
            $num=$result->num_rows;
            if($num){
                if($result){
                    // echo $num;
                    while($row=$result->fetch_assoc()){
    ?>
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th scope="col">Stock ID</th>
                                    <th scope="col">Item Name</th>    
                                    <th scope="col">Rate</th>
                                    <th scope="col">Purchased Qty</th>
                                    <th scope="col">Date</th>
                                    <th scope="col">Nos Received</th>
                                    <th scope="col">Total</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th scope="row"><?php echo $row["stock_id"] ?></th>
                                    <td><?php echo $row["item_name"] ?></td>
                                    <td><?php echo $row["rate"] ?></td>
                                    <td><?php echo $row["purchased_qty"] ?></td>
                                    <td><?php echo $row["date"] ?></td>
                                    <td><?php echo $row["nos_received"] ?></td>
                                    <td><?php echo $row["total"] ?></td>
                                </tr>
                            </tbody>
                        </table>
                        
    <?php
                    }
                }
            }else{
    ?>
        <h1>No Result Found</h1>
    <?php
            }
        }
    ?>
</body>
</html>