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
<body>
<%
    String fname = session.getAttribute("fname").toString();
    
    %>
<div id="tooplate_wrapper">
	<div id="tooplate_header">
    	<div id="top"></div>
		
        <div id="tooplate_menu">
            <ul>
                <li><a href="customerhome.jsp">Home</a></li>
                <li><a href="viewprofile.jsp">View Profile</a></li>               
                <li><a href="logout.jsp">Logout</a></li>
            </ul>    	
        </div> <!-- end of tooplate_menu -->
	<div id="site_title">
            <br>
            <font  size="7" color="black">Electronic Health Records</font>
             </div>
	</div>
        <div id="home"></div>
        <div class="content_box">
            <h2><%=fname%>'s Prescription</h2>
            <table width="547" border="1.5" align="center"  cellpadding="0" cellspacing="0"  >
    <%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon"%>
<%@ page session="true" %>
     
        <%
						
						
						
						String s1,s2,s3,s4;
						int i=0;
						try                                                    
                                                    
						{
                                                    Connection con=databasecon.getconnection();
                                                        Statement st = con.createStatement();
						   	String query="select * from house.phar where fname='"+fname+"'"; 
						   	
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
							
								s1=rs.getString(1);
								s2=rs.getString(2);
								s3=rs.getString(3);
                                                                s4=rs.getString(4);
                                                                
							
                                                                 
							
								
								
								
								
								
								
					%>
        
        <tr>
          <td  width="145" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style3 style4 style14 style7 style15 style20 style8 style9" style="margin-left:20px;"><strong>Id</strong></div></td>
          <td  width="164" valign="middle" height="40" style="color:#000000;"><div align="left" class="style23 style9 style10" style="margin-left:20px;">
            <%out.println(s1);%>
          </div></td>
        </tr>
        <tr>
          <td  width="145" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style3 style4 style14 style7 style15 style20 style8 style9" style="margin-left:20px;"><strong>Name</strong></div></td>
          <td  width="164" valign="middle" height="40"><div align="left" class="style23 style9 style10" style="margin-left:20px;">
            <%out.println(s2);%>
          </div></td>
        </tr>
        <tr>
          <td  width="145" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style3 style4 style14 style7 style15 style20 style8 style9" style="margin-left:20px;"><strong>Medication</strong></div></td>
          <td  width="164" align="left" valign="middle" height="40"><div align="left" class="style23 style9 style10" style="margin-left:20px;">
            <%out.println(s3);%>
          </div></td>
        </tr>
        <tr>
          <td  width="145" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style3 style4 style14 style7 style15 style20 style8 style9" style="margin-left:20px;"><strong>Disease</strong></div></td>
          <td  width="164" align="left" valign="middle" height="40"><div align="left" class="style23 style9 style10" style="margin-left:20px;">
            <%out.println(s4);%>
          </div></td>
        
        </tr>
        <%
						}
						con.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
      </table>
                    
</div>
</body>
</html>