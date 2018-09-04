<?php
/*Variables - Start*/
$apiKey     = "m775896621-211458b3665e6db50e37eaed"; 
$monitorID  = 775896621; 
$url    = "https://api.uptimerobot.com/getMonitors?apiKey=" . $apiKey . "&monitors=" . $monitorID . "&format=xml";
/*Variables - End*/
 
/*Curl Request - Start*/
$c = curl_init($url);
curl_setopt($c, CURLOPT_RETURNTRANSFER, true);
$responseXML = curl_exec($c);
curl_close($c);
/*Curl Request - End*/
 
/*XML Parsing - Start*/
$xml = simplexml_load_string($responseXML);
 
foreach($xml->monitor as $monitor) {
    echo $monitor['alltimeuptimeratio'];
}
/*XML Parsing - End*/
?>






