<?php
require('sidenav.php');
$username = $_SESSION['username'];

$query = "SELECT * FROM users WHERE username = ?";
$stmt = $conn->prepare($query);
$stmt->bind_param('s', $username);
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows > 0) {
    $user = $result->fetch_assoc();
} else {
    // Handle the case where user data is not found
    echo "User data not found";
    exit();
}

// Count the number of saved recommendations
$recommendationsQuery = "SELECT COUNT(DISTINCT predictedResult) AS num_recommendations FROM inputs WHERE userID = ?";
$recommendationsStmt = $conn->prepare($recommendationsQuery);
$recommendationsStmt->bind_param('i', $user['userID']);
$recommendationsStmt->execute();
$recommendationsResult = $recommendationsStmt->get_result();
$numRecommendations = $recommendationsResult->fetch_assoc()['num_recommendations'];

// Find the most frequently occurring predictedResult for the favorite crop
$favoriteCropQuery = "SELECT predictedResult, COUNT(*) AS count FROM inputs WHERE userID = ? GROUP BY predictedResult ORDER BY count DESC LIMIT 1";
$favoriteCropStmt = $conn->prepare($favoriteCropQuery);
$favoriteCropStmt->bind_param('i', $user['userID']);
$favoriteCropStmt->execute();
$favoriteCropResult = $favoriteCropStmt->get_result();
$favoriteCrop = $favoriteCropResult->fetch_assoc()['predictedResult'];

$stmt->close();
$recommendationsStmt->close();
$favoriteCropStmt->close();
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <title>Profile</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: "Poppins", sans-serif;
        }

        body {
            background: #acd4a4a4;
            flex-direction: column;
            align-items: center;
            height: 100vh;
        }

        h2 {
            text-transform: uppercase;
        }

        .avatar-card,
        .detailed-info-card {
            background-color: #fff;
            margin-bottom: 40px;
            box-shadow: 0 0 10px rgba(0, 0, 0, .2);
            border-radius: 20px;
        }

        .form-group input {
            text-align: center;
        }

        .avatar-card img {
            align-items: center;
            padding: 20px;
            width: 50%;
            border-radius: 50%;
            margin: 0 auto; 
            display: block;
        }

        .main-content {
            margin-left: 50px;
            margin-top: 20px;
        }

        .avatar-card .card-body {
            text-align: center;
        }

        .detailed-info-card .card-body {
            padding: 20px;
        }

        .detailed-info-card {
            padding: 30px;
        }

        .detailed-info-card label {
            font-size: 20px;
        }

        .detailed-info-card input {
            font-size: 18px;
        }

        .account-description {
            padding: 20px;
        }
        .btn-success{
            font-size: 20px;
            border: none;
            border-radius: 10px;
            width: 100%;
            height: 50px;
            text-transform: uppercase;
        }
        .btn-success:hover{
            background: #4ddb40d;
            color: #000;
            cursor: pointer;
        }

    </style>
</head>

<body style="background: url('bg3.jpg') no-repeat fixed; background-size: cover;
    background-position: center;">
    <div class="main-content">
        <h2 style="margin-left: 30px; font-size: 30px; margin-bottom: 20px; text-transform: uppercase;"><?php echo $user['username']; ?>'s profile</h2>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-6">
                    <div class="card avatar-card">
                        <img src="https://cdn-icons-png.flaticon.com/512/6997/6997490.png" class="card-img-top" alt="Avatar">
                        <div class="card-body text-center">
                            <h5 class="card-title" style="font-size: 30px; text-transform: uppercase;"><?php echo $user['username']; ?></h5>
                        </div>
                        <div class="info-rec" style="padding: 10px 20px; margin-left: 10px;">
                            <div class="form-group">
                                <label class="form-control-label" for="num_recommendations">Number of saved recommendations</label>
                                <input type="text" name="num_recommendations" value="<?php echo $numRecommendations; ?>" id="num_recommendations" class="form-control" style="font-size: 20px; font-weight: 600;" readonly>
                            </div>
                            <div class="form-group">
                                <label class="form-control-label" for="favorite_crop">Favorite Crop</label>
                                <input type="text" name="favorite_crop" value="<?php echo $favoriteCrop; ?>" id="favorite_crop" class="form-control" style="font-size: 20px; font-weight: 600;" readonly>
                            </div>
                        </div>
                    </div>
                    <div class="card detailed-info-card">
                        <div class="card-body">
                            <h5 style="text-align: left; font-weight: 600;">Profile Details</h5>
                            <div class="form-group">
                                <label class="form-control-label" for="input-username">Username</label>
                                <input type="text" name="customer_name" value="<?php echo $user['username']; ?>" id="input-username" class="form-control" readonly>
                            </div>
                            <div class="form-group">
                                <label class="form-control-label" for="input-email">Phone Number</label>
                                <input type="text" id="input-email" value="0<?php echo $user['number']; ?>" name="customer_phone" class="form-control" readonly>
                            </div>
                            <div class="form-group">
                                <label class="form-control-label" for="input-email">Email address</label>
                                <input type="email" id="input-email" value="<?php echo $user['email']; ?>" name="customer_email" class="form-control" readonly>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-5">
                <div class="card detailed-info-card">
                        <div class="card-body">
                            <div class="form-group">
                                <label class="form-control-label" for="acc_type" style="text-transform: uppercase;">Account Type</label>
                                <input type="text" name="account_type" value="<?php echo $user['accType']; ?>" id="acc_type" class="form-control" style="margin-top: 20px; font-weight: 600;" readonly>
                            </div>
                            <div class="account-description">
                                <div class="account_type" style="text-align: left;">
                                    <?php
                                    if ($user['accType'] === 'Premium') {
                                        echo "<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;You are currently in use of the premium version of the system! 
                                        This account type lets you access different machine learning algorithms not present in the basic version. 
                                        This will make the recommendation process for your future crops to grow improved.</p>";
                                    } else {
                                        echo "<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;You are currently in use of the basic version of our system Agrisense.</p>
                                        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Agrisense users are by default in use of the basic version of the system that 
                                            has access to the basic machine learning algorithms for the recommendation process.</p>
                                        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            But the users can send a request to the admin to have access to the Premium version of the system in 
                                            order to access other machine learning algorithms that will improve the 
                                            performance of the system in recommending your future crops to grow!
                                        </p>
                                        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            If you want to change your account type to Premium just click here!
                                        </p>";
                                    }
                                    ?>
                                </div>
                            </div>
                            <?php
                            if ($user['accType'] !== 'Premium') {
                                echo '<div class="changeacc_btn" style="text-align: right;">
                                    <button type="submit" name="upgrade_account" class="btn-success">Send Request</button>
                                </div>';
                            }
                            ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>
