<?php
session_start();
require_once 'common.php';

//echo '<pre>';print_r($_POST);echo '</pre>';
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

echo '<table align=center><tr><td>';
get_bill_number($link,$_POST['bill_group']);
echo '<br><br><br><br><br>';
echo '</td></tr><tr><td colspan=2>';
echo '<table class=border style="background-color:lightblue;">';
echo '<tr><th colspan=2>Your Current Selection is As follows</th></tr>';
echo '<form method=post>';
echo '<tr><td>Bill Group Selected:</td><td><input type=text readonly name=bill_group value=\''.$_POST['bill_group'].'\'></td></tr>';
echo '<tr><td>Bill Number Selected:</td><td><input type=text readonly name=bill_number value=\''.$_POST['bill_number'].'\'></td></tr>';
echo '<tr><th colspan=2>Following reports are available for print</th></tr>';
echo '<tr><td>Outer</td><td><button type=submit formtarget=_blank name=action value=print_outer formaction=outer_1.php>Print Outer</button></td></tr>';
echo '<tr><td>Outer(Special)</td><td><button type=submit formtarget=_blank name=action value=print_outer_special formaction=outer_1_special.php>Print Outer(Special)</button></td></tr>';
//echo '<tr><td>Outer Front and Back</td><td><button type=submit formtarget=_blank name=action value=print_fb formaction=outer_2.php>Print Front and Back</button></td></tr>';
echo '<tr><td>Income Tax</td><td><button type=submit formtarget=_blank name=action value=itax formaction=itax.php>Print ITax</button></td></tr>';
echo '<tr><td>HR</td><td><button type=submit formtarget=_blank name=action value=house_rent formaction=house_rent.php>Print HRent</button></td></tr>';
echo '<tr><td>PT</td><td><button type=submit formtarget=_blank name=action value=ptax formaction=ptax.php>Print PTax</button></td></tr>';
echo '<tr><td>GPF</td><td><button type=submit formtarget=_blank name=action value=gpf formaction=gpf.php>Print GPF</button></td></tr>';
echo '<tr><td>SIS</td><td><button type=submit formtarget=_blank name=action value=sis formaction=sis.php>Print SIS</button></td></tr>';
echo '<tr><td>SIS-C</td><td><button type=submit formtarget=_blank name=action value=sis_c formaction=sis_c.php>Print SIS Annexure -C</button></td></tr>';
echo '<tr><td>Misc. Recovery</td><td><button type=submit formtarget=_blank name=action value=recovery formaction=recovery.php>Print Recovery</button></td></tr>';
echo '<tr><td>Bank and Net</td><td><button type=submit formtarget=_blank name=action value=bank_net formaction=bank_net.php>Print Bank Net</button></td></tr>';
echo '<tr><td>Salary Slip</td><td><button type=submit formtarget=_blank name=action value=bank_net formaction=salary_slip.php>Print Salary Slip</button></td></tr>';
echo '</form>';
echo '</td></tr></table>';

echo '</td></tr></table>';
?>

