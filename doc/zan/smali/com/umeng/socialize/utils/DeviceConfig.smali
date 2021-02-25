.class public Lcom/umeng/socialize/utils/DeviceConfig;
.super Ljava/lang/Object;
.source "DeviceConfig.java"


# static fields
.field protected static final LOG_TAG:Ljava/lang/String; = "DeviceConfig"

.field private static final MOBILE_NETWORK:Ljava/lang/String; = "2G/3G"

.field protected static final UNKNOW:Ljava/lang/String; = "Unknown"

.field private static final WIFI:Ljava/lang/String; = "Wi-Fi"

.field public static context:Landroid/content/Context;

.field private static object:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/socialize/utils/DeviceConfig;->object:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 100
    invoke-static {p0, p1}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getAndroidID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 286
    if-nez p0, :cond_0

    .line 287
    const-string v0, ""

    .line 289
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getAppVersion(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    if-nez p1, :cond_0

    .line 79
    const-string v0, ""

    .line 88
    :goto_0
    return-object v0

    .line 82
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 83
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 84
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 88
    const-string v0, ""

    goto :goto_0
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    const-string v0, ""

    .line 156
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 157
    return-object v0
.end method

.method public static getDeviceSN()Ljava/lang/String;
    .locals 6

    .prologue
    .line 161
    const/4 v1, 0x0

    .line 163
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 164
    const-string v2, "get"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 165
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "ro.serialno"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "unknown"

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :goto_0
    return-object v0

    .line 166
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public static getMac(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkAccessMode(Landroid/content/Context;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getNetworkAccessMode(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static getPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    if-nez p0, :cond_0

    .line 380
    const-string v0, ""

    .line 382
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static isAppInstalled(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 50
    if-nez p1, :cond_0

    .line 65
    :goto_0
    return v0

    .line 53
    :cond_0
    sget-object v2, Lcom/umeng/socialize/utils/DeviceConfig;->object:Ljava/lang/Object;

    monitor-enter v2

    .line 57
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 58
    const/4 v4, 0x1

    invoke-virtual {v3, p0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 65
    :goto_1
    :try_start_1
    monitor-exit v2

    goto :goto_0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 62
    :catch_0
    move-exception v1

    goto :goto_1

    .line 60
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 258
    if-nez p0, :cond_1

    .line 267
    :cond_0
    :goto_0
    return v0

    .line 262
    :cond_1
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v1}, Lcom/umeng/socialize/utils/DeviceConfig;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    invoke-static {p0}, Lcom/umeng/socialize/utils/DeviceConfig;->isOnline(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isOnline(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 241
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->isOnline(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isSdCardWrittenable()Z
    .locals 2

    .prologue
    .line 277
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    const/4 v0, 0x1

    .line 281
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
