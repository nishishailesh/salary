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

///var/www/html/salary/tcpdf/tools
//copy a ttf file as x.ttf and run following command
//./tcpdf_addfont.php -b -t TrueTypeUnicode -f 32 -i x.ttf
//above command will creat three files at appropriate place in font folder
//cp /usr/share/fonts/truetype/freefont/FreeSerif*.ttf .
//$pdf->SetFont('x', '', 9); 	//to print gujarati

//$pdf->SetFont('freeserif', '', 9); 	//to print gujarati
$pdf->SetFont('courier', '', 9);		//smaller size better performance
$pdf->SetMargins(20, 20, 20);
$pdf->AddPage();
$pdf->writeHTML($myStr, true, false, true, false, '');

//public function Write($h, $txt, $link='', $fill=false, $align='', $ln=false, $stretch=0, $firstline=false, $firstblock=false, $maxh=0, $wadj=0, $margin='')

/*
$x='તમારે ગુજરાતી માં જે લખવુ હોય તે લખો. Copy કરી Paste કરો';

$y= mb_convert_encoding($x, 'UTF-8', 'HTML-ENTITIES');
//echo '<tr><td>'.$x.'</td></tr>';
	
$pdf->Write(4, $x, $link='', $fill=false, $align='', $ln=false, $stretch=0, $firstline=false, $firstblock=false, $maxh=0, $wadj=0, $margin='');
*/

$pdf->Output($_POST['bill_group'].'_'.$_POST['bill_number'].'_salary_slip.pdf', 'I');


?>

