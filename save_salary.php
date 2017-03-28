<?php
session_start();

require_once 'common.php';

//echo '<br>Sending POST from server<br><pre>';
//print_r($_POST);
//echo '<br>With proper POSTing of data by to-script and proper output by from-script AJAX is complate';
//javascript to encode url and PHP to decode POST value is must

$link=connect();

//date india vs mysql. Corusponding change in edit_dc.php


if($_POST['field']=='from_date' ||$_POST['field']=='to_date' )
{
	$_POST['value']=india_to_mysql_date($_POST['value']);
}


echo '<div style="display:block;background:lightblue;width:700px;" id=spn>';
//print_r($_POST);
$updated=update_or_insert_field_by_id_tpc($link,'salary','staff_id',$_POST['staff_id'],'bill_group',$_POST['bill_group'],$_POST['field'],
								mysqli_real_escape_string($link,$_POST['value'])	
							);
if($updated>0)
{
	echo '<span style="background:blue;color:red;">[X]</span><span style="color:red;">Last Saved:</span>'.$_POST['staff_id'].'=>'.$_POST['bill_group'].'=>'.$_POST['field'].'=>'.$_POST['value'];
}
else
{
	echo '<span style="background:blue;color:red;">[X]</span><span style="color:red;">Nothing saved</span>';
}
echo '</div>';


?>
