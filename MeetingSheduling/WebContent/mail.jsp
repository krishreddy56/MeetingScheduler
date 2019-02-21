<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*,java.util.*,javax.mail.internet.*,javax.mail.Session,com.sun.*,java.net.*,javax.mail.Transport" %>
     <%@ page import="javax.mail.Message.*" %>
     
     <%!
    Connection con=null;
    Statement st=null;
    ResultSet rs=null;
    String driver="com.mysql.jdbc.Driver";
    String url="jdbc:mysql://localhost:3306/meetingsheduler";
    ArrayList selectdUsers=new ArrayList();
    ArrayList userdetails=new ArrayList();


    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
if((request.getParameter("date")!=null)&&(request.getParameter("title")!=null) &&(request.getParameter("org")!=null)&&(request.getParameter("time")!=null)&&(request.getParameter("venue")!=null)){
String date=request.getParameter("date");
String title=request.getParameter("title");
String org=request.getParameter("org");
String time=request.getParameter("time");
String venue=request.getParameter("venue");

String host = "smtp.gmail.com";
String userid = "krishreddy56@gmail.com"; 
String password = "9490904777";
String subject=" Regarding Meeting";
Class.forName(driver);
con=DriverManager.getConnection(url,"root","root");
st=con.createStatement();
rs=st.executeQuery("select * from mapdetails where hotel='"+venue+"'");
if(rs.next()){
	String venues=rs.getString(5);
	venue=venue + ";" +venues.replaceAll(",",";");
}
rs=st.executeQuery("select * from selectedusers");
selectdUsers=new ArrayList();
while(rs.next()){
	selectdUsers.add(rs.getString(1));
	selectdUsers.add(rs.getString(5));
	
}
if(selectdUsers.size()>0){
	userdetails=new ArrayList();
	
	for(int val=0;val<selectdUsers.size();val=val+2){
		rs=st.executeQuery("select * from userinformation where mobilenumber='"+selectdUsers.get(val+1).toString()+"'");
		if(rs.next()){
			userdetails.add(rs.getString(2));
			userdetails.add(rs.getString(7));
			userdetails.add(rs.getString(8));
			
		}

		
	}
	System.out.println("the selected users are"+userdetails);
	if(userdetails.size()>0){
		for(int init=0;init<userdetails.size();init=init+3){
			try
			{
				System.out.println(userdetails.size());
			Properties props = System.getProperties(); 
			props.put("mail.smtp.starttls.enable", "true"); 
			props.put("mail.smtp.host", host); 
			props.setProperty("mail.transport.protocol", "smtps");
			props.put("mail.smtp.user", userid); 
			props.put("mail.smtp.password", password); 
			props.put("mail.smtp.port", "465"); 
			props.put("mail.smtps.auth", "true"); 
			Session session1 = Session.getDefaultInstance(props, null); 
			MimeMessage message = new MimeMessage(session1); 
			InternetAddress fromAddress = null;
			InternetAddress toAddress = null;
			
			fromAddress = new InternetAddress(userid);

			for(int count=1;count<3;count++){
			try {
				System.out.println(count+"i"+init+userdetails.get(count+init).toString());
			
			toAddress = new InternetAddress(userdetails.get(count+init).toString());
			
			message.setFrom(fromAddress);
			message.setRecipient(RecipientType.TO, toAddress);
			message.setSubject(subject);
		    
			message.setText("Hai "+userdetails.get(init).toString()+","+"\n"+"Your Meeting Title is :"+title+"\n"+"Your Meeting Organizer :"+org+"\n"+"Your Meeting Time is :"+time+"\n"+"Your Meeting Venue is :"+venue); 
			

			Transport transport = session1.getTransport("smtps"); 
			transport.connect(host, userid, password); 
			transport.sendMessage(message, message.getAllRecipients()); 
			
			transport.close(); 
			} catch (Exception e) {
				//out.print("Error...");
			e.printStackTrace();
			
			
			}
			
			} }catch (Exception e) {
		//	e.printStackTrace();
			}
		}
		out.print("Successfully Send to Mail...");
		System.out.println("Completed");
		}
	Vector finalVals=new Vector();
	for(int vals=0;vals<selectdUsers.size();vals=vals+2){
		System.out.println("the user mobnum"+selectdUsers.get(vals+1).toString().trim());
		rs=st.executeQuery("select * from userinformation where mobilenumber='"+selectdUsers.get(vals+1).toString().trim()+"'");
		if(rs.next()){
			finalVals.add(rs.getString(10));
			finalVals.add(selectdUsers.get(vals+1).toString());
			finalVals.add(date);
			finalVals.add(title);
			finalVals.add(org);
			finalVals.add(rs.getString(12));
			finalVals.add(venue);
		}
		
		
		
		
		
		
	}
	
    System.out.println("the final values are"+finalVals);
    //st.executeUpdate("")
	if(finalVals.size()>0){
		for(int init=0;init<finalVals.size();init=init+7){
			int insert=st.executeUpdate("insert into meetinginfo values('"+finalVals.get(init).toString()+"','"+finalVals.get(init+1).toString()+"','"+finalVals.get(init+2).toString()+"','"+finalVals.get(init+3).toString()+"','"+finalVals.get(init+4).toString()+"','"+finalVals.get(init+5).toString()+"','"+finalVals.get(6).toString()+"')");
			
		}
	}
		
	}

}
%>
</body>
</html>