.class public Lcom/umeng/commonsdk/internal/utils/j;
.super Ljava/lang/Object;
.source "SystemLayerUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/internal/utils/j$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "info"

.field private static final b:Ljava/lang/String; = "stat"

.field private static c:Z = false

.field private static d:Landroid/os/HandlerThread; = null

.field private static e:Landroid/content/Context; = null

.field private static f:I = 0x0

.field private static g:I = 0x0

.field private static h:I = 0x0

.field private static i:I = 0x0

.field private static j:J = 0x0L

.field private static k:J = 0x0L

.field private static final l:I = 0x28

.field private static final m:I = 0xc350

.field private static n:Landroid/hardware/SensorManager;

.field private static o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[F>;"
        }
    .end annotation
.end field

.field private static p:Landroid/hardware/SensorEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 39
    sput-boolean v0, Lcom/umeng/commonsdk/internal/utils/j;->c:Z

    .line 44
    sput v0, Lcom/umeng/commonsdk/internal/utils/j;->f:I

    .line 45
    sput v0, Lcom/umeng/commonsdk/internal/utils/j;->g:I

    .line 46
    sput v0, Lcom/umeng/commonsdk/internal/utils/j;->h:I

    .line 47
    const/4 v0, 0x1

    sput v0, Lcom/umeng/commonsdk/internal/utils/j;->i:I

    .line 48
    sput-wide v2, Lcom/umeng/commonsdk/internal/utils/j;->j:J

    .line 49
    sput-wide v2, Lcom/umeng/commonsdk/internal/utils/j;->k:J

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/internal/utils/j;->o:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Lcom/umeng/commonsdk/internal/utils/j$1;

    invoke-direct {v0}, Lcom/umeng/commonsdk/internal/utils/j$1;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/internal/utils/j;->p:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    return-void
.end method

.method static synthetic a(I)I
    .locals 0

    .prologue
    .line 35
    sput p0, Lcom/umeng/commonsdk/internal/utils/j;->f:I

    return p0
.end method

.method static synthetic a(J)J
    .locals 0

    .prologue
    .line 35
    sput-wide p0, Lcom/umeng/commonsdk/internal/utils/j;->j:J

    return-wide p0
.end method

