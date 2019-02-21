<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*,java.sql.*"%>
<%@ page import="java.util.Date,java.text.*"%>
<%!Connection con = null;
	Statement st = null;
	ResultSet rs = null;%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Updation</title>
</head>
<body>
<%
	try {
		String val = request.getQueryString();
		String[] splitVal = null;
		if (val != null) {
			splitVal = val.split("&");
		}
		HashMap queryParams = new HashMap();
		if (splitVal != null && splitVal.length > 2) {
			for (int init = 0; init < splitVal.length; init++) {
				String[] values = splitVal[init].split("=");
				if (values != null && values.length > 1) {
					queryParams.put(values[0], values[1]);
				}
			}
		}

		String driver = "com.mysql.jdbc.Driver";

		String url = "jdbc:mysql://localhost:3306/meetingsheduler";

		Class.forName(driver);

		con = DriverManager.getConnection(url, "root", "root");

		st = con.createStatement();
		
		System.out.println("====query params==>"+queryParams);

		//String query="insert into userlocation values('"+queryParams.get("name")+"','"+queryParams.get("mobile")+"','"+queryParams.get("lat")+"','"+queryParams.get("lng")+"',now())";

		rs = st
				.executeQuery("select * from userinformation where username='"
						+ queryParams.get("name")
						+ "' and mobilenumber='"
						+ queryParams.get("mobile") + "'");
		if (rs.next()) {
			out.println(queryParams.get("lat"));
			out.println(queryParams.get("lng"));

			int insert = st
					.executeUpdate("update userinformation set latitude='"
							+ queryParams.get("lat")
							+ "', longitude='"
							+ queryParams.get("lng")
							+ "' where username='"
							+ queryParams.get("name") + "' ");
			if (insert != 0) {
				out.println("updated");
			}

		}
	} catch (Exception ex) {
		ex.printStackTrace();

	} finally {
		con.close();
		st.close();
		rs.close();

	}
%>
</body>
</html>