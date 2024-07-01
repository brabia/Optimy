Hi, this is Optimy EC2

<?php
$mysqli = new mysqli("mysql","root",'root',"dev.optimy.be");
if($mysqli -> connect_errno){
  echo "Failed to connect to MySQL: " . $mysqli -> connect_error;
  exit();
}
?>