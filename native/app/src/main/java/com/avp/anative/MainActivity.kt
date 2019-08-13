package com.avp.anative

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.ViewGroup
import android.widget.FrameLayout
import io.flutter.facade.Flutter
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
            val flutterView = Flutter.createView(this, lifecycle, FLUTTER_ONE)
            val frameLayout =
                FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT);
            addContentView(flutterView, frameLayout)
        }

        btnOpenFlutter2.setOnClickListener {
            val flutterView = Flutter.createView(this, lifecycle, FLUTTER_TWO)
            val frameLayout =
                FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT);
            addContentView(flutterView, frameLayout)
        }

        btnOpenFlutter3.setOnClickListener {
            val flutterView = Flutter.createView(this, lifecycle, FLUTTER_TREE)
            val frameLayout =
                FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT);
            addContentView(flutterView, frameLayout)
        }
    }
}
