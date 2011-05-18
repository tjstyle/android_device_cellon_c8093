#!/system/bin/sh
product_id=`getprop persist.sys.usbcomposition.id`
case "$product_id" in
    "")
     product_id="f000"
    ;;
esac
#echo "$product_id"
log -t "switch_usb" -p e "switch product_id $product_id "
echo "$product_id" > /sys/module/g_android/parameters/product_id
