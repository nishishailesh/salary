<?php
session_start();
require_once 'common.php';

//echo '<pre>';print_r($_POST);echo '</pre>';
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



$link=connect();

menu();

if(!isset($_POST['bill_group']))
{
	get_bill_group($link);
}
else
{
	if(!isset($_POST['bill_number']) )
	{
		get_bill_number($link,$_POST['bill_group']);
	}
}

?>

