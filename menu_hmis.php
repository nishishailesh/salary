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
<table class=\"menu\">
<tr><td>
		<button type=button onclick="showhidemenu(\'button1\')">Discarge Card</button>
		<table  id="button1" class="menu" style="position:absolute; display:none;">
			<tr><td>
				<button formaction=new_dc.php type=submit onclick="hidemenu()" name=new>New</button>
			</td></tr>			
			<tr><td>
				<button formaction=search_dc.php type=submit onclick="hidemenu()" name=new>Search</button>
			</td></tr>
		</table>
			
</td><td>
		<button  type=button onclick="showhidemenu(\'button2\')">Manage My Account('.$_SESSION['login'].')</button>
		<table  id="button2" class="menu" style="position: absolute;display:none;">
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
