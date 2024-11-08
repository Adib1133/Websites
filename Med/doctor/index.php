<?php
include "includes/head.php";
?>

<body>

  <?php
  include "includes/header.php";
  ?>

  <div class=" container-fluid">

    <?php
    include "includes/sidebar.php";
    ?>

    <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
      <br>
      <div class="row">
        <div class="card" style="width: 25rem;margin-bottom: 20px ;margin-right: 200px ;">
          <a href="orders.php">
            <img class="card-img-top" src="../images/shopping-cart.svg" alt="Card image cap" style="width: 5rem;margin-top: 20px ;">
          </a>
          <div class="card-body">
            <h5 class="card-title">Orders</h5>
            <p class="card-text">Display and modify the orders details.</p>
            <a href="orders.php" class="btn btn-primary">Go to orders page</a>
          </div>
        </div>
     
        <div class="card" style="width: 25rem;margin-top: 20px ;">
          <a href="doctor.php">
            <img class="card-img-top" src="../images/user.svg" alt="Card image cap" style="width: 5rem;margin-top: 20px ;">
          </a>
          <div class="card-body">
            <h5 class="card-title">doctor</h5>
            <p class="card-text">Display and modify the doctors details.</p>
            <a href="doctor.php" class="btn btn-primary">Go to doctor page</a>
          </div>
        </div>
      </div>
    </main>
  </div>

  <?php
  include "includes/footer.php"
  ?>
</body>

</html>