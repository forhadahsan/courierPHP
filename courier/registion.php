<?php
error_reporting(~E_NOTICE);
session_start();
include 'header.php';
include_once 'db_connect.php';
include 'topbar.php';
include 'sidebar.php';

$sql = "SELECT * FROM registion";

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
			<table class="table tabe-hover table-bordered" id="list">

   
   <tr> 
       <td colspan="8" style="font-size: 40px; text-align: center;" > <h2> All Registion List </h2> </td>
   </tr>
   <tr id="borders">
       <td id="borders">  <b> Id          </b>    </td>
       <td id="borders">  <b> Name          </b>    </td>
       <td id="borders">  <b> Business Name </b>    </td>
       <td id="borders">  <b> Email         </b>    </td>
       <td id="borders">  <b> Phone Number  </b>    </td>
       <td id="borders">  <b> Address       </b>    </td>
       <td id="borders">  <b> Massage       </b>    </td>
       <td id="borders">  <b> Status        </b>    </td>
   </tr>

   <?php 
       if($result)
       {
         while($row = mysqli_fetch_assoc($result))
         {
             $id = $row['id'];
             $name = $row['name'];
             $Business_Name = $row['Business_Name'];
             $Email = $row['Email'];
             $Phone_Number = $row['Phone_Number'];
             $Address = $row['Address'];
             $Message = $row['Message'];
             $status = $row['status'];  // active and inactive cheak this status line other wish this line withdrow       
 
   ?>

   <tr>
       <td id="borders"><?php echo $id; ?></td>
       <td id="borders"><?php echo $name; ?></td>
       <td id="borders"><?php echo $Business_Name; ?></td>
       <td id="borders"><?php echo $Email; ?></td>
       <td id="borders"><?php echo $Phone_Number; ?></td>
       <td id="borders"><?php echo $Address; ?></td>
       <td id="borders"><?php echo $Message; ?></td>
        <!-- start===  this line is active and inactive code but this line dose not work -->
        <td>
         <?php 
           if($row['status'] == 1)
           {
            echo '<p> <a href="reg_active.php?id='.$row['id'].'&status=0" class="btn btn-success"> Active</a> </p>';
           }
           else{
            echo '<p> <a href="reg_active.php?id='.$row['id'].'&status=1" class="btn btn-danger"> inactive</a> </p>';
           }
          //   if($row['status'] == 1){
          //     echo '<p><a href="status.php?id='.$row['id'].'$status=0"> inactive </a></p>';
          //   }
          //   else {
          //     echo '<p><a href="status.php?id='.$row['id'].'$status=1"> active </a></p>';
          //   }
          // 
          // $result = $conn->prepare("SELECT * FROM registion order by id");
          // $result->execute();
          // while($row = mysqli_fetch_assoc($result));
          //   if($row['status'] == 'active')
          //   {
          //     echo "<td><a href='uppdate_status.php?userid=$row[id]' class='btn btn-success'">$row['status']."</a></td>";
          //   }
          //   else {
          //     echo "<td><a href='uppdate_status.php?userid=$row[id]' class='btn btn-danger'">$row['status']."</a></td>";
          //   }
            
          // ?>
        </td>
            <!-- end====  this line is active and inactive code but this line dose not work -->
       
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

