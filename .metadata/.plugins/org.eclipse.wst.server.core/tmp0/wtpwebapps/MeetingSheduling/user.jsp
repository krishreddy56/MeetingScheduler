<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
  
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
var response;
function verify(){
	
	var name=document.getElementById("username").value;
	var date=document.getElementById("date1").value;
	var proj=document.getElementById("proj").value;
	var loc=document.getElementById("loc").value;
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
	var vehicle=document.getElementById("sel").value;
	var hloc=document.getElementById("hloc").value;
	var letters = /^[A-Za-z]+$/;  
	if(name==""){
		alert("Enter the Name");
		return false;
		}
	
	if(!name.match(letters)){
		alert("Enter the Name in Correct Format");
		return false;
		}
	if(date==""){
		alert("Enter the date");
		return false;
		}
	if(proj=="Select"){
		alert("Select Any Project");
		return false;
		}
	if(loc=="Select"){
		alert("Select Any Location");
		return false;
		}
	if(dsgn=="Select"){
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
	if(pass==""){
		alert("Enter the Password");
		return false;
		}
	if(hloc==""){
		alert("Enter Home Location");
		return false;
		}
	if(vehicle=="selct"){
		alert("Select any Vechicle");
		return false;
		}
	
	if(true){
		makeProcess();
	}
}
function makeProcess(){
	var xmlhttp;
	if(window.XMLHttpRequest){
		xmlhttp=new XMLHttpRequest();
		}else{
		xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
			}
	xmlhttp.onreadystatechange=function(){
		if(xmlhttp.readyState==4){
		document.getElementById("msg").innerHTML=xmlhttp.responseText;
		}
		};
		xmlhttp.open("POST","./register.jsp?staffname="+document.getElementById("username").value+"&dob="+document.getElementById("date1").value+"&proj="+document.getElementById("proj").value+"&loc="+document.getElementById("loc").value+"&dsgn="+document.getElementById("dsgn").value+"&mail="+document.getElementById("mail").value+"&pmail="+document.getElementById("pmail").value+"&mobile="+document.getElementById("mobile").value+"&user="+document.getElementById("uName").value+"&pass="+document.getElementById("pass").value+"&lat="+"0"+"&lng="+"0"+"&hloc="+document.getElementById("hloc").value+"&type="+document.getElementById("sel").value,true);
		xmlhttp.send(null);
		
}

function numbercheck(){
	var xmlhttp;
	if(window.XMLHttpRequest){
		xmlhttp=new XMLHttpRequest();
		}else{
			xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
			}
	xmlhttp.onreadystatechange=function(){
		if(xmlhttp.readyState==4){
			response=xmlhttp.responseText;
			alert(response);
			}
		};
	xmlhttp.open("POST","./number.jsp?number="+document.getElementById("mobile").value,true);
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
        
        	<div class="full_width" style="background-color:#C2D6FF; border:2px solid #6699FF; height:750px;">
        	<center><br><br>
        	<h1><span id="msg" style="font-family: serif;color: maroon;size: 5cm;"></span></h1>
        	<table cellpadding="5" cellspacing="5" bgcolor="silver" border="2" style="border-color: silver;">
<th colspan="2">
<font size="5">Staff Registration</font><br>
</th>

<tr style="font-family:monospace; font-size: 20px; color: maroon;"><td align="right"><b>Staff Name :</b></td><td><input type="text"  name="username" id="username" size="20" maxlength="20"></input></td></tr>
<tr style="font-family:monospace; font-size: 20px; color: maroon;"><td align="right"><b>Date of Birth:</b></td><td><input type="text" name="date1" id="date1" size="20" maxlength="20"></input></td></tr>
<tr style="font-family:monospace; font-size: 20px; color: maroon;"><td align="right"><b>Project Name:</b></td><td><select name="proj" id="proj" style="width: 4cm;"><option value="Select">Select</option><option value="Java">Java</option><option value="Web">Web</option><option value="Health Care">Health Care</option><option value="CMS">CMS</option></select></td></tr>
<tr style="font-family:monospace; font-size: 20px; color: maroon;"><td align="right"><b>Location:</b></td><td><select name="loc" id="loc" style="width: 4cm;"><option value="Select">Select</option><option value="T.Nagar">T.Nagar</option><option value="Navaloor">Navaloor</option><option value="Vadapalani">Vadapalani</option><option value="Tambaram">Tambaram</option></select></td></tr>
<tr style="font-family:monospace; font-size: 20px; color: maroon;"><td align="right"><b>Designation:</b></td><td><select name="dsgn" id="dsgn"style="width: 4cm;"><option value="Select">Select</option><option value="PM">PM</option><option value="TL">TL</option><option value="SSE">SSE</option><option value="JSE">JSE</option></select></td></tr>
<tr style="font-family:monospace; font-size: 20px; color: maroon;"><td align="right"><b>Company Mail Id:</b></td><td><input type="text" name="mail" id="mail" size="20" maxlength="35"></input></td></tr>
<tr style="font-family:monospace; font-size: 20px; color: maroon;"><td align="right"><b>Personal Mail Id:</b></td><td><input type="text" name="pmail" id="pmail" size="20" maxlength="35"></input></td></tr>
<tr style="font-family:monospace; font-size: 20px; color: maroon;"><td align="right"><b>Mobile Number:</b></td><td><input type="text" name="mobile" id="mobile" size="20" maxlength="20""></input></td></tr>
<tr style="font-family:monospace; font-size: 20px; color: maroon;"><td align="right"><b>User Name:</b></td><td><input type="text" name="uName" id="uName" size="20" maxlength="20"></input></td></tr>
<tr style="font-family:monospace; font-size: 20px; color: maroon;"><td align="right"><b>Password:</b></td><td><input type="password" name="pass" id="pass" size="20" maxlength="20"></input></td></tr>
<tr style="font-family:monospace; font-size: 20px; color: maroon;"><td align="right"><b>Home Location:</b></td><td><input type="text" name="hloc" id="hloc" size="20" maxlength="35"></input></td></tr>

<tr style="font-family:monospace; font-size: 20px; color: maroon;"><td align="right"><b>Vehicle Type:</b></td><td><select style="width: 4cm;" name="sel" id="sel"><option value="selct">Select</option><option value="Two-wheeler">Two-wheeler</option><option value="Four-wheeler">Four-wheeler</option></select></td></tr>
</table><br><br>

<input type="submit" name="submit" value="Click To Register" border="2"style="border: 2;background-color:maroon;font-family: serif;color: white;" onclick="verify();"></input><br><br>
<br>
<input type="submit" value="Back" border="2" width="5cm;" onclick="window.location.href='welcome.html'" style="border: 2;background-color: maroon;font-family: serif;color: white; width: 4cm;"><br><br>
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