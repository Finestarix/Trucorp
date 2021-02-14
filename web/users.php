<?php

// Create Database Connection
$databaseConnection = new mysqli(
    '172.18.0.2',   // Database Host
    'root',         // Database Username
    'T3sT1nG!',     // Database Password
    'trucorp',      // Database Name
    3306            // Database Port
);

// Create Raw Query to Get Total Users
$query = "SELECT COUNT(*) AS total_users FROM `users`";

// Execute Query
$preparedStatement = $databaseConnection->prepare($query);
$preparedStatement->execute();

// Get Query Result
$users = $preparedStatement->get_result()->fetch_object();

?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trucorp Website</title>
    <style>
    h1 {
      font-family: Arial, Helvetica, sans-serif;
      text-align: center;
      color: #4CAF50;
    }
    </style>
</head>
<body>

<h1>Total Users: <?= $users->total_users ?></h1>

</body>
