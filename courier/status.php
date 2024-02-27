<?php 
    error_reporting(~E_NOTICE);
    include_once('db_connect.php');

    $id = $_GET['id'];
    $status = $_GET['status'];

    $updates = "UPDATE registion SET status=$status WHERE id=$id";
    mysqli_query($conn,$updates);
    header('location:registion.php');
?>