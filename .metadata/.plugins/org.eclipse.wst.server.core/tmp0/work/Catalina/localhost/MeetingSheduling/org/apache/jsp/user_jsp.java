/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.35
 * Generated at: 2016-04-12 08:24:53 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class user_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("   \r\n");
      out.write("  \r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n");
      out.write("<title>Cloudy - free css web template</title>\r\n");
      out.write("<meta name=\"keywords\" content=\"free css, web template, cloudy\" />\r\n");
      out.write("<meta name=\"description\" content=\"Cloudy - free website template provided by templatemo.com\" />\r\n");
      out.write("<link href=\"templatemo_style.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"css/featuredcontentglider.css\" />\r\n");
      out.write("\t<link rel=\"stylesheet\" href=\"nivo-slider.css\" type=\"text/css\" media=\"screen\" />\r\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" media=\"all\" href=\"jsDatePick_ltr.min.css\" />\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\" src=\"jsDatePick.min.1.3.js\"></script>\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("\twindow.onload = function(){\r\n");
      out.write("\t\tnew JsDatePick({\r\n");
      out.write("\t\t\tuseMode:2,\r\n");
      out.write("\t\t\ttarget:\"date1\",\r\n");
      out.write("\t\t\tdateFormat:\"%d-%M-%Y\"\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t});\r\n");
      out.write("\t};\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("<script language=\"javascript\" type=\"text/javascript\">\r\n");
      out.write("function clearText(field)\r\n");
      out.write("{\r\n");
      out.write("    if (field.defaultValue == field.value) field.value = '';\r\n");
      out.write("    else if (field.value == '') field.value = field.defaultValue;\r\n");
      out.write("}\r\n");
      out.write("</script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"css/featuredcontentglider.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("var response;\r\n");
      out.write("function verify(){\r\n");
      out.write("\t\r\n");
      out.write("\tvar name=document.getElementById(\"username\").value;\r\n");
      out.write("\tvar date=document.getElementById(\"date1\").value;\r\n");
      out.write("\tvar proj=document.getElementById(\"proj\").value;\r\n");
      out.write("\tvar loc=document.getElementById(\"loc\").value;\r\n");
      out.write("\tvar dsgn=document.getElementById(\"dsgn\").value;\r\n");
      out.write("\tvar mail=document.getElementById(\"mail\").value;\r\n");
      out.write("\tvar pmail=document.getElementById(\"pmail\").value;\r\n");
      out.write("\tvar atPos=mail.indexOf(\"@\");\r\n");
      out.write("\tvar dotPos=mail.lastIndexOf(\".\");\r\n");
      out.write("\tvar atPos1=pmail.indexOf(\"@\");\r\n");
      out.write("\tvar dotPos1=pmail.lastIndexOf(\".\");\r\n");
      out.write("\tvar mobile=document.getElementById(\"mobile\").value;\r\n");
      out.write("\tvar user=document.getElementById(\"uName\").value;\r\n");
      out.write("\tvar pass=document.getElementById(\"pass\").value;\r\n");
      out.write("\tvar vehicle=document.getElementById(\"sel\").value;\r\n");
      out.write("\tvar hloc=document.getElementById(\"hloc\").value;\r\n");
      out.write("\tvar letters = /^[A-Za-z]+$/;  \r\n");
      out.write("\tif(name==\"\"){\r\n");
      out.write("\t\talert(\"Enter the Name\");\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\r\n");
      out.write("\tif(!name.match(letters)){\r\n");
      out.write("\t\talert(\"Enter the Name in Correct Format\");\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t\t}\r\n");
      out.write("\tif(date==\"\"){\r\n");
      out.write("\t\talert(\"Enter the date\");\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t\t}\r\n");
      out.write("\tif(proj==\"Select\"){\r\n");
      out.write("\t\talert(\"Select Any Project\");\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t\t}\r\n");
      out.write("\tif(loc==\"Select\"){\r\n");
      out.write("\t\talert(\"Select Any Location\");\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t\t}\r\n");
      out.write("\tif(dsgn==\"Select\"){\r\n");
      out.write("\t\talert(\"Enter the Designation\");\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t\t}\r\n");
      out.write("\tif(mail==\"\"||atPos<1||dotPos<atPos+2||dotPos+2>mail.length){\r\n");
      out.write("\t\talert(\"Enter Mail Id\");\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t\t}\r\n");
      out.write("\tif(pmail==\"\"||atPos1<1||dotPos1<atPos1+2||dotPos1+2>pmail.length){\r\n");
      out.write("\t\talert(\"Enter Mail Id\");\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t}\r\n");
      out.write("\tif(mobile==\"\"||mobile.length>10||mobile.length<10){\r\n");
      out.write("\t\talert(\"Enter the Mobile Number\");\r\n");
      out.write("\t\treturn false\r\n");
      out.write("\t\t}\r\n");
      out.write("\tif(isNaN(mobile)){\r\n");
      out.write("\t\talert(\"Enter Valid Number like 9095417657\");\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t\t}\r\n");
      out.write("\tif(user==\"\"){\r\n");
      out.write("\t\talert(\"Enter The Username\");\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t\t}\r\n");
      out.write("\tif(pass==\"\"){\r\n");
      out.write("\t\talert(\"Enter the Password\");\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t\t}\r\n");
      out.write("\tif(hloc==\"\"){\r\n");
      out.write("\t\talert(\"Enter Home Location\");\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t\t}\r\n");
      out.write("\tif(vehicle==\"selct\"){\r\n");
      out.write("\t\talert(\"Select any Vechicle\");\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\r\n");
      out.write("\tif(true){\r\n");
      out.write("\t\tmakeProcess();\r\n");
      out.write("\t}\r\n");
      out.write("}\r\n");
      out.write("function makeProcess(){\r\n");
      out.write("\tvar xmlhttp;\r\n");
      out.write("\tif(window.XMLHttpRequest){\r\n");
      out.write("\t\txmlhttp=new XMLHttpRequest();\r\n");
      out.write("\t\t}else{\r\n");
      out.write("\t\txmlhttp=new ActiveXObject(\"Microsoft.XMLHTTP\");\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\txmlhttp.onreadystatechange=function(){\r\n");
      out.write("\t\tif(xmlhttp.readyState==4){\r\n");
      out.write("\t\tdocument.getElementById(\"msg\").innerHTML=xmlhttp.responseText;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\t};\r\n");
      out.write("\t\txmlhttp.open(\"POST\",\"./register.jsp?staffname=\"+document.getElementById(\"username\").value+\"&dob=\"+document.getElementById(\"date1\").value+\"&proj=\"+document.getElementById(\"proj\").value+\"&loc=\"+document.getElementById(\"loc\").value+\"&dsgn=\"+document.getElementById(\"dsgn\").value+\"&mail=\"+document.getElementById(\"mail\").value+\"&pmail=\"+document.getElementById(\"pmail\").value+\"&mobile=\"+document.getElementById(\"mobile\").value+\"&user=\"+document.getElementById(\"uName\").value+\"&pass=\"+document.getElementById(\"pass\").value+\"&lat=\"+\"0\"+\"&lng=\"+\"0\"+\"&hloc=\"+document.getElementById(\"hloc\").value+\"&type=\"+document.getElementById(\"sel\").value,true);\r\n");
      out.write("\t\txmlhttp.send(null);\r\n");
      out.write("\t\t\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("function numbercheck(){\r\n");
      out.write("\tvar xmlhttp;\r\n");
      out.write("\tif(window.XMLHttpRequest){\r\n");
      out.write("\t\txmlhttp=new XMLHttpRequest();\r\n");
      out.write("\t\t}else{\r\n");
      out.write("\t\t\txmlhttp=new ActiveXObject(\"Microsoft.XMLHTTP\");\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\txmlhttp.onreadystatechange=function(){\r\n");
      out.write("\t\tif(xmlhttp.readyState==4){\r\n");
      out.write("\t\t\tresponse=xmlhttp.responseText;\r\n");
      out.write("\t\t\talert(response);\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t};\r\n");
      out.write("\txmlhttp.open(\"POST\",\"./number.jsp?number=\"+document.getElementById(\"mobile\").value,true);\r\n");
      out.write("\txmlhttp.send(null);\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("</script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("<div id=\"templatemo_wrapper_outer\">\r\n");
      out.write("<div id=\"templatemo_wrapper\">\r\n");
      out.write("\r\n");
      out.write("\t<div id=\"temmplatmeo_header\">\r\n");
      out.write("    \r\n");
      out.write("   \t\t<div id=\"site_title\">\r\n");
      out.write("           \t<a href=\"#\">\r\n");
      out.write("            \t\r\n");
      out.write("            \t<span>My Cloud Space</span>\r\n");
      out.write("            </a>\r\n");
      out.write("        </div>\r\n");
      out.write("    \r\n");
      out.write("    \t<div id=\"templatemo_menu\">\r\n");
      out.write("        \r\n");
      out.write("            <ul>\r\n");
      out.write("                <li><a href=\"#\" class=\"current\">Home</a></li>\r\n");
      out.write("                <li><a href=\"about.html\">About Us</a></li>\r\n");
      out.write("                <li><a href=\"service.html\">Services</a></li>\r\n");
      out.write("          \t\t<li><a href=\"contact.html\">Contact </a></li>\r\n");
      out.write("            </ul>    \t\r\n");
      out.write("        \r\n");
      out.write("        </div> <!-- end of templatemo_menu -->\r\n");
      out.write("    \r\n");
      out.write("    </div> <!-- end of templatemo_header -->\r\n");
      out.write("    \r\n");
      out.write("    <div id=\"templatemo_content_wrapper_top\"></div>\r\n");
      out.write("    <div id=\"templatemo_content_wrapper\">\r\n");
      out.write("    \r\n");
      out.write("    \t\r\n");
      out.write("    \r\n");
      out.write("        <div id=\"templatemo_banner\"><span class=\"frame\"></span>\r\n");
      out.write("        \r\n");
      out.write("\t\t\t<script type=\"text/javascript\">\r\n");
      out.write("    \r\n");
      out.write("            featuredcontentglider.init({\r\n");
      out.write("                gliderid: \"canadaprovinces\", //ID of main glider container\r\n");
      out.write("                contentclass: \"glidecontent\", //Shared CSS class name of each glider content\r\n");
      out.write("                togglerid: \"p-select\", //ID of toggler container\r\n");
      out.write("                remotecontent: \"\", //Get gliding contents from external file on server? \"filename\" or \"\" to disable\r\n");
      out.write("                selected: 0, //Default selected content index (0=1st)\r\n");
      out.write("                persiststate: false, //Remember last content shown within browser session (true/false)?\r\n");
      out.write("                speed: 500, //Glide animation duration (in milliseconds)\r\n");
      out.write("                direction: \"rightleft\", //set direction of glide: \"updown\", \"downup\", \"leftright\", or \"rightleft\"\r\n");
      out.write("                autorotate: true, //Auto rotate contents (true/false)?\r\n");
      out.write("                autorotateconfig: [3000, 2] //if auto rotate enabled, set [milliseconds_btw_rotations, cycles_before_stopping]\r\n");
      out.write("            })\r\n");
      out.write("            \r\n");
      out.write("            </script>\r\n");
      out.write("            \r\n");
      out.write("            <div id=\"canadaprovinces\" class=\"glidecontentwrapper\">\r\n");
      out.write("            \r\n");
      out.write("            <div class=\"glidecontent\">\r\n");
      out.write("                <img src=\"images/temp3.png\" alt=\"bird\" />\r\n");
      out.write("            </div>\r\n");
      out.write("            \r\n");
      out.write("            <div class=\"glidecontent\">\r\n");
      out.write("            <img src=\"images/temp2.jpg\" alt=\"image\" />\r\n");
      out.write("            </div>\r\n");
      out.write("            \r\n");
      out.write("            <div class=\"glidecontent\">\r\n");
      out.write("            <img src=\"images/TEMP1.jpg\" alt=\"image\" />\r\n");
      out.write("            </div>\r\n");
      out.write("            \r\n");
      out.write("            </div>\r\n");
      out.write("            \r\n");
      out.write("            <div id=\"p-select\" class=\"cssbuttonstoggler\">\r\n");
      out.write("            <a href=\"#\" class=\"toc\"><span>1</span></a> <a href=\"#\" class=\"toc\"><span>2</span></a> <a href=\"#\" class=\"toc\"><span>3</span></a>\r\n");
      out.write("            \r\n");
      out.write("            </div>\r\n");
      out.write("        \r\n");
      out.write("        \r\n");
      out.write("        </div> <!-- end of templatemo_banner -->\r\n");
      out.write("    \t    \r\n");
      out.write("    \r\n");
      out.write("    \t<div id=\"content\">\r\n");
      out.write("        \r\n");
      out.write("        \t<div class=\"full_width\" style=\"background-color:#C2D6FF; border:2px solid #6699FF; height:750px;\">\r\n");
      out.write("        \t<center><br><br>\r\n");
      out.write("        \t<h1><span id=\"msg\" style=\"font-family: serif;color: maroon;size: 5cm;\"></span></h1>\r\n");
      out.write("        \t<table cellpadding=\"5\" cellspacing=\"5\" bgcolor=\"silver\" border=\"2\" style=\"border-color: silver;\">\r\n");
      out.write("<th colspan=\"2\">\r\n");
      out.write("<font size=\"5\">Staff Registration</font><br>\r\n");
      out.write("</th>\r\n");
      out.write("\r\n");
      out.write("<tr style=\"font-family:monospace; font-size: 20px; color: maroon;\"><td align=\"right\"><b>Staff Name :</b></td><td><input type=\"text\"  name=\"username\" id=\"username\" size=\"20\" maxlength=\"20\"></input></td></tr>\r\n");
      out.write("<tr style=\"font-family:monospace; font-size: 20px; color: maroon;\"><td align=\"right\"><b>Date of Birth:</b></td><td><input type=\"text\" name=\"date1\" id=\"date1\" size=\"20\" maxlength=\"20\"></input></td></tr>\r\n");
      out.write("<tr style=\"font-family:monospace; font-size: 20px; color: maroon;\"><td align=\"right\"><b>Project Name:</b></td><td><select name=\"proj\" id=\"proj\" style=\"width: 4cm;\"><option value=\"Select\">Select</option><option value=\"Java\">Java</option><option value=\"Web\">Web</option><option value=\"Health Care\">Health Care</option><option value=\"CMS\">CMS</option></select></td></tr>\r\n");
      out.write("<tr style=\"font-family:monospace; font-size: 20px; color: maroon;\"><td align=\"right\"><b>Location:</b></td><td><select name=\"loc\" id=\"loc\" style=\"width: 4cm;\"><option value=\"Select\">Select</option><option value=\"T.Nagar\">T.Nagar</option><option value=\"Navaloor\">Navaloor</option><option value=\"Vadapalani\">Vadapalani</option><option value=\"Tambaram\">Tambaram</option></select></td></tr>\r\n");
      out.write("<tr style=\"font-family:monospace; font-size: 20px; color: maroon;\"><td align=\"right\"><b>Designation:</b></td><td><select name=\"dsgn\" id=\"dsgn\"style=\"width: 4cm;\"><option value=\"Select\">Select</option><option value=\"PM\">PM</option><option value=\"TL\">TL</option><option value=\"SSE\">SSE</option><option value=\"JSE\">JSE</option></select></td></tr>\r\n");
      out.write("<tr style=\"font-family:monospace; font-size: 20px; color: maroon;\"><td align=\"right\"><b>Company Mail Id:</b></td><td><input type=\"text\" name=\"mail\" id=\"mail\" size=\"20\" maxlength=\"35\"></input></td></tr>\r\n");
      out.write("<tr style=\"font-family:monospace; font-size: 20px; color: maroon;\"><td align=\"right\"><b>Personal Mail Id:</b></td><td><input type=\"text\" name=\"pmail\" id=\"pmail\" size=\"20\" maxlength=\"35\"></input></td></tr>\r\n");
      out.write("<tr style=\"font-family:monospace; font-size: 20px; color: maroon;\"><td align=\"right\"><b>Mobile Number:</b></td><td><input type=\"text\" name=\"mobile\" id=\"mobile\" size=\"20\" maxlength=\"20\"\"></input></td></tr>\r\n");
      out.write("<tr style=\"font-family:monospace; font-size: 20px; color: maroon;\"><td align=\"right\"><b>User Name:</b></td><td><input type=\"text\" name=\"uName\" id=\"uName\" size=\"20\" maxlength=\"20\"></input></td></tr>\r\n");
      out.write("<tr style=\"font-family:monospace; font-size: 20px; color: maroon;\"><td align=\"right\"><b>Password:</b></td><td><input type=\"password\" name=\"pass\" id=\"pass\" size=\"20\" maxlength=\"20\"></input></td></tr>\r\n");
      out.write("<tr style=\"font-family:monospace; font-size: 20px; color: maroon;\"><td align=\"right\"><b>Home Location:</b></td><td><input type=\"text\" name=\"hloc\" id=\"hloc\" size=\"20\" maxlength=\"35\"></input></td></tr>\r\n");
      out.write("\r\n");
      out.write("<tr style=\"font-family:monospace; font-size: 20px; color: maroon;\"><td align=\"right\"><b>Vehicle Type:</b></td><td><select style=\"width: 4cm;\" name=\"sel\" id=\"sel\"><option value=\"selct\">Select</option><option value=\"Two-wheeler\">Two-wheeler</option><option value=\"Four-wheeler\">Four-wheeler</option></select></td></tr>\r\n");
      out.write("</table><br><br>\r\n");
      out.write("\r\n");
      out.write("<input type=\"submit\" name=\"submit\" value=\"Click To Register\" border=\"2\"style=\"border: 2;background-color:maroon;font-family: serif;color: white;\" onclick=\"verify();\"></input><br><br>\r\n");
      out.write("<br>\r\n");
      out.write("<input type=\"submit\" value=\"Back\" border=\"2\" width=\"5cm;\" onclick=\"window.location.href='welcome.html'\" style=\"border: 2;background-color: maroon;font-family: serif;color: white; width: 4cm;\"><br><br>\r\n");
      out.write("</center>\r\n");
      out.write("</div> <!-- end of content -->\r\n");
      out.write("        </div>\r\n");
      out.write("        </div>\r\n");
      out.write("</div><div id=\"templatemo_content_wrapper_bottom\"></div> <!-- end of templatemo_wrapper -->\r\n");
      out.write("\r\n");
      out.write("        <div id=\"templatemo_footer\">\r\n");
      out.write("   \t   </div>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
