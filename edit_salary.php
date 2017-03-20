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


function display_salary($link,$slr)
{
	echo '<div onclick="hide(\'spn\')" id=response></div>';
	
	echo 	'<table class=border align=center style="horizontal-align:center;">
				<tr>
					<th colspan=6>Government Medical college Surat,';
	echo 						'<input placeholder=remark
									style="text-align:left;"
									type=text 
									size=20 
									id=remark
									value=\''.$slr['remark'].'\' 
									onchange="do_work(\''.$slr['staff_id'].'\',\''.$slr['bill_number'].'\',this)" 
								>';
	
	echo 			'</th>';
	echo '		</tr>
				<tr>';
	echo 			'<th>'.$slr['fullname'].'
					</th>
					<th>';
						mk_select_from_table_ajax_dpc($slr['staff_id'],$slr['bill_number'],$link,'department','',$slr['department']);
	echo 			'</th>
					<th>';
						mk_select_from_table_ajax_dpc($slr['staff_id'],$slr['bill_number'],$link,'post','',$slr['post']);	
	echo 			'</th>
				</tr>';
	echo 		'<tr>';
	echo 			'<th>'.$slr['bank'].':'.$slr['bank_acc_number'].'</th><th>Bill:'.$slr['bill_number'].'
					</th>
					<th>Head:';
	echo 				'<input 
						style="text-align:left;"
						type=text 
						size=20 
						id=budget_head
						value=\''.$slr['budget_head'].'\' 
						onchange="do_work(\''.$slr['staff_id'].'\',\''.$slr['bill_number'].'\',this)" 
					>';
	echo 			'</th>
				</tr>';
	echo 		'<tr>';
	echo 			'<th>GPF:'.$slr['gpf_acc'].'</th>
					<th>CPF:'.$slr['cpf_acc'].'</th>
					<th>ID:'.$slr['staff_id'].'</th>
				</tr>';
	echo 	'</table>';
	
	//echo '<input type=hidden name=staff_id value=\''.$slr['staff_id'].'\'>';
	//echo '<input type=hidden name=bill_number value=\''.$slr['bill_number'].'\'>';
	
	echo '<table align=center class=border><tr><td style=" vertical-align: top;"  colspan=2><table class=border>';
	
	$exclude=array('fullname','department','post','bank','bank_acc_number','bill_number',
						'budget_head','gpf_acc','cpf_acc','staff_id','remark','staff_position_id');

	$plus=0;
	$minus=0;
	
	foreach ($slr as $key=>$value)
	{
		if(!in_array($key,$exclude))
		{
			if($key[0]=='p')
			{
				$display=substr($key,1);
				$plus=$plus+$value;
			}
			elseif($key[0]=='m')
			{
				$display=substr($key,1);
				$minus=$minus+$value;
			}
			else
			{
				$display=$key;
			}
			
			if($key=='mitax'){echo '</table></td><td colspan=2><table class=border>';}
			echo 		'<tr><td><b>'.$display.'</b></td><td>
			<input 
				style="text-align:right;"
				type=text 
				size=10 
				id=\''.$key.'\'
				value=\''.$value.'\' 
				onchange="do_work(\''.$slr['staff_id'].'\',\''.$slr['bill_number'].'\',this)" 
			>
			</td></tr>';
		}
	}	
	echo '</table></td></tr><tr><td>';
//	echo '<table class=border align=center>';
		echo '<tr><td>Gross</td><td style="text-align:right;" >'.$plus.'</td><td>Deduction</td><td style="text-align:right;" >'.$minus.'</td></tr>';
	echo '<tr><td colspan=2>';
	
	echo '<form method=post>
		<input type=submit value=refresh>
		<input type=hidden name=staff_id value=\''.$_POST['staff_id'].'\'>
		<input type=hidden name=bill_number value=\''.$_POST['bill_number'].'\'>';
	echo '</form>';

	echo '</td><td>Net</td><td  style="text-align:right;" >'.($plus-$minus).'</td></tr>';
	
//	echo '</table>';
	echo '</td></tr></table>';
	
}

