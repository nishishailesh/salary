<?php
session_start();
//$nojunk='defined';
require_once 'common.php';
//include_once('tbs_class.php');
//include_once('tbs_plugin_opentbs.php');


$link=connect();

//$TBS = new clsTinyButStrong;
//$TBS->Plugin(TBS_INSTALL, OPENTBS_PLUGIN);
//$TBS->Plugin(OPENTBS_DEBUG_INFO, true);
//$TBS->LoadTemplate('outer_1.odt', OPENTBS_ALREADY_UTF8);
//$TBS->LoadTemplate('outer_1.odt', OPENTBS_ALREADY_UTF8);


/*
 
 SELECT *, `Pay_of_Officer_0101(+)`+ `Grade_Pay_of_Officer_0101(+)`+ `Pay_of_Establishment_0102(+)`+ `Grade_Pay_of_Establishment_0102(+)`+`NPA_0128(+)` +`Dearness_Allowance_0103(+)`
+`Compansatory_Local_Allowance_0111(+)`
+`House_Rent_Allowance_0110(+)`
+`Medical_Allowance_0107(+)`+
`BA_0104(+)`+
`Transport_Allowance_0113(+)`+
`Interim_Relief_0112(+)`+
`Washing_Allowance_0132(+)`+
`Uniform_Allowance_0131(+)`+
`Nursing_Allownace_0129(+)`+
`Special_Post_Allow_0104(+)`+
`Family_Welfare_Allow_0104(+)`+
`Ceiling_Extra_0104(+)`

as gross,

`Income_Tax_9510(-)`
+`Rent_of_Building_9560(-)`
+`Professional_Tax_9570(-)`
+`SIS_I_9581(-)`
+`SIS_S_9582(-)`
+`GPF_non_IV_9670(-)`
+`GPF_IV_9531(-)`
+`CPF_9690(-)`
+`Pay_of_Officer_0101(-)`
+`Pay_of_Establishment_0102(-)`




as deduction,



(select gross)- (select deduction) as net

FROM `salary`

*/



/*$sql='select *,`Dearness_Allowance_0103(+)`+`Transport_Allowance_0113(+)` gross 
		from salary 
		where bill_group=\''.$_POST['bill_group'].'\'';
		
		*/
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
		
$sql='
 SELECT *, `Pay_of_Officer_0101(+)`+ `Grade_Pay_of_Officer_0101(+)`+ `Pay_of_Establishment_0102(+)`+ `Grade_Pay_of_Establishment_0102(+)`+`NPA_0128(+)` +`Dearness_Allowance_0103(+)`
+`Compansatory_Local_Allowance_0111(+)`
+`House_Rent_Allowance_0110(+)`
+`Medical_Allowance_0107(+)`+
`BA_0104(+)`+
`Transport_Allowance_0113(+)`+
`Interim_Relief_0112(+)`+
`Washing_Allowance_0132(+)`+
`Uniform_Allowance_0131(+)`+
`Nursing_Allownace_0129(+)`+
`Special_Post_Allow_0104(+)`+
`Family_Welfare_Allow_0104(+)`+
`Ceiling_Extra_0104(+)`

as gross,

`Income_Tax_9510(-)`
+`Rent_of_Building_9560(-)`
+`Professional_Tax_9570(-)`
+`SIS_I_9581(-)`
+`SIS_S_9582(-)`
+`GPF_non_IV_9670(-)`
+`GPF_IV_9531(-)`
+`CPF_9690(-)`
+`Pay_of_Officer_0101(-)`
+`Pay_of_Establishment_0102(-)`

as deduction,

(select gross)- (select deduction) as net

from salary

where bill_group=\''.$_POST['bill_group'].'\' and bill_number=\''.$_POST['bill_number'].'\'';

//echo $sql;

$rpp=16;
if(!$result=mysqli_query($link,$sql)){return FALSE;}
$page=1;
$count=0;
while($result_array=mysqli_fetch_assoc($result))
	{	
		$count++;
		$final[$page][$count]=$result_array;
		if($count==$rpp)
		{
			foreach($final[$page][1] as $key=>$value)
			{
				$final[$page][$rpp+1][$key]=array_sum(array_column($final[$page],$key));
			}
			$count=0;$page++;
		}
	}

foreach($final as $k=>$pg)
{
	echo '<table class=border>';
	$count=1;
	echo '<tr><td>Sr</td><td>Name</td><td>Pay Officer/Est<br>GP</td></tr>';
	foreach($pg as $data)
	{
		echo '<tr>';
		echo_one_raw_p($data,$count,$rpp,$k);
		echo '</tr>';		
		$count++;
	}
	echo '</table>';
	echo '<h2 style="page-break-before: always;"></h2>';
	
	
	echo '<table class=border>';
	$count=1;
	echo '<tr><td>Sr</td><td></td><td>HRR</td></tr>';
	foreach($pg as $data)
	{
		echo '<tr>';
		echo_one_raw_m($data,$count,$rpp,$k);
		echo '</tr>';		
		$count++;
	}
	echo '</table>';
	echo '<h2 style="page-break-before: always;"></h2>';
	
}

//summary



function echo_one_raw_m($d,$count,$rpp,$page)
{
	if($count<=$rpp)
	{
		$sq=($count+(($page-1)*$rpp));
		echo '<td>'.$sq.'</td>
					<td><br><br><br><br></td>
					
					<td>'.$d['Rent_of_Building_9560(-)'].'</td>';
	}
	else
	{
		echo '<td></td><td>Page Total</td><td>'.$d['Rent_of_Building_9560(-)'].'</td>';
	}
}


function echo_one_raw_p($d,$count,$rpp,$page)
{
	if($count<=$rpp)
	{
		$sq=($count+(($page-1)*$rpp));
		echo '<td>'.$sq.'</td>
					<td>'.
					$d['fullname'].'<br>'.
					$d['department'].','.substr($d['post'],0,4).'<br>'.
					$d['pay_scale'].'<br>'.
					$d['old_pay_scale'].
					'</td>
					
					<td>'.$d['Pay_of_Officer_0101(+)'].'<br>'.$d['Grade_Pay_of_Officer_0101(+)'].'</td>';
	}
	else
	{
		echo '<td></td><td>Page Total</td><td>'.($d['Pay_of_Officer_0101(+)'] + $d['Grade_Pay_of_Officer_0101(+)']).'</td>';
	}
}


//$sum = array_sum(array_column($final,'BA_0104(+)'));
//echo $sum;
//echo '<pre>';
//print_r($final);
//echo '</pre>';

//$TBS->MergeBlock('orig','array','final');
//$TBS->MergeBlock('bk1','array','final[%p1%][%p1%]');
//$TBS->MergeBlock('bk2','array','final[%p1%][%p1%]');
/*
foreach($final as $value)
{

}

foreach($final as $value)
{
	$TBS->MergeBlock('bk2','array',$value);
}
*/
//$TBS->Show(OPENTBS_DOWNLOAD, $_POST['bill_group'].'.odt');

?>

