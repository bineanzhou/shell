echo "解包:apkshell d apkname"
echo "重新打包:apkshell b apkname"
echo "签名:apkshell sign apkname"
echo "自动化 解包->重新打包->签名:apkshell a apkname"

# echo "执行的文件名：$0";
ACTION=$1
# apk路径
APK_NAME=$2
if [ "$APK_NAME" = "" ]; then
    APK_NAME="snakemerge_9"
fi
INPUT_APK=input/${APK_NAME}.apk
OUTPUT_PATH=output
OUTPUT_APK=output/${APK_NAME}_new.apk

echo "参数：$ACTION"
echo "APK_NAME:$APK_NAME"

if [ "$ACTION" = "d" ] || [ "$ACTION" = "a" ]; then
    # 删除目录 解包
    rm -r -f $OUTPUT_PATH/$APK_NAME
    apktool d $INPUT_APK --only-main-classes -o $OUTPUT_PATH/$APK_NAME
fi

if [ "$ACTION" = "b" ] || [ "$ACTION" = "a" ]; then
    # 删除文件 打包
    rm -r -f $OUTPUT_APK
    apktool b $OUTPUT_PATH/$APK_NAME -o $OUTPUT_APK
fi

if [ "$ACTION" = "sign" ] || [ "$ACTION" = "a" ]; then
    # 签名
    apksigner sign --ks keystore/nsky.jks --ks-key-alias nsky --ks-pass pass:999999 $OUTPUT_APK
fi
