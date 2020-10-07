<%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon"%>
<%@ page session="true" %>

<html>
<body>
<%
   Connection co = null;
     int id = 0;
	    String fname=request.getParameter("fname");
            String lname=request.getParameter("lname");
            String password=request.getParameter("password");
            String email=request.getParameter("email");
            String mobile=request.getParameter("mobile");
            String dob=request.getParameter("dob");
            String gender=request.getParameter("gender");
            String height=request.getParameter("height");
            String weight=request.getParameter("weight");
            String about=request.getParameter("about");
            String image=request.getParameter("image");
            
            
		try
		{
        co = databasecon.getconnection();
	PreparedStatement pst2=co.prepareStatement("insert into house.patient values(?,?,?,?,?,?,?,?,?,?,?,?)");

        pst2.setInt(1,id);
	pst2.setString(2,fname);
        pst2.setString(3,lname);
        pst2.setString(4,password);
        pst2.setString(5,email);
        pst2.setString(6,mobile);
        pst2.setString(7,dob);   
        pst2.setString(8,gender); 
        pst2.setString(9,height);
         pst2.setString(10,weight);
          pst2.setString(11,about);
           pst2.setString(12,image);
        
	pst2.executeUpdate();
                
       response.sendRedirect("clienthome.jsp?m1=success"); 
       }
	  
	catch(SQLException e)
        {
		out.print(e.getMessage());
	    }  
           %>
</body>
</html>