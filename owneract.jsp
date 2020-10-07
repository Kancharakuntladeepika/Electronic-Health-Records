<%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon"%>
<%@ page session="true" %>
<%
        String username = request.getParameter("username");
    System.out.println(username);
    session.setAttribute("username",username);
    String password = request.getParameter("password");
    System.out.println(password);
   // int uid=-1;
    try{
         Connection co = null;
       
       co = databasecon.getconnection();
			
			String sql="SELECT * FROM house.doctor where username='"+username+"' and password='"+password+"' and status='Doctor'";
			Statement stmt = co.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			if(rs.next())
			{
			response.sendRedirect("ownerhome.jsp?m1=success");
			}
			else
			{
			String sql1="SELECT * FROM house.doctor where username='"+username+"' and password='"+password+"'  and status='Intern'";
			Statement stmt1 = co.createStatement();
			ResultSet rs1 =stmt1.executeQuery(sql1);
			
			if(rs1.next())
			{
			response.sendRedirect("intern.jsp?m1=success");
			}
                        else
			{
			String sql2="SELECT * FROM house.doctor where username='"+username+"' and password='"+password+"'  and status='Pharmacist'";
			Statement stmt12 = co.createStatement();
			ResultSet rs3 =stmt12.executeQuery(sql2);
			
			if(rs3.next())
			{
			response.sendRedirect("pharma.jsp?m1=success");
			}
			else
			{
				response.sendRedirect("owner.jsp?m2=Failed");
			}
			}
                        }
    }
    catch(Exception e)
    {
        System.out.println("Error in emplogact"+e.getMessage());
    }
%>