function manage_single_salary($link,$staff_id,$bill_number)
{
	$slr=get_raw($link,'select * from salary
						where 
							salary.staff_id=\''.$staff_id.'\' 
							and  salary.bill_number=\''.$bill_number.'\' 
							');

	if($slr===FALSE)
	{
			insert_id_tpc($link,'salary','staff_id',$staff_id,'bill_number',$bill_number);
		
			$staff_detail=get_raw($link,'select * from staff where staff_id=\''.$staff_id.'\'');
			//print_r($staff_detail);
			update_or_insert_field_by_id_tpc($link,'salary',
												'staff_id',$staff_id,'bill_number',$bill_number,
												'fullname',$staff_detail['fullname']);
			update_or_insert_field_by_id_tpc($link,'salary',
												'staff_id',$staff_id,'bill_number',$bill_number,
												'department',$staff_detail['department']);
			update_or_insert_field_by_id_tpc($link,'salary',
												'staff_id',$staff_id,'bill_number',$bill_number,
												'post',$staff_detail['post']);
			update_or_insert_field_by_id_tpc($link,'salary',
												'staff_id',$staff_id,'bill_number',$bill_number,
												'gpf_acc',$staff_detail['gpf_acc']);
			update_or_insert_field_by_id_tpc($link,'salary',
												'staff_id',$staff_id,'bill_number',$bill_number,
												'cpf_acc',$staff_detail['cpf_acc']);											
			update_or_insert_field_by_id_tpc($link,'salary',
												'staff_id',$staff_id,'bill_number',$bill_number,
												'bank',$staff_detail['bank']);
			update_or_insert_field_by_id_tpc($link,'salary',
												'staff_id',$staff_id,'bill_number',$bill_number,
												'bank_acc_number',$staff_detail['bank_acc_number']);
																																				
		$slr=get_raw($link,'select * from salary
							where 
								salary.staff_id=\''.$staff_id.'\' 
								and  salary.bill_number=\''.$bill_number.'\' 
								');
	}
	edit_salary($link,$slr);
}			


function new_salary($link,$staff_id,$bill_number)
{
	$slr=get_raw($link,'select * from salary
						where 
							salary.staff_id=\''.$staff_id.'\' 
							and  salary.bill_number=\''.$bill_number.'\' 
							');

	if($slr===FALSE)
	{
			insert_id_tpc($link,'salary','staff_id',$staff_id,'bill_number',$bill_number);
		
			$staff_detail=get_raw($link,'select * from staff where staff_id=\''.$staff_id.'\'');
			//print_r($staff_detail);
			update_or_insert_field_by_id_tpc($link,'salary',
												'staff_id',$staff_id,'bill_number',$bill_number,
												'fullname',$staff_detail['fullname']);
			update_or_insert_field_by_id_tpc($link,'salary',
												'staff_id',$staff_id,'bill_number',$bill_number,
												'department',$staff_detail['department']);
			update_or_insert_field_by_id_tpc($link,'salary',
												'staff_id',$staff_id,'bill_number',$bill_number,
												'post',$staff_detail['post']);
			update_or_insert_field_by_id_tpc($link,'salary',
												'staff_id',$staff_id,'bill_number',$bill_number,
												'gpf_acc',$staff_detail['gpf_acc']);
			update_or_insert_field_by_id_tpc($link,'salary',
												'staff_id',$staff_id,'bill_number',$bill_number,
												'cpf_acc',$staff_detail['cpf_acc']);											
			update_or_insert_field_by_id_tpc($link,'salary',
												'staff_id',$staff_id,'bill_number',$bill_number,
												'bank',$staff_detail['bank']);
			update_or_insert_field_by_id_tpc($link,'salary',
												'staff_id',$staff_id,'bill_number',$bill_number,
												'bank_acc_number',$staff_detail['bank_acc_number']);
																																				
		$slr=get_raw($link,'select * from salary
							where 
								salary.staff_id=\''.$staff_id.'\' 
								and  salary.bill_number=\''.$bill_number.'\' 
								');
			display_salary($link,$slr);
	}
	else
	{
		echo '<h5>staff_id and bill_number combination exist. Can not create salary</h5>';
	}
	

}			

function list_all_salary($link,$staff_id)
{
	$sql='select * from salary where staff_id=\''.$staff_id.'\'';
	if(!$result=mysqli_query($link,$sql)){return FALSE;}
	
	echo '<table class=border style="background-color:blue;"><tr><td>';
	echo '<button onclick="document.getElementById(\'all_salary\').style.display = \'none\';">Hide</button>';
	echo '<button onclick="document.getElementById(\'all_salary\').style.display = \'block\';">Show</button>';
	echo '</td></tr></table>';

	echo '<div id=all_salary>';

	echo '<table class=border>';
	while($result_array=mysqli_fetch_assoc($result))
	{
		echo '<tr>
				<td>
				<form method=post>
				<input type=submit value=edit>
				<input type=hidden name=staff_id value=\''.$result_array['staff_id'].'\'>
				<input type=hidden name=bill_number value=\''.$result_array['bill_number'].'\'>
				</form>
			</td>';		
		foreach($result_array as $value)
		{

			echo '<td>'.$value.'</td>';
		}
		echo '</tr>';
	}
	echo '</table></div>';
}	

function edit_salary($link,$staff_id,$bill_number)
{
	$slr=get_raw($link,'select * from salary
							where 
								salary.staff_id=\''.$_POST['staff_id'].'\' 
								and  salary.bill_number=\''.$_POST['bill_number'].'\' 
								');				
	display_salary($link,$slr);
}

/////////////Main script start from here//////////////

$link=connect();
menu();


if(isset($_POST['bill_number']))
{
	edit_salary($link,$_POST['staff_id'],$_POST['bill_number']);
}

list_all_salary($link,$_POST['staff_id']);

?>

