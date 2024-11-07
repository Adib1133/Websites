<?php
include "includes/head.php";
?>

<body>
    <?php
    include "includes/header.php"
    ?>


    <?php
    include "includes/sidebar.php";
    ?>
    <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
        <?php
        message();
        ?>
        <div class="container">
            <div class="row align-items-start">
                <div class="col">
                    <br>
                    <h2>doctor details</h2>
                    <br>
                </div>
                <div class="col">
                </div>
                <div class="col">
                    <br>
                    <form class="d-flex" method="GET" action="doctor.php">
                        <input class="form-control me-2 col" type="search" name="search_doctor_email" placeholder="Search for doctor (email)" aria-label="Search">
                        <button class="btn btn-outline-secondary" type="submit" name="search_doctor" value="search">Search</button>
                    </form>
                    <br>
                </div>
            </div>
        </div>
        <?php
        edit_doctor($_SESSION['doctor_id']);
        if (isset($_GET['edit'])) {
            $_SESSION['doctor_id'] = $_GET['edit'];
            $data = get_doctor($_SESSION['doctor_id']);

        ?>
            <br>
            <h2>Edit doctor Details</h2>
            <form action="doctor.php" method="POST">
                <div class="form-group">
                    <label>First name</label>
                    <input pattern="[A-Za-z_]{1,15}" type="text" class="form-control" placeholder="<?php echo $data[0]['doctor_fname'] ?>" name="doctor_fname">
                    <div class="form-text">please enter the first name in range(1-30) character/s , special character & numbers not allowed !</div>
                </div>
                <br>
                <div class="form-group">
                    <label for="validationTooltip01">Last name</label>
                    <input pattern="[A-Za-z_]{1,15}" id="validationTooltip01" type="text" class="form-control" placeholder="<?php echo $data[0]['doctor_lname'] ?>" name="doctor_lname">
                    <div class="form-text">please enter the last name in range(1-30) character/s , special character & numbers not allowed !</div>
                </div>
                <br>
                <div class="form-group">
                    <label for="exampleInputEmail1">Email address</label>
                    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="<?php echo $data[0]['doctor_email'] ?>" name="doctor_email">
                    <div class="form-text">please enter the email in format : example@gmail.com.</div>
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Password</label>
                    <input type="password" pattern="^\S*(?=\S{8,})(?=\S*[a-z])(?=\S*[A-Z])(?=\S*[\d])\S*$" class="form-control" placeholder="Password" name="doctor_password">
                    <div class="form-text">
                        <ul>
                            <li>Must be a minimum of 8 characters</li>
                            <li>Must contain at least 1 number</li>
                            <li>Must contain at least one uppercase character</li>
                            <li>Must contain at least one lowercase character</li>
                        </ul>
                    </div>
                </div>
                <br>
                <button type="submit" class="btn btn-outline-primary" value="update" name="doctor_update">Submit</button>
                <button type=" submit" class="btn btn-outline-danger" value="cancel" name="doctor_cancel">Cancel</button>
                <br> <br>
            </form>

        <?php
        }
        add_doctor();
        if (isset($_GET['add'])) {

        ?>
            <h2>Add new doctor </h2>
            <form action="doctor.php" method="POST">
                <div class="form-group">
                    <label>First name</label>
                    <input pattern="[A-Za-z_]{1,15}" type="text" class="form-control" placeholder="First name" name="doctor_fname">
                    <div class="form-text">please enter the first name in range(1-30) character/s , special character & numbers not allowed !</div>
                </div>
                <br>
                <div class="form-group">
                    <label for="validationTooltip01">Last name</label>
                    <input pattern="[A-Za-z_]{1,15}" id="validationTooltip01" type="text" class="form-control" placeholder="Last name" name="doctor_lname">
                    <div class="form-text">please enter the last name in range(1-30) character/s , special character & numbers not allowed !</div>
                </div>
                <br>
                <div class="form-group">
                    <label for="exampleInputEmail1">Email address</label>
                    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Email address" name="doctor_email">
                    <div class="form-text">please enter the email in format : example@gmail.com.</div>
                </div><br>
                <div class="form-group">
                    <label for="exampleInputPassword1">Password</label>
                    <input type="password" pattern="^\S*(?=\S{8,})(?=\S*[a-z])(?=\S*[A-Z])(?=\S*[\d])\S*$" class="form-control" placeholder="Password" name="doctor_password">
                    <div class="form-text">
                        <ul>
                            <li>Must be a minimum of 8 characters</li>
                            <li>Must contain at least 1 number</li>
                            <li>Must contain at least one uppercase character</li>
                            <li>Must contain at least one lowercase character</li>
                        </ul>
                    </div>
                </div>
                <br>
                <button type="submit" class="btn btn-outline-primary" value="update" name="add_doctor">Submit</button>
                <button type=" submit" class="btn btn-outline-danger" value="cancel" name="doctor_cancel">Cancel</button>
                <br> <br>
            </form>

        <?php
        }

        ?>
        <div class="table-responsive">
            <table class="table table-striped table-sm">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">ID</th>
                        <th scope="col">First Name</th>
                        <th scope="col">Last Name</th>
                        <th scope="col">Email</th>
                        <th scope="col">
                        <th scope="col">
                            <button type="button" class="btn btn-outline-primary "><a style="text-decoration: none; color:black;" href="doctor.php?add=1"> &nbsp;&nbsp;Add&nbsp;&nbsp;</a></button>
                        </th>
                        </th>

                </thead>

                <tbody>
                    <?php
                    $data = all_doctors();
                    delete_doctor();
                    if (isset($_GET['search_doctor'])) {
                        $query = search_doctor();
                        if (!empty($query)) {
                            $data = $query;
                        } else {
                            get_redirect("doctor.php");
                        }
                    }
                    $num = sizeof($data);
                    for ($i = 0; $i < $num; $i++) {
                    ?>
                        <tr>
                            <td><?php echo $i ?></td>
                            <td><?php echo $data[$i]['doctor_id'] ?></td>
                            <td><?php echo $data[$i]['doctor_fname'] ?></td>
                            <td><?php echo $data[$i]['doctor_lname'] ?></td>
                            <td><?php echo $data[$i]['doctor_email'] ?></td>
                            <td>
                                <button type="button" class="btn pull-left btn-outline-warning"><a style="text-decoration: none; color:black;" href="doctor.php?edit=<?php echo $data[$i]['doctor_id'] ?>">Edit</a></button>
                            </td>
                            <?php
                            if ($data[$i]['doctor_id'] != $_SESSION['doctor_id']) {
                            ?>
                                <td>
                                    <button type="button" class="btn pull-left btn-outline-danger"><a style="text-decoration: none; color:black;" href="doctor.php?delete=<?php echo $data[$i]['doctor_id'] ?>">Delete</a></button>
                                </td>
                            <?php
                            } else {
                            ?>
                                <td></td>
                            <?php
                            }
                            ?>
                        </tr>
                    <?php  }
                    ?>
                </tbody>
            </table>
        </div>
    </main>
    </div>
    </div>
    <?php
    include "includes/footer.php"
    ?>
</body>