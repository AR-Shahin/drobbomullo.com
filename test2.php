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



//$nameE = 'najim';
//$numberR = '88888';
//$addressS = 'sjdhakhsd';

$sql = "SELECT name, number, address FROM testing";
$result = mysqli_query($conn, $sql);


$sql2 = "SELECT name, number, address FROM testing WHERE number = '0000'";
$result2 = mysqli_query($conn, $sql2);

if (mysqli_num_rows($result2) > 0) {
    echo "got some results";
    $sqlupdate = "UPDATE testing SET number='879654' WHERE name='john'";
    if (mysqli_query($conn, $sqlupdate)) {
      echo "Record updated successfully";
    } else {
      echo "Error updating record: " . mysqli_error($conn);
    }
}else{
    echo "got no resukt";
    $sqlinsert = "INSERT INTO testing (name, number, address)
    VALUES ('najim', '0000', 'dakshinkhan')";
    
    
    if (mysqli_query($conn, $sqlinsert)) {
      echo "New record created successfully";
    } else {
      echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }
    
}

if (mysqli_num_rows($result) > 0) {
  // output data of each row
  while($row = mysqli_fetch_assoc($result)) {
    echo "name: " . $row["name"]. " - number: " . $row["number"]. " " . $row["address"]. "<br>";
  }
} else {
  echo "0 results";
}

mysqli_close($conn);
?>