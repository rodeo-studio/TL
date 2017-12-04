<?php
// ****************************************************************************
// mailerproxy.php
// ****************************************************************************

header("Access-Control-Allow-Origin: *");  

//define("EMAIL_SERVER_URL", "http://email.voicedesign.net/t/j/s/bmujj/");
define("EMAIL_SERVER_URL", "http://rodeo.us11.list-manage.com/subscribe/post?u=e5466b32a051c601ab2020e71&amp;id=49cf2367da");

$strEmail = "";
if (isset($_REQUEST['EMAIL'])) {
  $strEmail = $_REQUEST['EMAIL'];
}

$strFirstname = "";
if (isset($_REQUEST['FNAME'])) {
  $strFirstname = $_REQUEST['FNAME'];
}

$strLastname = "";
if (isset($_REQUEST['LNAME'])) {
  $strLastname = $_REQUEST['LNAME'];
}

function post($url, $data){
  $file = @file_get_contents($url, NULL, stream_context_create(array('http' => array('method' => 'POST', 'content' => http_build_query($data)))));
  return $file ? $file : "Error POSTing to $url";
}

echo post(EMAIL_SERVER_URL, array('EMAIL' => $strEmail, 'FNAME' => $strFirstname, 'LNAME' => $strLastname));
?>
