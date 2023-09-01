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
}

function showEmp(emp_value)
{ 
  if(document.getElementById("cmbCourse").value!="-1")
        {
 xmlHttp=GetXmlHttpObject()
if (xmlHttp==null)
 {
 alert ("Browser does not support HTTP Request")
 return
 }
var url="getCourse.jsp"
url=url+"?courseId="+emp_value

xmlHttp.onreadystatechange=stateChanged 
xmlHttp.open("GET",url,true)
xmlHttp.send(null)

        }
        else
        {
                 alert("Please Select Course  Id");
        }
}

function stateChanged()  
{ 
        document.getElementById("courseId").value ="";
        document.getElementById("courseName").value ="";
	    document.getElementById("duration").value ="";
		//document.getElementById("depId").value="";
	   // document.getElementById("stuAge").value ="";
	   //document.getElementById("higExam").value =" ";  
	   //document.getElementById("email").value =" ";  
	//	document.getElementById("address").value =" ";  
	//	document.getElementById("nic").value =" ";  
		
if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
 { 
        
  var showdata = xmlHttp.responseText; 
     var strar = showdata.split(":");
	 alert(strar);
        
         if(strar.length==1)
         {
                  document.getElementById("cmbCourse").focus();
                  alert("Please Select the Course Id");
                  document.getElementById("courseId").value ="";
                  document.getElementById("courseName").value ="";
	              document.getElementById("duration").value ="";
		          

				 // document.getElementById("stuAge").value =" ";

         }
         else if(strar.length>1)
         {
       // var strname = strar[4];
		
		          document.getElementById("courseId").value = strar[3];
                  document.getElementById("courseName").value =strar[1];
	              document.getElementById("duration").value =strar[2];
		              
				  	     
         }      
 } 
}

function GetXmlHttpObject()
{
var xmlHttp=null;
try
 {
 // Firefox, Opera 8.0+, Safari
 xmlHttp=new XMLHttpRequest();
 }
catch (e)
 {
 //Internet Explorer
 try
  {
  xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
  }
 catch (e)
  {
  xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
 }
return xmlHttp;
}






</script>
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
	    <h1><font><strong>Update Course</strong></font> </h1>
	   
	   <!-- <h2>Register new student</h2>-->
        <form id="form1" name="form1" method="post" action="addCourseServlet" onsubmit="return validation();">
	    <table width="639" border="0">
	      <tr>
	        <td height="32"><div align="right"></div></td>
	        <td width="10">&nbsp;</td>
	        <td width="203">	         
	          <label for="txtDrugName" >
	            <select class="cmbDepartment" name="cmbCourse" id="cmbCourse" onChange="showEmp(this.value);">
	              <option value="">--Select Course ID--</option>
	              <% conn = DBConnection.connect();
                         stm = conn.createStatement();
                         rs = stm.executeQuery("SELECT * FROM course");
                         while (rs.next()) {%>
	              <option value="<%=rs.getString("courseId")%>"><%=rs.getString("courseId")%></option>
	              <% }%>
                </select>
	          </label></td>
	        <td width="302">&nbsp;</td>
          </tr>
	      <tr>
	        <td height="32"><div align="right">Course ID</div></td>
	        <td>&nbsp;</td>
	        <td><label for="txtDrugName2" >
	          <input name="courseId" type="text" id="courseId" size="45" />
	        </label></td>
	        <td>&nbsp;</td>
          </tr>
	     
	      <tr>
	        <td width="117" height="32"><div align="right">Course Name</div></td>
	        <td width="10">&nbsp;</td>
	        <td width="203"><label for="cmbSupNam"></label> <label for="txtName">
	          <input name="courseName" type="text" id="courseName" size="45" />
	        </label></td>
	        <td>&nbsp;</td>
          </tr>
	      
	      <tr>
	        <td height="32"><div align="right">Duration</div></td>
	        <td>&nbsp;</td>
	        <td><label for="txtContactNo">
	          <input name="duration" type="text" id="duration" size="30" maxlength="10" placeholder=''/>
	        </label></td>
	        <td>&nbsp;</td>
          </tr>
	      
          <tr>
	        <td height="32"><div align="right"></div></td>
	        <td width="10">&nbsp;</td>
	        <td width="203">&nbsp;</td>
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
