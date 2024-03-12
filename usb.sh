sleep 1
setprop persist.security.adbinstall 1
setprop persist.security.adbinput 1
setprop persist.fastboot.enable 1
sleep 5
am force-stop com.miui.securitycenter
sleep 2
sed -i '267i\<boolean name="permcenter_install_intercept_enabled" value="false" />\n<boolean name="security_adb_install_enable" value="true" />' /data/data/com.miui.securitycenter/shared_prefs/emote_provider_preferences.xml
sed -i 's/<boolean name="perm_adb_install_notify" value="true" \/>/<boolean name="perm_adb_install_notify" value="false" \/>/' /data/data/com.miui.securitycenter/shared_prefs/remote_provider_preferences.xml