.method public static a(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    if-nez p0, :cond_0

    .line 94
    const/4 v0, 0x0

    .line 97
    :goto_0
    return-object v0

    .line 96
    :cond_0
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 97
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized a()Z
    .locals 2

    .prologue
    .line 256
    const-class v0, Lcom/umeng/commonsdk/internal/utils/j;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/umeng/commonsdk/internal/utils/j;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic b()I
    .locals 1

    .prologue
    .line 35
    sget v0, Lcom/umeng/commonsdk/internal/utils/j;->g:I

    return v0
.end method

.method static synthetic b(J)J
    .locals 0

    .prologue
    .line 35
    sput-wide p0, Lcom/umeng/commonsdk/internal/utils/j;->k:J

    return-wide p0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 5

    .prologue
    const v4, 0xc350

    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 106
    if-nez p0, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/j;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    sput-boolean v2, Lcom/umeng/commonsdk/internal/utils/j;->c:Z

    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/internal/utils/j;->e:Landroid/content/Context;

    .line 114
    invoke-static {p0}, Lcom/umeng/commonsdk/framework/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 116
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    sput-object v0, Lcom/umeng/commonsdk/internal/utils/j;->n:Landroid/hardware/SensorManager;

    .line 118
    sget-object v0, Lcom/umeng/commonsdk/internal/utils/j;->n:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 119
    sget-object v1, Lcom/umeng/commonsdk/internal/utils/j;->n:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 120
    if-eqz v0, :cond_3

    .line 121
    sput v3, Lcom/umeng/commonsdk/internal/utils/j;->h:I

    .line 122
    sget-object v2, Lcom/umeng/commonsdk/internal/utils/j;->n:Landroid/hardware/SensorManager;

    sget-object v3, Lcom/umeng/commonsdk/internal/utils/j;->p:Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v3, v0, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 127
    :cond_2
    :goto_1
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 128
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    add-int/lit16 v2, v2, 0xfa0

    .line 129
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "sensor_thread"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v3, Lcom/umeng/commonsdk/internal/utils/j;->d:Landroid/os/HandlerThread;

    .line 130
    sget-object v3, Lcom/umeng/commonsdk/internal/utils/j;->d:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 131
    new-instance v3, Landroid/os/Handler;

    sget-object v4, Lcom/umeng/commonsdk/internal/utils/j;->d:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lcom/umeng/commonsdk/internal/utils/j$2;

    invoke-direct {v4, v0, v1}, Lcom/umeng/commonsdk/internal/utils/j$2;-><init>(Landroid/hardware/Sensor;Landroid/hardware/Sensor;)V

    int-to-long v0, v2

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 123
    :cond_3
    if-eqz v1, :cond_2

    .line 124
    sput v2, Lcom/umeng/commonsdk/internal/utils/j;->h:I

    .line 125
    sget-object v2, Lcom/umeng/commonsdk/internal/utils/j;->n:Landroid/hardware/SensorManager;

    sget-object v3, Lcom/umeng/commonsdk/internal/utils/j;->p:Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v3, v1, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_1
.end method

.method static synthetic c()I
    .locals 2

    .prologue
    .line 35
    sget v0, Lcom/umeng/commonsdk/internal/utils/j;->g:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/umeng/commonsdk/internal/utils/j;->g:I

    return v0
.end method

.method public static c(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 181
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "info"

    const/4 v3, 0x0

    .line 182
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 184
    if-eqz v0, :cond_0

    .line 185
    const-string v2, "stat"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 186
    if-eqz v2, :cond_0

    .line 188
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    return-object v0

    .line 189
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic d()I
    .locals 1

    .prologue
    .line 35
    sget v0, Lcom/umeng/commonsdk/internal/utils/j;->f:I

    return v0
.end method

.method public static d(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 247
    if-nez p0, :cond_0

    .line 253
    :goto_0
    return-void

    .line 250
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "info"

    const/4 v2, 0x0

    .line 251
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 252
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "stat"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method static synthetic e()I
    .locals 2

    .prologue
    .line 35
    sget v0, Lcom/umeng/commonsdk/internal/utils/j;->f:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/umeng/commonsdk/internal/utils/j;->f:I

    return v0
.end method

.method public static e(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/commonsdk/internal/utils/j$a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 266
    if-nez p0, :cond_1

    .line 293
    :cond_0
    :goto_0
    return-object v0

    .line 269
    :cond_1
    const-string v1, "android.permission.CAMERA"

    invoke-static {p0, v1}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 272
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 274
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 275
    const-string v0, "camera"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    .line 276
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v4

    .line 277
    const/4 v1, 0x0

    move v3, v1

    :goto_1
    array-length v1, v4

    if-ge v3, v1, :cond_3

    .line 278
    aget-object v1, v4, v3

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    .line 279
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PIXEL_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    .line 280
    if-eqz v1, :cond_2

    .line 281
    new-instance v5, Lcom/umeng/commonsdk/internal/utils/j$a;

    invoke-direct {v5}, Lcom/umeng/commonsdk/internal/utils/j$a;-><init>()V

    .line 282
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v6

    iput v6, v5, Lcom/umeng/commonsdk/internal/utils/j$a;->a:I

    .line 283
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    iput v1, v5, Lcom/umeng/commonsdk/internal/utils/j$a;->b:I

    .line 284
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/umeng/commonsdk/internal/utils/j$a;->c:J

    .line 285
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :cond_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 289
    :catch_0
    move-exception v0

    .line 290
    const-string v0, "camera access exception"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/e;->c(Ljava/lang/String;)V

    :cond_3
    move-object v0, v2

    .line 293
    goto :goto_0
.end method

.method static synthetic f()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/umeng/commonsdk/internal/utils/j;->o:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static f(Landroid/content/Context;)V
    .locals 12

    .prologue
    .line 202
    if-nez p0, :cond_1

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 207
    const/4 v0, 0x0

    move v3, v0

    :goto_1
    const/4 v0, 0x2

    if-ge v3, v0, :cond_0

    .line 208
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 209
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 210
    const/4 v1, 0x0

    const/16 v0, 0x14

    .line 211
    const/4 v2, 0x1

    if-ne v3, v2, :cond_6

    .line 212
    const/16 v1, 0x14

    .line 213
    const/16 v0, 0x28

    move v2, v1

    move v1, v0

    .line 215
    :goto_2
    if-ge v2, v1, :cond_2

    .line 216
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 217
    const-string v8, "x"

    sget-object v0, Lcom/umeng/commonsdk/internal/utils/j;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    const/4 v9, 0x0

    aget v0, v0, v9

    float-to-double v10, v0

    invoke-virtual {v7, v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 218
    const-string v8, "y"

    sget-object v0, Lcom/umeng/commonsdk/internal/utils/j;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    const/4 v9, 0x1

    aget v0, v0, v9

    float-to-double v10, v0

    invoke-virtual {v7, v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 219
    const-string v8, "z"

    sget-object v0, Lcom/umeng/commonsdk/internal/utils/j;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    const/4 v9, 0x2

    aget v0, v0, v9

    float-to-double v10, v0

    invoke-virtual {v7, v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 220
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 215
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 222
    :cond_2
    sget v0, Lcom/umeng/commonsdk/internal/utils/j;->h:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 223
    const-string v0, "g"

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 227
    :cond_3
    :goto_3
    if-nez v3, :cond_5

    .line 228
    const-string v0, "ts"

    sget-wide v6, Lcom/umeng/commonsdk/internal/utils/j;->j:J

    invoke-virtual {v5, v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 232
    :goto_4
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 234
    const v0, 0x8008

    .line 235
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/b;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/internal/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/commonsdk/internal/b;->a()Lcom/umeng/commonsdk/internal/c;

    move-result-object v1

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    .line 234
    invoke-static {p0, v0, v1, v2}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    .line 207
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_1

    .line 224
    :cond_4
    sget v0, Lcom/umeng/commonsdk/internal/utils/j;->h:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 225
    const-string v0, "a"

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 237
    :catch_0
    move-exception v0

    .line 238
    invoke-static {p0, v0}, Lcom/umeng/commonsdk/proguard/b;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 230
    :cond_5
    :try_start_1
    const-string v0, "ts"

    sget-wide v6, Lcom/umeng/commonsdk/internal/utils/j;->k:J

    invoke-virtual {v5, v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :cond_6
    move v2, v1

    move v1, v0

    goto/16 :goto_2
.end method

.method static synthetic g()I
    .locals 1

    .prologue
    .line 35
    sget v0, Lcom/umeng/commonsdk/internal/utils/j;->i:I

    return v0
.end method

.method static synthetic h()I
    .locals 2

    .prologue
    .line 35
    sget v0, Lcom/umeng/commonsdk/internal/utils/j;->i:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/umeng/commonsdk/internal/utils/j;->i:I

    return v0
.end method

.method static synthetic i()V
    .locals 0

    .prologue
    .line 35
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/j;->l()V

    return-void
.end method

.method static synthetic j()Landroid/hardware/SensorEventListener;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/umeng/commonsdk/internal/utils/j;->p:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic k()Landroid/hardware/SensorManager;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/umeng/commonsdk/internal/utils/j;->n:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method private static l()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 153
    sget-object v0, Lcom/umeng/commonsdk/internal/utils/j;->n:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 154
    sget-object v0, Lcom/umeng/commonsdk/internal/utils/j;->n:Landroid/hardware/SensorManager;

    sget-object v1, Lcom/umeng/commonsdk/internal/utils/j;->p:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 157
    :cond_0
    sget-object v0, Lcom/umeng/commonsdk/internal/utils/j;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_3

    .line 158
    sget-object v0, Lcom/umeng/commonsdk/internal/utils/j;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/internal/utils/j;->f(Landroid/content/Context;)V

    .line 160
    sget-object v0, Lcom/umeng/commonsdk/internal/utils/j;->o:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 161
    sget-object v0, Lcom/umeng/commonsdk/internal/utils/j;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 164
    :cond_1
    sget-object v0, Lcom/umeng/commonsdk/internal/utils/j;->d:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    .line 165
    sget-object v0, Lcom/umeng/commonsdk/internal/utils/j;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 166
    sput-object v2, Lcom/umeng/commonsdk/internal/utils/j;->d:Landroid/os/HandlerThread;

    .line 169
    :cond_2
    sput-object v2, Lcom/umeng/commonsdk/internal/utils/j;->e:Landroid/content/Context;

    .line 171
    const/4 v0, 0x0

    sput-boolean v0, Lcom/umeng/commonsdk/internal/utils/j;->c:Z

    .line 173
    :cond_3
    return-void
.end method
