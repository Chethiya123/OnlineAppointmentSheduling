

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
HttpServletResponse httpResponse = (HttpServletResponse) response;
httpResponse.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
httpResponse.setHeader("Pragma", "no-cache"); 
httpResponse.setDateHeader("Expires", 0); 
%>
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
function regOpen(){
	var win1=window.open('registerUser.jsp','welcome'); 
}

</script>
 <script type="text/javascript">
     function regClose(){ // Function for close window
	window.close();
}
     </script>
     
    </head>
    <body>
       <!-- Header -->
<div id="header">
	<div class="shell">
		
		<div id="navigation">
			<div id="apDiv1"><ul>
				    <!--<li><a href="index.html" class="active"><span>Home</span></a></li>
				    <li><a href="about.html"><span>About Us</span></a></li>
				    <li><a href="login.html"><span>Login</span></a>
							
				    <li><a href="locations.html"><span>Locations</span></a></li>
                    <li><a href="partnerWithPartners.html"><span>Partner with Partners</span></a></li>
				    <li><a href="employment.html"><span>Employment</span></a></li>
                    <li><a href="contact.html"><span>Contact Us</span></a></li>-->
				</ul></div>
		</div>
		<div class="cl">&nbsp;</div>
		
	</div>	
</div>
<!-- End Header -->
<!-- Main -->
<div id="main">
  <div class="shell_package_updown">
    <div class="two-col">
      <h1><font><strong>Welcome to the Appointment  Management System</strong></font></h1>
      <p>&nbsp;</p>
      <h2>User login form</h2>
      <form id="form1" name="form1" method="post" action="LiginServlet">
        <table width="625" border="0">
          <tr>
            <td width="89" height="43"><div align="right">Username</div></td>
            <td width="4">&nbsp;</td>
            <td width="279">
              <input name="txtuname" type="text" id="txtuname" size="20" /></td>
            <td width="235">&nbsp;</td>
          </tr>
          <tr>
            <td height="38"><div align="right">Password</div></td>
            <td width="4">&nbsp;</td>
            <td width="279">
                <input name="txtpasswrd" type="password" id="txtpasswrd" maxlength="10" size="20" /></td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td height="38"><div align="right"></div></td> 
           <td>&nbsp;</td>
            <td colspan="3">
              <button type="submit" name="btnLigin" id="btnLigin" value="Login" class="button2"/>Login</button>
              <button type="reset" name="btnCansel" id="btnCansel" value="Cancel" class="button2"/>Cancel</button>
             </tr>
          <tr>
            <td colspan="4"><div align="left"></div></td>
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
    <div class="col_pic"> <img src="images/imeHome.jpg" alt="" class="right" />
      <div class="cl">&nbsp;</div>
    </div>
    <div class="cl">&nbsp;</div>
  </div>
</div>
<!-- End Main -->
<!-- Footer -->
<!-- Footer -->
    </body>
</html>
