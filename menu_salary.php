<?php

echo '

<style>
	.menu {border:0px;border-spacing: 0;border-collapse: collapse;background-color:lightgreen;}
</style>

<script type="text/javascript" >
		function showhidemenu(one) 
		{		
			xx=document.getElementsByClassName(\'menu\');			
			for(var i = 0; i < xx.length; i++)
			{
				if(xx[i]!=document.getElementById(one))
				{
					xx[i].style.display = "none";		
				}
				
				else if(xx[i]==document.getElementById(one))
				{
					if(xx[i].style.display == "block")
					{
						xx[i].style.display = "none";
					}
					else
					{
						xx[i].style.display = "block";
					}		
				}
			}	
		}
		
		function hidemenu() {
		
			xx=document.getElementsByClassName(\'menu\');
			for(var i = 0; i < xx.length; i++)
			{
				xx[i].style.display = "none";		
			}
		}
		
		//document.onclick=function(){hidemenu();};
		</script>';

function menu()
{	
		
echo '
<form method=post>
<table align=center class=\"menu\">
<tr><td>
		<button type=button onclick="showhidemenu(\'button1\')">Staff-wise</button>
		<table  id="button1" class="menu" style="position:absolute; display:none;">
			<tr><td>
				<button formaction=get_id_for_new_salary.php type=submit onclick="hidemenu()" name=new>New</button>
			</td></tr>	
			<tr><td>
				<button formaction=get_id_for_edit_salary.php type=submit onclick="hidemenu()" name=edit>Edit</button>
			</td></tr>			
		</table>
<td><td>
		<button type=button onclick="showhidemenu(\'button2\')">Bill-wise</button>
		<table  id="button2" class="menu" style="position:absolute; display:none;">
			<tr><td>
				<button formaction=get_id_to_edit_bill.php type=submit onclick="hidemenu()" name=view_bill>Edit</button>
			</td></tr>	
			<tr><td>
				<button formaction=copy_bill.php type=submit onclick="hidemenu()" name=copy_bill>Copy</button>
			</td></tr>	
		</table>			
</td><td>
		<button  type=button onclick="showhidemenu(\'button3\')">Manage My Account('.$_SESSION['login'].')</button>
		<table  id="button3" class="menu" style="position: absolute;display:none;">
		<tr><td>
			<button formaction=logout.php type=submit onclick="hidemenu()" name=new>Logout</button>
		</td></tr>
		<tr><td>
			<button formaction=change_pass.php type=submit onclick="hidemenu()" name=new>Change Password</button>
		</td></tr>
		</table>	
</td></tr>
</table>
</form>
';

}


?>
