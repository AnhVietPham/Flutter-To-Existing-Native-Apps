package com.avp.anative

import android.content.Intent
import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import kotlinx.android.synthetic.main.activity_main.*

class MainActivity : AppCompatActivity() {

    companion object {
        const val FLUTTER_ONE = "flutter1"
        const val FLUTTER_TWO = "flutter2"
        const val FLUTTER_TREE = "flutter3"
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        btnOpenFlutter1.setOnClickListener {
            val intent = Intent(this, DemoFlutterActivity::class.java)
                .putExtra("route", FLUTTER_ONE)
            intent.flags = Intent.FLAG_ACTIVITY_NEW_TASK
            startActivity(intent)
        }

        btnOpenFlutter2.setOnClickListener {
            val intent = Intent(this, DemoFlutterActivity::class.java)
                .putExtra("route", FLUTTER_TWO)
            intent.flags = Intent.FLAG_ACTIVITY_NEW_TASK
            startActivity(intent)
        }

        btnOpenFlutter3.setOnClickListener {
            val intent = Intent(this, DemoFlutterActivity::class.java)
                .putExtra("route", FLUTTER_TREE)
            intent.flags = Intent.FLAG_ACTIVITY_NEW_TASK
            startActivity(intent)
        }
    }
}
