package com.qh.pm;

import android.content.pm.Signature;
import android.util.Log;


import com.qh.hookdemo.BuildConfig;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.HashSet;
import java.util.Set;


public class SignatureFake {
    public static final Boolean DEBUG = BuildConfig.DEBUG;
    public static final String TAG = "SignatureFake";

    private static Signature sSignature[] = null;
    private static String sSingautre = SignatureManager.SIGN_HOOK;
    private static Set<String> sForceFakeStackLines = new HashSet<String>();

    public static void setSign(String sign) {
        if (sign != null && sign.length() > 0) {
            sSingautre = sign;
        }
    }

    public static void addForceFakeStackLine(String stackLine) {
        if(!sForceFakeStackLines.contains(stackLine)) {
            sForceFakeStackLines.add(stackLine);
        }
    }


    private static String getSigStr() {
        return sSingautre;
    }

    private static byte[] getSigBytes() {
        String tirmStr = getSigStr().trim();
        if (tirmStr.endsWith(",")) {
            tirmStr = tirmStr.substring(0, tirmStr.length() - 1);
        }
        String strs[] = getSigStr().trim().split(",");
        int len = strs.length;
        byte b[] = new byte[len];
        for (int i = 0; i < len; i++) {
            b[i] = Byte.valueOf(strs[i]);
        }
        return b;
    }

    public static Signature[] getSignature(Signature[] orig_signatures) {
        if(!shouldUseFakeSignature()) {
            return orig_signatures;
        }
        if (sSignature != null) {
            return sSignature;
        }
        sSignature = new Signature[1];
        sSignature[0] = new Signature(getSigBytes());
        return sSignature;
    }

    private static boolean shouldUseFakeSignature() {
        if(sForceFakeStackLines.contains("*")) {
            return true;
        }
        String stacks = traceStack("getSignature");
        for(String line : sForceFakeStackLines) {
            if(stacks.indexOf(line) >= 0) {
                return true;
            }
        }
        return false;
    }

    private static String traceStack(String msg) {
        String result = "";
        try {
            throw new RuntimeException(msg);
        } catch (Throwable e) {
            StringWriter errors = new StringWriter();
            e.printStackTrace(new PrintWriter(errors));
            result = errors.toString();
            if(DEBUG) {
                Log.i(TAG, "    ");
                Log.i(TAG, "===============traceStack Begin==============");
                String text = result;
                text.replace("\r", "");
                String[] lines = text.split("\n");
                if(lines != null && lines.length > 0) {
                    for(String line : lines) {
                        Log.i(TAG, line);
                    }
                }
                Log.i(TAG, "===============traceStack End==============");
                Log.i(TAG, "    ");
            }
        }
        return result;
    }

}
