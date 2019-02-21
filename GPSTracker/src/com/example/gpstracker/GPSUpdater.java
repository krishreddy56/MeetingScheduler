package com.example.gpstracker;

import android.app.Activity;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.telephony.TelephonyManager;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

public class GPSUpdater extends Activity {

	private Handler mHandler;
	EditText lat,longi;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_gpsupdater);
		
		//Refresh
		this.mHandler = new Handler();

	    this.mHandler.postDelayed(m_Runnable,5000);
		
		
		 lat=(EditText)findViewById(R.id.latitude);
		//lat.setText(SharedValues.GpsData.latitude);
		 longi=(EditText)findViewById(R.id.longitude);
		//longi.setText(SharedValues.GpsData.longitude);
		
		Button start_sync=(Button)findViewById(R.id.start_sync);
		start_sync.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				final TelephonyManager tm=(TelephonyManager)getApplicationContext().getSystemService(Context.TELEPHONY_SERVICE);
				SharedValues.imei=tm.getDeviceId().toString();
				setAlarmAndFinishThis();
				Toast.makeText(GPSUpdater.this, "Started to Sync",Toast.LENGTH_LONG).show();
			}
		});
		
		Button stop_sync=(Button)findViewById(R.id.stop_sync);
		stop_sync.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
			
				Intent intentstop = new Intent(GPSUpdater.this, AlarmReceiver.class);
				PendingIntent senderstop = PendingIntent.getBroadcast(GPSUpdater.this,0, intentstop, 0);
				AlarmManager alarmManagerstop = (AlarmManager) getSystemService(ALARM_SERVICE);
				alarmManagerstop.cancel(senderstop);
				Toast.makeText(GPSUpdater.this, "Started to Sync",Toast.LENGTH_LONG).show();
				Log.d("Stop Alarm","Alarm stopped");
				
				//stopService(new Intent(GPSUpdater.this,BackgroundService.class));
			}
		});
		
		
	}
	
	private final Runnable m_Runnable = new Runnable()
	{
	    public void run()

	    {
//	        Toast.makeText(GPSUpdater.this,"in runnable",Toast.LENGTH_SHORT).show();

	        GPSUpdater.this.mHandler.postDelayed(m_Runnable, 10000);
	        lat.setText(SharedValues.GpsData.latitude);
	        longi.setText(SharedValues.GpsData.longitude);
	    }

	};
	
	
	private void setAlarmAndFinishThis() {
		Intent alarmReceiverIntent = new Intent(GPSUpdater.this,AlarmReceiver.class);

		PendingIntent pendingIntent = PendingIntent.getBroadcast(GPSUpdater.this,
				0, alarmReceiverIntent, 0);

		AlarmManager alarmMgr = (AlarmManager) getSystemService(ALARM_SERVICE);

		alarmMgr.setRepeating(AlarmManager.ELAPSED_REALTIME_WAKEUP, 0,
				SharedValues.GPS_DATA_POLLING_INTERVAL_IN_MIN * 300 * 1000,
				pendingIntent);

		//finish();		
}	
}
