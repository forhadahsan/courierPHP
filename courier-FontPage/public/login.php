<?php 
     include_once ('dbconfig.php');
     
     // login page in not completed plase work this page.........
     
     if(isset($_POST['uEmail']) && isset($_POST['password']))
     {
      $email = $_POST['uEmail'];
      $password = $_POST['password'];

      
      if(!empty($email) && !empty($password))
      {
        $sql = "SELECT id FROM registion WHERE Email='$email' AND password='$password' ";
            $result = $conn->query($sql);
            
            $num_rows = mysqli_num_rows($result);
            if($num_rows) {
                echo "Login Successfully";
                header ('location:index.php');
            }
            else {
                echo "Login  Failed";
            }
        }
        else
        {
            echo "Fillup all field or email and password Does not match";
        }      
     }


     ?>
     
     <title>courier | Landing, Responsive &amp; Business Templatee</title>
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
     <?php 
        include_once('headers.php');
     ?>
     <!-- <section> begin ============================-->
      <section>

        <div class="container">
          <div class="row justify-content-center">
            <div class="col-md-6 col-lg-5 col-xl-4"><img src="assets/img/illustrations/login.png" alt="..." />
              <h5 class="text-danger">REQUEST A LOGIN</h5>
              <h2>We will contact in the shortest time.</h2>
              <p class="text-muted">All days & Friday  2am-8pm.</p>
            </div>
            <div class="col-md-6 col-lg-5 col-xl-4">
              <h3> Log in :</h3>
              <form class="row" method="post">
                
                <div class="mb-3">
                  <label class="form-label visually-hidden" for="inputEmail">Email</label>
                  <input class="form-control form-quriar-control" name="uEmail" type="email" placeholder="Enter Your Email" required="required"/>
                </div>
                <div class="mb-3">
                  <label class="form-label visually-hidden" for="inputnumber">Password</label>
                  <input class="form-control form-quriar-control" name="password" type="text" placeholder="Enter Your Password " required="required"/>
                </div>
                
                <div class="d-grid">
                  <input class="btn btn-primary" name="btnsubmit" type="submit" value="Send">
                </div>

                <div style="margin: 15px;">
                  <p>Don’t have an account?<a href="registion.php"><b style="color: green;"> Register </b></a> </p>
                </div>
              </form>
            </div>
          </div>
        </div>
        <!-- end of .container-->

      </section>
      <!-- <section> close ============================-->
<?php 
    include_once('footer.php');

?>
   