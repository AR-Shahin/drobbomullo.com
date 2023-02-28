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

$item_nameE = $_POST['item_name'];
$categoryY = $_POST['category'];
$subcategoryY = $_POST['subcategory'];
$weightT = $_POST['weight'];
$imageE = $_POST['image'];
$extraA = $_POST['extra'];
$priceE = $_POST['price'];
$linkK = $_POST['link'];

echo $item_nameE;
echo $categoryY;
echo $subcategoryY;
echo $weightT;
echo $imageE;
echo $extraA;
echo $priceE;
echo $linkK;


/*
$item_nameE = "kola66";
$categoryY = "fruit66";
$subcategoryY = "bfood66";
$weightT = "1266";
$imageE = "kola-image66";
$extraA = "kisuna66";
$linkK = "http";
$priceE = "56";


*/

$sqlitemid = "SELECT item_id FROM main_table ORDER BY item_id DESC LIMIT 1";

$resultchecksqlitemid = mysqli_query($conn, $sqlitemid);
if (mysqli_num_rows($resultchecksqlitemid) > 0) {
  // output data of each row
  while($rowforitemid = mysqli_fetch_assoc($resultchecksqlitemid)) {
    $item_idstring = $rowforitemid["item_id"];
    $item_idint = intval($item_idstring);
    $item_idint = $item_idint +1 ;
    echo "id: " . $rowforitemid["item_id"];
  }
}else{
    $item_idint = 5000;
}







$sqlcheck = " SELECT * FROM main_table WHERE item_name='$item_nameE' AND weight ='$weightT'";

$resultcheck = mysqli_query($conn, $sqlcheck);

if (mysqli_num_rows($resultcheck) > 0) {
  // output data of each row
  while($row = mysqli_fetch_assoc($resultcheck)) {
    echo "id: " . $row["id"]. " - Name: " . $row["item_name"]. " " . $row["category"]. "<br>";
    
    
    $sqlupdate = "UPDATE price SET chaldal_price = '$priceE' WHERE item_name = '$item_nameE'  AND weight ='$weightT'";
        if (mysqli_query($conn, $sqlupdate)) {
          echo "New record updated successfully in price \n";
        } else {
          echo "Error: " . $sql . "<br>" . mysqli_error($conn);
        }
    
    
    
  }
} else {
    
        $sql = "INSERT INTO main_table (item_id,item_name, category, subcategory, weight, image, extra)
        VALUES ('$item_idint','$item_nameE', '$categoryY', '$subcategoryY', '$weightT', '$imageE', '$extraA')";
        
        
        if (mysqli_query($conn, $sql)) {
          echo "New record created successfully in main table\n";
        } else {
          echo "Error: " . $sql . "<br>" . mysqli_error($conn);
        }
        
        
        
        $sqllink = "INSERT INTO link (item_id,item_name, category, subcategory,weight, chaldal_link)
        VALUES ('$item_idint','$item_nameE', '$categoryY', '$subcategoryY','$weightT','$linkK')";
        
        if (mysqli_query($conn, $sqllink)) {
          echo "New record created successfully in link table\n";
        } else {
          echo "Error: " . $sql . "<br>" . mysqli_error($conn);
        }
        
        
        
        $sqlprice = "INSERT INTO price (item_id,item_name, category, subcategory,weight, chaldal_price)
        VALUES ('$item_idint','$item_nameE', '$categoryY', '$subcategoryY','$weightT', '$priceE')";
        
        if (mysqli_query($conn, $sqlprice)) {
          echo "New record created successfully in price table\n";
        } else {
          echo "Error: " . $sql . "<br>" . mysqli_error($conn);
        }
    
    
        echo "0 results";
}





/*

$sql = "INSERT INTO main_table (item_name, category, subcategory, weight, image, extra)
VALUES ('$item_nameE', '$categoryY', '$subcategoryY', '$weightT', '$imageE', '$extraA')";


if (mysqli_query($conn, $sql)) {
  echo "New record created successfully in main table";
} else {
  echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}



$sqllink = "INSERT INTO link (item_name, category, subcategory, chaldal_link)
VALUES ('$item_nameE', '$categoryY', '$subcategoryY', '$linkK')";

if (mysqli_query($conn, $sqllink)) {
  echo "New record created successfully in link table";
} else {
  echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}



$sqlprice = "INSERT INTO price (item_name, category, subcategory, chaldal_price)
VALUES ('$item_nameE', '$categoryY', '$subcategoryY', '$priceE')";

if (mysqli_query($conn, $sqlprice)) {
  echo "New record created successfully in price table";
} else {
  echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}


*/





mysqli_close($conn);


?>