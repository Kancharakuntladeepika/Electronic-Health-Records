<%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon"%>
<%@ page session="true" %>
<%
        String fname = request.getParameter("fname");
    System.out.println(fname);
    String password = request.getParameter("password");
    System.out.println(password);
   // int uid=-1;
    session.setAttribute("fname",fname);
    try{
         Connection co = null;
       
       co = databasecon.getconnection();
			
			String sql="SELECT * FROM house.patient where fname='"+fname+"' and password='"+password+"' ";
			Statement stmt = co.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			if(rs.next())
			{
			response.sendRedirect("customerhome.jsp?m1=success");
			}
			
			else
			{
				response.sendRedirect("customer.jsp?m2=Failed");
			}
			}
    catch(Exception e)
    {
        System.out.println("Error in emplogact"+e.getMessage());
    }
%>