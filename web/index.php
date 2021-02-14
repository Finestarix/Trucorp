<?php

// Create Database Connection
$databaseConnection = new mysqli(
    '172.18.0.2',   // Database Host
    'root',         // Database Username
    'T3sT1nG!',     // Database Password
    'trucorp',      // Database Name
    3306            // Database Port
);

// Create Raw Query to Get All Users
$query = "SELECT `id`, `name`, `office` FROM `users`";

// Execute Query
$preparedStatement = $databaseConnection->prepare($query);
$preparedStatement->execute();

// Get Query Result
$users = $preparedStatement->get_result();

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

    #users {
      font-family: Arial, Helvetica, sans-serif;
      border-collapse: collapse;
      width: 100%;
    }

    #users td, #users th {
      border: 1px solid #ddd;
      padding: 8px;
    }

    #users tr:nth-child(even){background-color: #f2f2f2;}

    #users tr:hover {background-color: #ddd;}

    #users th {
      padding-top: 12px;
      padding-bottom: 12px;
      text-align: left;
      background-color: #4CAF50;
      color: white;
    }
    </style>
</head>
<body>

<h1>Users List</h1>

<table id="users">
    <tr>
      <th>ID</th>
      <th>Name</th>
      <th>Office</th>
    </tr>

    <?php
    while ($user = $users->fetch_object()) {
    ?>
    <tr>
        <td><?= $user->id ?></td>
        <td><?= $user->name ?></td>
        <td><?= $user->office ?> Office</td>
    </tr>
    <?php
    }
    ?>
 
</table>

</body>