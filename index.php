<?php
// Step 1: Database credentials
$host = 'sql300.infinityfree.com';
$user = 'if0_38506377';  
$pass = 'ViqVkaydmgUn';     
$dbname = 'if0_38506377_video_games_db';

// Step 2: Connect to MySQL
$conn = new mysqli($host, $user, $pass, $dbname);

// Step 3: Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Video Games Library</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: #111;
            color: #eee;
            margin: 0;
            padding: 2rem;
        }
        .game {
            background: #1e1e1e;
            padding: 1rem;
            margin-bottom: 2rem;
            border-left: 6px solid #555;
            border-radius: 6px;
        }
        .top-rated {
            border-left-color: limegreen;
            background-color: #222;
        }
        .game img {
            width: 300px;
            display: block;
            margin-top: 1rem;
        }
    </style>
</head>
<body>
    <h1>🎮 My Video Games Collection</h1>

    <?php
    $sql = "SELECT * FROM video_games";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            // conditional styling for top-rated games
            $topRated = ($row['rating'] >= 9.5) ? "top-rated" : "";
            echo "<div class='game $topRated'>";
            echo "<h2>" . $row["title"] . "</h2>";
            echo "<strong>Genre:</strong> " . $row["genre"] . "<br>";
            echo "<strong>Release Date:</strong> " . $row["release_date"] . "<br>";
            echo "<strong>Platform:</strong> " . $row["platform"] . "<br>";
            echo "<strong>Rating:</strong> " . $row["rating"] . "/10<br>";
            echo "<strong>Price:</strong> $" . $row["price"] . "<br>";
            echo "<img src='" . $row["image_url"] . "' alt='Game cover'>";
            echo "</div>";
        }
    } else {
        echo "No games found.";
    }

    $conn->close();
    ?>
</body>
</html>