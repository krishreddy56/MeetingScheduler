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
	String meetingLoc="";
	String location="";


    

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
 <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>



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
        	
        	<%
        	   String number=(String)session.getAttribute("mobilenum"); 
        	   
        	Class.forName(driver);
        	
        	

			 con=DriverManager.getConnection(url,"root","root");

			 st=con.createStatement();
			 
			 rs=st.executeQuery("select * from userinformation where mobilenumber='"+number+"'");
			 
			 if(rs.next()){
				 
				 location=rs.getString(12);
			 }
        		 meetingLoc=(String)session.getAttribute("meetingplace");
        	%>
        	
        	
        	
        	<center>
        	
        	<input type="submit" onclick="loadingmap('T.Nagar','Tambaram')" value="Show Map Direction" style="border: 2;background-color: maroon; font-family: serif;color: white;"></center>
        	
        	
           <center>
           
   <div style="width: 600px;">
     <div id="map" style="width: 280px; height: 400px; float: left;"></div> 
     <div id="panel" style="width: 300px; float: right;"></div> 
   </div>
	
   <script type="text/javascript"> 
    function loadingmap(val1,val2){

       
    

        
	
   var directionsService = new google.maps.DirectionsService();
   var directionsDisplay = new google.maps.DirectionsRenderer();

   var myOptions = {
     zoom:7,
     mapTypeId: google.maps.MapTypeId.ROADMAP
   }

   var map = new google.maps.Map(document.getElementById("map"), myOptions);
   directionsDisplay.setMap(map);

   var request = {
       origin:'T.Nagar', 
       destination:'Tambaram',
       travelMode: google.maps.DirectionsTravelMode.DRIVING
   };

   directionsService.route(request, function(response, status) {
      if (status == google.maps.DirectionsStatus.OK) {

         // Display the distance:
         document.getElementById('distance').innerHTML += 
            response.routes[0].legs[0].distance.value + " meters";

         // Display the duration:
         document.getElementById('duration').innerHTML += 
            response.routes[0].legs[0].duration.value + " seconds";

         directionsDisplay.setDirections(response);
      }
   });
    }
   </script> 
           </center>
        
		</div> <!-- end of content -->
        </div>
</div><div id="templatemo_content_wrapper_bottom"></div> <!-- end of templatemo_wrapper -->

        <div id="templatemo_footer">
   	     </div>
</div>
</div>	
</body>
</html>