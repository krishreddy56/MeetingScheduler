
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*,java.util.*" %>
    <%!
    Connection con=null;
    Statement st=null;
    ResultSet rs=null;
    String driver="com.mysql.jdbc.Driver";
    String url="jdbc:mysql://localhost:3306/meetingsheduler";
    ArrayList selectdUsers=new ArrayList();
    String place="";

    %>
    <!DOCTYPE html>
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
	<link rel="stylesheet" href="nivo-slider.css" type="text/css" media="screen" />
	<link rel="stylesheet" type="text/css" media="all" href="jsDatePick_ltr.min.css" />

<script type="text/javascript" src="jsDatePick.min.1.3.js"></script>

<script type="text/javascript">
	window.onload = function(){
		new JsDatePick({
			useMode:2,
			target:"date",
			dateFormat:"%d-%M-%Y"
			
		});
	};
</script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>
<script type="text/javascript" src="css/featuredcontentglider.js"></script>
<script
src="http://maps.googleapis.com/maps/api/js?key=AIzaSyDY0kkJiTPVd2U7aTOAwhc9ySH6oHxOIYM&sensor=false">
</script>

<script>
var myCenter=new google.maps.LatLng(13.0400232,80.24002030);
var marker;

function initialize()
{
var mapProp = {
  center:myCenter,
  zoom:5,
  mapTypeId:google.maps.MapTypeId.ROADMAP
  };

var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);

marker=new google.maps.Marker({
  position:myCenter,
  animation:google.maps.Animation.BOUNCE
  });

marker.setMap(map);
}

google.maps.event.addDomListener(window, 'load', initialize);
</script>
<script type="text/javascript">
function getlocation(value){
if(value=="location"){
	var xmlhttp;
	if(window.XMLHttpRequest){
		xmlhttp=new XMLHttpRequest();
		}else{
		xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
			}
	xmlhttp.onreadystatechange=function(){
		if(xmlhttp.readyState==4){
			document.getElementById("txtresponse").innerHTML=xmlhttp.responseText;
			}

		};
		xmlhttp.open("POST","./commonplaces.jsp",true);
		xmlhttp.send(null);
}
}
function mydistance(){
	document.getElementById("txt1").innerHTML="";
	
	var xmlhttp;
	if(window.XMLHttpRequest){
		xmlhttp=new XMLHttpRequest();
		}else{
		xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
			}
	xmlhttp.onreadystatechange=function(){
		if(xmlhttp.readyState==4){
			document.getElementById("txt1").innerHTML=xmlhttp.responseText;
			}
		};
		xmlhttp.open("POST","./distance.jsp",true);
		xmlhttp.send(null);
}

