<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
        * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: "Poppins", sans-serif;
}

body {
    background: rgba(189, 188, 188, 0.507);
    justify-content: center;
    align-items: center;
}
h1{
    font-size: 27px;
}
    </style>
</head>

<body>
    <?php require('sidenav.php');?>
    <div class="main-content">
        <div class="container-fluid mt--8">
        <a href="history.php" class="btn btn-secondary mb-3">
                <i class="fas fa-arrow-left"></i> Back to history
            </a>
            <div class="row">
                <div class="col-md-8">
                    <div class="card shadow">
                        <div class="card-header border-0">
                            Recommendation
                        </div>
                        <div class="row">
                            <div class="col-md-6" style="padding: 20px 20px;">
                                <div class="picture" style="padding: 16px;">
                                    <img src="images\samplecrop6.jpg" alt="amado" class="img-fluid" style="width: 100%; height: 300px; border-radius: 10px;">
                                </div>
                                <div class="crop-name" style="text-align: center;">
                                    <h1>
                                        <?php
                                        if (isset($_GET['inputID'])) {
                                            $inputID = $_GET['inputID'];
                                            $getCropNameQuery = "SELECT predictedResult FROM inputs WHERE inputID = '$inputID'";
                                            $result = mysqli_query($conn, $getCropNameQuery);
                                            if ($result && $row = mysqli_fetch_assoc($result)) {
                                                echo $row['predictedResult'];
                                            }
                                        }
                                        ?>
                                    </h1>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="description-title" style="padding: 16px;">
                                    <h2>
                                        Corn Crop Details
                                    </h2>
                                </div>
                                <div class="description" style="padding: 17px;">
                                    <p>
                                        Corn is a widely cultivated grain crop, native to the Americas. It is a staple food in many parts of the world, providing nutrients and versatility in cooking.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card shadow">
                        <div class="card-header border-0">
                            Statistics
                        </div>
                        <div class="card-body" style="max-height: 380px; overflow-y: auto;">
                            <!-- Content for the Right Side Goes Here -->
                            <?php
                            // Retrieve and display statistics from the database
                            if (isset($_GET['inputID'])) {
                                $inputID = $_GET['inputID'];
                                $getStatisticsQuery = "SELECT * FROM inputs WHERE inputID = '$inputID'";
                                $result = mysqli_query($conn, $getStatisticsQuery);
                                if ($result && $row = mysqli_fetch_assoc($result)) {
                                    echo '<div class="statistics" style="padding: 10px;">';
                                    echo '<p class="stat"><strong>Nitrogen:</strong> ' . $row['nitrogen'] . '</p>';
                                    echo '<p class="stat"><strong>Phosphorus:</strong> ' . $row['phosphorus'] . '</p>';
                                    echo '<p class="stat"><strong>Potassium:</strong> ' . $row['potassium'] . '</p>';
                                    echo '<p class="stat"><strong>Rainfall:</strong> ' . $row['rainfall'] . '</p>';
                                    echo '<p class="stat"><strong>Temperature:</strong> ' . $row['temperature'] . '</p>';
                                    echo '<p class="stat"><strong>Humidity:</strong> ' . $row['humidity'] . '</p>';
                                    // Continue with other statistics...
                                    echo '</div>';
                                }
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
