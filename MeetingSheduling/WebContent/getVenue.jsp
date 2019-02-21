<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*,java.sql.*" %>
    <%!
    Connection con=null;
    Statement st=null;
    ResultSet rs=null;
    String driver="com.mysql.jdbc.Driver";
    String url="jdbc:mysql://localhost:3306/meetingsheduler";
    ArrayList selectdUsers=new ArrayList();
    String place="";
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Class.forName(driver);
con=DriverManager.getConnection(url,"root","root");
	 st=con.createStatement();
rs=st.executeQuery("select * from venuedetails");
Vector vals=new Vector();
while(rs.next()){
	vals.add(rs.getString(1));
}
if(vals.size()>0){
Random rand=new Random();
int valss=rand.nextInt(vals.size());
place=vals.get(valss).toString();
out.print(place);
}

%>
</body>
</html>