package com.qh.pm;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;

import com.qh.hookdemo.BuildConfig;
import com.qh.utils.QLog;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;

import static android.content.pm.PackageManager.GET_SIGNATURES;

public class SignatureManager {

    private static final String TAG = "SignatureManager";

    public static final String SIGN_HOOK = "48,-126,2,-21,48,-126,2,84,-96,3,2,1,2,2,4,77,54,-9,-92,48,13,6,9,42,-122,72,-122,-9,13,1,1,5,5,0,48,-127,-71,49,11,48,9,6,3,85,4,6,19,2,56,54,49,18,48,16,6,3,85,4,8,19,9,71,117,97,110,103,100,111,110,103,49,17,48,15,6,3,85,4,7,19,8,83,104,101,110,122,104,101,110,49,53,48,51,6,3,85,4,10,19,44,84,101,110,99,101,110,116,32,84,101,99,104,110,111,108,111,103,121,40,83,104,101,110,122,104,101,110,41,32,67,111,109,112,97,110,121,32,76,105,109,105,116,101,100,49,58,48,56,6,3,85,4,11,19,49,84,101,110,99,101,110,116,32,71,117,97,110,103,122,104,111,117,32,82,101,115,101,97,114,99,104,32,97,110,100,32,68,101,118,101,108,111,112,109,101,110,116,32,67,101,110,116,101,114,49,16,48,14,6,3,85,4,3,19,7,84,101,110,99,101,110,116,48,30,23,13,49,49,48,49,49,57,49,52,51,57,51,50,90,23,13,52,49,48,49,49,49,49,52,51,57,51,50,90,48,-127,-71,49,11,48,9,6,3,85,4,6,19,2,56,54,49,18,48,16,6,3,85,4,8,19,9,71,117,97,110,103,100,111,110,103,49,17,48,15,6,3,85,4,7,19,8,83,104,101,110,122,104,101,110,49,53,48,51,6,3,85,4,10,19,44,84,101,110,99,101,110,116,32,84,101,99,104,110,111,108,111,103,121,40,83,104,101,110,122,104,101,110,41,32,67,111,109,112,97,110,121,32,76,105,109,105,116,101,100,49,58,48,56,6,3,85,4,11,19,49,84,101,110,99,101,110,116,32,71,117,97,110,103,122,104,111,117,32,82,101,115,101,97,114,99,104,32,97,110,100,32,68,101,118,101,108,111,112,109,101,110,116,32,67,101,110,116,101,114,49,16,48,14,6,3,85,4,3,19,7,84,101,110,99,101,110,116,48,-127,-97,48,13,6,9,42,-122,72,-122,-9,13,1,1,1,5,0,3,-127,-115,0,48,-127,-119,2,-127,-127,0,-64,95,52,-78,49,-80,-125,-5,19,35,103,11,-5,-25,-67,-85,64,-64,-64,-90,-17,-56,126,-14,7,42,31,-16,-42,12,-58,124,-114,-37,13,8,71,-14,16,-66,-90,-53,-6,-94,65,-66,112,-56,109,-81,86,-66,8,-73,35,-56,89,-27,36,40,-96,100,85,93,-128,-37,68,-116,-36,-84,-63,-82,-94,80,30,-70,6,-8,-70,-47,42,79,-92,-99,-123,-54,-51,122,-66,-74,-119,69,-91,-53,94,6,22,41,-75,46,50,84,-61,115,85,14,-28,-28,12,-73,-56,-82,111,122,-127,81,-52,-40,-33,88,45,68,111,57,-82,12,94,-109,2,3,1,0,1,48,13,6,9,42,-122,72,-122,-9,13,1,1,5,5,0,3,-127,-127,0,-100,-115,-99,127,47,-112,-116,66,8,27,76,118,76,55,113,9,-88,-78,-57,5,-126,66,33,37,-50,84,88,66,-43,-11,32,-82,-90,-107,80,-74,-67,-117,-3,-108,-23,-121,-73,90,48,119,-21,4,-83,52,31,72,26,-84,38,110,-119,-45,-122,68,86,-26,-97,-70,19,-33,1,-118,-51,-63,104,-71,-95,-99,-3,122,-39,-39,-52,111,106,-50,87,-57,70,81,95,113,35,77,-13,-96,83,-29,59,-87,62,-50,92,-48,-4,21,-13,-29,-119,-93,-13,101,88,-118,-97,-53,67,-98,6,-99,54,41,-51,119,50,-95,63,-1,123,-119,20,-103";

