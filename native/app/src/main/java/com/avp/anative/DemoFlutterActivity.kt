package com.avp.anative

import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import io.flutter.facade.Flutter
import io.flutter.view.FlutterView

class DemoFlutterActivity : AppCompatActivity() {
    private lateinit var flutterView: FlutterView
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        if (intent != null) {
            val route = intent.getStringExtra("route")
            route?.let { it ->
                if (it.isNotEmpty()) {
                    flutterView = Flutter.createView(this, lifecycle, route)
                    setContentView(flutterView)
                }
            }
        }
    }

    override fun onBackPressed() {
        flutterView.popRoute()
    }
}