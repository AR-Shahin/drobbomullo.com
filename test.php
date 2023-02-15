<?php
$servername = "localhost";
$username = "drobbomu_najim10c";
$password = "Mosaddik5450?";
$dbname = "drobbomu_drobbomullo";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}

//$nameE = $_POST['name'];
//$numberR = $_POST['number'];
//$addressS = $_POST['address'];

$nameE = $_GET['name'];
$numberR = $_GET['number'];
$addressS = $_GET['address'];

//$nameE = 'najim';
//$numberR = '88888';
//$addressS = 'sjdhakhsd';

$sql = "INSERT INTO testing (name, number, address)
VALUES ('$nameE', '$numberR', '$addressS')";

if (mysqli_query($conn, $sql)) {
  echo "New record created successfully";
} else {
  echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}

mysqli_close($conn);
?>