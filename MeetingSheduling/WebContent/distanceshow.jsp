<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ page import="java.sql.*,java.util.*" %>
    <%!
    Connection con=null;
    Statement st=null;
    ResultSet rs=null;
    String driver="com.mysql.jdbc.Driver";
    String url="jdbc:mysql://localhost:3306/meetingsheduler";
	Vector finalResults=new Vector();

    

    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>My Cloud Space</title>
<meta name="keywords" content="free css, web template, cloudy" />
<meta name="description" content="Cloudy - free website template provided by templatemo.com" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/featuredcontentglider.css" />
	<link rel="stylesheet" href="nivo-slider.css" type="text/css" media="screen" />

<script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>
<script type="text/javascript" src="css/featuredcontentglider.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>

<div id="templatemo_wrapper_outer">
<div id="templatemo_wrapper">

	<div id="temmplatmeo_header">
    
   		<div id="site_title">
           	<a href="#">
            	
            	<span>My Cloud Space</span>
            </a>
        </div>
    
    	<div id="templatemo_menu">
        
            <ul>
                <li><a href="#" class="current">Home</a></li>
                <li><a href="about.html">About Us</a></li>
                <li><a href="service.html">Services</a></li>
          		<li><a href="contact.html">Contact </a></li>
            </ul>    	
        
        </div> <!-- end of templatemo_menu -->
    
    </div> <!-- end of templatemo_header -->
    
    <div id="templatemo_content_wrapper_top"></div>
    <div id="templatemo_content_wrapper">
    
    	
    
        <div id="templatemo_banner"><span class="frame"></span>
        
			<script type="text/javascript">
    
            featuredcontentglider.init({
                gliderid: "canadaprovinces", //ID of main glider container
                contentclass: "glidecontent", //Shared CSS class name of each glider content
                togglerid: "p-select", //ID of toggler container
                remotecontent: "", //Get gliding contents from external file on server? "filename" or "" to disable
                selected: 0, //Default selected content index (0=1st)
                persiststate: false, //Remember last content shown within browser session (true/false)?
                speed: 500, //Glide animation duration (in milliseconds)
                direction: "rightleft", //set direction of glide: "updown", "downup", "leftright", or "rightleft"
                autorotate: true, //Auto rotate contents (true/false)?
                autorotateconfig: [3000, 2] //if auto rotate enabled, set [milliseconds_btw_rotations, cycles_before_stopping]
            })
            
            </script>
            
            <div id="canadaprovinces" class="glidecontentwrapper">
            
            <div class="glidecontent">
                <img src="images/temp3.png" alt="bird" />
            </div>
            
            <div class="glidecontent">
            <img src="images/temp2.jpg" alt="image" />
            </div>
            
            <div class="glidecontent">
            <img src="images/TEMP1.jpg" alt="image" />
            </div>
            
            </div>
            
            <div id="p-select" class="cssbuttonstoggler">
            <a href="#" class="toc"><span>1</span></a> <a href="#" class="toc"><span>2</span></a> <a href="#" class="toc"><span>3</span></a>
            
            </div>
        
        
        </div> <!-- end of templatemo_banner -->
    	    
    
    	<div id="content">
        
        	<div class="full_width" style="background-color:#C2D6FF; border:2px solid #6699FF;">
        	
        	
           <center>
           <%
if(session.getAttribute("meetingplace")!=null){
	Vector names=new Vector();
	Vector results=new Vector();
	String commonLat="";
	String commonLong="";
	

String meetingPlace=(String)session.getAttribute("meetingplace");


Class.forName(driver);
con=DriverManager.getConnection(url,"root","root");
st=con.createStatement();
rs=st.executeQuery("Select * from selectedusers");
while(rs.next()){
	names.add(rs.getString(1));
	}
for(int val=0;val<names.size();val++){
	rs=st.executeQuery("select *from userinformation where staffname='"+names.get(val).toString()+"'");
	while(rs.next()){
		results.add(rs.getString(2));
		results.add(rs.getString(12));
		results.add(rs.getString(13));
		results.add(rs.getString(14));
		results.add(rs.getString(15));
	}}
	rs=st.executeQuery("select * from mapdetails where hotel='"+meetingPlace+"'");

	if(rs.next()){
		commonLat=rs.getString(2);
		

	commonLong=rs.getString(3);
	}
	finalResults=new Vector();
	for(int commons=0;commons<results.size();commons=commons+5){
		 
		 double theta=Double.parseDouble(results.get(commons+3).toString()) -Double.parseDouble(commonLong);
		double dist =Math.sin(Double.parseDouble(results.get(commons+2).toString()) * Math.PI/180.0) *Math.sin(Double.parseDouble(commonLat) * Math.PI / 180.0) + Math.cos(Double.parseDouble(results.get(commons+2).toString()) * Math.PI / 180.0) * Math.cos(Double.parseDouble(commonLat)* Math.PI / 180.0) * Math.cos(theta * Math.PI / 180.0);
		 dist = Math.acos(dist);
		 dist = dist * 180.0 /Math.PI;
		dist = dist * 60 * 1.1515;
		 dist = dist * 1.609344;
		 

	finalResults.add(results.get(commons).toString());
	finalResults.add(results.get(commons+1).toString());
	finalResults.add(meetingPlace);
	finalResults.add(String.valueOf(dist).substring(0,4));
	}}
%>
<table border="1" cellpadding="8" cellspacing="8" style="overflow: scroll;height: auto;">
        	<th bgcolor="" colspan="5"><font size="5" color="red"><center>Staff Information</center></font></th>
        	<tr><td><b>Staff Name</b></td><td><b>Current Location</b></td><td><b>Meeting Place</b></td><td><b>Distance<br>( appx in Km)</b></td></tr>
        	<%
        	for(int val=0;val<finalResults.size();val=val+4){
        		%>
        		<tr>
        		<td><%=finalResults.get(val).toString() %></td>
        		<td><%=finalResults.get(val+1).toString() %></td>
        		<td><%=finalResults.get(val+2).toString() %></td>
        		<td><%=finalResults.get(val+3).toString() %></td>
        		</tr>
        	<%
        	}
        	%>
        	
        		</table><br>
        		<input type="submit" value="Back To Staff Selection" style="margin:0 0 0 120px;border: 2;background-color: maroon;font-family: serif;color: white;" onclick="window.location.href='selectuser.jsp'"><br><br>
        
           </center>
        
		</div> <!-- end of content -->
        </div>
</div><div id="templatemo_content_wrapper_bottom"></div> <!-- end of templatemo_wrapper -->

        <div id="templatemo_footer"> </div>
</div>
</div>	
</body>
</html>