<?php
session_start();
require_once 'common.php';

//print_r($_POST);
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

function read_bill_number_to_copy()
{
	echo '<table class=border><tr><th colspan=2>Copy old bill to new bill</th></tr><tr><td>Copy from bill number</td><td>';
	echo '<input type=text name=from_bill_number placeholder="YYMMNN">';
	echo '</tr><tr><td>Copy to bill number</td><td>';
	echo '<input type=text name=to_bill_number placeholder="YYMMNN">';
	echo '</td></tr><tr><td  align=center colspan=2>';
	echo '<input type=submit>';
	echo '</td></tr></table>';
	
}


/////////////Main script start from here//////////////

$link=connect();

menu();

read_bill_number_to_copy();


?>

