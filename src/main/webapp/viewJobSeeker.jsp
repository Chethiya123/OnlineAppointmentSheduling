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

 function isNumberKey(evt)
      {
         var charCode = (evt.which) ? evt.which : event.keyCode
         if (charCode > 31 && (charCode < 48 || charCode > 57))
            return false;

         return true;
      }
	  
 function checkEmail() {

    var email = document.getElementById('txtEmail');
    var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;

    if (!filter.test(email.value)) {
    alert('Please provide a valid email address');
    email.focus;
    return false;
 }
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
<div id="header" align="center">
	<div class="shell">
		<h1 id="logo" class="notext"><a href="index.html">The Perth University</a></h1>
		<div id="navigation" align="center">
			<div id="apDiv1" align="center"><ul>
				    <!--<li><a href="index.html" class="active"><span>Home</span></a></li>-->
				   <!-- <li><a href="about.html"><span>About Us</span></a></li>
				    <li><a href="login.html"><span>Login</span></a>-->
                <li><a href="viewBatchDetails.jsp"><span><button class="button">Batch Details</button></span></a> <br> <br>                                
			    <li><a href="viewCourseDetails.jsp"><span><button class="button">Course Details</button></span></a> <br> <br>                         	  
			    <li><a href="lectureDetails.jsp"><span><button class="button">Lecture Details</button></span></a> <br> <br>            	    
			    <li><a href="viewPaymentDetails.jsp"><span><button class="button">Payment Details</button></span></a> <br> <br>
			    <li><a href="viewStudentDetails.jsp"><span><button class="button">Student Details</button></span></a>   <br> <br>
			    <li><a href="index.jsp"><span><button class="button">Logout</button></span></a>
			        
		                
			  </ul>
			</div>
		</div>
		<div class="cl">&nbsp;</div>
		
	</div>	
</div>
<!-- End Header -->
<!-- Main -->
<div id="main">
  <div class="shell_package_updown">
	  <div class="two-col">
	    <h1>&nbsp;</h1>
	   
	   <!-- <h2>Register new student</h2>-->
        <form id="form1" name="form1" method="post" action="AddDrugServlet" onsubmit="return validation();">
	    <table width="639" border="0">
	      <tr>
	        <td height="32">&nbsp;</td>
	        <td width="8">&nbsp;</td>
	        <td width="203">&nbsp;</td>
	        <td width="299">&nbsp;</td>
          </tr>
	      <tr>
	        <td height="32">&nbsp;</td>
	        <td>&nbsp;</td>
	        <td>&nbsp;</td>
	        <td>&nbsp;</td>
          </tr>
	     
	      <tr>
	        <td width="111" height="32">&nbsp;</td>
	        <td width="8">&nbsp;</td>
	        <td width="203">&nbsp;</td>
	        <td>&nbsp;</td>
          </tr>
	      
	      <tr>
	        <td height="32">&nbsp;</td>
	        <td>&nbsp;</td>
	        <td>&nbsp;</td>
	        <td>&nbsp;</td>
          </tr>
	      <tr>
	        <td height="32">&nbsp;</td>
	        <td>&nbsp;</td>
	        <td>&nbsp;</td>
	        <td>&nbsp;</td>
          </tr>
          <tr>
	        <td height="32">&nbsp;</td>
	        <td width="8">&nbsp;</td>
	        <td width="203">&nbsp;</td>
	        <td>&nbsp;</td>
          </tr>
           <tr>
	        <td height="32">&nbsp;</td>
	        <td>&nbsp;</td>
	        <td>&nbsp;</td>
	        <td>&nbsp;</td>
          </tr>   
           <tr>
	        <td height="32">&nbsp;</td>
	        <td width="8">&nbsp;</td>
	        <td width="203">&nbsp;</td>
	        <td>&nbsp;</td>
          </tr>
	      <tr>
	        <td height="32">&nbsp;</td>
	        <td>&nbsp;</td>
	        <td>&nbsp;</td>
	        <td>&nbsp;</td>
          </tr>
	      <tr>
               <tr>
	        <td height="32">&nbsp;</td>
	        <td>&nbsp;</td>
	        <td>&nbsp;</td>
	        <td>&nbsp;</td>
          </tr>
	      <tr>
	        <td height="44">&nbsp;</td>
	        <td>&nbsp;</td>
	        <td colspan="2">&nbsp;</td>
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
