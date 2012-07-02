<?php
//---------------------------------------------------------------------------------------
//
//   Franklin County Water District Reservation Application
//   Version 1.0
//   Copyright (C) 2012 Franklin County Water District and Network Technologies
//
//   All classes, functions, and related code are Copyright (C) 2012 Network Technologies
//
//---------------------------------------------------------------------------------------


// Reservation Application  php include file - All custom classes, functions, and defs go here



// Project wide variables including database parameters

     $db_host = "localhost";
     $db_database = "reservation";
     $db_username = "root";
     $db_password = "jsb@75494";
     $units = 109;                 // This is the total count of unit fields in the database!


// Project wide classes defined here



// Project wide functions defined here


     // get_available function takes a start and end date and returns an array of all inventory units set to TRUE if reserved at all during date range

     function get_available($sDate, $eDate)
          {
          global $units;
          db_connect();
          $query = mysql_query("SELECT * FROM reservations WHERE date BETWEEN '".$sDate."' AND '".$eDate."'");
          while($row = mysql_fetch_array($query))
               {
               echo "Date with reservation(s): ".$row[1]."<br />";  // For testing only, remove for production!
               for ($i = 1; $i <= $units; $i++)
                    {
                    if ($row[$i+1]) $avail[$i] = True;
                    //echo $i." - ".$row[$i+1]."<br />";  // Will output list of units and reservation #s - For testing only, remove for production!
                    }
               }     
          echo "<br />";  // For testing only, remove for production!
          db_disconnect();
          return $avail;
          }


     function db_connect()
          {
          global $db_host, $db_database, $db_username, $db_password;
          mysql_connect($db_host, $db_username, $db_password) or die(mysql_error());
          mysql_select_db($db_database) or die(mysql_error());
          }

     function db_disconnect()
          {
          mysql_close();
          }


?>