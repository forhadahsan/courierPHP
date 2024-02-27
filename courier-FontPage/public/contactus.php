     <?php 
     include_once ('dbconfig.php');
     
     //header('location:login.php');
     
     if(isset($_POST['btnsubmit']))
     {
      $name = $_POST['uName'];
      $email = $_POST['uEmail'];
      $contact = $_POST['unumber'];
      $massage = $_POST['massage'];

      $error = '';

      $sql = "INSERT INTO contactus(name,email,phoneNumber,massage) VALUES('$name','$email','$contact','$massage')";

      $result = $conn->query($sql);

        if($result)
        {
          echo "<b style='background-color: #FF6666;'>";
          echo " Your Data Successfully Recorded";
          header("Refresh:5");
          
          echo "</b>";
        }
        else {
          echo "Your Data Failed OR Not Recorded";
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
            <div class="col-md-6 col-lg-5 col-xl-4"><img src="assets/img/illustrations/callback.png" alt="..." />
              <h5 class="text-danger">REQUEST A CALLBACK</h5>
              <h2>We will contact in the shortest time.</h2>
              <p class="text-muted">All days & Friday  2am-8pm.</p>
            </div>
            <div class="col-md-6 col-lg-5 col-xl-4">
              <h3> Contact Us :</h3>
              <form class="row" method="post">
                <div class="mb-3">
                  <label class="form-label visually-hidden" for="inputName">Name</label>
                  <input class="form-control form-quriar-control" name="uName" type="text" placeholder="Enter Your Name" required="required" />
                </div>
                <div class="mb-3">
                  <label class="form-label visually-hidden" for="inputEmail">Email</label>
                  <input class="form-control form-quriar-control" name="uEmail" type="email" placeholder="Enter Your Email" required="required"/>
                </div>
                <div class="mb-3">
                  <label class="form-label visually-hidden" for="inputnumber">Phone Number</label>
                  <input class="form-control form-quriar-control" name="unumber" type="text" placeholder="Enter Your Contact Number" required="required"/>
                </div>
                <div class="mb-5">
                  <label class="form-label visually-hidden" for="validationTextarea">Message</label>
                  <textarea class="form-control form-quriar-control is-invalid border-400" name="massage" placeholder="Message" style="height: 150px" required="required"></textarea>
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

