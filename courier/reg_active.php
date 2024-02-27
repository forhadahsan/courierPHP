<?php 
    include_once ("db_connect.php");

    $id = $_GET['id'];
    $status =$_GET['status'];
    $update = "UPDATE registion SET status=$status WHERE id=$id";
    mysqli_query($conn, $update);
    header('location:registion.php');
?>