/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.35
 * Generated at: 2016-04-12 08:28:25 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class adminlogin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n");
      out.write("<title>My Cloud Space</title>\r\n");
      out.write("<meta name=\"keywords\" content=\"free css, web template, cloudy\" />\r\n");
      out.write("<meta name=\"description\" content=\"Cloudy - free website template provided by templatemo.com\" />\r\n");
      out.write("<link href=\"templatemo_style.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"css/featuredcontentglider.css\" />\r\n");
      out.write("\t<link rel=\"stylesheet\" href=\"nivo-slider.css\" type=\"text/css\" media=\"screen\" />\r\n");
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
      out.write("function validate(){\r\n");
      out.write("\t\r\n");
      out.write("\tvar name=document.getElementById(\"username\").value;\r\n");
      out.write("\t\r\n");
      out.write("\tvar pwd=document.getElementById(\"psswd\").value;\r\n");
      out.write("\r\n");
      out.write("\tdocument.getElementById(\"pass\").innerHTML=\"\";\r\n");
      out.write("\r\n");
      out.write("\tdocument.getElementById(\"user123\").innerHTML=\"\";\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\tif(name==\"\"){\r\n");
      out.write("\t\tdocument.getElementById(\"pass\").innerHTML=\"\";\r\n");
      out.write("\t\t\r\n");
      out.write("\t\tdocument.getElementById(\"user123\").innerHTML=\"EnterUserName\";\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t}\r\n");
      out.write("\tif(pwd==\"\"){\r\n");
      out.write("\t\tdocument.getElementById(\"user123\").innerHTML=\"\";\r\n");
      out.write("\t\t\r\n");
      out.write("\t\tdocument.getElementById(\"pass\").innerHTML=\"Enter Password\";\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t\t}\r\n");
      out.write("\treturn true;\t\r\n");
      out.write("}\r\n");
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
      out.write("        \t<div class=\"full_width\" style=\"background-color:#C2D6FF; border:2px solid #6699FF;\">\r\n");
      out.write("        \t\r\n");
      out.write("        \t\r\n");
      out.write("           <center>\r\n");
      out.write("           <form action=\"admin.jsp\" onsubmit=\"return validate();\">\r\n");
      out.write("      <table  cellpadding=\"10\" cellspacing=\"10\">\r\n");
      out.write("      <tr><td>User Name:</td><td><input type=\"text\" name=\"username\" id=\"username\"></input></td><td><span id=\"user123\"></span></td></tr>\r\n");
      out.write("      <tr><td>Password:</td><td><input type=\"password\" name=\"psswd\" id=\"psswd\"></input></td><td><span id=\"pass\"></span></td></tr>\r\n");
      out.write("      <tr><td><input type=\"submit\" value=\"Login\" style=\"border: 2;background-color: maroon;font-family: serif;color: white;\"></input></td><td><input type=\"reset\" style=\"border: 2;background-color: maroon;font-family: serif;color: white;\"></input></td></tr>\r\n");
      out.write("      </table>\r\n");
      out.write("      </form>\r\n");
      out.write("           </center>\r\n");
      out.write("        \r\n");
      out.write("\t\t</div> <!-- end of content -->\r\n");
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