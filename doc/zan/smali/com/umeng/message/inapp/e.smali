.class Lcom/umeng/message/inapp/e;
.super Ljava/lang/Object;
.source "UmengInAppMessageTracker.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static c:Z

.field private static d:Lcom/umeng/message/inapp/e;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/umeng/message/inapp/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/message/inapp/e;->a:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lcom/umeng/message/inapp/e;->c:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/inapp/e;->b:Landroid/content/Context;

    .line 36
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/umeng/message/inapp/e;
    .locals 3

    .prologue
    .line 39
    sget-object v0, Lcom/umeng/message/inapp/e;->d:Lcom/umeng/message/inapp/e;

    if-nez v0, :cond_1

    .line 40
    const-class v1, Lcom/umeng/message/inapp/e;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v0, Lcom/umeng/message/inapp/e;->d:Lcom/umeng/message/inapp/e;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/umeng/message/inapp/e;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/umeng/message/inapp/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/umeng/message/inapp/e;->d:Lcom/umeng/message/inapp/e;

    .line 44
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_1
    sget-object v0, Lcom/umeng/message/inapp/e;->d:Lcom/umeng/message/inapp/e;

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/umeng/message/inapp/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/umeng/message/inapp/e;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/umeng/message/inapp/e;->b()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/umeng/message/inapp/e;Ljava/lang/String;IIIIIIII)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct/range {p0 .. p9}, Lcom/umeng/message/inapp/e;->b(Ljava/lang/String;IIIIIIII)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Z)Z
    .locals 0

    .prologue
    .line 25
    sput-boolean p0, Lcom/umeng/message/inapp/e;->c:Z

    return p0
.end method

.method static synthetic b(Lcom/umeng/message/inapp/e;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/umeng/message/inapp/e;->b:Landroid/content/Context;

    return-object v0
.end method

.method private b()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 174
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 175
    const-string v1, "header"

    iget-object v2, p0, Lcom/umeng/message/inapp/e;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/message/UTrack;->getInstance(Landroid/content/Context;)Lcom/umeng/message/UTrack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/message/UTrack;->getHeader()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    sget-boolean v1, Lcom/umeng/message/inapp/InAppMessageManager;->a:Z

    if-eqz v1, :cond_0

    .line 177
    const-string v1, "pmode"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    :goto_0
    return-object v0

    .line 179
    :cond_0
    const-string v1, "pmode"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0
.end method

.method private b(Ljava/lang/String;IIIIIIII)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 217
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 218
    const-string v1, "header"

    iget-object v2, p0, Lcom/umeng/message/inapp/e;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/message/UTrack;->getInstance(Landroid/content/Context;)Lcom/umeng/message/UTrack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/message/UTrack;->getHeader()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 219
    const-string v1, "msg_id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 220
    const-string v1, "msg_type"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 221
    const-string v1, "num_display"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 222
    const-string v1, "num_open_full"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 223
    const-string v1, "num_open_top"

    invoke-virtual {v0, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 224
    const-string v1, "num_open_bottom"

    invoke-virtual {v0, v1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 225
    const-string v1, "num_close"

    invoke-virtual {v0, v1, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 226
    const-string v1, "num_duration"

    invoke-virtual {v0, v1, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 227
    const-string v1, "num_custom"

    invoke-virtual {v0, v1, p9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 229
    sget-object v1, Lcom/umeng/message/MsgConstant;->STATS_ENDPOINT:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/umeng/message/common/impl/json/JUtrack;->sendRequest(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private c()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 185
    sget-boolean v0, Lcom/umeng/message/inapp/e;->c:Z

    if-eqz v0, :cond_0

    .line 186
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v1, Lcom/umeng/message/inapp/e;->a:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "sendInAppCacheLog\u5df2\u7ecf\u5728\u961f\u5217\u91cc\uff0c\u5ffd\u7565\u8be5\u8bf7\u6c42"

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v5, v2}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 212
    :goto_0
    return-void

    .line 189
    :cond_0
    sput-boolean v2, Lcom/umeng/message/inapp/e;->c:Z

    .line 190
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v1, Lcom/umeng/message/inapp/e;->a:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "sendInAppCacheLog\u5f00\u59cb"

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v5, v2}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 191
    new-instance v0, Lcom/umeng/message/inapp/e$4;

    invoke-direct {v0, p0}, Lcom/umeng/message/inapp/e$4;-><init>(Lcom/umeng/message/inapp/e;)V

    .line 211
    invoke-static {v0}, Lcom/umeng/message/common/d;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method a(Lcom/umeng/message/inapp/IUmengInAppMessageCallback;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/umeng/message/inapp/e;->c()V

    .line 54
    new-instance v0, Lcom/umeng/message/inapp/e$1;

    invoke-direct {v0, p0, p1}, Lcom/umeng/message/inapp/e$1;-><init>(Lcom/umeng/message/inapp/e;Lcom/umeng/message/inapp/IUmengInAppMessageCallback;)V

    .line 95
    invoke-static {v0}, Lcom/umeng/message/common/d;->a(Ljava/lang/Runnable;)V

    .line 96
    return-void
.end method

.method a(Ljava/lang/String;IIIIIIII)V
    .locals 11

    .prologue
    .line 152
    new-instance v0, Lcom/umeng/message/inapp/e$3;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/umeng/message/inapp/e$3;-><init>(Lcom/umeng/message/inapp/e;Ljava/lang/String;IIIIIIII)V

    .line 170
    invoke-static {v0}, Lcom/umeng/message/common/d;->a(Ljava/lang/Runnable;)V

    .line 171
    return-void
.end method

.method a(Ljava/lang/String;Lcom/umeng/message/inapp/IUmengInAppMessageCallback;)V
    .locals 1

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/umeng/message/inapp/e;->c()V

    .line 103
    new-instance v0, Lcom/umeng/message/inapp/e$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/umeng/message/inapp/e$2;-><init>(Lcom/umeng/message/inapp/e;Ljava/lang/String;Lcom/umeng/message/inapp/IUmengInAppMessageCallback;)V

    .line 146
    invoke-static {v0}, Lcom/umeng/message/common/d;->a(Ljava/lang/Runnable;)V

    .line 147
    return-void
.end method
