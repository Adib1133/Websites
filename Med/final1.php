<?php
include "includes/head.php";
?>

<body>
    <?php
    include "includes/header.php";
    ?>
    <div>
        <h1 style="text-align: center; font-family: 'Fredoka One', cursive;">Scan The QR Code Below</h1>
        <img src="images/bkash1.png" alt="" style="width:30rem; margin-left: 400px;">
    </div>

                <a href="final.php?order=done" class="btn btn-outline-success btn-lg"> &nbsp;Proceed to Checkout &nbsp;</a>

    <?php
    add_order();
    ?>
    <br>
    <!-- FOOTER -->
    <?php
    include "includes/footer.php"
    ?>

</body>