package com.qh.pm;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.util.Log;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;

/**
 * Created by zhoubin on 2021/3/10.
 **/
public class PmsHookBinderInvocationHandler implements InvocationHandler {
    private static boolean DEBUG = true;
    private Object base;

    public final static String TAG = "Shark";

    //应用正确的签名信息
    private String appPkgName = "";

    public PmsHookBinderInvocationHandler(Object base, String appPkgName, int hashCode) {
        try {
            this.base = base;
            this.appPkgName = appPkgName;
        } catch (Exception e) {
            Log.d(TAG, "error:"+Log.getStackTraceString(e));
        }
    }

    @Override
    public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {

        //查看是否是getPackageInfo方法
        if("getPackageInfo".equals(method.getName())){
            if(DEBUG)
            {
                Log.d(TAG,"hook method:" + method.getName());
            }

            String pkgName = (String)args[0];
            Integer flag = (Integer)args[1];
            if(DEBUG)
            {
                Log.d(TAG, "hook pkgName:" + pkgName + " appPkgName:" + appPkgName + ",flaf:" + flag);
            }

            //是否是获取我们需要hook apk的签名
            if((flag & PackageManager.GET_SIGNATURES) == PackageManager.GET_SIGNATURES && appPkgName.compareToIgnoreCase(pkgName) == 0){
                //将构造方法中传进来的新的签名覆盖掉原来的签名
                PackageInfo info = (PackageInfo) method.invoke(base, args);
                info.signatures = SignatureFake.getSignature(info.signatures);
                return info;
            }
        }
        return method.invoke(base, args);
    }
}