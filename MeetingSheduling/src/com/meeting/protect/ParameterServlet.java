
package com.meeting.protect;

import com.meeting.dao.UpdateDB;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ParameterServlet
 */

public class ParameterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	UpdateDB updb =  new UpdateDB();   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ParameterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flag = request.getParameter("flag").toString();
		
		int flag_value = Integer.parseInt(flag);
		System.out.println(flag_value);
		if(flag_value == 0){
			// for co-ordinates 
			System.out.println(request.getParameter("user").toString());
			String user = request.getParameter("user").toString();
			String mob = request.getParameter("mob").toString();
			System.out.println(request.getParameter("mob").toString());
			String imei = request.getParameter("imei").toString();
			System.out.println(request.getParameter("imei").toString());
			
			updb.updateUserinfo(user, mob,imei);//, timestamp);
			}
		if(flag_value == 1){
			// for co-ordinates 
			String imei = request.getParameter("imei").toString();
			System.out.println(request.getParameter("imei").toString());
			System.out.println(request.getParameter("latitude").toString());
			String latitude = request.getParameter("latitude").toString();
			String longitude = request.getParameter("longitude").toString();
			System.out.println(request.getParameter("longitude").toString());
			updb.updateLoc(imei, latitude,longitude);//, timestamp);
			}
	}
}
