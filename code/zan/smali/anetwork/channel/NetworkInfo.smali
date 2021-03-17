.class public Lanetwork/channel/NetworkInfo;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanetwork/channel/NetworkInfo$WaitThread;,
        Lanetwork/channel/NetworkInfo$NetworkTask;,
        Lanetwork/channel/NetworkInfo$SpdyRequestCallback;,
        Lanetwork/channel/NetworkInfo$SessionCallback;,
        Lanetwork/channel/NetworkInfo$NetworkInfoListener;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "NETWORK_UNCONNECTED"

.field public static final b:Ljava/lang/String; = "NETWORK_UNAUTHROIZED"

.field public static final c:Ljava/lang/String; = "BACKGROUND ACTIVITY"

.field private static final d:Ljava/lang/String;

.field private static final e:Ljava/lang/String; = "http://140.205.130.1/api/cdnDetect?method=createDetect"

.field private static final f:Ljava/lang/String; = "http://api.m.taobao.com/gw/mtop.common.getTimeStamp/*"

.field private static final g:Ljava/lang/String; = "http://acs.m.taobao.com/gw/mtop.wdetail.getitemdetail/"

.field private static final h:Ljava/lang/String; = "http://unitacs.m.taobao.com/gw/mtop.wdetail.getitemdetail/"

.field private static final i:Ljava/lang/String; = "http://unszacs.m.taobao.com/gw/mtop.wdetail.getitemdetail/"

.field private static final j:Ljava/lang/String; = "http://api.m.taobao.com/status.taobao"

.field private static final k:Ljava/lang/String; = "http://hws.m.taobao.com/cache/desc/5.0?id=42860783596&type=1&f=TB1FFmAJFXXXXbvXFXX8qtpFXlX"

.field private static final l:Ljava/lang/String; = "http://h5.m.taobao.com/app/category/www/man/index.html"

.field private static final m:Ljava/lang/String; = "http://g.alicdn.com/tbc/??search-suggest/1.4.6/mods/storage-min.js"

.field private static final n:Ljava/lang/String; = "http://gw.alicdn.com/bao/uploaded/i2/12071029418847231/T13I2HFk8aXXXXXXXX_!!0-item_pic.jpg_170x170.jpg"

.field private static final o:Ljava/lang/String; = "http://m.taobao.com"

.field private static final p:Ljava/lang/String; = "http://www.baidu.com"

.field private static final q:Ljava/lang/String; = "http://www.tencent.com"

.field private static final r:Ljava/lang/String; = "http://client.aliyun.com/"

.field private static final s:Ljava/lang/String; = "==============================\n"

.field private static final t:I = 0x4

.field private static final u:I = 0x0

.field private static final v:I = 0x1

.field private static final w:I = 0x2

.field private static x:Lanetwork/channel/NetworkInfo;


# instance fields
.field private A:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private B:Lanetwork/channel/NetworkInfo$NetworkInfoListener;

.field private y:Ljava/util/concurrent/ExecutorService;

