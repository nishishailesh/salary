<?php
session_start();
$nojunk='yes';
set_time_limit(360);
require_once 'common.php';
require_once('tcpdf/tcpdf.php');
require_once('Numbers/Words.php');

class ACCOUNT extends TCPDF {

	public function Header() 
	{
	}
	
	public function Footer() 
	{
	}	
}


ob_start();

$link=connect();
	$sql='select staff_id,bill_group from salary where 
			bill_group=\''.$_POST['bill_group'].'\' and 
			bill_number=\''.$_POST['bill_number'].'\'';


//        $sql='select staff_id,bill_group from salary where 
//                        bill_group=\''.$_POST['bill_group'].'\' order by fullname';

	//echo $sql;
	if(!$result=mysqli_query($link,$sql)){return FALSE;}
	$tot=mysqli_num_rows($result);
	$count=1;
	while($result_array=mysqli_fetch_assoc($result))
	{
		print_one_salary_slip($link,$result_array['staff_id'],$result_array['bill_group']);
		if($count<$tot)
		{
			echo '<h2 style="page-break-after: always;"></h2>';
		}
		$count++;
	}
	
	

$myStr = ob_get_contents();
ob_end_clean();
//echo $myStr;
//exit(0);

$pdf = new ACCOUNT('P', 'mm', 'A4', true, 'UTF-8', false);
//$pdf->SetFont('dejavusans', '', 9); 	//big file size and time and memory
//	public function SetFont($family, $style='', $size=null, $fontfile='', $subset='default', $out=true) {
$pdf->SetFont('courier', '', 9);		//smaller size better performance
$pdf->SetMargins(20, 20, 20);
$pdf->AddPage();
$pdf->writeHTML($myStr, true, false, true, false, '');
$pdf->Output($_POST['bill_group'].'_'.$_POST['bill_number'].'_salary_slip.pdf', 'I');


?>