</script>
<script type="text/javascript">
function mailResponse(){
	var date=document.getElementById("date").value;
	var titile=document.getElementById("name").value;
	var org=document.getElementById("organize").value;
	var time=document.getElementById("time").value;
	var venue=document.getElementById("txtField").value;
	if(date==""||titile==""|| org==""||time==""||venue==""){
		alert("All The Fields Should be Filled ");
		return false;
		}
	
	if(true){
	var xmlhttp;
	if(window.XMLHttpRequest){
		xmlhttp=new XMLHttpRequest();
		}else{
		xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
			}
	xmlhttp.onreadystatechange=function(){
		if(xmlhttp.readyState==4){
			document.getElementById("mailresponse").innerHTML=xmlhttp.responseText;
			}
		};
		xmlhttp.open("POST","./mail.jsp?date="+date+"&title="+titile+"&org="+org+"&time="+time+"&venue="+venue,true);
		//xmlhttp.open("POST","./mail.jsp",true);
		xmlhttp.send(null);
	}
	
}
</script>
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
          <%
           if(request.getParameterValues("selection")!=null){
        	   
           String[] values=request.getParameterValues("selection");
           selectdUsers=new ArrayList();
           Class.forName(driver);
           con=DriverManager.getConnection(url,"root","root");
           st=con.createStatement();
           try{
        	   for(int i=0;i<values.length;i++){
            	   rs=st.executeQuery("select * from userinformation where userid='"+values[i]+"'");
            	   while(rs.next()){
            		   selectdUsers.add(rs.getString(2));
            		   selectdUsers.add(rs.getString(13));
            		   selectdUsers.add(rs.getString(14));
            		   selectdUsers.add(rs.getString(15));
            		   selectdUsers.add(rs.getString(9));
            		   
            	   }}
           int delete=st.executeUpdate("delete from selectedusers");
           }catch(Exception ex){
        	   ex.printStackTrace();
           }finally{
        	   con.close();
        	   st.close();
        	   rs.close();
           }}else{
			   selectdUsers=new ArrayList();
		   }
           %>
        
    	    
    
    	<div id="content">
        
        	<div class="full_width" style="background-color:#C2D6FF; border:2px solid #6699FF;height:600px;">
        	
        	<div id="cccc">
        	<div class="content-attribute">
        	&nbsp;&nbsp;&nbsp;<p><table border="1" cellpadding="8" cellspacing="8" style="height: 100px;">
        	<th bgcolor="" colspan="5"><font size="5" color="red"><center>Staff Information</center></font></th>
        	<tr><td><b>Staff Name</b></td><td><b>Latitude</b></td><td><b>Longitude</b></td><td><b>Vehicle</b></td><td><b>Mobile Number</b></td></tr>
        	<%
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
        		 Class.forName(driver);
                con=DriverManager.getConnection(url,"root","root");
                st=con.createStatement();
                int insert=st.executeUpdate("insert into selectedusers values('"+selectdUsers.get(val).toString()+"','"+selectdUsers.get(val+1).toString()+"','"+selectdUsers.get(val+2).toString()+"','"+selectdUsers.get(val+3).toString()+"','"+selectdUsers.get(val+4).toString()+"')");
                }catch(Exception ex){
        		ex.printStackTrace();
        	}finally{
        		con.close();
        		st.close();
        	}}
        	%>

        		</table>
        	
        	</div>
        	
        	
        	<br>
        	<input type="submit" value="common places" style="margin-left:40px;border: 2;background-color: maroon;font-family: serif;color: white;" onclick="getlocation('location');">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="logout1.jsp" style="font-style: normal;color:maroon;">Logout</a>
        	<br></br>
        	<div id="txtresponse">
        	<textarea rows="10" cols="30" style="margin-left:20px;">
			
			</textarea>
        	</div>
        	</div>
        	
        	<div id="cc">
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span id="mailresponse" style="font-family:serif;color: maroon;"></span>
        	
        	<div id="content-attribute2" >
        		Meeting Date &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" id="date" style="margin:10px 0 2px 20px;"><br>
        		Meeting Title <input type="text" id="name" style="margin:10px 0 2px 20px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="index.html" style="border: thick;color: maroon;">Click to Home Page</a><br>
        		Organizer <input type="text" id="organize" style="margin:10px 0 2px 40px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="meeting.jsp" style="border: thick;color: maroon;">Click to Meeting Page</a><br>
        		Time<input type="text" id="time" style="margin:10px 0 2px 70px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="process.jsp" style="border: thick;color: maroon;">Click to Admin Page</a><br>
        		<div id="txt1">Get venue <input type="text" name="txtField" id="txtField" style="margin:10px 0 2px 35px;"></div>
        		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="get venue" style="margin:10px 0 2px 35px; border: 2;background-color: maroon;font-family: serif;color: white;" onclick="mydistance();">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="distanceshow.jsp" style="border: thick;color: maroon;">Show Distance</a><br>
        		
        		   <input type="submit"  value="Send Mail" style="margin:0 0 0 120px;border: 2;background-color: maroon;font-family: serif;color: white;" onclick="return mailResponse();">
        	
        		
        		
        	
        	</div>
        	
    	<div id="content-attribute3">
    	<div id="googleMap" style="width:280px;height:230px; border:2px solid #000;"></div>
    	
    	</div>    	
        	
        	</div>
        	
        	
            <center>
           
          
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