    private static Context appContext;

    public static void hookSign(Context context, String packageName, String sign) {
        appContext = context;
        QLog.d("real sign");
        SignatureManager.dumpSign(appContext);
        ServiceManagerWraper.hookPMS(context, packageName, sign);

        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
            @Override
            public void run() {
                QLog.d("hook sign");
                SignatureManager.dumpSign(appContext);
            }
        }, 200);

    }

    public static String getAllAppSign(Context context, String packageName) {
        if (TextUtils.isEmpty(packageName))
            return "";
        String pkg = packageName.trim();
        try {
            PackageInfo info = context.getPackageManager().getPackageInfo(pkg.trim(), GET_SIGNATURES);
            byte[] signatures = info.signatures[0].toByteArray();
            StringBuilder builder = new StringBuilder();
            for (int i = 0; i < signatures.length - 1; i++) {
                builder.append(((int) signatures[i]) + ",");
            }
            builder.append((int) signatures[signatures.length - 1]);
            if (BuildConfig.DEBUG) {
                QLog.d(TAG, packageName + " sign:" + builder.toString());
                QLog.d(TAG, packageName + " hashCode:" + info.signatures[0].hashCode());
            }
            return builder.toString();
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public static String md5(byte[] byteStr) {
        MessageDigest messageDigest = null;
        StringBuffer md5StrBuff = new StringBuffer();
        try {
            messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.reset();
            messageDigest.update(byteStr);
            byte[] byteArray = messageDigest.digest();
//            return Base64.encodeToString(byteArray,Base64.NO_WRAP);
            for (int i = 0; i < byteArray.length; i++) {
                if (Integer.toHexString(0xFF & byteArray[i]).length() == 1) {
                    md5StrBuff.append("0").append(Integer.toHexString(0xFF & byteArray[i]));
                } else {
                    md5StrBuff.append(Integer.toHexString(0xFF & byteArray[i]));
                }
            }
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        return md5StrBuff.toString();
    }

    public static String getSignMd5(Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(
                    context.getPackageName(), PackageManager.GET_SIGNATURES);
            Signature[] signs = packageInfo.signatures;
            Signature sign = signs[0];
            String signStr = md5(sign.toByteArray());
            return signStr;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        return "";
    }

    public static String getSignSHA1(Context context) {
        try {
            PackageInfo info = context.getPackageManager().getPackageInfo(
                    context.getPackageName(), PackageManager.GET_SIGNATURES);
            byte[] cert = info.signatures[0].toByteArray();
            MessageDigest md = MessageDigest.getInstance("SHA1");
            byte[] publicKey = md.digest(cert);
            StringBuffer hexString = new StringBuffer();
            for (int i = 0; i < publicKey.length; i++) {
                String appendString = Integer.toHexString(0xFF & publicKey[i])
                        .toUpperCase(Locale.US);
                if (appendString.length() == 1)
                    hexString.append("0");
                hexString.append(appendString);
                hexString.append(":");
            }
            String result = hexString.toString();
            return result.substring(0, result.length() - 1);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        return null;
    }

    public static String getSignHashCodeString() {
        return getSignHashCode(appContext) + "";
    }

    public static int getSignHashCode(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(),
                    GET_SIGNATURES).signatures[0].hashCode();
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        return -1;
    }

    public static void dumpSign(Context context) {
        QLog.e(TAG, "sign HashCode:" + getSignHashCode(context));
        QLog.e(TAG, "sign Md5:" + getSignMd5(context));
        QLog.e(TAG, "sign Sha1:" + getSignSHA1(context));
    }

}
