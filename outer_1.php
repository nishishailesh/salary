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

$sql='select *,`Dearness_Allowance_0103(+)`+`Transport_Allowance_0113(+)` gross 
		from salary 
		where bill_group=\''.$_POST['bill_group'].'\'';
$TBS->MergeBlock('bk1',$link,$sql);

$TBS->Show(OPENTBS_DOWNLOAD, $_POST['bill_group'].'.odt');

?>

