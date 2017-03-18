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

function echo_csv($csv)
{
	$ex=explode(',',$csv);
	foreach ($ex as $v)
	{
		echo $v.'<br>';
	}	
}

function edit_salary($link,$slr)
{

	echo 	'<div onclick="hide(\'spn\')" id=response></div>';
	echo '<form method=post>';
	echo 	'<table class=border align=center style="horizontal-align:center;">
			<tr><th colspan=6>Government Medical college Surat,'.$slr['remark'].'</th>';
	echo '</tr><tr>';
	echo '<th>'.$slr['fullname'].'</th><th>'.$slr['department'].'</th><th>'.$slr['post'].'</th></tr>';
	echo '</tr><tr>';
	echo '<th>'.$slr['bank'].':'.$slr['bank_acc_number'].'</th><th>Bill:'.$slr['bill_number'].'</th><th>Head:'.$slr['budget_head'].'</th></tr>';
	echo '</tr><tr>';
	echo '<th>GPF:'.$slr['gpf_acc'].'</th><th>CPF:'.$slr['cpf_acc'].'</th><th>ID:'.$slr['staff_id'].'</th></tr>';
	echo '</table>';
	
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
				onchange="-do_work(\''.$slr['staff_id'].'\',\''.$slr['bill_number'].'\',this)" 
			>
			</td></tr>';
		}
	}	
	echo '</table>';
	echo 	'</td></tr>';
	echo '<tr><td>Gross</td><td style="text-align:right;" >'.$plus.'</td><td>Deduction</td><td style="text-align:right;" >'.$minus.'</td></tr>';
	echo '<tr><td>Net</td><td  style="text-align:right;" >'.($plus-$minus).'</td></tr>';
	echo '</table>';
	echo '</form>';
}



/////////////Main script start from here//////////////

$link=connect();
$u=get_user_info($link);


menu();

	$slr=get_raw($link,'select * from salary,staff_position
						where 
							salary.staff_id=\''.$_POST['staff_id'].'\' 
							and 
							bill_number=\''.$_POST['bill_number'].'\'
							and
							salary.staff_position_id=staff_position.staff_position_id
							');

if($slr===FALSE)
{
		insert_id_tpc($link,'salary','staff_id',$_POST['staff_id'],'bill_number',$_POST['bill_number']);
		
		$staff_detail=get_raw($link,'select * from staff where staff_id=\''.$_POST['staff_id'].'\'');
		$position_detail=get_raw($link,'select * from staff_position where staff_position_id=\''.$staff_detail['staff_position_id'].'\'');

		update_or_insert_field_by_id_tpc($link,'salary',
											'staff_id',$_POST['staff_id'],'bill_number',$_POST['bill_number'],
											'fullname',$staff_detail['fullname']);
		update_or_insert_field_by_id_tpc($link,'salary',
											'staff_id',$_POST['staff_id'],'bill_number',$_POST['bill_number'],
											'staff_position_id',$staff_detail['staff_position_id']);
		update_or_insert_field_by_id_tpc($link,'salary',
											'staff_id',$_POST['staff_id'],'bill_number',$_POST['bill_number'],
											'gpf_acc',$staff_detail['gpf_acc']);
		update_or_insert_field_by_id_tpc($link,'salary',
											'staff_id',$_POST['staff_id'],'bill_number',$_POST['bill_number'],
											'cpf_acc',$staff_detail['cpf_acc']);
																																	
		update_or_insert_field_by_id_tpc($link,'salary',
											'staff_id',$_POST['staff_id'],'bill_number',$_POST['bill_number'],
											'department',$position_detail['department']);
		update_or_insert_field_by_id_tpc($link,'salary',
											'staff_id',$_POST['staff_id'],'bill_number',$_POST['bill_number'],
											'post',$position_detail['post']);
		update_or_insert_field_by_id_tpc($link,'salary',
											'staff_id',$_POST['staff_id'],'bill_number',$_POST['bill_number'],
											'bank',$staff_detail['bank']);
		update_or_insert_field_by_id_tpc($link,'salary',
											'staff_id',$_POST['staff_id'],'bill_number',$_POST['bill_number'],
											'bank_acc_number',$staff_detail['bank_acc_number']);
																																			
		$slr=get_raw($link,'select * from salary,staff_position
						where 
							salary.staff_id=\''.$_POST['staff_id'].'\' 
							and 
							bill_number=\''.$_POST['bill_number'].'\'
							and
							salary.staff_position_id=staff_position.staff_position_id
							');
}
		edit_salary($link,$slr);

?>

