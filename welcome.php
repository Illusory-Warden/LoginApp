<?php
session_start();
if (!isset($_SESSION['uid'])) {
    header("Location: index.html");
    exit();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Welcome</title>
</head>
<body>
  <h2>Welcome, UID: <?php echo $_SESSION['uid']; ?>!</h2>
  <p>You are logged in.</p>
  <a href="logout.php">Logout</a>
</body>
</html>
