<?php
$conn = new mysqli("mysql", "root", "console", "my_db");
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * FROM users";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
  echo '<p>Number of users: '.$result->num_rows.'</p>';
  echo '<ul>';
  while($row = $result->fetch_assoc()) {
    echo '<li>'.$row['username']."</li>";
  }
  echo '</ul>';
} else {
  echo "No results";
}
$conn->close();
?>