<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>EHR</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<!--
Template 2027 Melody
http://www.tooplate.com/view/2027-melody
-->
<link href="css/tooplate_style.css" rel="stylesheet" type="text/css" />
<link href="css/jquery.lightbox-0.5.css" rel="stylesheet" type="text/css" media="screen" /> 

<script type='text/javascript' src='js/jquery.min.js'></script>
<script type='text/javascript' src='js/jquery.scrollTo-min.js'></script>
<script type='text/javascript' src='js/jquery.localscroll-min.js'></script>
<script type="text/javascript" src="js/jquery.lightbox-0.5.js"></script> 

<script type="text/javascript">
$(document).ready(function () 
{
	$.localScroll();
	$('#map a').lightBox();
});
</script>

</head>
     <%
if(request.getParameter("m1")!=null){%>
    
    <script>alert('Login Success..!')</script>


<%}
if(request.getParameter("m2")!=null){%>

 <script>alert('Login Failed..!')</script>
 <%
}
%>
<body>

<div id="tooplate_wrapper">
	<div id="tooplate_header">
    	<div id="top"></div>
		
        <div id="tooplate_menu">
            <ul>
                <li><a href="customerhome.jsp">Home</a></li>
                <li><a href="viewprofile.jsp">View Medical History</a></li>
                <li><a href="logout.jsp">Logout</a></li>
                <li></li>
                <li></li>
            </ul>    	
        </div> <!-- end of tooplate_menu -->
		<%
                String fname = session.getAttribute("fname").toString();
                %>
        <div id="site_title">
           <br>
            <font  size="7" color="black">Electronic Health Record</font>
             </div>
	</div>
        <div id="home"></div>
        <div class="content_box">
            <h2>Welcome <%=fname%></h2>
            
        </div>
</body>
</html>