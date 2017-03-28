<?php
session_start();
$nojunk='defined';
require_once 'common.php';
include_once('tbs_class.php');
//include_once('tbs_plugin_opentbs.php');

//print_r($_POST);

/////////////Main script start from here//////////////

$link=connect();
//menu();

//new_salary($link,$_POST['staff_id'],$_POST['bill_number']);
$data=get_raw($link,'select * from salary where
						staff_id=\'50\' and 
						bill_group=\'170302\'');
						
$TBS = new clsTinyButStrong;
//$TBS->Plugin(TBS_INSTALL, OPENTBS_PLUGIN);
//$TBS->Plugin(OPENTBS_DEBUG_INFO, true);
$TBS->LoadTemplate('slip.html', OPENTBS_ALREADY_UTF8);
//$TBS->LoadTemplate('slip.odt', OPENTBS_ALREADY_UTF8);
//$TBS->Show(OPENTBS_DOWNLOAD, 'salary.odt');
$TBS->Show();
?>

