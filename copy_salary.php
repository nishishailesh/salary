<?php
session_start();
require_once 'common.php';

print_r($_POST);
//////////////
// Every body who can login and belong to same department can edit it
//////////////
echo '
<style>
	
table{
   border-collapse: collapse;
}

.border td , .border th{
    border: 1px solid gray;
}

.upload{
	background-color:lightpink;	
}

.noborder{
 border: none;
}


.hidedisable
{
	display:none;diabled:true
}

.section_header
{
	background-color:gray;
}
</style>';		

function read_bill_number_to_copy($link)
{
	echo '<form method=post>';
	echo '<table class=border style="background-color:lightgreen;">';
	echo '<tr><th>Selected staff</th><td>';
	echo $_POST['staff_id'].'<td></tr>';
	echo '<tr><th>Selected Bill Number</th><td>';
	echo $_POST['bill_number'];
	echo '<input type= hidden name=bill_number value=\''.$_POST['bill_number'].'\'>';
	echo '<input type= hidden name=staff_id value=\''.$_POST['staff_id'].'\'>';
	echo '<input type= hidden name=bill_vs_staff value=\''.$_POST['bill_vs_staff'].'\'>';

	echo '</tr><tr><th>Copy to bill number</th><td>';
	echo '<input type=text name=to_bill_number placeholder="YYMMNN">';
	echo '</td></tr><tr><td  align=center colspan=2>';
	echo '<input type=submit name=submit value=copy_salary onclick="return confirm(\'Salary will be copied to new bill\')">';
	echo '</td></tr><tr><td colspan=2>';
	echo 'Example: Bill Number for Jan-2017 for bill 4 may be  20170104<br>';
	echo 'Example: Bill Number for Jan-2017 for bill 5 may be  20170105<br>';
	echo 'Example: Arrears Bill for Jan-2017 for bill 4 may be 20170154<br>';
	echo 'Example: Arrears Bill for Jan-2017 for bill 5 may be 20170155<br>';
	echo 'Make sure that bill number give some idea about what it is<br>';
	echo '</td></tr></table></form>';	
}

$link=connect();

menu();

if(isset($_POST['submit']) && isset($_POST['bill_number'])&&isset($_POST['staff_id']))
{
	if($_POST['submit']=='copy')
	{
		read_bill_number_to_copy($link);
	}		
	if($_POST['submit']=='copy_salary')
	{
		copy_salary($link,$_POST['staff_id'],$_POST['staff_id'],$_POST['bill_number'],$_POST['to_bill_number']);
	}
}

if(isset($_POST['bill_vs_staff']))
{
	if($_POST['bill_vs_staff']=='staff')
	{
		list_all_salary($link,$_POST['staff_id']);
	}
	elseif($_POST['bill_vs_staff']=='bill')
	{
		list_bill($link,$_POST['bill_number']);
	}
}
?>

