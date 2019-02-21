<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*,java.util.*,java.io.*,java.net.*" %>
    <%@ page import="org.json.simple.JSONArray,org.json.simple.JSONObject,org.json.simple.parser.JSONParser,org.json.*" %>
    
    <%!
    Connection con=null;
    Statement st=null;
    ResultSet rs=null;
    BufferedReader in=null;
    StringBuffer sb=new StringBuffer("");

    String driver="com.mysql.jdbc.Driver";
    String url="jdbc:mysql://localhost:3306/meetingsheduler";
    
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>
<%
if((request.getParameter("staffname")!=null)&&(request.getParameter("mobile")!=null)){
	String name=request.getParameter("staffname");
	String dob=request.getParameter("dob");
	String proj=request.getParameter("proj");
	String loc=request.getParameter("loc");
	String dsgn=request.getParameter("dsgn");
	String mail=request.getParameter("mail");
	String pmail=request.getParameter("pmail");
	String mobile=request.getParameter("mobile");
	String user=request.getParameter("user");
	String pass=request.getParameter("pass");
	String lat=request.getParameter("lat");
	String lng=request.getParameter("lng");
	String hloc=request.getParameter("hloc");
	String type=request.getParameter("type");
	String imei="";
	URL url1 = new URL("https://maps.googleapis.com/maps/api/geocode/json?address="+hloc+"&sensor=true");
	URLConnection yc = url1.openConnection();
	in = new BufferedReader(new InputStreamReader(yc.getInputStream()));
	String inputLine;
	sb=new StringBuffer();
	while ((inputLine = in.readLine())!= null) {
	sb.append(" "+inputLine);

	}
	
	
	
		String data=new String(sb);
		String latitude="";
		String longitude="";

		//System.out.println(data);
		
		JSONParser parser = new JSONParser();
		Object obj=parser.parse(data);

		JSONObject jsonObject =(JSONObject)obj;
		JSONObject jsonTemp =null;
		
		//System.out.println(jsonObject);
		Set keyVal=jsonObject.keySet();
		
		if(keyVal.contains("results")){
			JSONArray msg = (JSONArray) jsonObject.get("results");
			Iterator iterator = msg.iterator();
			
			int intialValue=0;
			while (iterator.hasNext()) {
				jsonObject =(JSONObject)iterator.next();
				jsonTemp=(JSONObject)jsonObject.get("geometry");
				jsonTemp=(JSONObject)jsonTemp.get("location");
				latitude=jsonTemp.get("lat").toString();
				longitude=jsonTemp.get("lng").toString();
				
			
				
			}
			jsonObject.clear();
			jsonTemp.clear();
			keyVal.clear();
			in.close();
			
			
			}
	
	Class.forName(driver);
	con=DriverManager.getConnection(url,"root","root");
	st=con.createStatement();
	
	rs=st.executeQuery("select * from userinformation where mobilenumber='"+mobile+"'");
	if(rs.next()){
		%>
		Mobile Number already available in Server
		<% 
	}else{
		rs=st.executeQuery("select count(*) from userinformation");
		int val=0;
		if(rs.next()){
			val=rs.getInt(1);
		}
		if(val==0){
		String query="insert into userinformation values('"+(++val)+"','"+name+"','"+dob+"','"+proj+"','"+loc+"','"+dsgn+"','"+mail+"','"+pmail+"','"+mobile+"','"+user+"','"+pass+"','"+hloc+"','"+latitude+"','"+longitude+"','"+type+"','"+imei+"')";

            System.out.println("the values are"+loc+"---"+hloc+"---"+latitude+"--"+longitude);
			int ins=st.executeUpdate(query);

			%>
			Registered Successfully
			<% 
		}else{
		
			String query="insert into userinformation values('"+(++val)+"','"+name+"','"+dob+"','"+proj+"','"+loc+"','"+dsgn+"','"+mail+"','"+pmail+"','"+mobile+"','"+user+"','"+pass+"','"+hloc+"','"+latitude+"','"+longitude+"','"+type+"','"+imei+"')";
			
			 System.out.println("the values are"+loc+"---"+hloc+"---"+latitude+"--"+longitude);
			int ins=st.executeUpdate(query);

			%>
			Registered Successfully
			<% 
			
		}
		
	}
	
	
	
}
%>
</body>
</html>