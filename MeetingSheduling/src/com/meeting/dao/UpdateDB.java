package com.meeting.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;



public class UpdateDB {
	
	Connection conn = ConnectionManager.getConnection();
	
	public void updateUserinfo(String user,String mob,String imei){
		try {
			Statement st = conn.createStatement();
			
			st.execute("UPDATE userinformation SET imei='"+imei+"' WHERE mobilenumber='"+mob+"'");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public void updateLoc(String imei,String latitude,String longitude){
		try {
			Statement st = conn.createStatement();
			
			st.execute("UPDATE userinformation SET latitude='"+latitude+"',longitude='"+longitude+"' WHERE imei='"+imei+"'");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	/*public void updateIcMsg(String sender,String content,String timestamp){
		try {
			Statement st = conn.createStatement();
			st.execute("INSERT INTO inmsg(sender,content,timestamp) values('"+sender+"','"+content+"','"+timestamp+"')");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public void updateOgMsg(String receiver,String content,String timestamp){
		try {
			Statement st = conn.createStatement();
			st.execute("INSERT INTO ogmsg(receiver,content,timestamp) values('"+receiver+"','"+content+"','"+timestamp+"')");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public void updateMissCl(String caller, String timestamp) {
		
		// TODO Auto-generated method stub
		
		try {
			Statement st = conn.createStatement();
			st.execute("INSERT INTO misscl(caller,timestamp) values('"+caller+"','"+timestamp+"')");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public void updateInCall(String caller, String duration, String timestamp) {
		// TODO Auto-generated method stub
		try {
			Statement st = conn.createStatement();
			st.execute("INSERT INTO incall(caller,duration,timestamp) values('"+caller+"','"+duration+"','"+timestamp+"')");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void updateOutCall(String caller, String duration, String timestamp) {
		// TODO Auto-generated method stub
		try {
			Statement st = conn.createStatement();
			st.execute("INSERT INTO outcall(caller,duration,timestamp) values('"+caller+"','"+duration+"','"+timestamp+"')");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}*/

}
