<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%!
	Connection con=null;
	Statement st=null;
	ResultSet rs=null;
	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cloud Space</title>
</head>
<body>
<%
if((request.getParameter("fname")!=null)&&(request.getParameter("pass")!=null)){

try{

	String name=request.getParameter("fname");
	String pass=request.getParameter("pass");
	 String driver="com.mysql.jdbc.Driver";
	
	String url="jdbc:mysql://localhost:3306/meetingsheduler";

			Class.forName(driver);


		 con=DriverManager.getConnection(url,"root","root");

		 st=con.createStatement();

		 rs=st.executeQuery("select * from userinfo where uname='"+name+"' and passwd='"+pass+"'");

		if(rs.next()){
		response.sendRedirect("welcome.html");

		
		}else{
					response.sendRedirect("index1.html");

		}}catch(Exception ex){
		ex.printStackTrace();
		}finally{
		con.close();
		st.close();
		rs.close();
		}
}
%>
</body>
</html>