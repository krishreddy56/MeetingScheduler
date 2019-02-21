<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*,java.util.*" %>
    <%!
    Connection con=null;
    Statement st=null;
    ResultSet rs=null;
    String driver="com.mysql.jdbc.Driver";
    String url="jdbc:mysql://localhost:3306/meetingsheduler";
    
    %>
   
  
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Cloudy - free css web template</title>
<meta name="keywords" content="free css, web template, cloudy" />
<meta name="description" content="Cloudy - free website template provided by templatemo.com" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/featuredcontentglider.css" />
	<link rel="stylesheet" href="nivo-slider.css" type="text/css" media="screen" />
	<link rel="stylesheet" href="nivo-slider.css" type="text/css" media="screen" />
	<link rel="stylesheet" type="text/css" media="all" href="jsDatePick_ltr.min.css" />

<script type="text/javascript" src="jsDatePick.min.1.3.js"></script>

<script type="text/javascript">
	window.onload = function(){
		new JsDatePick({
			useMode:2,
			target:"date1",
			dateFormat:"%d-%M-%Y"
			
		});
	};
</script>

<script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>
<script type="text/javascript" src="css/featuredcontentglider.js"></script>

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
        
        	<div class="full_width" style="background-color:#C2D6FF; border:2px solid #6699FF; height:800px;">
        	<center><br><br>
        	
<a href="logout.jsp" style="font-style: normal;color:maroon;">Logout</a>
<center>

&nbsp;&nbsp;&nbsp;<p><table border="1" cellpadding="8" cellspacing="8" style="height: 100px;">
<th bgcolor="" colspan="5"><font size="5" color="red"><center>Meeting Information</center></font></th>
<tr><td><b>Meeting Date</b></td><td><b>Meeting Title</b></td><td><b>Organizer</b></td><td><b>Starting Point</b></td><td><b>End Point</b></td></tr>
<%
if(session.getAttribute("name")!=null){
String name=(String)session.getAttribute("name");

Class.forName(driver);
con=DriverManager.getConnection(url,"root","root");
st=con.createStatement();
rs=st.executeQuery("select * from meetinginfo where staffname='"+name+"'");
ArrayList selectdUsers=new ArrayList();
while(rs.next()){
	selectdUsers.add(rs.getString(3));
	selectdUsers.add(rs.getString(4));
	selectdUsers.add(rs.getString(5));
	selectdUsers.add(rs.getString(6));
	selectdUsers.add(rs.getString(7));

	


}
if(selectdUsers.size()>0){

for(int val=0;val<selectdUsers.size();val=val+5){
	try{
	%>
	<tr>
	<td><%=selectdUsers.get(val).toString() %></td>
	<td><%=selectdUsers.get(val+1).toString() %></td>
	<td><%=selectdUsers.get(val+2).toString() %></td>
	<td><%=selectdUsers.get(val+3).toString() %></td>
	<td><%=selectdUsers.get(val+4).toString() %></td>
	
	</tr>
	
<% 
}catch(Exception e){
e.printStackTrace();	
}
}}}
%>

	</table>


  	


</center>
</div> <!-- end of content -->
        </div>
        </div>
</div><div id="templatemo_content_wrapper_bottom"></div> <!-- end of templatemo_wrapper -->

        <div id="templatemo_footer">
   	     </div>
</div>
</div>
</body>
</html>