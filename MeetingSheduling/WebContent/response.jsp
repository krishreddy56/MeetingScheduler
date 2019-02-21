<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*,java.util.*" %>
    <%!
    Connection con=null;
    Statement st=null;
    ResultSet rs=null;
    ArrayList list=new ArrayList();
    String vals="Select";
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>
<%
if(request.getParameter("id")!=null){
	String type=request.getParameter("id");
	try{
		String driver="com.mysql.jdbc.Driver";
		
		String url="jdbc:mysql://localhost:3306/meetingsheduler";

				Class.forName(driver);


			 con=DriverManager.getConnection(url,"root","root");

			 st=con.createStatement();
			 if(type.equals("Location")){
				 rs=st.executeQuery("select * from userinformation");
				 list=new ArrayList();
				 while(rs.next()){
					 list.add(rs.getString(5));
				 }
				 
			 }else{
				 rs=st.executeQuery("select * from userinformation");
				 list=new ArrayList();
				 while(rs.next()){
					 list.add(rs.getString(4));
				 }

					
				}

		
		
	}catch(Exception ex){
		ex.printStackTrace();
	}finally{
		con.close();
		st.close();
		rs.close();
	}
	if(list.size()>0){
		out.print("<select style='width:3cm;' name='option' id='option' onchange='getuserdetails(this.value)'>");
		out.print("<option value='Select'>");
		%>
		<%=vals%>
		<%
		out.print("</option>");
		
		for(int val=0;val<list.size();val++){
		out.print("<option value='"+list.get(val).toString()+"'>");
		%>
		<%=list.get(val).toString() %>
		<% 
		
		out.print("</option>");
		}
		out.print("</select>");
	}
}
%>
</body>
</html>