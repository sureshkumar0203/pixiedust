<?php
header('Content-type: application/json');
//include 'db.php';
include 'functions.php';

// if(isset($_REQUEST['method']) && $_REQUEST['method']=="paymentTest") {

// 	$jsonData=json_decode($_REQUEST['data']);
// 	$nonce=$jsonData->nonce;
// 	$price=$jsonData->price;
// }


$nonce=$_POST['nonce'];
$price=$_POST['price'];

// echo '{"price":"'.$price.'","nonce":"'.$nonce.'"}';exit;


/*if($_SERVER["REQUEST_METHOD"] == "POST" && !empty($_POST['card_number']) && !empty($_POST['card_name']) && !empty($_POST['expiry_month']) && !empty($_POST['expiry_year']) && !empty($_POST['cvv']))
{*/


/*$card_number=str_replace("+","",$_POST['card_number']);  
$card_name=$_POST['card_number'];
$expiry_month=$_POST['expiry_month'];
$expiry_year=$_POST['expiry_year'];
$cvv=$_POST['cvv'];
$expirationDate=$expiry_month.'/'.$expiry_year;*/

require_once 'braintree/Braintree.php';

/////  SKumar Account info 
// Braintree_Configuration::environment('sandbox');
// Braintree_Configuration::merchantId('7tqbg3jkbwvxtbzp');
// Braintree_Configuration::publicKey('q7svt4yvgrbxjbbm');
// Braintree_Configuration::privateKey('edea4fa48c5829e1acaa1e00377f2f1f');


/////  MS Account info 
/*Braintree_Configuration::environment('sandbox');
Braintree_Configuration::merchantId('3gn8vwz28k9bh89p');
Braintree_Configuration::publicKey('w79p878yqkzv487t');
Braintree_Configuration::privateKey('8b77b337ffaefcf00aececb6d0cbffe4');*/


Braintree_Configuration::environment('sandbox');
Braintree_Configuration::merchantId('ww2dkm6cymdkk6k5');
Braintree_Configuration::publicKey('g264ktkmdv3nw989');
Braintree_Configuration::privateKey('9544ccae083f039d47cf60b190d2cae0');

// $aCustomerId = 'ww2dkm6cymdkk6k5';
// $clientToken["client_token"] = Braintree_ClientToken::generate(array("customerId" => $aCustomerId));

  
  
$result = Braintree_Transaction::sale(array(
'amount' => $price,
'paymentMethodNonce' => $nonce,
'options' => ['submitForSettlement' => true]

/*'creditCard' => array(
'number' => $card_number,
'cardholderName' => $card_name,
'expirationDate' => $expirationDate,
'cvv' => $cvv
)*/
));

//echo "<pre>";print_r($result);exit;

if ($result->success){
   //print_r("success!: " . $result->transaction->id);
	if($result->transaction->id){
		$braintreeCode=$result->transaction->id;
		echo '{"status":"success","trans_id":"'.$braintreeCode.'","message":"Transaction completed successfully"}';exit;		
	}
} else if ($result->transaction) {
	 //return response()->json(['status' => 'error', 'OrderStatus' => '2']);
	 echo '{"status":"error","OrderStatus":"2"}';exit;	
	 //echo '{"OrderStatus": [{"status":"2"}]}';
} else {
	echo '{"status":"error","OrderStatus":"0"}';exit;
	//return response()->json(['status' => 'error', 'OrderStatus' => '0']);
	//echo '{"OrderStatus": [{"status":"0"}]}';
}

//}

?>