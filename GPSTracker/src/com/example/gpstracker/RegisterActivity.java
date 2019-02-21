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

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

public class RegisterActivity extends Activity {

	HttpClient httpClient;
	HttpPost httpPost;
	HttpResponse httpResponse;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_register);
		
		final EditText user=(EditText)findViewById(R.id.uname);
		final EditText mob=(EditText)findViewById(R.id.mob);
		
		final TelephonyManager tm=(TelephonyManager)getApplicationContext().getSystemService(Context.TELEPHONY_SERVICE);
		
		Button submit=(Button) findViewById(R.id.submit);
		
		submit.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				
				SharedValues.user=user.getText().toString();
				SharedValues.mobno=mob.getText().toString();
				SharedValues.imei=tm.getDeviceId().toString();
				new Thread()
				{
					public void run() {
						
						try {
							
							httpClient = new DefaultHttpClient();
							httpPost = new HttpPost(SharedValues.MY_URL + "ParameterServlet");
							List<NameValuePair> nameValuePair = new ArrayList<NameValuePair>();
							nameValuePair.add(new BasicNameValuePair("flag","0"));
							nameValuePair.add(new BasicNameValuePair("user", SharedValues.user));
							nameValuePair.add(new BasicNameValuePair("mob", SharedValues.mobno));
							nameValuePair.add(new BasicNameValuePair("imei", SharedValues.imei));
							httpPost.setEntity(new UrlEncodedFormEntity(nameValuePair));
							httpResponse = httpClient.execute(httpPost);
							startActivity(new Intent(RegisterActivity.this,GPSUpdater.class));
							
						}
						catch(Exception e) {
							Toast.makeText(RegisterActivity.this, "Mobile numebr Not Registered", Toast.LENGTH_LONG).show();
							Log.d("Registration Failed", "Mobile numebr Not Registered"+e);
						}
					}
				}.start();
				
				
			}
		});
		
	}


}
