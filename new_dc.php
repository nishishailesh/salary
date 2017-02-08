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
echo '<form method=post action=edit_dc.php><table border=1>';
echo '<tr><th colspan=3 >IPD Number will be unique to identify the patient</th></tr>';
echo '<tr><th colspan=3 >Write patient IPD number to prepare new Discharge card</th></tr>';
echo	'<tr>';
echo 		'<td>IPD:</td><td><input size=15 name=id  type=text placeholder="(IPD) indoor number"></td>';
//echo 	'</tr>';
//echo	'<tr>';
echo 		'<td><input type=submit name=action value=new_discharge_card></td>';
echo 	'</tr>';
echo '<tr><th colspan=3 >If IPD number exist in database, its details will be displayed</th></tr>';
echo 	'</table></form>';

?>
