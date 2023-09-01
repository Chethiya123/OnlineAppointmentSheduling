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

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Send an e-mail</title>
</head>
<body>
<div align="center">
   
    <form action="EmailSendingServlet" method="post">
        <table border="0" width="35%" align="center">
            <caption><h2>Send E-mail</h2></caption>
            <tr>
                <td width="50%">Student Mail Address </td>
                <td><select class="cmbCourse" name="recipient">
	            <option value="">--Select Mail Address--</option>
	            <% conn = DBConnection.connect();
                         stm = conn.createStatement();
                         rs = stm.executeQuery("SELECT stuEmail from student");
                         while (rs.next()) {%>
	            <option value="<%=rs.getString("stuEmail")%>"><%=rs.getString("stuEmail")%></option>
	            <% }%>
            </select></td>
            </tr>
            <tr>
                <td>Subject </td>
                <td><input type="text" name="subject" size="50"/></td>
            </tr>
            <tr>
                <td>Message </td>
                <td><textarea rows="10" cols="39" name="content"></textarea> </td>
            </tr>
            <tr>
                <td colspan="2" align="left"><input type="submit" value="Send"/></td>
            </tr>
        </table>
         
    </form>
    
    </div>
</body>

</html>
