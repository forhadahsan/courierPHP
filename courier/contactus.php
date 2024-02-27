<?php
error_reporting(~E_NOTICE);
session_start();
include 'header.php';
include_once 'db_connect.php';
include 'topbar.php';
include 'sidebar.php';

$sql = "SELECT * FROM contactus";

$result = $conn->query($sql);

if(!isset($_SESSION['login_id']))
header('location:login.php');
include 'db_connect.php';
ob_start();
if(!isset($_SESSION['system'])){

$system = $conn->query("SELECT * FROM system_settings")->fetch_array();
foreach($system as $k => $v){
$_SESSION['system'][$k] = $v;
}
}
ob_end_flush();

?>


<body class="hold-transition sidebar-mini layout-fixed layout-navbar-fixed layout-footer-fixed">
<div class="wrapper">
<div class="content-wrapper">

  <!-- Content Wrapper. Contains page content -->

  
  <div class="col-lg-12">
	<div class="card card-outline card-primary"> 
		<div class="card-header">
			<div class="card-tools">
				<a class="btn btn-block btn-sm btn-default btn-flat border-primary " href="./index.php?page=new_branch"><i class="fa fa-plus"></i> Add New</a>
			</div>
		</div>
		<div class="card-body">
            
        <table class="table table-hover" style="border-collapse: collapse;">
   
   <tr> 
       <td colspan="4" style="font-size: 40px; text-align: center;" > <h2> <b> All Contact Us </b>  </h2> </td>
   </tr>
   <tr id="borders">
       <td id="borders">  <b> Name          </b>    </td>
       <td id="borders">  <b> Email         </b>    </td>
       <td id="borders">  <b> Phone Number  </b>    </td>
       <td id="borders">  <b> Massage       </b>    </td>
   </tr>

   <?php 
       if($result)
       {
         while($row = mysqli_fetch_assoc($result))
         {
             $name = $row['name'];
             $Email = $row['email'];
             $PhoneNumber = $row['phoneNumber'];
             $massage = $row['massage'];
 
   ?>

   <tr>
       <td id="borders"><?php echo $name; ?></td>
       <td id="borders"><?php echo $Email; ?></td>
       <td id="borders"><?php echo $PhoneNumber; ?></td>
       <td id="borders"><?php echo $massage; ?></td>
       
   </tr>

   <?php 
   }
   };
   ?>
</table>
        
		</div>
	</div>
</div>
<style>
	table td{
		vertical-align: middle !important;
	}
</style>



  <!-- /.content-wrapper -->

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>

  <footer class="main-footer">
    <strong>Copyright &copy; 2023 <a href="forhadahsan.com">forhadahsan.com</a>.</strong>
    All rights reserved. Design by Forhad Ahsan.
    <div class="float-right d-none d-sm-inline-block">
      <b><?php echo $_SESSION['system']['name'] ?></b>
    </div>
  </footer>
</div>
<!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->
<!-- jQuery -->
<!-- Bootstrap -->
<?php include 'footer.php' ?>

