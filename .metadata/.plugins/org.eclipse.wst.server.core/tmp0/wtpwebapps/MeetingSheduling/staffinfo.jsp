<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*,java.util.*" %>
    <%!
    Connection con=null;
    Statement st=null;
    ResultSet rs=null;
    ArrayList value=new ArrayList();
    String result="Your Search is Not Available";
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>
<%

	String projectName=request.getParameter("project");
    String location=request.getParameter("locaton"); 
    String designation=request.getParameter("designation");
	try{
		String driver="com.mysql.jdbc.Driver";
		
		String url="jdbc:mysql://localhost:3306/meetingsheduler";

				Class.forName(driver);


			 con=DriverManager.getConnection(url,"root","root");

			 st=con.createStatement();

			 rs=st.executeQuery("select * from userinformation where projectname='"+projectName+"'and location='"+location+"' and designation='"+designation+"' ");
			 value=new ArrayList();
			 while(rs.next()){
				 value.add(rs.getString(1));
				 value.add(rs.getString(2));
				 value.add(rs.getString(9));
				 value.add(rs.getString(15));
			 }
			 if(value.size()!=0){

				 out.print("<table border='1' cellpadding='5' cellspacing='5' style='overflow: scroll;'>");
				 out.print("<th colspan='6'><font size='5' color='red'>Staff Information</font></th>");
				 out.print("<tr><td><b>Staff ID</b></td><td><b>Staff Name</b></td><td><b>Mobile Number</b></td><td><b>Vehicle</b></td><td><b>Selection<input type='checkbox' id='checkMe'></b></td></tr>");
				 
				 for(int val=0;val<value.size();val=val+4){
					 out.print("<tr>");
					 out.print("<td>");
					 %>
					 <%=value.get(val).toString() %>
					 <%
					 out.print("</td>");
					 out.print("<td>");
					 %>
					 <%=value.get(val+1).toString() %>
					 <%
					 out.print("</td>");
					 out.print("<td>");
					 %>
					 <%=value.get(val+2).toString() %>
					 <%
					 out.print("</td>");
					 out.print("<td>");
					 %>
					 <%=value.get(val+3).toString() %>
					 <%
					 out.print("</td>");
					 out.print("<td>");
					 out.print("<input type='checkbox' class='selection' name='selection' id='selection' value='"+value.get(val).toString()+"'</input>");
					 out.print("</td>");
					 out.print("</tr>");
					


			 }}else{
				%>
				<%=result %>
				
				<%
				 
			 }
	}catch(Exception ex){
		ex.printStackTrace();
	}finally{
		rs.close();
		st.close();
		con.close();
	}


%>
</body>
</html>