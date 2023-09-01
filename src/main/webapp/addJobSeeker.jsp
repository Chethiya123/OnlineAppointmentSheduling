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
	<title>The Perth University</title>
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
 if(form1.batchId.value==""){
	window.alert("Please Enter a Batch ID");	
	form1.txtQuantity.focus();
	return false;  
        }if(form1.batchName.value==""){ 
	window.alert("Please Enter a Batch Name");
	form1.batchName.focus();
	return false;                
        }else if(form1.startingDate.value==""){
	window.alert("Enter the Starting Date");	
	form1.startingDate.focus();
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
		<h1 id="logo" class="notext"><a href="index.html">The Appointment System</a></h1>
		<div id="navigation"></div>
		<div class="cl">&nbsp;</div>
		
	</div>	
</div>
<!-- End Header -->
<!-- Main -->
<div id="main">
  <div class="shell_package_updown">
	  <div class="two-col">
	    <h1><font><strong>Register new  Applicant</strong></font></h1>
	   
	   <!-- <h2>Register new student</h2>-->
        <form id="form1" name="form1" method="post" action="AddJobSeekerServlet" onsubmit="return validation();">
	    <table width="639" border="0">
	
	      <tr>
	        <td height="32"><div align="right">Job ID</div></td>
	        <td>&nbsp;</td>
	        <td><label for="txtDrugName2" >
	          <input name="jobId" type="text" id="jobId" size="45" />
	        </label></td>
	        <td>&nbsp;</td>
          </tr>
	     
	      <tr>
	        <td width="111" height="32"><div align="right"> Name</div></td>
	        <td width="8">&nbsp;</td>
	        <td width="203"><label for="cmbSupNam"></label> <label for="txtName">
	          <input name="name" type="text" id="name" size="45" />
	        </label></td>
	        <td>&nbsp;</td>
          </tr>
	      
	      <tr>
	        <td height="32"><div align="right">Contact</div></td>
	        <td>&nbsp;</td>
	        <td><label for="txtContactNo">
	          <input name="contactInfo" type="text" id="contactInfo" size="30" maxlength="10" placeholder=''/>
	        </label></td>
	        <td>&nbsp;</td>
          </tr>
	       <tr>
	        <td height="32"><div align="right">Selected Country</div></td>
	        <td>&nbsp;</td>
	        <td><label for="txtContactNo">
	          <input name="desiredCountry" type="text" id="desiredCountry" size="30" maxlength="10" placeholder=''/>
	        </label></td>
	        <td>&nbsp;</td>
          </tr>
          <tr>
	        <td height="32"><div align="right">Job Type</div></td>
	        <td>&nbsp;</td>
	        <td><label for="txtContactNo">
	          <input name="desiredJobType" type="text" id="desiredJobType" size="30" maxlength="10" placeholder=''/>
	        </label></td>
	        <td>&nbsp;</td>
          </tr>
         
	      <tr>
	        <td height="44"><div align="right"></div></td>
	        <td>&nbsp;</td>
	        <td colspan="2">
            <button type="submit" name="btnSubmit" id="btnSubmit" value="Submit" class="button" />Submit</button>
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
