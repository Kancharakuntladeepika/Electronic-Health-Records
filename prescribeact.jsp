<%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon"%>
<%@ page session="true" %>

<html>
<body>
<%
   Connection co = null;
     int med_id = 0;
	    String fname=request.getParameter("fname");
            String med_name=request.getParameter("med_name");
            String disease=request.getParameter("disease");
            
            
            
		try
		{
        co = databasecon.getconnection();
	PreparedStatement pst2=co.prepareStatement("insert into house.phar values(?,?,?,?)");

        pst2.setInt(1,med_id);
	pst2.setString(2,fname);
        pst2.setString(3,med_name);
        pst2.setString(4,disease);
        
	pst2.executeUpdate();
                
        response.sendRedirect("ownerhome.jsp?m1=success"); 
       }
	  
	catch(SQLException e)
        {
		out.print(e.getMessage());
	    }  
           %>
</body>
</html>