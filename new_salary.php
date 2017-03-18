<?php
session_start();
require_once 'common.php';
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
//////////////
$link=connect();

menu();
echo '<form method=post action=edit_salary.php><table border=1>';
echo	'<tr>';
echo 		'<td>Staff ID:</td><td><input size=15 name=staff_id  type=text placeholder="Staff ID"></td></tr><tr>';
echo 		'<td>Bill Number:</td><td><input size=15 name=bill_number  type=text placeholder="YYMMNNN"></td>';
echo 	'</tr>';
echo	'<tr>';
echo 		'<th colspan="2"><input type=submit name=action value=new_salary></th>';
echo 	'</tr>';
echo '<tr><th colspan=3 >If salary exist in database, its details will be displayed</th></tr>';
echo 	'</table></form>';

echo '<table class=border style="background-color:lightblue;">
<tr>
<table>';

?>
