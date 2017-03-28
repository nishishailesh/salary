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
/*
function read_bill_group_to_copy($link)
{
	echo '<form method=post>';
	$sql='select distinct bill_group from salary order by bill_group desc';
	echo '<table class=border style="background-color:lightgreen;"><tr><th>Select Bill Number</th><td>';
	mk_select_from_sql($link,$sql,'bill_group','from_bill_group','','');
	echo '</tr><tr><th>Copy to bill number</th><td>';
	echo '<input type=text name=to_bill_group placeholder="YYMMNN">';
	echo '</td></tr><tr><td  align=center colspan=2>';
	echo '<input type=submit name=submit value=copy_bill onclick="return confirm(\'New Bill will have all salary like old bill\')">';
	echo '</td></tr><tr><td colspan=2>';
	echo 'Example: Bill Number for Jan-2017 for bill 4 may be  20170104<br>';
	echo 'Example: Bill Number for Jan-2017 for bill 5 may be  20170105<br>';
	echo 'Example: Arrears Bill for Jan-2017 for bill 4 may be 20170154<br>';
	echo 'Example: Arrears Bill for Jan-2017 for bill 5 may be 20170155<br>';
	echo 'Make sure that bill number give some idea about what it is<br>';
	echo '</td></tr></table>';	
}
*/


function read_bill_group_to_copy($link)
{
	echo '<form method=post>';
	echo '<table class=border style="background-color:lightgreen;">';
	
	//echo '<tr><th>Selected staff</th><td>';
	//echo $_POST['staff_id'].'<td></tr>';

	$sql='select distinct bill_group from salary order by bill_group desc';
	echo '<table class=border style="background-color:lightgreen;"><tr><th>Select Bill Number</th><td>';
	mk_select_from_sql($link,$sql,'bill_group','from_bill_group','','');
		
	//echo '<tr><th>Selected Bill Group</th><td>';
	//echo $_POST['bill_group'];
	
	echo '</td><tr><th>Period From:</th><td>';
	echo '<input type=text class=datepicker id=from_date name=from_date>';

	echo '</td><tr><th>Period To:</th><td>';
	echo '<input type=text class=datepicker id=to_date name=to_date>';

	echo '</td><tr><th>Bill Type:</th><td>';
	mk_select_from_table($link,'bill_type','','');

	echo '</td><tr><th>Remark:</th><td>';
	echo '<input type=text name=remark >';
	
	echo '</td><tr><th>Head</th><td>';
	echo '<input type=text name=budget_head >';

	echo '</tr><tr><th>Copy to bill group</th><td>';
	echo '<input type=text name=to_bill_group placeholder="YYMMNN">';
	
	echo '</td></tr><tr><td  align=center colspan=2>';
	echo '<input type=submit name=submit value=copy_bill onclick="return confirm(\'Salary will be copied to new bill\')">';
	echo '</td></tr><tr><td colspan=2>';
	
	echo '</td></tr></table></form>';	
}

function copy_bill($link,$from_bn,$to_bn,$ar)
{
	$sql='select * from salary where bill_group=\''.$from_bn.'\'';
	//echo $sql;

	if(!$result=mysqli_query($link,$sql)){return FALSE;}
	
	while($ra=mysqli_fetch_assoc($result))
	{
		$f='';
		$v='';
		foreach($ra as $key=>$value)
		{
			$f=$f.' `'.$key.'`,';
			if($key=='bill_group')
			{
				$v=$v.' \''.$to_bn.'\',';
			}
			elseif(array_key_exists($key,$ar))
			{
				$v=$v.' \''.$ar[$key].'\',';
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

if(isset($_POST['submit']))
{
	if($_POST['submit']=='copy_bill' && isset($_POST['from_bill_group'])&& isset($_POST['to_bill_group']))
	{
		$_POST['from_date']=india_to_mysql_date($_POST['from_date']);
		$_POST['to_date']=india_to_mysql_date($_POST['to_date']);		
		copy_bill($link,$_POST['from_bill_group'],$_POST['to_bill_group'],$_POST);
		list_bill($link,$_POST['to_bill_group']);
	}
	
	if($_POST['submit']=='edit' ||$_POST['submit']=='refresh')
	{
		edit_salary($link,$_POST['staff_id'],$_POST['bill_group']);
		list_bill($link,$_POST['bill_group']);
	}
	elseif($_POST['submit']=='delete')
	{
		delete_raw_by_id_dpc($link,'salary','staff_id',$_POST['staff_id'],'bill_group',$_POST['bill_group']);
		list_bill($link,$_POST['bill_group']);
	}

}
else
{
	read_bill_group_to_copy($link);
}
?>

