

<?php

    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "curierr_management";
    
    // Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);
    // Check connection
    if ($conn->connect_error) {
      die("Connection failed: " . $conn->connect_error);
    }

    $sql = "SELECT * FROM `branches`";
    $result = $conn->query($sql);
    if($result->num_rows > 0)
    {
      while($row = $result->fetch_assoc())
      {
        $id = $row['id'];
        $brn = $row['branch_code'];
        $stet = $row['street'];
         echo $id.'<br>';
         echo $brn;
      }
    }

  ?>