.field private z:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-class v0, Lanetwork/channel/NetworkInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lanetwork/channel/NetworkInfo;->d:Ljava/lang/String;

    .line 99
    new-instance v0, Lanetwork/channel/NetworkInfo;

    invoke-direct {v0}, Lanetwork/channel/NetworkInfo;-><init>()V

    sput-object v0, Lanetwork/channel/NetworkInfo;->x:Lanetwork/channel/NetworkInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    .prologue
    const/4 v2, 0x4

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingDeque;

    const/16 v0, 0x3c

    invoke-direct {v7, v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    move v3, v2

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lanetwork/channel/NetworkInfo;->y:Ljava/util/concurrent/ExecutorService;

    .line 111
    return-void
.end method

.method static synthetic a(Lanetwork/channel/NetworkInfo;Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lanetwork/channel/NetworkInfo;->f(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lanetwork/channel/NetworkInfo;Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lanetwork/channel/NetworkInfo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lanetwork/channel/NetworkInfo;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lanetwork/channel/NetworkInfo;->z:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lanetwork/channel/NetworkInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method private a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    packed-switch p1, :pswitch_data_0

    .line 267
    const-string v0, ""

    :goto_0
    return-object v0

    .line 225
    :pswitch_0
    const-string v0, "Network Type:"

    goto :goto_0

    .line 227
    :pswitch_1
    const-string v0, "Mobile IP:"

    goto :goto_0

    .line 229
    :pswitch_2
    const-string v0, "APN:"

    goto :goto_0

    .line 231
    :pswitch_3
    const-string v0, "Proxy Host:"

    goto :goto_0

    .line 233
    :pswitch_4
    const-string v0, "Proxy Port:"

    goto :goto_0

    .line 235
    :pswitch_5
    const-string v0, "Proxy Bypass:"

    goto :goto_0

    .line 237
    :pswitch_6
    const-string v0, "==============================\nHttpNetwork:\napi.m.taobao.com:"

    goto :goto_0

    .line 239
    :pswitch_7
    const-string v0, "gw.alicdn.com:"

    goto :goto_0

    .line 241
    :pswitch_8
    const-string v0, "g.alicdn.com:"

    goto :goto_0

    .line 243
    :pswitch_9
    const-string v0, "www.taobao.com:"

    goto :goto_0

    .line 245
    :pswitch_a
    const-string v0, "www.baidu.com:"

    goto :goto_0

    .line 247
    :pswitch_b
    const-string v0, "www.tencent.com:"

    goto :goto_0

    .line 249
    :pswitch_c
    const-string v0, "POST:"

    goto :goto_0

    .line 251
    :pswitch_d
    const-string v0, "==============================\nAMDC:\nhttp://api.m.taobao.com/gw/mtop.common.getTimeStamp/*\n"

    goto :goto_0

    .line 253
    :pswitch_e
    const-string v0, "http://gw.alicdn.com/bao/uploaded/i2/12071029418847231/T13I2HFk8aXXXXXXXX_!!0-item_pic.jpg_170x170.jpg\n"

    goto :goto_0

    .line 255
    :pswitch_f
    const-string v0, "http://g.alicdn.com/tbc/??search-suggest/1.4.6/mods/storage-min.js\n"

    goto :goto_0

    .line 257
    :pswitch_10
    const-string v0, "http://acs.m.taobao.com/gw/mtop.wdetail.getitemdetail/\n"

    goto :goto_0

    .line 259
    :pswitch_11
    const-string v0, "http://unitacs.m.taobao.com/gw/mtop.wdetail.getitemdetail/\n"

    goto :goto_0

    .line 261
    :pswitch_12
    const-string v0, "http://unszacs.m.taobao.com/gw/mtop.wdetail.getitemdetail/\n"

    goto :goto_0

    .line 263
    :pswitch_13
    const-string v0, "http://h5.m.taobao.com/app/category/www/man/index.html\n"

    goto :goto_0

    .line 265
    :pswitch_14
    const-string v0, "http://hws.m.taobao.com/cache/desc/5.0?id=42860783596&type=1&f=TB1FFmAJFXXXXbvXFXX8qtpFXlX\n"

    goto :goto_0

    .line 223
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_14
        :pswitch_13
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 166
    :try_start_0
    invoke-static {}, Lanetwork/channel/NetworkInfo;->c()Lanetwork/channel/NetworkInfo;

    move-result-object v2

    .line 167
    iput-object p0, v2, Lanetwork/channel/NetworkInfo;->z:Landroid/content/Context;

    .line 168
    invoke-direct {v2, p0}, Lanetwork/channel/NetworkInfo;->f(Landroid/content/Context;)I

    move-result v3

    .line 169
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->isAppBackground()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 170
    :goto_0
    if-nez v0, :cond_1

    .line 171
    const-string v0, "BACKGROUND ACTIVITY"

    .line 190
    :goto_1
    return-object v0

    .line 169
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 173
    :cond_1
    const/4 v0, 0x2

    if-ne v3, v0, :cond_2

    .line 174
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, v2, Lanetwork/channel/NetworkInfo;->A:Ljava/util/concurrent/ConcurrentHashMap;

    .line 175
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 177
    invoke-direct {v2, v0}, Lanetwork/channel/NetworkInfo;->a(Ljava/util/concurrent/CountDownLatch;)V

    .line 179
    invoke-direct {v2, v0}, Lanetwork/channel/NetworkInfo;->b(Ljava/util/concurrent/CountDownLatch;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 181
    :cond_2
    if-ne v3, v1, :cond_3

    .line 182
    const-string v0, "NETWORK_UNAUTHROIZED"

    goto :goto_1

    .line 184
    :cond_3
    if-nez v3, :cond_4

    .line 185
    const-string v0, "NETWORK_UNCONNECTED"

    goto :goto_1

    .line 187
    :catch_0
    move-exception v0

    .line 188
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 190
    :cond_4
    const-string v0, "Exception"

    goto :goto_1
.end method

.method static synthetic a(Lanetwork/channel/NetworkInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lanetwork/channel/NetworkInfo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 349
    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method private a(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 354
    .line 355
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 357
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 358
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 361
    :catch_0
    move-exception v0

    .line 363
    const-string v0, ""

    :goto_1
    return-object v0

    .line 360
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic a(Lanetwork/channel/NetworkInfo;Ljava/util/concurrent/ConcurrentHashMap;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lanetwork/channel/NetworkInfo;->A:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p1
.end method

.method public static a(Landroid/content/Context;Lanetwork/channel/NetworkInfo$NetworkInfoListener;)V
    .locals 2

    .prologue
    .line 120
    :try_start_0
    invoke-static {}, Lanetwork/channel/NetworkInfo;->c()Lanetwork/channel/NetworkInfo;

    move-result-object v0

    .line 121
    iput-object p0, v0, Lanetwork/channel/NetworkInfo;->z:Landroid/content/Context;

    .line 122
    iput-object p1, v0, Lanetwork/channel/NetworkInfo;->B:Lanetwork/channel/NetworkInfo$NetworkInfoListener;

    .line 124
    new-instance v1, Lanetwork/channel/NetworkInfo$1;

    invoke-direct {v1, v0}, Lanetwork/channel/NetworkInfo$1;-><init>(Lanetwork/channel/NetworkInfo;)V

    invoke-virtual {v1}, Lanetwork/channel/NetworkInfo$1;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 150
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lanetwork/channel/NetworkInfo$NetworkInfoListener;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    invoke-static {p0, p1}, Lanetwork/channel/NetworkInfo;->b(Lanetwork/channel/NetworkInfo$NetworkInfoListener;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lanetwork/channel/NetworkInfo;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lanetwork/channel/NetworkInfo;->a(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method private a(Ljava/util/concurrent/CountDownLatch;)V
    .locals 6

    .prologue
    .line 197
    const/4 v3, 0x0

    :goto_0
    const/16 v0, 0x15

    if-ge v3, v0, :cond_0

    .line 198
    new-instance v0, Lanetwork/channel/NetworkInfo$NetworkTask;

    iget-object v2, p0, Lanetwork/channel/NetworkInfo;->z:Landroid/content/Context;

    iget-object v4, p0, Lanetwork/channel/NetworkInfo;->A:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lanetwork/channel/NetworkInfo$NetworkTask;-><init>(Lanetwork/channel/NetworkInfo;Landroid/content/Context;ILjava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/CountDownLatch;)V

    .line 199
    iget-object v1, p0, Lanetwork/channel/NetworkInfo;->y:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 197
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 201
    :cond_0
    return-void
.end method

.method private b(Landroid/content/Context;)I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 283
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 284
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 285
    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_3

    aget-object v4, v2, v0

    .line 286
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_2

    .line 288
    :try_start_0
    const-string v0, "http://client.aliyun.com/"

    invoke-direct {p0, v0}, Lanetwork/channel/NetworkInfo;->b(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 289
    invoke-direct {p0, v0}, Lanetwork/channel/NetworkInfo;->a(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v1

    .line 290
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_1

    .line 291
    :cond_0
    const/4 v0, 0x1

    .line 298
    :goto_1
    return v0

    .line 293
    :catch_0
    move-exception v0

    .line 295
    :cond_1
    const/4 v0, 0x2

    goto :goto_1

    .line 285
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 298
    goto :goto_1
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    .prologue
    const/16 v2, 0x2710

    .line 394
    invoke-direct {p0, p1}, Lanetwork/channel/NetworkInfo;->b(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 395
    new-instance v0, Lanetwork/channel/entity/RequestImpl;

    invoke-direct {v0, p2}, Lanetwork/channel/entity/RequestImpl;-><init>(Ljava/lang/String;)V

    .line 396
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lanetwork/channel/entity/RequestImpl;->a(I)V

    .line 397
    invoke-virtual {v0, v2}, Lanetwork/channel/entity/RequestImpl;->b(I)V

    .line 398
    invoke-virtual {v0, v2}, Lanetwork/channel/entity/RequestImpl;->c(I)V

    .line 399
    new-instance v1, Lanetwork/channel/http/HttpNetwork;

    invoke-direct {v1, p1}, Lanetwork/channel/http/HttpNetwork;-><init>(Landroid/content/Context;)V

    .line 400
    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lanetwork/channel/Network;->a(Lanetwork/channel/Request;Ljava/lang/Object;)Lanetwork/channel/Response;

    move-result-object v0

    .line 401
    invoke-interface {v0}, Lanetwork/channel/Response;->a()I

    move-result v0

    .line 403
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static synthetic b(Lanetwork/channel/NetworkInfo;Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lanetwork/channel/NetworkInfo;->b(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lanetwork/channel/NetworkInfo;)Lanetwork/channel/NetworkInfo$NetworkInfoListener;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lanetwork/channel/NetworkInfo;->B:Lanetwork/channel/NetworkInfo$NetworkInfoListener;

    return-object v0
.end method

.method static synthetic b()Lanetwork/channel/NetworkInfo;
    .locals 1

    .prologue
    .line 69
    invoke-static {}, Lanetwork/channel/NetworkInfo;->c()Lanetwork/channel/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lanetwork/channel/NetworkInfo;Ljava/util/concurrent/CountDownLatch;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lanetwork/channel/NetworkInfo;->b(Ljava/util/concurrent/CountDownLatch;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/util/concurrent/CountDownLatch;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 208
    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    const/16 v0, 0x15

    if-ge v1, v0, :cond_0

    .line 214
    invoke-direct {p0, v1}, Lanetwork/channel/NetworkInfo;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lanetwork/channel/NetworkInfo;->A:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 209
    :catch_0
    move-exception v0

    .line 210
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 216
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 3

    .prologue
    .line 370
    const/4 v1, 0x0

    .line 372
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 373
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 374
    const/16 v1, 0x2710

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 375
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 376
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 377
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 387
    :goto_0
    return-object v0

    .line 378
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 379
    :goto_1
    sget-object v1, Lanetwork/channel/NetworkInfo;->d:Ljava/lang/String;

    const-string v2, "URL Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 380
    :catch_1
    move-exception v0

    move-object v0, v1

    .line 381
    :goto_2
    sget-object v1, Lanetwork/channel/NetworkInfo;->d:Ljava/lang/String;

    const-string v2, "Socket Time Out Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 382
    :catch_2
    move-exception v0

    move-object v0, v1

    .line 383
    :goto_3
    sget-object v1, Lanetwork/channel/NetworkInfo;->d:Ljava/lang/String;

    const-string v2, "Connect Time Out Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 384
    :catch_3
    move-exception v0

    move-object v0, v1

    .line 385
    :goto_4
    sget-object v1, Lanetwork/channel/NetworkInfo;->d:Ljava/lang/String;

    const-string v2, "Open Connection Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 384
    :catch_4
    move-exception v1

    goto :goto_4

    .line 382
    :catch_5
    move-exception v1

    goto :goto_3

    .line 380
    :catch_6
    move-exception v1

    goto :goto_2

    .line 378
    :catch_7
    move-exception v1

    goto :goto_1
.end method

.method private static b(Lanetwork/channel/NetworkInfo$NetworkInfoListener;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 155
    new-instance v0, Lanetwork/channel/NetworkInfo$2;

    invoke-direct {v0, p0, p1}, Lanetwork/channel/NetworkInfo$2;-><init>(Lanetwork/channel/NetworkInfo$NetworkInfoListener;Ljava/lang/String;)V

    invoke-virtual {v0}, Lanetwork/channel/NetworkInfo$2;->start()V

    .line 160
    return-void
.end method

.method private static c()Lanetwork/channel/NetworkInfo;
    .locals 1

    .prologue
    .line 272
    sget-object v0, Lanetwork/channel/NetworkInfo;->x:Lanetwork/channel/NetworkInfo;

    return-object v0
.end method

.method private c(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 307
    invoke-direct {p0, p1}, Lanetwork/channel/NetworkInfo;->b(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 308
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 309
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v1

    .line 310
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 311
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_0

    .line 312
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    .line 316
    :goto_1
    return-object v0

    .line 310
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 316
    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method static synthetic c(Lanetwork/channel/NetworkInfo;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lanetwork/channel/NetworkInfo;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 323
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 324
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 325
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "Null"

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic d(Lanetwork/channel/NetworkInfo;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lanetwork/channel/NetworkInfo;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 334
    const-string v0, ""

    .line 336
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "http://140.205.130.1/api/cdnDetect?method=createDetect"

    invoke-direct {p0, v2}, Lanetwork/channel/NetworkInfo;->b(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v2

    invoke-direct {p0, v2}, Lanetwork/channel/NetworkInfo;->a(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 337
    const-string v2, "content"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 338
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {p0, v1}, Lanetwork/channel/NetworkInfo;->b(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-direct {p0, v1}, Lanetwork/channel/NetworkInfo;->a(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "content"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 339
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 340
    const-string v3, "localIp"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Local DNS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ldns"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 345
    :goto_0
    return-object v0

    .line 343
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic e(Lanetwork/channel/NetworkInfo;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lanetwork/channel/NetworkInfo;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private f(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Lanetwork/channel/NetworkInfo;->y:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lanetwork/channel/NetworkInfo$3;

    invoke-direct {v1, p0, p1}, Lanetwork/channel/NetworkInfo$3;-><init>(Lanetwork/channel/NetworkInfo;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 417
    const/4 v1, 0x0

    .line 419
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 425
    :goto_0
    return v0

    .line 420
    :catch_0
    move-exception v0

    .line 421
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    move v0, v1

    .line 424
    goto :goto_0

    .line 422
    :catch_1
    move-exception v0

    .line 423
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    move v0, v1

    goto :goto_0
.end method

.method static synthetic f(Lanetwork/channel/NetworkInfo;Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lanetwork/channel/NetworkInfo;->g(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method private g(Landroid/content/Context;)I
    .locals 4

    .prologue
    .line 517
    new-instance v0, Lanetwork/channel/entity/RequestImpl;

    const-string v1, "http://api.m.taobao.com/status.taobao"

    invoke-direct {v0, v1}, Lanetwork/channel/entity/RequestImpl;-><init>(Ljava/lang/String;)V

    .line 518
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Lanetwork/channel/entity/RequestImpl;->b(Ljava/lang/String;)V

    .line 519
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lanetwork/channel/entity/RequestImpl;->a(I)V

    .line 520
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 521
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/16 v3, 0x7d0

    if-ge v2, v3, :cond_0

    .line 522
    const-string v2, "data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 524
    :cond_0
    new-instance v2, Lanet/channel/request/ByteArrayEntry;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v2, v1}, Lanet/channel/request/ByteArrayEntry;-><init>([B)V

    invoke-virtual {v0, v2}, Lanetwork/channel/entity/RequestImpl;->a(Lanet/channel/request/BodyEntry;)V

    .line 525
    new-instance v1, Lanetwork/channel/http/HttpNetwork;

    invoke-direct {v1, p1}, Lanetwork/channel/http/HttpNetwork;-><init>(Landroid/content/Context;)V

    .line 526
    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lanetwork/channel/Network;->a(Lanetwork/channel/Request;Ljava/lang/Object;)Lanetwork/channel/Response;

    move-result-object v0

    .line 527
    invoke-interface {v0}, Lanetwork/channel/Response;->a()I

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 19

    .prologue
    .line 432
    .line 434
    :try_start_0
    new-instance v12, Ljava/net/URL;

    move-object/from16 v0, p2

    invoke-direct {v12, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    invoke-virtual {v12}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    .line 441
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object v2

    invoke-interface {v2, v5}, Lanet/channel/strategy/IStrategyInstance;->getConnStrategyListByHost(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 442
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 443
    :cond_0
    const-string v2, ""

    .line 510
    :goto_0
    return-object v2

    .line 435
    :catch_0
    move-exception v2

    .line 436
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 437
    const-string v2, ""

    goto :goto_0

    .line 447
    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 448
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x4

    if-le v3, v4, :cond_2

    .line 449
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 452
    :cond_2
    new-instance v13, Ljava/util/concurrent/CountDownLatch;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v13, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 453
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 455
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lanet/channel/strategy/IConnStrategy;

    .line 456
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 457
    const-string v3, "Strategy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v4}, Lanet/channel/strategy/IConnStrategy;->getIp()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ":"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v4}, Lanet/channel/strategy/IConnStrategy;->getPort()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " - "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v4}, Lanet/channel/strategy/IConnStrategy;->getProtocol()Lanet/channel/strategy/ConnProtocol;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 458
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 459
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "false"

    aput-object v6, v2, v3

    const/4 v3, 0x1

    const-string v6, "null"

    aput-object v6, v2, v3

    const/4 v3, 0x2

    const-string v6, "false"

    aput-object v6, v2, v3

    const/4 v3, 0x3

    const-string v6, "null"

    aput-object v6, v2, v3

    move-object/from16 v0, v16

    invoke-virtual {v14, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    invoke-interface {v4}, Lanet/channel/strategy/IConnStrategy;->getProtocol()Lanet/channel/strategy/ConnProtocol;

    move-result-object v2

    invoke-static {v2}, Lanet/channel/entity/ConnType;->valueOf(Lanet/channel/strategy/ConnProtocol;)Lanet/channel/entity/ConnType;

    move-result-object v11

    .line 462
    new-instance v3, Lanet/channel/request/Request$Builder;

    invoke-direct {v3}, Lanet/channel/request/Request$Builder;-><init>()V

    invoke-virtual {v11}, Lanet/channel/entity/ConnType;->isSSL()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "http:"

    const-string v6, "https:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v3, v2}, Lanet/channel/request/Request$Builder;->setUrl(Ljava/lang/String;)Lanet/channel/request/Request$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lanet/channel/request/Request$Builder;->build()Lanet/channel/request/Request;

    move-result-object v17

    .line 465
    invoke-interface {v4}, Lanet/channel/strategy/IConnStrategy;->getIp()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4}, Lanet/channel/strategy/IConnStrategy;->getPort()I

    move-result v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Lanet/channel/request/Request;->setDnsOptimize(Ljava/lang/String;I)V

    .line 466
    sget-object v2, Lanet/channel/entity/ConnType;->HTTP:Lanet/channel/entity/ConnType;

    invoke-virtual {v11, v2}, Lanet/channel/entity/ConnType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lanet/channel/entity/ConnType;->HTTPS:Lanet/channel/entity/ConnType;

    invoke-virtual {v11, v2}, Lanet/channel/entity/ConnType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 468
    :cond_3
    const/4 v2, 0x0

    :try_start_1
    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lanet/channel/session/b;->a(Lanet/channel/request/Request;Lanet/channel/RequestCb;)Lanet/channel/session/b$a;

    move-result-object v2

    .line 469
    iget v3, v2, Lanet/channel/session/b$a;->a:I

    .line 470
    if-lez v3, :cond_5

    .line 471
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "true"

    aput-object v6, v2, v4

    .line 472
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    const/4 v4, 0x2

    const-string v6, "true"

    aput-object v6, v2, v4

    .line 477
    :goto_4
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    const/4 v4, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v4

    .line 478
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    const/4 v4, 0x3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 480
    invoke-virtual {v13}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto/16 :goto_2

    :cond_4
    move-object/from16 v2, p2

    .line 462
    goto/16 :goto_3

    .line 474
    :cond_5
    :try_start_2
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "false"

    aput-object v6, v2, v4

    .line 475
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    const/4 v4, 0x2

    const-string v6, "false"

    aput-object v6, v2, v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 480
    :catchall_0
    move-exception v2

    invoke-virtual {v13}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v2

    .line 483
    :cond_6
    sget-object v2, Lorg/android/spdy/SpdyVersion;->SPDY3:Lorg/android/spdy/SpdyVersion;

    sget-object v3, Lorg/android/spdy/SpdySessionKind;->NONE_SESSION:Lorg/android/spdy/SpdySessionKind;

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lorg/android/spdy/SpdyAgent;->getInstance(Landroid/content/Context;Lorg/android/spdy/SpdyVersion;Lorg/android/spdy/SpdySessionKind;)Lorg/android/spdy/SpdyAgent;

    move-result-object v18

    .line 484
    const-string v2, "%s_%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, ""

    aput-object v7, v3, v6

    const/4 v6, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 486
    new-instance v2, Lorg/android/spdy/SessionInfo;

    invoke-interface {v4}, Lanet/channel/strategy/IConnStrategy;->getIp()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4}, Lanet/channel/strategy/IConnStrategy;->getPort()I

    move-result v4

    const-string v6, ""

    const/4 v7, 0x0

    new-instance v9, Lanetwork/channel/NetworkInfo$SessionCallback;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v9, v0, v14, v1, v10}, Lanetwork/channel/NetworkInfo$SessionCallback;-><init>(Lanetwork/channel/NetworkInfo;Ljava/util/HashMap;Ljava/lang/String;Lanetwork/channel/NetworkInfo$1;)V

    invoke-virtual {v11}, Lanet/channel/entity/ConnType;->getTnetConType()I

    move-result v10

    invoke-direct/range {v2 .. v10}, Lorg/android/spdy/SessionInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;Lorg/android/spdy/SessionCb;I)V

    .line 488
    const/16 v3, 0x2710

    invoke-virtual {v2, v3}, Lorg/android/spdy/SessionInfo;->setConnectionTimeoutMs(I)V

    .line 489
    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Lanet/channel/entity/ConnType;->getTnetPublicKey(Z)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/android/spdy/SessionInfo;->setPubKeySeqNum(I)V

    .line 490
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/android/spdy/SpdyAgent;->createSession(Lorg/android/spdy/SessionInfo;)Lorg/android/spdy/SpdySession;

    move-result-object v2

    .line 492
    new-instance v6, Lorg/android/spdy/SpdyRequest;

    invoke-virtual/range {v17 .. v17}, Lanet/channel/request/Request;->getUrl()Ljava/net/URL;

    move-result-object v7

    const-string v8, "GET"

    sget-object v9, Lorg/android/spdy/RequestPriority;->DEFAULT_PRIORITY:Lorg/android/spdy/RequestPriority;

    const v10, 0xea60

    const v11, 0x9c40

    invoke-direct/range {v6 .. v11}, Lorg/android/spdy/SpdyRequest;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/android/spdy/RequestPriority;II)V

    .line 495
    const-string v3, ":host"

    invoke-virtual {v12}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Lorg/android/spdy/SpdyRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    const/4 v3, 0x0

    new-instance v4, Lanetwork/channel/NetworkInfo$SpdyRequestCallback;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v4, v0, v14, v1, v13}, Lanetwork/channel/NetworkInfo$SpdyRequestCallback;-><init>(Lanetwork/channel/NetworkInfo;Ljava/util/HashMap;Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, v6, v3, v2, v4}, Lorg/android/spdy/SpdySession;->submitRequest(Lorg/android/spdy/SpdyRequest;Lorg/android/spdy/SpdyDataProvider;Ljava/lang/Object;Lorg/android/spdy/Spdycb;)I

    goto/16 :goto_2

    .line 500
    :cond_7
    :try_start_3
    invoke-virtual {v13}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 505
    :goto_5
    invoke-virtual {v14}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 506
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 507
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 508
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\tConnection:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v3, v3, v7

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", code:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v3, v3, v7

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", Request:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    const/4 v7, 0x2

    aget-object v3, v3, v7

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", code: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v2, v2, v6

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 501
    :catch_1
    move-exception v2

    .line 502
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5

    .line 510
    :cond_8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method
