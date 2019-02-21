<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*,java.util.*,java.io.*,java.net.*" %>
    <%@ page import="org.json.simple.JSONArray,org.json.simple.JSONObject,org.json.simple.parser.JSONParser,org.json.*" %>
    
    <%!
    Connection con=null;
    Statement st=null;
    ResultSet rs=null;
    Vector values=new Vector();
//     StringBuffer sb=new StringBuffer("");
	BufferedReader in=null;
	String[] sVal=null;
	String commonplace="";
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
Class.forName(driver);
con=DriverManager.getConnection(url,"root","root");
st=con.createStatement();
rs=st.executeQuery("select * from selectedusers");
ArrayList details=new ArrayList();
while(rs.next()){
	details.add(rs.getString(1));
	details.add(rs.getString(2));
	details.add(rs.getString(3));
}
System.out.println("the details are"+details);
for(int val=0;val<details.size();val=val+3){
	int remove=st.executeUpdate("delete from mapdetails where username='"+details.get(val).toString()+"'");

	
	StringBuffer sb=new StringBuffer("");
	
	in=null;
	
URL url1 = new URL("https://maps.googleapis.com/maps/api/place/search/json?keyword=hotels&location="+details.get(val+1).toString()+","+details.get(val+2).toString()+"&radius="+5000+"&sensor=false&key=AIzaSyB8GcxOcqaX99PvMGqSeyz7-Xgj5NlQQHU");
URLConnection yc = url1.openConnection();
in = new BufferedReader(new InputStreamReader(yc.getInputStream()));
String inputLine;
while ((inputLine = in.readLine())!= null) {
sb.append(" "+inputLine);

}
	String data=new String(sb);
	
		
		JSONParser parser = new JSONParser();
		Object obj=parser.parse(data);
	
	JSONObject jsonObject =(JSONObject)obj;

	JSONObject jsonTemp =null;
	
	
	Set keyVal=jsonObject.keySet();
	
	
	if(keyVal.contains("results")){
		JSONArray msg = (JSONArray) jsonObject.get("results");
		Iterator iterator = msg.iterator();
		System.out.println("the if loop"+keyVal.toArray());
		int intialValue=0;
		while (iterator.hasNext()) {
			jsonObject =(JSONObject)iterator.next();
			
			jsonTemp=(JSONObject)jsonObject.get("geometry");
			jsonTemp=(JSONObject)jsonTemp.get("location");
			
			String lati=jsonTemp.get("lat").toString();
			String land=jsonTemp.get("lng").toString();
			String optionname=jsonObject.get("name").toString();
			String place=jsonObject.get("vicinity").toString();
			
			
			if(optionname.contains("'")){
				
				optionname= optionname.replaceAll("'", "");
				
				
			}
			
			if(place.contains("'")){
				
				place= place.replaceAll("'", "");
				
				
			}							
			 

			int ins=st.executeUpdate("insert into mapdetails values('"+details.get(val).toString()+"','"+lati+"','"+land+"','"+optionname+"','"+place+"')");

		}

}}
    
	rs=st.executeQuery("select * from mapdetails");
	Vector vals=new Vector();
	while(rs.next()){
	vals.add(rs.getString(1));
	}
	TreeSet remove=new TreeSet();
	remove.addAll(vals);
	
	System.out.println("The remove vals are"+remove.size());
	
	int newSize = 3;
	
//	rs=st.executeQuery("select abc.hotel from(select hotel,count(username) as place_Count from mapdetails group by hotel)abc group by hotel having max(abc.place_Count)>="+(remove.size()-1)+"");
	
	rs=st.executeQuery("select abc.hotel from(select hotel,count(username) as place_Count from mapdetails group by hotel)abc group by hotel having max(abc.place_Count)>="+(newSize-1)+"");
	ResultSetMetaData rsmd=rs.getMetaData();
	String name=rsmd.getColumnName(1);
	Vector common=new Vector();
	while(rs.next()){
		String names=rs.getString(name);
		if(names.contains(",")){
			System.out.println(names);
		}else{
	common.add(names);
		}
}
	System.out.println(common);
	if(common.size()>0){
		String commonvals=common.toString();
		
		String splitVals=commonvals.substring(1,commonvals.length()-1);
		String[] splitValues=splitVals.split(",");
		int init=0;
		%>
		<textarea rows="10" cols="30" style="margin-left:20px;">
		
		<%
		int delete=st.executeUpdate("delete from venuedetails");
		for(int count=0;count<splitValues.length;count++){
			out.println((++init)+"."+splitValues[count]+"\n");
			int insert=st.executeUpdate("insert into venuedetails values('"+splitValues[count]+"')");
			
		}
		%>
		</textarea>
		<%
	}
%>
</body>
</html>