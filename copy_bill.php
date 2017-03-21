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
	$sql='select distinct bill_number from salary order by bill_number desc';
	echo '<table class=border style="background-color:lightgreen;"><tr><th>Select Bill Number</th><td>';
	mk_select_from_sql($link,$sql,'bill_number','from_bill_number','','');
	echo '</tr><tr><th>Copy to bill number</th><td>';
	echo '<input type=text name=to_bill_number placeholder="YYMMNN">';
	echo '</td></tr><tr><td  align=center colspan=2>';
	echo '<input type=submit name=submit onclick="return confirm(\'New Bill will have all salary like old bill\')">';
	echo '</td></tr></table>';	
}

function copy_bill($link,$from_bn,$to_bn)
{
	$sql='select * from salary where bill_number=\''.$from_bn.'\'';
	//echo $sql;

	if(!$result=mysqli_query($link,$sql)){return FALSE;}
	
	while($ra=mysqli_fetch_assoc($result))
	{
		$f='';
		$v='';
		foreach($ra as $key=>$value)
		{
			$f=$f.' `'.$key.'`,';
			if($key=='bill_number')
			{
				$v=$v.' \''.$to_bn.'\',';
			}
			else
			{
				$v=$v.' \''.$value.'\',';
			}
		}
		$f=substr($f,0,-1);
		$v=substr($v,0,-1);
		$final= 'insert into salary ('.$f.') values('.$v.')';
		//echo $final;
		
		if(!$result_s=mysqli_query($link,$final))
		{
			echo mysqli_error($link);return FALSE;
		}
		else
		{
			mysqli_insert_id($link);
		}
	}
	
	
}
/////////////Main script start from here//////////////

$link=connect();

menu();

read_bill_number_to_copy($link);
if(isset($_POST['submit']) && isset($_POST['from_bill_number'])&&isset($_POST['to_bill_number']))
{
	copy_bill($link,$_POST['from_bill_number'],$_POST['to_bill_number']);
	list_bill($link,$_POST['to_bill_number']);
}

?>

