<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*,java.util.*" %>
    <%!
    Connection con=null;
    Statement st=null;
    ResultSet rs=null;
    String driver="com.mysql.jdbc.Driver";
    String url="jdbc:mysql://localhost:3306/meetingsheduler";
    Vector values=new Vector();
    Vector project=new Vector();
    Vector location=new Vector();
    Vector desgn=new Vector();
    Vector vehicle=new Vector();
    
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
<script type="text/javascript">
function verify(){
	var name=document.getElementById("username").value;
	var date=document.getElementById("date1").value;
	var proj=document.getElementById("proj").value;
	var dsgn=document.getElementById("dsgn").value;
	var mail=document.getElementById("mail").value;
	var pmail=document.getElementById("pmail").value;
	var atPos=mail.indexOf("@");
	var dotPos=mail.lastIndexOf(".");
	var atPos1=pmail.indexOf("@");
	var dotPos1=pmail.lastIndexOf(".");
	var mobile=document.getElementById("mobile").value;
	var user=document.getElementById("uName").value;
	var pass=document.getElementById("pass").value;
	var vehicle=document.getElementById("vehicle").value;
	var hloc=document.getElementById("hloc").value;
	var letters = /^[A-Za-z]+$/;  
	
	if(name==""){
		alert("Enter the Name");
		return false;
		}
	if(!name.match(letters)){
		alert("Enter The Name in Correct Format");
		return false;
		}
	if(date==""){
		alert("Enter the date");
		return false;
		}
	if(proj==""){
		alert("Enter the Project");
		return false;
		}
	if(dsgn==""){
		alert("Enter the Designation");
		return false;
		}
	if(mail==""||atPos<1||dotPos<atPos+2||dotPos+2>mail.length){
		alert("Enter Mail Id");
		return false;
		}
	if(pmail==""||atPos1<1||dotPos1<atPos1+2||dotPos1+2>pmail.length){
		alert("Enter Mail Id");
		return false;
	}
	if(mobile==""||mobile.length>10||mobile.length<10){
		alert("Enter the Mobile Number");
		return false
		}
	if(isNaN(mobile)){
		alert("Enter Valid Number like 9095417657");
		return false;
		}
	if(user==""){
		alert("Enter The Username");
		return false;
		}
	if(hloc==""){
		alert("Enter Home Location");
		return false;
		}
	if(pass==""){
		alert("Enter the Password");
		return false;
		}
	if(vehicle==""){
		alert("Select any Vechicle");
		return false;
		}
	if(true){
		makeResponse();
	}
}

