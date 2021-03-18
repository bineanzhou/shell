package com.qh.utils;

import android.util.Log;

import com.qh.hookdemo.BuildConfig;

/**
 * Created by zhoubin on 2021/3/9.
 **/
public class QLog {
    private static final String TAG = "QLOG";

    public static int d(String msg) {
        return d(TAG, msg);
    }

    public static int d(String tag, String msg) {
        if (BuildConfig.DEBUG) {
            return Log.d(TAG, msg);
        }
        return -1;
    }

    public static int e(String msg) {
        return d(TAG, msg);
    }
    public static int e(String tag, String msg) {
        if (BuildConfig.DEBUG) {
            return Log.e(TAG, msg);
        }
        return -1;
    }
}
