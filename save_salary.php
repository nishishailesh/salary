<?php
session_start();

require_once 'common.php';

//echo '<br>Sending POST from server<br><pre>';
//print_r($_POST);
//echo '<br>With proper POSTing of data by to-script and proper output by from-script AJAX is complate';
//javascript to encode url and PHP to decode POST value is must

$link=connect();
echo '<div style="display:block;background:lightblue;width:700px;" id=spn>';
//print_r($_POST);
echo '<span style="background:blue;color:red;">[X]</span><span style="color:red;">Last Saved:</span>'.$_POST['staff_id'].'=>'.$_POST['bill_number'].'=>'.$_POST['field'].'=>'.$_POST['value'].'</div>';


//date india vs mysql. Corusponding change in edit_dc.php

update_or_insert_field_by_id_tpc($link,'salary','staff_id',$_POST['staff_id'],'bill_number',$_POST['bill_number'],$_POST['field'],
								mysqli_real_escape_string($link,$_POST['value'])	
							);

?>