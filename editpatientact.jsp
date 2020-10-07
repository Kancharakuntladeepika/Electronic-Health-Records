<%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon"%>
<%@ page session="true" %>
<%
        String fname = request.getParameter("fname");
    System.out.println(fname);
    
   // int uid=-1;
    session.setAttribute("fname",fname);
    try{
         Connection co = null;
       
       co = databasecon.getconnection();
			
			String sql="SELECT * FROM house.patient where fname='"+fname+"'  ";
			Statement stmt = co.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			if(rs.next())
			{
			response.sendRedirect("record.jsp?m1=success");
			}
			
			else {

                      response.sendRedirect("editpatient.jsp?m2=Failed");
                                }
                            } catch (Exception e) {
                                e.printStackTrace();
                            }

                        %>