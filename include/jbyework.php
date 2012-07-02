<?php
//Git Test
function get_availability($start_date, $end_date)
{

$con = mysql_connect("localhost","root","jsb@75494");
if (!$con)
  {
    die('Could not connect: ' . mysql_error());
  }
      
mysql_select_db("reservation", $con);
      
$result = mysql_query("SELECT * FROM reservations WHERE date = $");

$numOfCols = mysql_num_fields($result);
$numOfRows = mysql_num_rows($result);

mysql_close($con);
}


$count = '0';

 //echo $numOfCols;
//echo "Test<br>";

echo "<table cellborder= '1' border='2'>
<tr>";

// ** Show header row with field names **
while($count <= $numOfCols)
{
  $fieldname = mysql_field_name($result, $count);
  echo "<th>" ,$fieldname , "</th>";
  $count = $count + 1;
}

echo "</tr><tr>";

// ** Pull record into an array named $row **
$row = mysql_fetch_array($result);

//var_dump($row);

// ** Print out array **

foreach ($row as $key => $value) 
{
  echo "<tr /><td />Key: $key;</td /><td /> Value: $value</td /></tr />\n";
}


//foreach ($row as &$value)
//{
//  echo "<td>", $value ,"</td>";
//}

echo "</tr>";

//while($row = mysql_fetch_array($result))
//  {
//    echo "<tr>";
//    echo "<td>" . $row['date'] . "</td>";
//    echo "<td>" . $row['w4'] . "</td>";
//    echo "</tr>";
//  }
echo "</table>";
?> 