apkBaseName=$1
tempSmaliDir=$2

if [ "$apkBaseName" = "TeleService" ];then
        echo ">>> in custom_app for $apkBaseName to add some permissions for android 4.4.4"
	sed -i '/<original-package android:name="com.android.phone" \/>/a\<uses-permission android:name="android.permission.SET_PREFERRED_APPLICATIONS" \/>' $tempSmaliDir/AndroidManifest.xml

elif [ "$apkBaseName" = "Keyguard" ];then
        echo ">>> in custom_app for $apkBaseName to add some permissions for android 4.4.4"
	sed -i '/<uses-permission android:name="android.permission.VIBRATE" \/>/a\<uses-permission android:name="android.permission.ACCESS_KEYGUARD_SECURE_STORAGE" \/>' $tempSmaliDir/AndroidManifest.xml

elif [ "$apkBaseName" = "Contacts" ];then
        echo ">>> in custom_app for $apkBaseName to add some permissions for android 4.4.4"
	sed -i '/<uses-permission android:name="android.permission.VIBRATE" \/>/a\<uses-permission android:name="android.permission.SET_PREFERRED_APPLICATIONS" \/>' $tempSmaliDir/AndroidManifest.xml

elif [ "$apkBaseName" = "MediaProvider" ];then
        echo ">>> in custom_app for $apkBaseName to adjust interface"
	sed -i 's#invoke-static/range {.*}, Landroid/os/FileUtils;->getFatVolumeId(Ljava/lang/String;)I#invoke-direct/range {p0 .. p0}, Lcom/android/providers/media/MediaProvider;->getExternalStorageFatVolumeId()I#g' $tempSmaliDir/smali/com/android/providers/media/MediaProvider.smali

elif [ "$apkBaseName" = "Settings" ];then
        echo ">>> in custom_app for $apkBaseName to disadble select runtime"
	sed -i 's#android:entryValues="@array/select_runtime_values"#android:entryValues="@array/select_runtime_values" android:selectable="false"#g' $tempSmaliDir/res/xml/development_prefs.xml

fi

