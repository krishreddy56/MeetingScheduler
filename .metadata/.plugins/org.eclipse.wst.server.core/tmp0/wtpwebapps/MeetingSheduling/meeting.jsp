<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*,java.util.*"%>
    <%!
    Connection con=null;
    Statement st=null;
    ResultSet rs=null;
    ArrayList details=new ArrayList();
    HashMap queryParams = new HashMap();
    String inputQuery = null;
	
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
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>
<script type="text/javascript" src="css/featuredcontentglider.js"></script>

<script type="text/javascript">

function myfunc(){

	window.location.replace("meeting.jsp?proj="+document.getElementById("project").value+"&loc="+document.getElementById("location").value+"&option="+document.getElementById("option").value);
	
}
		 


</script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>

<SCRIPT language="javascript">
$(function(){

	
    // add multiple select / deselect functionality
    $("#checkMe").click(function () {
    	 
    	$('.selection').attr('checked', this.checked);
    });
    $(".selection").click(function () {
    	$("#checkMe").removeAttr("checked");
    });
    // if all checkbox are selected, check the selectall checkbox
    // and viceversa
    
});
</SCRIPT>

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
        
        	<div class="full_width" style="background-color:#C2D6FF; border:2px solid #6699FF; height:600px; overflow: scroll;" >
        	
        	
			<center><br><br>
			<table cellpadding="5" cellspacing="5">
			<tr><td align="right">Project:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td align="left">
			<select id="project" name="project" style="width: 3cm;"><option value="Select">Select</option><option value="Java">Java</option><option value="Web">Web</option><option value="Health Care">Health Care</option><option value="CMS">CMS</option>
			</select></td></tr>
			<tr><td align="right">Location:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td align="left"><select style="width: 3cm;" id="location"><option value="Select">Select</option><option value="T.Nagar">T.Nagar</option><option value="Navaloor">Navaloor</option><option value="Vadapalani">Vadapalani</option><option value="Tambaram">Tambaram</option></select></td></tr>
			
			<tr><td align="right">Designation:&nbsp;&nbsp;&nbsp;&nbsp;</td><td align="left"><select name="option" id="option" style="width: 3cm;" onchange="return getDesign();"><option value="Select">Select</option><option value="PM">PM</option><option value="TL">TL</option><option value="SSE">SSE</option><option value="JSE">JSE</option></select></td><td><input type="submit" value="Submit" onclick="myfunc();"></td></tr>
			</table>			
			<form action="selectuser.jsp">
			<div id="fulltable">
			
		
           <table border="1" cellpadding="2" cellspacing="2" style="height: 100px;">
<th bgcolor="" colspan="6"><font size="5" color="red">Staff Information</font></th>
<tr ><td><b>Staff ID</b></td><td><b>Staff Name</b></td><td><b>Mobile Number</b></td><td><b>Vehicle</b></td><td><b>SelectAll <input type="checkbox" id="checkMe"></input></b></td></tr>
<%
	if(request.getQueryString()!=null){
		System.out.println("inside came");
		details.clear();
		String project=request.getParameter("proj");
		String loc=request.getParameter("loc");
		String dsgn=request.getParameter("option");
		
		Class.forName("com.mysql.jdbc.Driver");

		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/meetingsheduler","root","root");

		st=con.createStatement();
		if(!project.equals("Select")&&(loc.equals("Select")&&(dsgn.equals("Select")))){
			rs=st.executeQuery("select * from userinformation where projectname='"+project+"'");
			details=new ArrayList();
			while(rs.next()){
				details.add(rs.getString(1));
				details.add(rs.getString(2));
				details.add(rs.getString(9));
				details.add(rs.getString(15));
				
			}

		}else if(project.equals("Select")&&(!loc.equals("Select")&&(dsgn.equals("Select")))){
			rs=st.executeQuery("select * from userinformation where location='"+loc+"'");
			details=new ArrayList();
			while(rs.next()){
				details.add(rs.getString(1));
				details.add(rs.getString(2));
				details.add(rs.getString(9));
				details.add(rs.getString(15));
				
			}
			
		}else if(project.equals("Select")&&(loc.equals("Select")&&(!dsgn.equals("Select")))){
			rs=st.executeQuery("select * from userinformation where designation='"+dsgn+"'");
			details=new ArrayList();
			while(rs.next()){
				details.add(rs.getString(1));
				details.add(rs.getString(2));
				details.add(rs.getString(9));
				details.add(rs.getString(15));
				
			}
			
		}else if(!project.equals("Select")&&(!loc.equals("Select")&&(dsgn.equals("Select")))){
			rs=st.executeQuery("select * from userinformation where projectname='"+project+"' and location='"+loc+"'");
			details=new ArrayList();
			while(rs.next()){
				details.add(rs.getString(1));
				details.add(rs.getString(2));
				details.add(rs.getString(9));
				details.add(rs.getString(15));
				
			}
			
		}else if(!project.equals("Select")&&(loc.equals("Select")&&(!dsgn.equals("Select")))){
			rs=st.executeQuery("select * from userinformation where projectname='"+project+"' and designation='"+dsgn+"'");
			details=new ArrayList();
			while(rs.next()){
				details.add(rs.getString(1));
				details.add(rs.getString(2));
				details.add(rs.getString(9));
				details.add(rs.getString(15));
				
			}
			
		}else if(project.equals("Select")&&(!loc.equals("Select")&&(!dsgn.equals("Select")))){
			rs=st.executeQuery("select * from userinformation where location='"+loc+"' and designation='"+dsgn+"'");
			details=new ArrayList();
			while(rs.next()){
				details.add(rs.getString(1));
				details.add(rs.getString(2));
				details.add(rs.getString(9));
				details.add(rs.getString(15));
				
			}
			
		}else if(!project.equals("Select")&&(!loc.equals("Select")&&(!dsgn.equals("Select")))){
			rs=st.executeQuery("select * from userinformation where projectname='"+project+"' and location='"+loc+"' and designation='"+dsgn+"'");
			details=new ArrayList();
			while(rs.next()){
				details.add(rs.getString(1));
				details.add(rs.getString(2));
				details.add(rs.getString(9));
				details.add(rs.getString(15));
				
			}
			
		}
		else{
			rs=st.executeQuery("select * from userinformation");
			details=new ArrayList();
			while(rs.next()){
				details.add(rs.getString(1));
				details.add(rs.getString(2));
				details.add(rs.getString(9));
				details.add(rs.getString(15));
				
			}
			
		}
		if(details.size()>0){
			System.out.println("inside designation");
			for(int val=0;val<details.size();val=val+4){
			%>
			<tr>
			<td><%=details.get(val).toString()%></td>
			<td><%=details.get(val+1).toString() %></td>
			<td><%=details.get(val+2).toString() %></td>
			<td><%=details.get(val+3).toString() %></td>
			<td><input type="checkbox" class="selection" name="selection" id="selection" value=<%=details.get(val).toString()%>></input></td>
			</tr>
			<% 
			}}else{
				//details.clear();
				out.print("Your Search Records are Not Found");
				}
		
	}
	else{
		//out.print("Your Search Records are Not Found");
	}
%>
</table><br><br>

</div>
<div id="norespone"><input type="submit" value="Schedule Meeting" style="border: 2;background-color: maroon; padding:4px 10px;border-radius:5px; font-family: serif;color: white;"></div>
           </center>
        </form>
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