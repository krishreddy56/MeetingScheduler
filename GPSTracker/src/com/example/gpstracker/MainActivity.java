package com.example.gpstracker;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;

public class MainActivity extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		Button reg_button=(Button)findViewById(R.id.Register);
		reg_button.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
			
				
				startActivity(new Intent(MainActivity.this,RegisterActivity.class));
				
			}
		});
		Button sync_button=(Button)findViewById(R.id.Sync_to_Server);
		sync_button.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				startActivity(new Intent(MainActivity.this,GPSUpdater.class));
				
			}
		});
		
	}


}
