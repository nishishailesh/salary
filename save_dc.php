<?php
session_start();

require_once 'common.php';

//echo '<br>Sending POST from server<br><pre>';
//print_r($_POST);
//echo '<br>With proper POSTing of data by to-script and proper output by from-script AJAX is complate';
//javascript to encode url and PHP to decode POST value is must

$link=connect();
echo '<div style="display:block;background:lightblue;width:700px;" id=spn><span style="background:blue;color:red;">[X]</span><span style="color:red;">Last Saved:</span>'.$_POST['id'].'=>'.$_POST['field'].'=>'.$_POST['value'].'</div>';


//date india vs mysql. Corusponding change in edit_dc.php

if($_POST['field']=='doa' ||$_POST['field']=='doo' ||$_POST['field']=='dod')
{
	$_POST['value']=india_to_mysql_date($_POST['value']);
}

update_or_insert_field_by_id($link,'pt','ipd',$_POST['id'],$_POST['field'],
								mysqli_real_escape_string($link,$_POST['value'])	
							);

?>
