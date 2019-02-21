<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*,java.util.*" %>
    <%!
    Connection con=null;
    Statement st=null;
    ResultSet rs=null;
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.util.Vector"%><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>
<%
try{
	String driver="com.mysql.jdbc.Driver";
	
	String url="jdbc:mysql://localhost:3306/meetingsheduler";

			Class.forName(driver);


		 con=DriverManager.getConnection(url,"root","root");

		 st=con.createStatement();
		 rs=st.executeQuery("select * from selectedusers");
		 Vector selectedusers=new Vector();
		 while(rs.next()){
			 selectedusers.add(rs.getString(2));
			 selectedusers.add(rs.getString(3));

			 
		 }
		 rs=st.executeQuery("select * from venuedetails");
		 Vector common=new Vector();
		 while(rs.next()){
			 common.add(rs.getString(1));
			 
		 }
		 	Vector listVal=new Vector();
		 for(int init=0;init<common.size();init++){
				rs=st.executeQuery("select * from mapdetails where hotel='"+common.get(init).toString().trim()+"'");
				if(rs.next()){
					listVal.add(common.get(init).toString().trim());
					listVal.add(rs.getString(2));
					listVal.add(rs.getString(3));
					}}
		 
		 
		 
			 Map placeHolder=new HashMap();
			 for(int commons=0;commons<listVal.size();commons=commons+3){
				 double distSum=0;
				 for(int usercount=0;usercount<selectedusers.size();usercount=usercount+2){
				 
				 double theta =Double.parseDouble(selectedusers.get(usercount+1).toString()) - Double.parseDouble(listVal.get(commons+2).toString());
				 double dist = Math.sin(Double.parseDouble(selectedusers.get(usercount).toString()) * Math.PI / 180.0) * Math.sin(Double.parseDouble(listVal.get(commons+1).toString()) * Math.PI / 180.0) + Math.cos(Double.parseDouble(selectedusers.get(usercount).toString()) * Math.PI / 180.0) * Math.cos(Double.parseDouble(listVal.get(commons+1).toString())* Math.PI / 180.0) * Math.cos(theta * Math.PI / 180.0);
				 dist = Math.acos(dist);
				 dist = dist * 180.0 / Math.PI;
				dist = dist * 60 * 1.1515;
				 dist = dist * 1.609344;
				 distSum=distSum+dist;
				
				}
				 placeHolder.put(String.valueOf(distSum).substring(0,1),listVal.get(commons).toString());
				 }
			  Set key=placeHolder.keySet();
			  TreeSet valss=new TreeSet(key);
			  Vector values=new Vector(valss);
			  Collection vals=placeHolder.values();
			  String finalVals=placeHolder.get(values.get(0).toString()).toString();
			  
			  if(finalVals.length()>0){
				  out.print("Get venue:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
				  out.print("<input type='text' name='txtField' id='txtField' value='"+finalVals+"'>");
				  session.setAttribute("meetingplace",finalVals);
				 }
			  
			  
			 }catch(Exception ex){
	ex.printStackTrace();
}
%>
</body>
</html>