<?php
session_start();
$nojunk='defined';
require_once 'common.php';
require_once 'common_js.php';
require_once 'menu_salary.php';
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


print_r($_POST);

$link=connect();
menu();

get_multiple_staff_id($link);
if(isset($_POST['action']))
{
	if($_POST['action']=='print_multiple')
	{
ob_start();
//print_one_salary_slip($link,157,'12170401');
$myStr = ob_get_contents();
ob_end_clean();

$pdf = new ACCOUNT('P', 'mm', 'A4', true, 'UTF-8', false);
$pdf->SetFont('dejavusans', '', 9);
$pdf->SetMargins(20, 20, 20);
$pdf->AddPage();
$pdf->writeHTML($myStr, true, false, true, false, '');
$pdf->Output('salary_slip.pdf', 'I');

}
}

/*
	if($n<($GLOBALS['total_pages']-1))
	{
		echo '<h2 style="page-break-after: always;"></h2>';
	}
*/

//get_multiple_staff_id($link);


function get_multiple_staff_id($link)
{
	$sql='select staff_id,fullname,uid from staff
	order by fullname';

	if(!$result=mysqli_query($link,$sql)){echo mysqli_error($link);return FALSE;}
	$counter=1;
	echo '<form method=post>';
	echo '<input type=submit name=action value=print_multiple>';
	echo '<table class=border>';
	while($ar=mysqli_fetch_assoc($result))
	{
		echo '<tr><td>'.$counter.'</td><td><input 
										type=checkbox 
										name=\''.$ar['staff_id'].'\'
										>'.$ar['fullname'].'</td><td>'.$ar['staff_id'].'</td><td>'.$ar['uid'].'</td></tr>';
										
		$counter++;
	}
	echo '</table>';
	echo '</form>';
}



?>

