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



//$sql2 = "SELECT id WHERE item_name ='Broiler Chicken Skin Off ± 50 gm'";

//$result = mysqli_query($conn, $sql2);

//echo $result;

$item_nameE = $_POST['item_name'];
$linkK = $_POST['link'];
$priceE = $_POST['price'];

/*
$item_nameE = "Quail Meat";
$linkK = "ghoradum.com";
$priceE = "789";
*/

$sql = "UPDATE price SET meenaclick_price = '$priceE' WHERE item_name = '$item_nameE'";
if (mysqli_query($conn, $sql)) {
  echo "New record updated successfully in price \n";
} else {
  echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}



$sql2 = "UPDATE link SET meenaclick_link = '$linkK' WHERE item_name = '$item_nameE'";
if (mysqli_query($conn, $sql2)) {
  echo "New record updated successfully in link";
} else {
  echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}




?>