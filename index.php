<?php
include 'include.php';

//---------------------------------------------------------------------------------------
//
//   Franklin County Water District Reservation Application
//   Version 1.0
//   Copyright (C) 2012 Franklin County Water District and Network Technologies
//
//   All classes, functions, and related code are Copyright (C) 2012 Network Technologies
//
//---------------------------------------------------------------------------------------

//Initial 'index.php' for Reservation App testing purposes


?>
<BIG>FCWD Reservation Test Application</BIG>
<Form name = "Reservation" method = "POST" Action = "">
<br />Please furnish a date range:<br />
<pre>   Starting date: <input type = "Text" Value = "2012-07-01" name = "startdate"><input type = "Submit" Value = "Update"></pre>
<pre>   Ending date:   <input type = "Text" Value = "2012-07-30" name = "enddate"><input type = "Submit" Value = "Update"></pre><br />

<?php


$startdate = $_POST['startdate'];
$enddate = $_POST['enddate'];


echo "Reservations for date range:  ".$startdate." to ".$enddate;
echo "<br />";
echo "<br />";

$result = get_available($startdate,$enddate);

echo "Unit vacancy status:<br /><br />";  
for ($i = 1; $i <= $units; $i++)
      {
      $g = $i - 72;
      if ($result[$i])
           {
           if ($i < 73) echo "Walleye ".$i." - Reserved";
           if ($i > 72) echo "Guthrie ".$g." - Reserved";
           }else
           {
           if ($i < 73) echo "Walleye ".$i." -";
           if ($i > 72) echo "Guthrie ".$g." -";
           }
      echo "<br />";
      }
                                                                            
  
  
    
?>                                                                                                