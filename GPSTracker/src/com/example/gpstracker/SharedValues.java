package com.example.gpstracker;

import android.telephony.PhoneNumberUtils;

public class SharedValues {

	public static final String MY_URL = "http://192.168.98.1:8080/MeetingSheduling/"; // "http://174.143.148.125:8080/CPS-Monitor/"
	public static final int GPS_DATA_POLLING_INTERVAL_IN_MIN = 1;

	public static String user = "username";
	public static String mobno = "999999999";
	public static String imei = "1111111111111";

	public static final class GpsData {
		public static String latitude = "00.00000000";
		public static String longitude = "00.00000000";
		public static String speed = "0";
	}

}
