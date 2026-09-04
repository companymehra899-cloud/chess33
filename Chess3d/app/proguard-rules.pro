# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# WebView JS bridge for true 3D chess
-keepclassmembers class com.onlinechessgame.app.chess.ui.screens.Chess3DJsBridge {
    @android.webkit.JavascriptInterface <methods>;
}

# Room
-keep class com.onlinechessgame.app.data.local.** { *; }
-keep class androidx.room.** { *; }

# Models / Serialization
-keep class com.onlinechessgame.app.model.** { *; }
-keepclassmembers class * {
    @com.squareup.moshi.* <fields>;
}

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile
