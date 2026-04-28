<?php
session_start();
error_reporting(0);
include('includes/config.php');

// Check if the booking form is submitted
if (isset($_POST['submit2'])) {
    $pid = intval($_GET['pkgid']);
    $useremail = $_SESSION['login'];
    $fromdate = $_POST['fromdate'];
    $todate = $_POST['todate'];
    $comment = $_POST['comment'];
    $vehicle = $_POST['vehicle'];
    $language = $_POST['language'];
    $status = 0;

    $sql = "INSERT INTO tblbooking (PackageId, UserEmail, FromDate, ToDate, Comment, status) VALUES (:pid, :useremail, :fromdate, :todate, :comment, :status)";
    $query = $dbh->prepare($sql);
    $query->bindParam(':pid', $pid, PDO::PARAM_STR);
    $query->bindParam(':useremail', $useremail, PDO::PARAM_STR);
    $query->bindParam(':fromdate', $fromdate, PDO::PARAM_STR);
    $query->bindParam(':todate', $todate, PDO::PARAM_STR);
    $query->bindParam(':comment', $comment, PDO::PARAM_STR);
    $query->bindParam(':status', $status, PDO::PARAM_STR);
    $query->execute();
    $lastInsertId = $dbh->lastInsertId();

    if ($lastInsertId) {
        // Store the last inserted booking ID in the session
        $_SESSION['lastBookingId'] = $lastInsertId;

        // Redirect to the payment page with the booking ID
        header("Location: payment.php?booking_id=" . $lastInsertId);
        exit();
    } else {
        $error = "Something went wrong. Please try again.";
    }
}
?>

<!DOCTYPE HTML>
<html>
<head>
    <title>TSB | Package Details</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script type="text/javascript">
        addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
        function hideURLbar() { window.scrollTo(0, 1); }
    </script>
    <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
    <link href="css/style.css" rel='stylesheet' type='text/css' />
    <link href='//fonts.googleapis.com/css?family=Open+Sans:400,700,600' rel='stylesheet' type='text/css'>
    <link href="css/font-awesome.css" rel="stylesheet">
    <script src="js/jquery-1.12.0.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
    <script src="js/wow.min.js"></script>
    <link rel="stylesheet" href="css/jquery-ui.css" />
    <script> new WOW().init(); </script>
    <script src="js/jquery-ui.js"></script>
    <script>
        $(function() {
            $("#datepicker,#datepicker1").datepicker();
        });
    </script>
    <style>
        body {
            background-color: #ffffff;
            font-family: Arial, sans-serif;
        }
        .errorWrap {
            padding: 10px;
            margin: 0 0 20px 0;
            background: #fff;
            border-left: 4px solid #dd3d36;
            box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
        }
        .succWrap {
            padding: 10px;
            margin: 0 0 20px 0;
            background: #fff;
            border-left: 4px solid #5cb85c;
            box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
        }
        .container {
            margin: 0 auto;
            padding: 0px;
            max-width: 1000px;
            background-color: #f2f2f200;
            border-radius: 10px;
            box-shadow: 0 0 10px rgb(0 0 0 / 0%)
        }
        .form-group {
            margin-bottom: 15px;
        }
        .btn-primary {
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .selectroom_left img {
            width: 100%;
            border-radius: 10px;
        }
    </style>
</head>
<body>
<!-- top-header -->
<?php include('includes/header.php');?>
<div class="banner-3">
    <div class="container">
        <h1 class="wow zoomIn animated" data-wow-delay=".5s"> TSB - Package Details</h1>
    </div>
</div>

<!-- Display messages -->
<div class="container">
    <?php if ($error) { ?>
        <div class="errorWrap"><strong>ERROR</strong>: <?php echo htmlentities($error); ?></div>
    <?php } else if ($msg) { ?>
        <div class="succWrap"><strong>SUCCESS</strong>: <?php echo htmlentities($msg); ?></div>
    <?php } ?>
</div>

<!-- selectroom -->
<div class="selectroom">
    <div class="container">    
    <?php 
    $pid = intval($_GET['pkgid']);
    $sql = "SELECT * from tbltourpackages where PackageId=:pid";
    $query = $dbh->prepare($sql);
    $query->bindParam(':pid', $pid, PDO::PARAM_STR);
    $query->execute();
    $results = $query->fetchAll(PDO::FETCH_OBJ);
    if ($query->rowCount() > 0) {
        foreach ($results as $result) {    
    ?>
        <a href="payment.php" class="scroll-to-form btn-primary btn">Go to Booking Form</a>

        <form name="book" method="post" id="bookingForm">
            <div class="selectroom_top">
                <div class="col-md-4 selectroom_left">
                    <img src="admin/pacakgeimages/<?php echo htmlentities($result->PackageImage); ?>" class="img-responsive" alt="">
                </div>
                <div class="col-md-8 selectroom_right">
                    <h2><?php echo htmlentities($result->PackageName); ?></h2>
                    <p><b>Package Type :</b> <?php echo htmlentities($result->PackageType); ?></p>
                    <p><b>Package Location :</b> <?php echo htmlentities($result->PackageLocation); ?></p>
                    <p><b>Features :</b> <?php echo htmlentities($result->PackageFetures); ?></p>

                    <!-- Booking dates -->
                    <div class="form-group">
                        <label>From</label>
                        <input class="date" id="datepicker" type="text" placeholder="dd-mm-yyyy" name="fromdate" required="">
                    </div>
                    <br><br>
                </div>
                
                <!-- Vehicle and Language Selection -->
                <h3>Select Vehicle and Language</h3>
                <br><br>
                <div class="form-group">
                    <label>Choose Vehicle:</label><br>
                    <input type="radio" name="vehicle" value="Japan 4X4" required> Japan 4X4 (+tax)<br>
                    <input type="radio" name="vehicle" value="India 4X4"> India 4X4
                </div>
                <br>
                <div class="form-group">
                    <label>Choose Language:</label><br>
                    <input type="radio" name="language" value="English" required> English<br>
                    <input type="radio" name="language" value="French"> French<br>
                    <input type="radio" name="language" value="Spanish"> Spanish<br>
                    <input type="radio" name="language" value="Japanese"> Japanese<br>
                    <input type="radio" name="language" value="Korean"> Korean<br>
                    <input type="radio" name="language" value="Russian"> Russian<br>
                    <input type="radio" name="language" value="Ukrainian"> Ukrainian
                </div>

                <h2>Travels</h2>
                <div class="form-group">
                    <label>Comment:</label>
                    <textarea class="form-control" name="comment" placeholder="Your message"></textarea>
                </div>
                <div class="grand">
					<p>Grand Total</p>
					<h3>USD.600</h3>
                    </div>
                    
					<?php if ($_SESSION['login']) { ?>
        <button type="submit" name="submit2" class="btn-primary btn">Book and Pay</button>
    <?php } else { ?>
        <a href="#" data-toggle="modal" data-target="#myModal4" class="btn-primary btn">Login to Book</a>
    <?php } ?>

                    <div class="clearfix"></div>
                
            </div>
        </form>
    <?php 
        } 
    } 
    ?>
    </div>
</div>
<?php include('includes/footer.php');?>
<!-- signup -->
<?php include('includes/signup.php');?>			
<!-- //signu -->
<!-- signin -->
<?php include('includes/signin.php');?>			
<!-- //signin -->
<!-- write us -->
<?php include('includes/write-us.php');?>

</body>
</html>










