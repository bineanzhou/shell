package com.qh.pm;

import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Log;

import com.qh.utils.Reflect;

import java.lang.reflect.Proxy;

/**
 * Created by zhoubin on 2021/3/10.
 **/
public class ServiceManagerWraper {
    public final static String TAG = "ServiceManagerWraper";

    public static void hookPMS(Context context, String packageName, String sign) {
        try {
            SignatureFake.setSign(sign);
            // 获取全局的ActivityThread对象
            Object currentActivityThread = Reflect.onClass("android.app.ActivityThread")
                    .call("currentActivityThread").get();
            Object sPackageManager = Reflect.onClass("android.app.ActivityThread").field("sPackageManager").get();

            Class<?> iPackageManagerInterface = Reflect.onClass("android.content.pm.IPackageManager").type();

            Object proxy = Proxy.newProxyInstance(
                    iPackageManagerInterface.getClassLoader(),
                    new Class<?>[]{iPackageManagerInterface},
                    new PmsHookBinderInvocationHandler(sPackageManager, packageName, 0));
            // 1. 替换掉ActivityThread里面的 sPackageManager 字段
            Reflect.on(currentActivityThread).set("sPackageManager",proxy);
            // 2. 替换 ApplicationPackageManager里面的 mPM对象
            PackageManager pm = context.getPackageManager();
            Reflect.on(pm).set("mPM", proxy);
        } catch (Exception e) {
            Log.d(TAG, "hook pms error:" + Log.getStackTraceString(e));
        }
    }


}
