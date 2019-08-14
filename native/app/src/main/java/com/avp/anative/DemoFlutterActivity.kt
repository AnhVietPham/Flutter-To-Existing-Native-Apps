package com.avp.anative

import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import io.flutter.facade.Flutter

class DemoFlutterActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        if (intent != null) {
            val route = intent.getStringExtra("route")
            route?.let { it ->
                if (it.isNotEmpty()) {
                    val flutterView = Flutter.createView(this, lifecycle, route)
                    setContentView(flutterView)
                }
            }
        }
    }
}