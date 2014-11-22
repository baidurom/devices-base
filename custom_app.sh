apkBaseName=$1
tempSmaliDir=$2

if [ "$apkBaseName" = "Settings" ];then
        echo ">>> in custom_app for $apkBaseName to disadble select runtime"
	sed -i 's#android:title="@string/select_runtime_title" android:key="select_runtime"#android:title="@string/select_runtime_title" android:selectable="false" android:key="select_runtime"#g' $tempSmaliDir/res/xml/development_prefs.xml

elif [ "$apkBaseName" = "HomePro" ];then
        echo ">>> in custom_app for $apkBaseName to add some permissions for android 4.4.4"
        sed -i '/<uses-permission android:name="android.permission.VIBRATE" \/>/a\<uses-permission android:name="android.permission.MANAGE_DEVICE_ADMINS" \/>' $tempSmaliDir/AndroidManifest.xml

fi

