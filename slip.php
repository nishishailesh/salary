<?php
session_start();
$nojunk='defined';
require_once 'common.php';
include_once('tbs_class.php');

//print_r($_POST);

/////////////Main script start from here//////////////


$link=connect();

$data=get_raw($link,'select * from salary where
						staff_id=\'30\' and 
						bill_group=\'1\'');
						

$TBS = new clsTinyButStrong;
$TBS->LoadTemplate('slip.html');

//$data is array
//access as key, val pair
$TBS->MergeBlock('blk1',$data);


//sql result is row=>array() , array of array
//access each array as Fieldname->Field value pair
$sql='select * from salary where bill_group=1 order by bill_number';
$TBS->MergeBlock('blk2',$link,$sql);



$sql='select * from salary where
						staff_id=\'30\' and 
						bill_group=\'1\'';

$TBS->MergeBlock('blk3',$link,$sql);

$TBS->Show();
?>

