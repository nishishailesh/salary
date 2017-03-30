<?php
session_start();
$nojunk='defined';
require_once 'common.php';
include_once('tbs_class.php');
include_once('tbs_plugin_opentbs.php');

//print_r($_POST);

/////////////Main script start from here//////////////

function grp($link,$bill_group)
{
	$sql='select * from salary where bill_group=\''.$bill_group.'\' order by bill_number';
	if(!$result=mysqli_query($link,$sql)){return FALSE;}
	return $result;
	
	//echo '<button onclick="document.getElementById(\'all_salary\').style.display = \'none\';">Hide</button>';
	//echo '<button onclick="document.getElementById(\'all_salary\').style.display = \'none\';">Hide</button>';
	echo '<button type=button onclick="showhide(\'all_salary\')">Show/Hide</button>';
	//echo '<input type=image src="showhide.png" title="click to show/hide list below"
	//	style="border: 2px blue dashed;border-radius:10px;padding: 5px;" width="20" height="20" 
	//	onclick="showhide(\'all_salary\')">';
	echo '<table class=border id=all_salary>';
	display_salary_header($link);
	while($result_array=mysqli_fetch_assoc($result))
	{
		echo '<tr>';
		echo '<td><form method=post>
				<table class=noborder><tr><td><button type=submit name=submit value=edit>E</button></td><td>
				<button type=submit name=submit value=delete 
					onclick="return confirm(\'The record will be permanently deleted\')">D</button></td><td>
				<button type=submit name=submit value=copy formaction=copy_salary.php>C</button></td></tr></table>

				<input type=hidden name=staff_id value=\''.$result_array['staff_id'].'\'>
				<input type=hidden name=bill_group value=\''.$result_array['bill_group'].'\'>
				<input type=hidden name=bill_vs_staff value=bill>

			</form></td>';		
		foreach($result_array as $value)
		{

			echo '<td>'.$value.'</td>';
		}
		echo '</tr>';
	}
	echo '</table>';
}


$link=connect();
//menu();

//new_salary($link,$_POST['staff_id'],$_POST['bill_number']);
$data=get_raw($link,'select * from salary where
						staff_id=\'30\' and 
						bill_group=\'1\'');
						
						
//print_r($data);
$TBS = new clsTinyButStrong;
//$TBS->LoadTemplate('slip.html');

$TBS->Plugin(TBS_INSTALL, OPENTBS_PLUGIN);
//$TBS->Plugin(OPENTBS_DEBUG_INFO, true);
$TBS->LoadTemplate('slip.odt', OPENTBS_ALREADY_UTF8);

$sql='select * from salary where
						
						bill_group=\'1\'';
$TBS->MergeBlock('blk1',$link,$sql);



/*
$TBS->MergeBlock('blk1',$data);
*/


$sql='select * from salary where bill_group=1 order by bill_number';
$TBS->MergeBlock('blk2',$link,$sql);

/*

$sql='select * from salary where
						staff_id=\'30\' and 
						bill_group=\'1\'';

$TBS->MergeBlock('blk3',$link,$sql);
*/

$TBS->Show(OPENTBS_DOWNLOAD, 'salary.odt');
//$TBS->Show();

?>

