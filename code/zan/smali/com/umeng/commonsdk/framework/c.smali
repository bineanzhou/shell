.class Lcom/umeng/commonsdk/framework/c;
.super Ljava/lang/Object;
.source "UMNetWorkSender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/framework/c$a;
    }
.end annotation


# static fields
.field private static a:Landroid/os/HandlerThread; = null

.field private static b:Landroid/os/Handler; = null

.field private static c:Landroid/os/Handler; = null

.field private static final d:I = 0x111

.field private static final e:I = 0x200

.field private static final f:I = 0x301

.field private static g:Lcom/umeng/commonsdk/framework/c$a;

.field private static h:Landroid/net/ConnectivityManager;

.field private static i:Landroid/net/NetworkInfo;

.field private static j:Landroid/content/IntentFilter;

.field private static k:Lcom/umeng/commonsdk/statistics/internal/StatTracer;

.field private static l:Lcom/umeng/commonsdk/statistics/noise/ImLatent;

.field private static m:Z

.field private static n:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    sput-object v0, Lcom/umeng/commonsdk/framework/c;->a:Landroid/os/HandlerThread;

    .line 35
    sput-object v0, Lcom/umeng/commonsdk/framework/c;->b:Landroid/os/Handler;

    .line 37
    sput-object v0, Lcom/umeng/commonsdk/framework/c;->c:Landroid/os/Handler;

    .line 49
    sput-object v0, Lcom/umeng/commonsdk/framework/c;->j:Landroid/content/IntentFilter;

    .line 52
    sput-object v0, Lcom/umeng/commonsdk/framework/c;->k:Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    .line 53
    sput-object v0, Lcom/umeng/commonsdk/framework/c;->l:Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    .line 55
    const/4 v0, 0x0

    sput-boolean v0, Lcom/umeng/commonsdk/framework/c;->m:Z

    .line 57
    new-instance v0, Lcom/umeng/commonsdk/framework/c$1;

    invoke-direct {v0}, Lcom/umeng/commonsdk/framework/c$1;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/framework/c;->n:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    sput-object p2, Lcom/umeng/commonsdk/framework/c;->c:Landroid/os/Handler;

    .line 103
    :try_start_0
    sget-object v0, Lcom/umeng/commonsdk/framework/c;->a:Landroid/os/HandlerThread;

    if-nez v0, :cond_3

    .line 105
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NetWorkSender"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/framework/c;->a:Landroid/os/HandlerThread;

    .line 106
    sget-object v0, Lcom/umeng/commonsdk/framework/c;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 107
    sget-object v0, Lcom/umeng/commonsdk/framework/c;->g:Lcom/umeng/commonsdk/framework/c$a;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lcom/umeng/commonsdk/framework/c$a;

    invoke-static {p1}, Lcom/umeng/commonsdk/framework/b;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/framework/c$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/framework/c;->g:Lcom/umeng/commonsdk/framework/c$a;

    .line 109
    sget-object v0, Lcom/umeng/commonsdk/framework/c;->g:Lcom/umeng/commonsdk/framework/c$a;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/framework/c$a;->startWatching()V

    .line 110
    const-string v0, "--->>> FileMonitor has already started!"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/e;->b(Ljava/lang/String;)V

    .line 112
    :cond_0
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 113
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    sget-object v1, Lcom/umeng/commonsdk/framework/c;->j:Landroid/content/IntentFilter;

    if-nez v1, :cond_1

    .line 115
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    sput-object v1, Lcom/umeng/commonsdk/framework/c;->j:Landroid/content/IntentFilter;

    .line 116
    sget-object v1, Lcom/umeng/commonsdk/framework/c;->j:Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    sget-object v1, Lcom/umeng/commonsdk/framework/c;->n:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    .line 118
    sget-object v1, Lcom/umeng/commonsdk/framework/c;->n:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/umeng/commonsdk/framework/c;->j:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 124
    :cond_1
    sget-object v0, Lcom/umeng/commonsdk/framework/c;->k:Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    if-nez v0, :cond_2

    .line 125
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/framework/c;->k:Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    .line 126
    sget-object v0, Lcom/umeng/commonsdk/framework/c;->k:Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->getService(Landroid/content/Context;Lcom/umeng/commonsdk/statistics/internal/StatTracer;)Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/framework/c;->l:Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    .line 129
    :cond_2
    sget-object v0, Lcom/umeng/commonsdk/framework/c;->b:Landroid/os/Handler;

    if-nez v0, :cond_3

    .line 130
    new-instance v0, Lcom/umeng/commonsdk/framework/c$2;

    sget-object v1, Lcom/umeng/commonsdk/framework/c;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/umeng/commonsdk/framework/c$2;-><init>(Lcom/umeng/commonsdk/framework/c;Landroid/os/Looper;)V

    sput-object v0, Lcom/umeng/commonsdk/framework/c;->b:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :cond_3
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 157
    invoke-static {p1, v0}, Lcom/umeng/commonsdk/proguard/b;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic a(Landroid/net/ConnectivityManager;)Landroid/net/ConnectivityManager;
    .locals 0

    .prologue
    .line 30
    sput-object p0, Lcom/umeng/commonsdk/framework/c;->h:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method static synthetic a(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0

    .prologue
    .line 30
    sput-object p0, Lcom/umeng/commonsdk/framework/c;->i:Landroid/net/NetworkInfo;

    return-object p0
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 213
    const/16 v0, 0x200

    invoke-static {v0}, Lcom/umeng/commonsdk/framework/c;->c(I)V

    .line 214
    return-void
.end method

.method static synthetic a(I)V
    .locals 0

    .prologue
    .line 30
    invoke-static {p0}, Lcom/umeng/commonsdk/framework/c;->c(I)V

    return-void
.end method

.method private static a(II)V
    .locals 4

    .prologue
    .line 266
    sget-boolean v0, Lcom/umeng/commonsdk/framework/c;->m:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/umeng/commonsdk/framework/c;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 267
    sget-object v0, Lcom/umeng/commonsdk/framework/c;->c:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeMessages(I)V

    .line 268
    sget-object v0, Lcom/umeng/commonsdk/framework/c;->c:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 269
    iput p0, v0, Landroid/os/Message;->what:I

    .line 270
    sget-object v1, Lcom/umeng/commonsdk/framework/c;->c:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 272
    :cond_0
    return-void
.end method

.method private static a(IJ)V
    .locals 3

    .prologue
    .line 247
    sget-boolean v0, Lcom/umeng/commonsdk/framework/c;->m:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/umeng/commonsdk/framework/c;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 248
    sget-object v0, Lcom/umeng/commonsdk/framework/c;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 249
    iput p0, v0, Landroid/os/Message;->what:I

    .line 250
    sget-object v1, Lcom/umeng/commonsdk/framework/c;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 252
    :cond_0
    return-void
.end method

.method static synthetic a(Z)Z
    .locals 0

    .prologue
    .line 30
    sput-boolean p0, Lcom/umeng/commonsdk/framework/c;->m:Z

    return p0
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 258
    const/16 v0, 0x111

    invoke-static {v0}, Lcom/umeng/commonsdk/framework/c;->b(I)V

    .line 259
    return-void
.end method

.method private static b(I)V
    .locals 2

    .prologue
    .line 221
    sget-boolean v0, Lcom/umeng/commonsdk/framework/c;->m:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/umeng/commonsdk/framework/c;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 222
    sget-object v0, Lcom/umeng/commonsdk/framework/c;->b:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    sget-object v0, Lcom/umeng/commonsdk/framework/c;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 224
    iput p0, v0, Landroid/os/Message;->what:I

    .line 225
    sget-object v1, Lcom/umeng/commonsdk/framework/c;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 228
    :cond_0
    return-void
.end method

.method public static c()V
    .locals 2

    .prologue
    .line 275
    const/16 v0, 0x301

    const/16 v1, 0xbb8

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/framework/c;->a(II)V

    .line 276
    return-void
.end method

.method private static c(I)V
    .locals 2

    .prologue
    .line 235
    sget-boolean v0, Lcom/umeng/commonsdk/framework/c;->m:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/umeng/commonsdk/framework/c;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 236
    sget-object v0, Lcom/umeng/commonsdk/framework/c;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 237
    iput p0, v0, Landroid/os/Message;->what:I

    .line 238
    sget-object v1, Lcom/umeng/commonsdk/framework/c;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 240
    :cond_0
    return-void
.end method

.method static synthetic d()Landroid/net/ConnectivityManager;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/umeng/commonsdk/framework/c;->h:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic e()Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/umeng/commonsdk/framework/c;->i:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic f()V
    .locals 0

    .prologue
    .line 30
    invoke-static {}, Lcom/umeng/commonsdk/framework/c;->j()V

    return-void
.end method

.method static synthetic g()V
    .locals 0

    .prologue
    .line 30
    invoke-static {}, Lcom/umeng/commonsdk/framework/c;->i()V

    return-void
.end method

.method private static h()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 165
    sget-object v0, Lcom/umeng/commonsdk/framework/c;->a:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 166
    sput-object v1, Lcom/umeng/commonsdk/framework/c;->a:Landroid/os/HandlerThread;

    .line 168
    :cond_0
    sget-object v0, Lcom/umeng/commonsdk/framework/c;->b:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 169
    sput-object v1, Lcom/umeng/commonsdk/framework/c;->b:Landroid/os/Handler;

    .line 171
    :cond_1
    sget-object v0, Lcom/umeng/commonsdk/framework/c;->c:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 172
    sput-object v1, Lcom/umeng/commonsdk/framework/c;->c:Landroid/os/Handler;

    .line 175
    :cond_2
    sget-object v0, Lcom/umeng/commonsdk/framework/c;->l:Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    if-eqz v0, :cond_3

    .line 176
    sput-object v1, Lcom/umeng/commonsdk/framework/c;->l:Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    .line 179
    :cond_3
    sget-object v0, Lcom/umeng/commonsdk/framework/c;->k:Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    if-eqz v0, :cond_4

    .line 180
    sput-object v1, Lcom/umeng/commonsdk/framework/c;->k:Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    .line 182
    :cond_4
    return-void
.end method

.method private static i()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 189
    sget-object v0, Lcom/umeng/commonsdk/framework/c;->g:Lcom/umeng/commonsdk/framework/c$a;

    if-eqz v0, :cond_0

    .line 190
    sget-object v0, Lcom/umeng/commonsdk/framework/c;->g:Lcom/umeng/commonsdk/framework/c$a;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/framework/c$a;->stopWatching()V

    .line 191
    sput-object v2, Lcom/umeng/commonsdk/framework/c;->g:Lcom/umeng/commonsdk/framework/c$a;

    .line 193
    :cond_0
    sget-object v0, Lcom/umeng/commonsdk/framework/c;->j:Landroid/content/IntentFilter;

    if-eqz v0, :cond_2

    .line 194
    sget-object v0, Lcom/umeng/commonsdk/framework/c;->n:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 195
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 196
    sget-object v1, Lcom/umeng/commonsdk/framework/c;->n:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 197
    sput-object v2, Lcom/umeng/commonsdk/framework/c;->n:Landroid/content/BroadcastReceiver;

    .line 199
    :cond_1
    sput-object v2, Lcom/umeng/commonsdk/framework/c;->j:Landroid/content/IntentFilter;

    .line 201
    :cond_2
    const-string v0, "--->>> handleQuit: Quit sender thread."

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/e;->b(Ljava/lang/String;)V

    .line 202
    sget-object v0, Lcom/umeng/commonsdk/framework/c;->a:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3

    .line 203
    sget-object v0, Lcom/umeng/commonsdk/framework/c;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 204
    invoke-static {}, Lcom/umeng/commonsdk/framework/c;->h()V

    .line 207
    :cond_3
    return-void
.end method

.method private static j()V
    .locals 8

    .prologue
    .line 312
    const-string v0, "--->>> handleProcessNext: Enter..."

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/e;->b(Ljava/lang/String;)V

    .line 315
    sget-boolean v0, Lcom/umeng/commonsdk/framework/c;->m:Z

    if-nez v0, :cond_0

    .line 375
    :goto_0
    return-void

    .line 318
    :cond_0
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->getAppContext()Landroid/content/Context;

    move-result-object v1

    .line 320
    :try_start_0
    invoke-static {v1}, Lcom/umeng/commonsdk/framework/b;->c(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_5

    .line 321
    const-string v0, "--->>> The envelope file exists."

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/e;->b(Ljava/lang/String;)V

    .line 322
    invoke-static {v1}, Lcom/umeng/commonsdk/framework/b;->c(Landroid/content/Context;)I

    move-result v0

    const/16 v2, 0x64

    if-le v0, v2, :cond_1

    .line 323
    const-string v0, "--->>> Number of envelope files is greater than 100, remove old files first."

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/e;->b(Ljava/lang/String;)V

    .line 324
    invoke-static {v1}, Lcom/umeng/commonsdk/framework/b;->d(Landroid/content/Context;)V

    .line 327
    :cond_1
    invoke-static {v1}, Lcom/umeng/commonsdk/framework/b;->e(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 328
    if-eqz v0, :cond_5

    .line 329
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 331
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--->>> Ready to send envelope file ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/e;->b(Ljava/lang/String;)V

    .line 332
    new-instance v2, Lcom/umeng/commonsdk/statistics/c;

    invoke-direct {v2, v1}, Lcom/umeng/commonsdk/statistics/c;-><init>(Landroid/content/Context;)V

    .line 335
    sget-object v3, Lcom/umeng/commonsdk/framework/c;->l:Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/umeng/commonsdk/framework/c;->l:Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    invoke-virtual {v3}, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->isLatentActivite()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 336
    sget-object v3, Lcom/umeng/commonsdk/framework/c;->l:Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    invoke-virtual {v3}, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->latentDeactivite()V

    .line 337
    sget-object v3, Lcom/umeng/commonsdk/framework/c;->l:Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    invoke-virtual {v3}, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->getDelayTime()J

    move-result-wide v4

    .line 338
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    .line 339
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start lacency policy, wait ["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "] milliseconds ."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/commonsdk/statistics/common/e;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 348
    :cond_2
    :goto_1
    :try_start_2
    invoke-virtual {v2, v0}, Lcom/umeng/commonsdk/statistics/c;->a(Ljava/io/File;)Z

    move-result v2

    .line 349
    if-eqz v2, :cond_4

    .line 350
    const-string v2, "--->>> Send envelope file success, delete it."

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/e;->b(Ljava/lang/String;)V

    .line 352
    invoke-static {v0}, Lcom/umeng/commonsdk/framework/b;->a(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 353
    const-string v2, "--->>> Failed to delete already processed file. We try again after delete failed."

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/e;->b(Ljava/lang/String;)V

    .line 354
    invoke-static {v0}, Lcom/umeng/commonsdk/framework/b;->a(Ljava/io/File;)Z

    .line 362
    :cond_3
    const/16 v0, 0x111

    invoke-static {v0}, Lcom/umeng/commonsdk/framework/c;->c(I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 372
    :catch_0
    move-exception v0

    .line 373
    invoke-static {v1, v0}, Lcom/umeng/commonsdk/proguard/b;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 342
    :catch_1
    move-exception v3

    .line 343
    :try_start_3
    invoke-static {v1, v3}, Lcom/umeng/commonsdk/proguard/b;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 358
    :cond_4
    const-string v0, "--->>> Send envelope file failed, abandon and wait next trigger!"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/e;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 366
    :cond_5
    const-string v0, "--->>> The envelope file not exists, start auto process for module cache data."

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/e;->b(Ljava/lang/String;)V

    .line 371
    invoke-static {}, Lcom/umeng/commonsdk/framework/c;->c()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method
