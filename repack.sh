
# apk路径
APK_NAME=zan
INPUT_APK=input/${APK_NAME}.apk
OUTPUT_PATH=output
OUTPUT_APK=output/${APK_NAME}_new.apk

# rm -r -f $OUTPUT_PATH/$APK_NAME
rm -r -f $OUTPUT_APK

# apktool d $INPUT_APK --only-main-classes -o $OUTPUT_PATH/$APK_NAME
apktool b $OUTPUT_PATH/$APK_NAME  -o $OUTPUT_APK

apksigner sign --ks keystore/nsky.jks --ks-key-alias nsky  --ks-pass pass:999999 $OUTPUT_APK
