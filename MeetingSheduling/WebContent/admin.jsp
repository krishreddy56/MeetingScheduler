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
<title></title>
</head>
<body>
<%
if((request.getParameter("username")!=null)&&(request.getParameter("psswd")!=null)){
	String uname=request.getParameter("username");
	String pwd=request.getParameter("psswd");
	try{
		String driver="com.mysql.jdbc.Driver";
		
		String url="jdbc:mysql://localhost:3306/meetingsheduler";

				Class.forName(driver);


			 con=DriverManager.getConnection(url,"root","root");

			 st=con.createStatement();

			 rs=st.executeQuery("select * from userinfo where uname='"+uname+"' and passwd='"+pwd+"'");

			if(rs.next()){
			
			
			st.execute("delete from mapdetails");
			
			st.execute("delete from selectedusers");
			
			st.execute("delete from venuedetails");
			
			response.sendRedirect("process.jsp");

			
			}else{
						response.sendRedirect("index2.jsp");

			}
		
	}catch(Exception ex){
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