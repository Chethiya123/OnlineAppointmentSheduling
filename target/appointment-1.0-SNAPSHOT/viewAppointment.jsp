<%-- 
    Document   : viewStock
    Created on : Oct 28, 2013, 1:50:30 AM
    Author     : GAYAN
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@page import="DataAccessTire.DBConnection "%>
<%@page import="java.sql.* "%>
<%!     Connection conn;
        PreparedStatement ps;
        ResultSet rs;
        String qry=null;  %>

        <%
            
        //Class.forName("com.mysql.jdbc.Driver");
                        
       // con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pharmacy","root","");
          conn = DBConnection.connect();

        %>
<!DOCTYPE html>
<html>
    <head>
        <style type="text/css">
#apDiv5 {
	position: absolute;
	width: 463px;
	height: 33px;
	z-index: 7;
	left: 182px;
	top: 805px;
}
  #boltfont {
	font-weight: bold;
}
.boltfont {
	font-weight: bold;
}
#boltfont {
	font-weight: bold;
}
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
    </head>
    <body>
         <!-- Header -->
<div id="header">
	<div class="shell">
		<h1 id="logo" class="notext"><a href="index.html">Partners Healthcare Group</a></h1>
		<div id="navigation">
			<div id="apDiv1"><ul>
				    <!--<li><a href="index.html" class="active"><span>Home</span></a></li>-->
				   <!-- <li><a href="about.html"><span>About Us</span></a></li>
				    <li><a href="login.html"><span>Login</span></a>-->

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
	    <p>&nbsp;</p>
	    <h2>&nbsp;</h2>
        <form id="form1" name="form1" method="post" action="">
	    <table width="862" border="0">
	      <tr>
	        <td width="70" bgcolor="#CCFFFF"><div align="left"><strong> Batch ID</strong></div></td>
	        <td width="193" bgcolor="#CCFFFF"><div align="left"><strong>Batch Name</strong></div></td>
            <td width="193" bgcolor="#CCFFFF"><div align="left"><strong>Starting Date</strong></div></td>
            <td width="193" bgcolor="#CCFFFF"><div align="left"><strong>Course</strong></div></td>
          </tr>
         <% try
         {
          String qry="select * from batch ";
          ps=conn.prepareStatement(qry);
          rs=ps.executeQuery();%>
          <% while (rs.next()){ %>
	      <tr>
	        <td bgcolor="#CCFFFF"><div align="right"></div><% out.println(rs.getString("batchId")); %></td>
	        <td bgcolor="#CCFFFF"><% out.println(rs.getString("batchName")); %></td> 
            <td bgcolor="#CCFFFF"><% out.println(rs.getString("startingDate")); %></td>  
            <td bgcolor="#CCFFFF"><% out.println(rs.getString("courseName")); %></td>         
          </tr>
          <%} %>

  <%conn.close();
  ps.close();
  rs.close();
    %>  
    
   <%}
 catch(Exception ex)
  {
   out.println(ex);
  } %> 
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
		<div class="cl">&nbsp;</div>
  </div>
</div>
<!-- End Main -->
    </body>
</html>
