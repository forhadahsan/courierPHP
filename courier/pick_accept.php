<?php 
    include_once ("db_connect.php");

    $id = $_GET['id'];
    $status =$_GET['status'];
    $pickUpdate = "UPDATE pick_request SET status=$status WHERE id=$id";
    mysqli_query($conn, $pickUpdate);
    header('location:pickUpRecqust.php');
?>