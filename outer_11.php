<?php
session_start();
$nojunk='defined';
require_once 'common.php';
include_once('tbs_class.php');
include_once('tbs_plugin_opentbs.php');


$link=connect();

$TBS = new clsTinyButStrong;
$TBS->Plugin(TBS_INSTALL, OPENTBS_PLUGIN);
//$TBS->Plugin(OPENTBS_DEBUG_INFO, true);
//$TBS->LoadTemplate('outer_1.odt', OPENTBS_ALREADY_UTF8);
$TBS->LoadTemplate('outer_1.odt', OPENTBS_ALREADY_UTF8);


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

where bill_group=\''.$_POST['bill_group'].'\'';

if(!$result=mysqli_query($link,$sql)){return FALSE;}
while($result_array=mysqli_fetch_assoc($result))
	{
		$final[]=$result_array;
	}
	
print_r($final);

//echo $sql;

/*
$TBS->MergeBlock('bk1',$link,$sql);

$TBS->MergeBlock('bk2',$link,$sql);

$TBS->Show(OPENTBS_DOWNLOAD, $_POST['bill_group'].'.odt');
*/

?>

