



<?php

    include_once ('dbconfig.php');

    $sql = "SELECT * FROM `branches`";
    $result = $conn->query($sql);
            
  ?>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <!-- ===============================================-->
    <!--    Favicons-->
    <!-- ===============================================-->
    <link rel="apple-touch-icon" sizes="180x180" href="assets/img/favicons/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="assets/img/favicons/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="assets/img/favicons/favicon-16x16.png">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicons/favicon.ico">
    <link rel="manifest" href="assets/img/favicons/manifest.json">
    <meta name="msapplication-TileImage" content="assets/img/favicons/mstile-150x150.png">
    <meta name="theme-color" content="#ffffff">


    <!-- ===============================================-->
    <!--    Stylesheets-->
    <!-- ===============================================-->
    <link href="assets/css/theme.css" rel="stylesheet" />
    <style>
      table td
      {
        margin-top: 100px; 
        border: 1px solid black;
        border-collapse: collapse;
        text-align: center;
       
      }

      /*  Header style */
      a {
      font-size:14px;
      font-weight:700
    }
    .superNav {
      font-size:13px;
    }
    .form-control {
      outline:none !important;
      box-shadow: none !important;
    }
    @media screen and (max-width:540px){
      .centerOnMobile {
        text-align:center
      }
    }
    </style>

    <?php 
        include_once('headers.php');
    ?>
    <div class="container">
  </div class="row">
    <table class="table table-hover table-white" style="margin-top: 100px;">
   
      <tr> 
        <td colspan="5" style="font-size: 40px;">  All Branch Details  </td>
      </tr>
      <tr>
        <td>  <b> Branch ID      </b>       </td>
        <td>  <b> Branch Address: </b> </td>
        <td>  <b> Branch City:    </b>   </td>
        <td>  <b> Branch Thana:   </b>    </td>
        <td>  <b> Phone No:        </b>        </td>
      </tr>

      <?php 
        while($rows= $result->fetch_assoc())
        {
      ?>

      <tr>
          <td><?php echo $rows['id']; ?></td>
          <td><?php echo $rows['street']; ?></td>
          <td><?php echo $rows['city']; ?></td>
          <td><?php echo $rows['state']; ?></td>
          <td><?php echo $rows['contact']; ?></td>
      </tr>
          <?php 
        };
          ?>
    </table>
    </div>
      </div>

    <?php 
        include_once('footer.php');
    ?>