function makeResponse(){
	
		var xmlhttp;
		if(window.XMLHttpRequest){
			xmlhttp=new XMLHttpRequest();
			}else{
			xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
				}
		xmlhttp.onreadystatechange=function(){
			if(xmlhttp.readyState==4){
			document.getElementById("msg1").innerHTML=xmlhttp.responseText;
			}
			};
			xmlhttp.open("POST","./update.jsp?staffname="+document.getElementById("username").value+"&dob="+document.getElementById("date1").value+"&proj="+document.getElementById("proj").value+"&loc="+document.getElementById("loc").value+"&dsgn="+document.getElementById("dsgn").value+"&mail="+document.getElementById("mail").value+"&pmail="+document.getElementById("pmail").value+"&mobile="+document.getElementById("mobile").value+"&user="+document.getElementById("uName").value+"&pass="+document.getElementById("pass").value+"&hloc="+document.getElementById("hloc").value+"&type="+document.getElementById("vehicle").value,true);			
			xmlhttp.send(null);
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
    	    
    
    	<div id="content">
        
        	<div class="full_width" style="background-color:#C2D6FF; border:2px solid #6699FF; height:850px;">
        	<center><br><br>
        	<%
if((request.getParameter("username")!=null)&&(request.getParameter("psswd")!=null)){
	String name=request.getParameter("username");
	String pass=request.getParameter("psswd");
	
	
	
	Class.forName(driver);
	con=DriverManager.getConnection(url,"root","root");
	st=con.createStatement();
	rs=st.executeQuery("select * from userinformation where username='"+name+"'and password='"+pass+"'");
	values=new Vector();
	if(rs.next()){
		
		
		values.add(rs.getString(2));
		values.add(rs.getString(3));
		values.add(rs.getString(4));
		values.add(rs.getString(5));
		values.add(rs.getString(6));
		values.add(rs.getString(7));
		values.add(rs.getString(8));
		values.add(rs.getString(9));
		values.add(rs.getString(10));
		values.add(rs.getString(11));
		values.add(rs.getString(12));
		values.add(rs.getString(15));
		
		session.setAttribute("mobilenum",values.get(7).toString());
		session.setAttribute("name",rs.getString(10));

	
	project.add("Java");
	project.add("Web");
	project.add("Health");
	project.add("CMS");
	project.remove(values.get(2).toString());
	location.add("T.Nagar");
	location.add("Navaloor");
	location.add("Vadapalani");
	location.add("Tambaram");
	location.remove(values.get(3).toString());
	desgn.add("SSE");
	desgn.add("PM");
	desgn.add("TL");
	desgn.add("JSE");
	desgn.remove(values.get(4).toString());
	vehicle.add("Two-wheeler");
	vehicle.add("Four-wheeler");
	vehicle.remove(values.get(11).toString());

	
	



	}else{
		response.sendRedirect("index3.jsp");
	}
	
}
        	

        	if(values.size()>0){
        		System.out.println(values.get(4).toString());
%>
<a href="logout.jsp" style="font-style: normal;color:maroon;">Logout</a>
        	<h1><span id="msg1" style="font-family: serif;color: maroon;size: 5cm;"></span></h1>
        	<table cellpadding="5" cellspacing="5" bgcolor="silver" border="2" style="border-color: silver;">
<th colspan="2">
<font size="5">Staff Updation</font><br>
</th>

<tr style="font-family:monospace; font-size: 20px; color: maroon;"><td><b>Staff Name :</b></td><td><input type="text"  name="username" id="username" size="20" maxlength="20" value=<%=values.get(0).toString() %>></input></td></tr>
<tr style="font-family:monospace; font-size: 20px; color: maroon;"><td><b>Date of Birth:</b></td><td><input type="text" name="date1" size="20" maxlength="20" id="date1" value=<%=values.get(1).toString() %>></input></td></tr>
<tr style="font-family:monospace; font-size: 20px; color: maroon;"><td><b>Project Name:</b></td><td><select name="proj" id="proj" style="width: 4cm;"><option value=<%=values.get(2).toString() %>><%=values.get(2).toString() %></option><option value=<%=project.get(0).toString() %>><%=project.get(0).toString() %></option><option value=<%=project.get(1).toString() %>><%=project.get(1).toString() %></option><option value=<%=project.get(2).toString() %>><%=project.get(2).toString() %></option></select></td></tr>
<tr style="font-family:monospace; font-size: 20px; color: maroon;"><td><b>Location:</b></td><td><select name="loc" id="loc" style="width: 4cm;"><option value=<%=values.get(3).toString() %>><%=values.get(3).toString() %></option><option value=<%=location.get(0).toString() %>><%=location.get(0).toString() %></option><option value=<%=location.get(1).toString() %>><%=location.get(1).toString() %></option><option value=<%=location.get(2).toString() %>><%=location.get(2).toString() %></option></select></td></tr>

<tr style="font-family:monospace; font-size: 20px; color: maroon;"><td><b>Designation:</b></td><td><select name="dsgn" id="dsgn"style="width: 4cm;"><option value="<%=values.get(4).toString() %>"><%=values.get(4).toString() %></option><option value=<%=desgn.get(0).toString() %>><%=desgn.get(0).toString() %></option><option value=<%=desgn.get(1).toString() %>><%=desgn.get(1).toString() %></option><option value=<%=desgn.get(2).toString() %>><%=desgn.get(2).toString() %></option></select></td></tr>
<tr style="font-family:monospace; font-size: 20px; color: maroon;"><td><b>Mail Id:</b></td><td><input type="text" name="mail" id="mail" size="20" maxlength="35" value=<%=values.get(5).toString() %>></input></td></tr>
<tr style="font-family:monospace; font-size: 20px; color: maroon;"><td><b>Personal Mail Id:</b></td><td><input type="text" name="pmail" id="pmail" size="20" maxlength="35" value=<%=values.get(6).toString() %>></input></td></tr>

<tr style="font-family:monospace; font-size: 20px; color: maroon;"><td><b>Mobile Number:</b></td><td><input type="text" name="mobile" id="mobile" size="20" maxlength="20" value=<%=values.get(7).toString() %>></input></td></tr>
<tr style="font-family:monospace; font-size: 20px; color: maroon;"><td><b>User Name:</b></td><td><input type="text" name="uName" id="uName" size="20" maxlength="20" value=<%=values.get(8).toString() %>></input></td></tr>
<tr style="font-family:monospace; font-size: 20px; color: maroon;"><td><b>Password:</b></td><td><input type="pass" name="pass" id="pass" size="20" maxlength="20" value=<%=values.get(9).toString() %>></input></td></tr>
<tr style="font-family:monospace; font-size: 20px; color: maroon;"><td><b>Home Location:</b></td><td><input type="text" name="hloc" id="hloc" size="20" maxlength="35" value=<%=values.get(10).toString() %>></input></td></tr>

<tr style="font-family:monospace; font-size: 20px; color: maroon;"><td><b>Vehicle Type:</b></td><td><select style="width: 4cm;" name="vehicle" id="vehicle"><option value=<%=values.get(11).toString()%>><%=values.get(11).toString()%></option><option value=<%=vehicle.get(0).toString() %>><%=vehicle.get(0).toString() %></option></select></td></tr>
</table><br>

<input type="submit" name="submit" value="Click To Update" border="2"style="border: 2;background-color:maroon;font-family: serif;color: white;" onclick="return verify();"></input><br><br>
<br>
<%
        	}
%>
<input type="submit" value="Back" border="2" width="5cm;" onclick="window.location.href='welcome.html'" style="border: 2;background-color: maroon;font-family: serif;color: white;width: 4cm;"><br><br>
<a href="meetingdetails.jsp" style="border: thick;color: maroon;">Meeting Details</a><br><br>

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