
request
 > GET /checks HTTP/1.1
    > Host: api.pingdom.com
    > Authentication: Zm9vQGV4YW1wbGUuY29tOnBhc3N3b3Jk
    > App-Key: 1234567890abcdef1234567890abcdef
    > Account-Email: bar@example.com


response
 < HTTP/1.1 200 OK
    < Content-Length: 13
    < Content-Type: application/json

    {"checks":[]}





base server      https://api.pingdom.com

Please note that HTTPS is required. You will not be able to connect through unencrypted HTTP.


json error

{
       "error":{
          "statuscode":403,
          "statusdesc":"Forbidden",
          "errormessage":"Something went wrong! This string describes what happened."
       }
    }



CODE ex

<?php
 
      // Init cURL
      //     $curl = curl_init();
      //           // Set target URL
      //               curl_setopt($curl, CURLOPT_URL, "https://api.pingdom.com/api/2.0/checks");
      //                     // Set the desired HTTP method (GET is default, see the documentation for each request)
      //                         curl_setopt($curl, CURLOPT_CUSTOMREQUEST, "GET");
      //                               // Set user (email) and password
      //                                   curl_setopt($curl, CURLOPT_USERPWD, "johndoe@example.com:password");
      //                                         // Add a http header containing the application key (see the Authentication section of this document)
      //                                             curl_setopt($curl, CURLOPT_HTTPHEADER, array("App-Key: zoent8w9cbt810rsdkweir23vcxb87zrt5541"));
      //                                                   // Ask cURL to return the result as a string
      //                                                       curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
      //                                                        
      //                                                              // Execute the request and decode the json result into an associative array
      //                                                                  $response = json_decode(curl_exec($curl),true);
      //                                                                   
      //                                                                         // Check for errors returned by the API
      //                                                                             if (isset($response['error'])) {
      //                                                                                     print "Error: " . $response['error']['errormessage'] . "\n";
      //                                                                                             exit;
      //                                                                                                 }
      //                                                                                                  
      //                                                                                                        // Fetch the list of checks from the response
      //                                                                                                            $checksList = $response['checks'];
      //                                                                                                                  // Print the names and statuses of all checks in the list
      //                                                                                                                      foreach ($checksList as $check) {
      //                                                                                                                              print $check['name'] . " is " . $check['status'] . "\n";
      //                                                                                                                                  }
      //                                                                                                                                   
      //                                                                                                                                   ?>
      //
      //
      //
 

Ubuntu Packages is up
    Google is up
    Pingdom is up
    My server 1 is down
    My server 2 is up



https://www.pingdom.com/resources/api



API syma5lp66y41v0k7jnqodaxsxamp3dcl








