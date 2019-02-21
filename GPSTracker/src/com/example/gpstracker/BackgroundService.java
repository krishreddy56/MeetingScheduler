package com.example.gpstracker;

import java.util.ArrayList;
import java.util.List;



import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;

public class BackgroundService extends Service {
	private static LocationManager locationManager;
	private static LocationListener locationListener;
	private static Location newLocation, currentBestLocation;


	private Thread thread;
	
	HttpClient httpClient;
	HttpPost httpPost;
	HttpResponse httpResponse;

	@Override
	public void onCreate() {
		locationManager = (LocationManager) getSystemService(Context.LOCATION_SERVICE);

		// Define a listener that responds to location updates
		locationListener = new LocationListener() {
			public void onLocationChanged(Location location) {
				Log.d("Location Changed", "Location Changed"+location.getLatitude()+location.getLongitude());
				/*if (SharedMethods.isBetterLocation(location,
						currentBestLocation)) {
				}*/
				currentBestLocation = location;
				SharedMethods.setGpsData(currentBestLocation);

			}

			public void onStatusChanged(String provider, int status,
					Bundle extras) {
			}

			public void onProviderEnabled(String provider) {
			}

			public void onProviderDisabled(String provider) {
			}
		};

		startBgProcesses();
	}

	@Override
	public void onDestroy() {
		super.onDestroy();

		if ((locationListener != null) && (locationManager != null)) {
			locationManager.removeUpdates(locationListener);
		}

		if (thread != null) {
			thread.interrupt();
		}

	}

	public int onStartCommand(Intent intent, int flags, int startId) {

		// We want this service to continue running until it is explicitly
		// stopped, so return sticky.
		return START_STICKY;
	}

	private void startBgProcesses() {

		currentBestLocation = locationManager
				.getLastKnownLocation(LocationManager.GPS_PROVIDER);
		newLocation = locationManager
				.getLastKnownLocation(LocationManager.NETWORK_PROVIDER);

		if (SharedMethods.isBetterLocation(newLocation, currentBestLocation)) {
			currentBestLocation = newLocation;
		}
		SharedMethods.setGpsData(currentBestLocation);

		// Register the listener with the Location Manager to receive location
		// updates
		locationManager.requestLocationUpdates(LocationManager.GPS_PROVIDER, 0,
				0, locationListener);
	locationManager.requestLocationUpdates(
				LocationManager.NETWORK_PROVIDER, 0, 0, locationListener);

		thread = new Thread() {
			public void run() {
				try {
					
					httpClient = new DefaultHttpClient();
					httpPost = new HttpPost(SharedValues.MY_URL + "ParameterServlet");
					List<NameValuePair> nameValuePair = new ArrayList<NameValuePair>();
					nameValuePair.add(new BasicNameValuePair("flag","1"));
					nameValuePair.add(new BasicNameValuePair("imei", SharedValues.imei));
					nameValuePair.add(new BasicNameValuePair("latitude", SharedValues.GpsData.latitude));
					nameValuePair.add(new BasicNameValuePair("longitude", SharedValues.GpsData.longitude));
					httpPost.setEntity(new UrlEncodedFormEntity(nameValuePair));
					httpResponse = httpClient.execute(httpPost);
				}
				catch(Exception e) {
					Log.d("Exception in updating location", ""+e.toString());
				}
				stopSelf();
			}
		};

		thread.start();
	}

	@Override
	public IBinder onBind(Intent intent) {
		return null;
	}
	
	/*void removeLoc()
	{
		locationManager.removeUpdates(locationListener);
	}*/
	@Override
	public void unbindService(ServiceConnection conn) {
		// TODO Auto-generated method stub
		super.unbindService(conn);
		Log.d("Location Update","Location Update stopped");
		locationManager.removeUpdates(locationListener);
	}
	
}
