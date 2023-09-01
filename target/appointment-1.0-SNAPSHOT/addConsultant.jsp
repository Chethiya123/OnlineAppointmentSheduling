<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DataAccessTire.*"%>
<%@page import="java.sql.*" %>
<%! Connection conn = null;
    Statement stm = null;
    ResultSet rs = null;%>
    
<!DOCTYPE html>
<html>
    <head>
<style type="text/css">
</style>
	<title>The Appointment System</title>
	<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
	<link rel="shortcut icon" href="images/favicon.ico" />
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
	<!--[if IE 6]>
		<link rel="stylesheet" href="css/ie6.css" type="text/css" media="all" />
		<script src="js/png-fix.js" type="text/javascript"></script>
	<![endif]-->
	<script src="js/jquery-1.4.2.js" type="text/javascript"></script>
	<script src="js/jquery.jcarousel.js" type="text/javascript"></script>
	<script src="js/js-func.js" type="text/javascript"></script>
	<script type="text/javascript">
function MM_jumpMenuGo(objId,targ,restore){ //v9.0
  var selObj = null;  with (document) { 
  if (getElementById) selObj = getElementById(objId);
  if (selObj) eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
  if (restore) selObj.selectedIndex=0; }
}
</script>
<script type="text/javascript"> // Java script validations
function validation(){ // Function name
	if(form1.txtDrugName.value==""){ // First name validations checking wheher value null
	window.alert("Enter the drug name");// If value null following message will display
	form1.txtDrugName.focus(); // Focusing to user to correct text field
	return false;
			
	}else if(form1.txtQuantity.value==""){
	window.alert("Enter the drug quantity");	
	form1.txtQuantity.focus();
	return false;
        }else if(!isNaN(form1.txtQuantity.value)==false){
			window.alert("Drug quantity cannot contain in characters");
			form1.txtQuantity.focus();
			return false;
        
        }if(form1.cmbSupNam.value=="--Select User--"){ 
	window.alert("Select the supplier name");
	form1.cmbSupNam.focus();
	return false;                
     
        }else if(form1.txtMfDate.value==""){
	window.alert("Enter the manufacture date");	
	form1.txtMfDate.focus();
	return false;
		}else if((form1.txtMfDate.value.indexOf("/")==-1) || 
		(form1.txtMfDate.value.indexOf("/")==-1) ){ // Checking whether email address contain with @ and . symbols
		window.alert("Not a valid date format of manufacture date");
		form1.txtMfDate.select();
		return false;	
	}else if(form1.txtExDate.value==""){
	window.alert("Enter the expiry date");	
	form1.txtExDate.focus();
	return false;
		}else if((form1.txtExDate.value.indexOf("/")==-1) || 
		(form1.txtExDate.value.indexOf("/")==-1) ){ // Checking whether email address contain with @ and . symbols
		window.alert("Not a valid date format of expiry date");
		form1.txtExDate.select();
		return false;
	}
}
</script>
<script>
function addDate(){
txtMfDate = new Date();
var month = txtMfDate.getMonth()+1;
var day = txtMfDate.getDate();
var year = txtMfDate.getFullYear();

if (document.getElementById('txtMfDate').value == ''){
document.getElementById('txtMfDate').value = day + '/' + month + '/' + year;
}
}</script>
    </head>
    <body onload="addDate();">
       <!-- Header -->
<div id="header">
	<div class="shell">
		<h1 id="logo" class="notext"><a href="index.html">The Perth University</a></h1>
		<div id="navigation"></div>
		<div class="cl">&nbsp;</div>
		
	</div>	
</div>
<!-- End Header -->
<!-- Main -->
<div id="main">
  <div class="shell_package_updown">
	  <div class="two-col">
	    <h1><font><strong>Register new Consultant</strong></font></h1>
	   
	   <!-- <h2>Register new student</h2>-->
        <form id="form1" name="form1" method="post" action="AddConsultant" onsubmit="return validation();">
	    <table width="639" border="0">
	      <tr>
	        <td height="32"><div align="right"></div></td>
	        <td width="10">&nbsp;</td>
	        <td width="203">	         
	          <label for="txtDrugName" ></label></td>
	        <td width="302">&nbsp;</td>
          </tr>
	      <tr>
	        <td height="32"><div align="right">Consultant ID</div></td>
	        <td>&nbsp;</td>
	        <td><label for="txtDrugName2" >
	          <input name="consultantId" type="text" id="consultantId" size="45" />
	        </label></td>
	        <td>&nbsp;</td>
          </tr>
	     
	      <tr>
	        <td width="117" height="32"><div align="right">Consultant Name</div></td>
	        <td width="10">&nbsp;</td>
	        <td width="203"><label for="cmbSupNam">
	          <input name="consultantName" type="text" id="consultantName" size="45" />
	        </label></td>
	        <td>&nbsp;</td>
          </tr>
	      
	      <tr>
	        <td height="32"><div align="right">Specialization</div></td>
	        <td>&nbsp;</td>
	        <td><input name="specialization" type="text" id="specialization" size="45" /></td>
	        <td>&nbsp;</td>
          </tr>
	      <tr>
	        	        <td height="32"><div align="right">Available Date</div></td>
	        <td>&nbsp;</td>
	        <td><input name="availabledate" type="text" id="availabledate" size="45" /></td>
	        <td>&nbsp;</td>
          </tr>
          <tr>
	        < <tr>
	        	        <td height="32"><div align="right">Available Time</div></td>
	        <td>&nbsp;</td>
	        <td><input name="availabletime" type="text" id="availabletime" size="45" /></td>
	        <td>&nbsp;</td>
          </tr>
          </tr>
           <tr>
	        <td height="32"><div align="right"></div></td>
	        <td>&nbsp;</td>
	        <td>&nbsp;</td>
	        <td>&nbsp;</td>
          </tr>
	      <tr>
	        <td height="32"><div align="right"></div></td>
	        <td>&nbsp;</td>
	        <td>&nbsp;</td>
	        <td>&nbsp;</td>
          </tr>
          <tr>
	        <td height="32"><div align="right"></div></td>
	        <td>&nbsp;</td>
	        <td><label for="txtBatchId"></label></td>
	        <td>&nbsp;</td>
          </tr>
	      <tr>
	        <td height="44"><div align="right"></div></td>
	        <td>&nbsp;</td>
	        <td colspan="2">
            <button type="submit" name="btnSubmit" id="btnSubmit" value="Submit" class="button"/>Submit</button>
	        <button type="reset" name="btnCansel" id="btnCansel" value="Cancel" class="button"/>Cancel</button>
            </td>
          </tr>
        </table>
        </form>
	    <p>&nbsp;</p>
        <h5>&nbsp;</h5>
        <p>&nbsp;</p>
		<h5>&nbsp;</h5>
            <h5>&nbsp;</h5>
        <p><br />
	    </p>
	</div>
	  <div class="col_pic">
	    <div class="cl">&nbsp;</div>
			
		</div>
  </div>
</div>
<!-- End Main -->

    </body>
</html>
