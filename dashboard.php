<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Agrisense Dashboard</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: "Poppins", sans-serif;
        }

    body {
        flex-direction: column;
        align-items: center;
        height: 100vh;
    }
    .container {
        display: flex;/* Allow cards to wrap to the next line if needed */
        margin: 20px 0;
    }

    .card {
        width: 40%;
        flex: 1;
        margin: 10px;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    .description-card {
        margin-top: 20px; /* Adjust as needed */
    }

    h2, h1 {
        text-transform: uppercase;
    }
    </style>
</head>
<body>
    <?php
    require('sidenav.php');
    require('config/config.php');

    // Check if the user is logged in
    if (!isset($_SESSION['username'])) {
        // Redirect to login page or handle as needed
        header("Location: login.php");
        exit();
    }

    // Fetch data for the logged-in user - Pie Chart
    $username = $_SESSION['username'];
    $queryPie = "SELECT predictedResult, COUNT(predictedResult) as resultCount
                 FROM inputs
                 WHERE userID = (SELECT userID FROM users WHERE username = ?)
                 GROUP BY predictedResult
                 ORDER BY resultCount DESC
                 LIMIT 5";
    $stmtPie = $conn->prepare($queryPie);
    $stmtPie->bind_param("s", $username);
    $stmtPie->execute();
    $resultPie = $stmtPie->get_result();
    $dataPie = $resultPie->fetch_all(MYSQLI_ASSOC);

    // Prepare data for Pie Chart
    $labelsPie = [];
    $dataPointsPie = [];

    foreach ($dataPie as $rowPie) {
        $labelsPie[] = $rowPie['predictedResult'];
        $dataPointsPie[] = $rowPie['resultCount'];
    }

    // Fetch data for the logged-in user - Bar Chart
    $queryBar = "SELECT AVG(nitrogen) as avgNitrogen, AVG(phosphorus) as avgPhosphorus, AVG(potassium) as avgPotassium, AVG(rainfall) as avgRainfall, AVG(temperature) as avgTemperature, AVG(humidity) as avgHumidity, AVG(pH) as avgpH
                 FROM inputs
                 WHERE userID = (SELECT userID FROM users WHERE username = ?)";
    $stmtBar = $conn->prepare($queryBar);
    $stmtBar->bind_param("s", $username);
    $stmtBar->execute();
    $resultBar = $stmtBar->get_result();
    $averagesBar = $resultBar->fetch_assoc();

    // Prepare data for Bar Chart
    $labelsBar = ['Nitrogen', 'Phosphorus', 'Potassium', 'Rainfall', 'Temperature', 'Humidity', 'pH'];
    $dataPointsBar = [
        $averagesBar['avgNitrogen'],
        $averagesBar['avgPhosphorus'],
        $averagesBar['avgPotassium'],
        $averagesBar['avgRainfall'],
        $averagesBar['avgTemperature'],
        $averagesBar['avgHumidity'],
        $averagesBar['avgpH'],
    ];
    ?>
    <div class="main-content">
        <h1><?php echo $_SESSION['username'];?>'s Dashboard</h1>
        <div class="container">
            <!-- Pie Chart Container -->
            <div class="card">
                <h2>Your Top 5 favourite recommendations</h2>
                <canvas id="pieChart"></canvas>
                <div class="description-card">
                    <h2>Pie Chart Description</h2>
                    <p>Add your pie chart description here.</p>
                </div>
            </div>

            <!-- Bar Chart Container -->
            <div class="card">
                <h2>Average Soil Parameters</h2>
                <canvas id="barChart"></canvas>
                <div class="description-card">
                    <h2>Bar Chart Description</h2>
                    <p>Add your bar chart description here.</p>
                </div>
            </div>
        </div>
    </div>

    <script>
        var ctxPie = document.getElementById('pieChart').getContext('2d');
        var myPieChart = new Chart(ctxPie, {
            type: 'pie',
            data: {
                labels: <?php echo json_encode($labelsPie); ?>,
                datasets: [{
                    data: <?php echo json_encode($dataPointsPie); ?>,
                    backgroundColor: [
                        'rgba(255, 99, 132, 0.7)',
                        'rgba(54, 162, 235, 0.7)',
                        'rgba(255, 206, 86, 0.7)',
                        'rgba(75, 192, 192, 0.7)',
                        'rgba(153, 102, 255, 0.7)',
                    ],
                }]
            },
            options: {
                responsive: true,
            }
        });

        var ctxBar = document.getElementById('barChart').getContext('2d');
        var myBarChart = new Chart(ctxBar, {
            type: 'bar',
            data: {
                labels: <?php echo json_encode($labelsBar); ?>,
                datasets: [{
                    label: 'Average Soil Parameters',
                    data: <?php echo json_encode($dataPointsBar); ?>,
                    backgroundColor: [
                        'rgba(255, 99, 132, 0.7)',
                        'rgba(54, 162, 235, 0.7)',
                        'rgba(255, 206, 86, 0.7)',
                        'rgba(75, 192, 192, 0.7)',
                        'rgba(153, 102, 255, 0.7)',
                        'rgba(255, 159, 64, 0.7)',
                        'rgba(128, 128, 128, 0.7)',
                    ],
                }]
            },
            options: {
                responsive: true,
                scales: {
                    x: {
                        beginAtZero: true,
                    },
                    y: {
                        beginAtZero: true,
                    },
                },
            }
        });
    </script>
</body>
</html>
