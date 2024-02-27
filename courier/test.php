<?php
session_start();
include 'header.php';
include_once 'db_connect.php';
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

<!DOCTYPE html>
<html lang="en">

<body class="hold-transition sidebar-mini layout-fixed layout-navbar-fixed layout-footer-fixed">
<div class="wrapper">
  <?php include 'topbar.php' ?>
  <?php include 'sidebar.php' ?>

  <!-- Content Wrapper. Contains page content -->
  
  <div class="container float-right">

<div class="row">
    <table class="table table-hover table-dark" style="margin: 40px 0px; border: 1px solid black; border-collapse: collapse;">

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
                  $status = $row['status'];              
      
        ?>

        <tr>
            <td id="borders"><?php echo $id; ?></td>
            <td id="borders"><?php echo $name; ?></td>
            <td id="borders"><?php echo $Business_Name; ?></td>
            <td id="borders"><?php echo $Email; ?></td>
            <td id="borders"><?php echo $Phone_Number; ?></td>
            <td id="borders"><?php echo $Address; ?></td>
            <td id="borders"><?php echo $Message; ?></td>


            <td id="borders"> <a href="#" class="btn btn-success" value="<?php echo $status; ?>">Edit</a></td>
            
        </tr>
                
        <?php 
        }
        };
        ?>
    </table>
</div>
</div>


  <!-- /.content-wrapper -->

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->

  <!-- Main Footer -->
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
</body>
</html>
