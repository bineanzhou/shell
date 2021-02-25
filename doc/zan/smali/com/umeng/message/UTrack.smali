.class public Lcom/umeng/message/UTrack;
.super Ljava/lang/Object;
.source "UTrack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/message/UTrack$SuccessState;,
        Lcom/umeng/message/UTrack$ICallBack;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static d:Lcom/umeng/message/UTrack;

.field private static e:Lcom/umeng/message/common/inter/IUtrack;

.field private static i:Z

.field private static j:Z

.field private static k:Z


# instance fields
.field private b:Lorg/json/JSONObject;

.field private c:Lorg/json/JSONObject;

.field private f:Landroid/content/Context;

.field private g:Z

.field private final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    const-class v0, Lcom/umeng/message/UTrack;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/message/UTrack;->a:Ljava/lang/String;

    .line 312
    sput-boolean v1, Lcom/umeng/message/UTrack;->i:Z

    .line 452
    sput-boolean v1, Lcom/umeng/message/UTrack;->j:Z

    .line 546
    sput-boolean v1, Lcom/umeng/message/UTrack;->k:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-string v0, "appkey"

    iput-object v0, p0, Lcom/umeng/message/UTrack;->h:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/UTrack;->f:Landroid/content/Context;

    .line 84
    invoke-direct {p0}, Lcom/umeng/message/UTrack;->d()V

    .line 85
    return-void
.end method

.method static synthetic a(Lcom/umeng/message/UTrack;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/umeng/message/UTrack;->f:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/umeng/message/UTrack;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/umeng/message/UTrack;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/message/UTrack;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v8, 0x0

    .line 840
    .line 842
    :try_start_0
    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 843
    const-string v4, "UTF-8"

    invoke-virtual {p2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 844
    array-length v5, v3

    const/16 v6, 0x80

    if-gt v5, v6, :cond_1

    array-length v3, v3

    if-ltz v3, :cond_1

    move v3, v1

    .line 845
    :goto_0
    array-length v5, v4

    const/16 v6, 0x40

    if-gt v5, v6, :cond_2

    array-length v4, v4

    if-ltz v4, :cond_2

    .line 846
    :goto_1
    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    .line 853
    if-eqz p3, :cond_0

    .line 854
    const-string v1, "interval"

    const-wide/16 v2, 0x0

    invoke-virtual {p3, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 855
    const-string v1, "last_requestTime"

    const-wide/16 v4, 0x0

    invoke-virtual {p3, v1, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 856
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 857
    cmp-long v1, v2, v8

    if-eqz v1, :cond_0

    sub-long v4, v6, v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    cmp-long v1, v4, v2

    if-gez v1, :cond_0

    .line 858
    const-string v0, "interval\u9650\u5236"

    .line 868
    :cond_0
    :goto_2
    return-object v0

    :cond_1
    move v3, v2

    .line 844
    goto :goto_0

    :cond_2
    move v1, v2

    .line 845
    goto :goto_1

    .line 849
    :cond_3
    const-string v0, "alias\u957f\u5ea6\u4e0d\u57280~128\u4e4b\u95f4\u6216aliasType\u957f\u5ea6\u4e0d\u57280~64\u4e4b\u95f4"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 862
    :catch_0
    move-exception v1

    .line 863
    if-eqz v1, :cond_0

    .line 864
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private a(J)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 315
    invoke-direct {p0}, Lcom/umeng/message/UTrack;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 410
    :goto_0
    return-void

    .line 318
    :cond_0
    sget-boolean v0, Lcom/umeng/message/UTrack;->i:Z

    if-eqz v0, :cond_1

    .line 319
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v1, Lcom/umeng/message/UTrack;->a:Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "appCachedPushlog\u5df2\u7ecf\u5728\u961f\u5217\u91cc, \u5ffd\u7565\u8fd9\u6b21\u8bf7\u6c42"

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v6, v2}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    goto :goto_0

    .line 322
    :cond_1
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v1, Lcom/umeng/message/UTrack;->a:Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "appCachedPushlog\u5f00\u59cb, \u8bbe\u7f6eappLaunchSending\u6807\u5fd7\u4f4d"

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v6, v2}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 323
    sput-boolean v4, Lcom/umeng/message/UTrack;->i:Z

    .line 325
    iget-object v0, p0, Lcom/umeng/message/UTrack;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/proguard/h;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 327
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/umeng/message/UTrack$6;

    invoke-direct {v1, p0}, Lcom/umeng/message/UTrack$6;-><init>(Lcom/umeng/message/UTrack;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 337
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 340
    :cond_2
    new-instance v0, Lcom/umeng/message/UTrack$7;

    invoke-direct {v0, p0}, Lcom/umeng/message/UTrack$7;-><init>(Lcom/umeng/message/UTrack;)V

    .line 390
    invoke-static {v0}, Lcom/umeng/message/common/d;->a(Ljava/lang/Runnable;)V

    .line 392
    new-instance v0, Lcom/umeng/message/UTrack$8;

    invoke-direct {v0, p0}, Lcom/umeng/message/UTrack$8;-><init>(Lcom/umeng/message/UTrack;)V

    .line 409
    invoke-static {v0}, Lcom/umeng/message/common/d;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/umeng/message/UTrack;Ljava/lang/String;IJLjava/lang/String;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct/range {p0 .. p5}, Lcom/umeng/message/UTrack;->c(Ljava/lang/String;IJLjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/umeng/message/UTrack;Lorg/json/JSONArray;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/umeng/message/UTrack;->a(Lorg/json/JSONArray;)V

    return-void
.end method

.method private a(Ljava/lang/String;IJLjava/lang/String;)V
    .locals 13

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/umeng/message/UTrack;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    :goto_0
    return-void

    .line 205
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v1, Lcom/umeng/message/UTrack;->a:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "trackMsgLog: msgId\u4e3a\u7a7a"

    aput-object v5, v3, v4

    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/umeng/message/UTrack;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/proguard/l;->a(Landroid/content/Context;)Lcom/umeng/message/proguard/l;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/umeng/message/proguard/l;->a(Ljava/lang/String;IJLjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :goto_1
    new-instance v0, Lcom/umeng/message/UTrack$1;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/umeng/message/UTrack$1;-><init>(Lcom/umeng/message/UTrack;Ljava/lang/String;IJLjava/lang/String;)V

    .line 225
    const-wide/16 v2, 0x0

    .line 226
    const-wide/16 v4, 0x0

    cmp-long v1, p3, v4

    if-lez v1, :cond_2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    const/16 v1, 0x15

    if-eq p2, v1, :cond_2

    .line 228
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    rem-long v2, v2, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 229
    :cond_2
    sget-object v1, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v4, Lcom/umeng/message/UTrack;->a:Ljava/lang/String;

    const/4 v5, 0x2

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "trackMsgLog(msgId=%s, actionType=%d, random=%d, delay=%d)"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    const/4 v10, 0x1

    .line 231
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    .line 229
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v1, v4, v5, v6}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 232
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v2, v3, v1}, Lcom/umeng/message/common/d;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    goto/16 :goto_0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 215
    sget-object v1, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v2, Lcom/umeng/message/UTrack;->a:Ljava/lang/String;

    const/4 v3, 0x2

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "trackMsgLog: "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-interface {v1, v2, v3, v6}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 261
    new-instance v0, Lcom/umeng/message/UTrack$5;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/umeng/message/UTrack$5;-><init>(Lcom/umeng/message/UTrack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-static {v0}, Lcom/umeng/message/common/d;->a(Ljava/lang/Runnable;)V

    .line 269
    return-void
.end method

.method private a(Lorg/json/JSONArray;)V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 414
    if-nez p1, :cond_0

    .line 441
    :goto_0
    return-void

    .line 418
    :cond_0
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 419
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_2

    move v1, v0

    .line 420
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 421
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 422
    const-string v3, "msg_id"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 423
    const-string v4, "action_type"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 425
    const-string v4, "MsgId=? And ActionType=?"

    .line 426
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 427
    iget-object v6, p0, Lcom/umeng/message/UTrack;->f:Landroid/content/Context;

    invoke-static {v6}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v6, Lcom/umeng/message/provider/a;->f:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    if-eqz v0, :cond_1

    .line 430
    const-string v0, "MsgId=?"

    .line 431
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    .line 432
    iget-object v3, p0, Lcom/umeng/message/UTrack;->f:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v3, Lcom/umeng/message/provider/a;->g:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 437
    :cond_2
    iget-object v0, p0, Lcom/umeng/message/UTrack;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/message/UTrack;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v1, Lcom/umeng/message/provider/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 438
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method static synthetic a(Z)Z
    .locals 0

    .prologue
    .line 53
    sput-boolean p0, Lcom/umeng/message/UTrack;->i:Z

    return p0
.end method

.method static synthetic b()Lcom/umeng/message/common/inter/IUtrack;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/umeng/message/UTrack;->e:Lcom/umeng/message/common/inter/IUtrack;

    return-object v0
.end method

.method static synthetic b(Lcom/umeng/message/UTrack;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/umeng/message/UTrack;->g()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private b(J)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 474
    sget-boolean v0, Lcom/umeng/message/UTrack;->j:Z

    if-eqz v0, :cond_0

    .line 475
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v1, Lcom/umeng/message/UTrack;->a:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "trackAppLaunch\u5df2\u7ecf\u5728\u961f\u5217\u91cc, \u5ffd\u7565\u8fd9\u6b21\u8bf7\u6c42"

    aput-object v3, v2, v7

    invoke-interface {v0, v1, v8, v2}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 505
    :goto_0
    return-void

    .line 478
    :cond_0
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v1, Lcom/umeng/message/UTrack;->a:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "trackAppLaunch\u5f00\u59cb, \u8bbe\u7f6eappLaunchSending\u6807\u5fd7\u4f4d"

    aput-object v3, v2, v7

    invoke-interface {v0, v1, v8, v2}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 479
    sput-boolean v5, Lcom/umeng/message/UTrack;->j:Z

    .line 481
    new-instance v0, Lcom/umeng/message/UTrack$9;

    invoke-direct {v0, p0}, Lcom/umeng/message/UTrack$9;-><init>(Lcom/umeng/message/UTrack;)V

    .line 503
    sget-object v1, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v2, Lcom/umeng/message/UTrack;->a:Ljava/lang/String;

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "trackAppLaunch(delay=%d)"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-interface {v1, v2, v8, v3}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 504
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, p1, p2, v1}, Lcom/umeng/message/common/d;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;IJLjava/lang/String;)V
    .locals 1

    .prologue
    .line 239
    invoke-direct/range {p0 .. p5}, Lcom/umeng/message/UTrack;->a(Ljava/lang/String;IJLjava/lang/String;)V

    .line 240
    return-void
.end method

.method static synthetic b(Z)Z
    .locals 0

    .prologue
    .line 53
    sput-boolean p0, Lcom/umeng/message/UTrack;->j:Z

    return p0
.end method

.method private c()Lorg/json/JSONArray;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 508
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 509
    const-string v0, "["

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    iget-object v0, p0, Lcom/umeng/message/UTrack;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/MessageSharedPrefs;->getUcode()Ljava/lang/String;

    move-result-object v0

    .line 512
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 514
    :try_start_0
    invoke-static {v0}, Lcom/umeng/message/proguard/h;->g(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v3, v0

    .line 519
    :goto_0
    if-nez v3, :cond_1

    .line 543
    :goto_1
    return-object v2

    .line 515
    :catch_0
    move-exception v0

    .line 516
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move-object v3, v2

    goto :goto_0

    .line 522
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 523
    const-string v0, "{"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    const-string v0, "\"p\":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    const-string v0, "\""

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/entity/Ucode;

    iget-object v0, v0, Lcom/umeng/message/entity/Ucode;->p:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    const-string v0, "\""

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    const-string v0, ","

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    const-string v0, "\"t\":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/entity/Ucode;

    iget-boolean v0, v0, Lcom/umeng/message/entity/Ucode;->b:Z

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 531
    const-string v0, "}"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v1, v0, :cond_2

    .line 533
    const-string v0, ","

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 536
    :cond_3
    const-string v0, "]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    :try_start_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    move-object v2, v0

    .line 543
    goto :goto_1

    .line 540
    :catch_1
    move-exception v0

    .line 541
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v2

    goto :goto_3
.end method

.method static synthetic c(Lcom/umeng/message/UTrack;)Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/umeng/message/UTrack;->c()Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized c(Ljava/lang/String;IJLjava/lang/String;)V
    .locals 3

    .prologue
    .line 272
    monitor-enter p0

    if-nez p5, :cond_0

    .line 273
    :try_start_0
    const-string p5, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/umeng/message/UTrack;->h()Lorg/json/JSONObject;

    move-result-object v0

    .line 278
    const-string v1, "msg_id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 279
    const-string v1, "action_type"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 280
    const-string v1, "ts"

    invoke-virtual {v0, v1, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 281
    const-string v1, "pa"

    invoke-virtual {v0, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 283
    sget-object v1, Lcom/umeng/message/UTrack;->e:Lcom/umeng/message/common/inter/IUtrack;

    invoke-interface {v1, v0, p1, p2}, Lcom/umeng/message/common/inter/IUtrack;->sendMsgLog(Lorg/json/JSONObject;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 289
    :goto_0
    monitor-exit p0

    return-void

    .line 285
    :catch_0
    move-exception v0

    .line 286
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 272
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c(Z)Z
    .locals 0

    .prologue
    .line 53
    sput-boolean p0, Lcom/umeng/message/UTrack;->k:Z

    return p0
.end method

.method static synthetic d(Lcom/umeng/message/UTrack;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/umeng/message/UTrack;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 661
    iget-object v0, p0, Lcom/umeng/message/UTrack;->b:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 662
    new-instance v0, Lcom/umeng/message/common/b;

    invoke-direct {v0}, Lcom/umeng/message/common/b;-><init>()V

    .line 663
    iget-object v1, p0, Lcom/umeng/message/UTrack;->f:Landroid/content/Context;

    new-array v2, v4, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/umeng/message/common/b;->b(Landroid/content/Context;[Ljava/lang/String;)V

    .line 664
    iget-object v1, p0, Lcom/umeng/message/UTrack;->f:Landroid/content/Context;

    new-array v2, v6, [Ljava/lang/String;

    iget-object v3, p0, Lcom/umeng/message/UTrack;->f:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v3

    .line 665
    invoke-virtual {v3}, Lcom/umeng/message/PushAgent;->getMessageAppkey()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/umeng/message/UTrack;->f:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v3

    .line 666
    invoke-virtual {v3}, Lcom/umeng/message/PushAgent;->getMessageChannel()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 664
    invoke-virtual {v0, v1, v2}, Lcom/umeng/message/common/b;->a(Landroid/content/Context;[Ljava/lang/String;)V

    .line 667
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/umeng/message/UTrack;->b:Lorg/json/JSONObject;

    .line 669
    :try_start_0
    iget-object v1, p0, Lcom/umeng/message/UTrack;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/umeng/message/common/b;->b(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 676
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/umeng/message/UTrack;->c:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    .line 677
    new-instance v0, Lcom/umeng/message/common/b;

    invoke-direct {v0}, Lcom/umeng/message/common/b;-><init>()V

    .line 678
    iget-object v1, p0, Lcom/umeng/message/UTrack;->f:Landroid/content/Context;

    new-array v2, v4, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/umeng/message/common/b;->c(Landroid/content/Context;[Ljava/lang/String;)V

    .line 679
    iget-object v1, p0, Lcom/umeng/message/UTrack;->f:Landroid/content/Context;

    new-array v2, v6, [Ljava/lang/String;

    iget-object v3, p0, Lcom/umeng/message/UTrack;->f:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v3

    .line 680
    invoke-virtual {v3}, Lcom/umeng/message/PushAgent;->getMessageAppkey()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/umeng/message/UTrack;->f:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v3

    .line 681
    invoke-virtual {v3}, Lcom/umeng/message/PushAgent;->getMessageChannel()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 679
    invoke-virtual {v0, v1, v2}, Lcom/umeng/message/common/b;->a(Landroid/content/Context;[Ljava/lang/String;)V

    .line 682
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/umeng/message/UTrack;->c:Lorg/json/JSONObject;

    .line 684
    :try_start_1
    iget-object v1, p0, Lcom/umeng/message/UTrack;->c:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/umeng/message/common/b;->c(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 689
    :cond_1
    :goto_1
    return-void

    .line 670
    :catch_0
    move-exception v0

    .line 671
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 685
    :catch_1
    move-exception v0

    .line 686
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private e()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1038
    iget-object v2, p0, Lcom/umeng/message/UTrack;->f:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/message/common/UmengMessageDeviceConfig;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1039
    sget-object v2, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v3, Lcom/umeng/message/UTrack;->a:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/String;

    const-string v4, "UTDID\u4e3a\u7a7a"

    aput-object v4, v1, v0

    invoke-interface {v2, v3, v0, v1}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 1048
    :goto_0
    return v0

    .line 1042
    :cond_0
    iget-object v2, p0, Lcom/umeng/message/UTrack;->f:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/message/MessageSharedPrefs;->getDeviceToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1043
    sget-object v2, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v3, Lcom/umeng/message/UTrack;->a:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/String;

    const-string v4, "Device token\u4e3a\u7a7a"

    aput-object v4, v1, v0

    invoke-interface {v2, v3, v0, v1}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1048
    goto :goto_0
.end method

.method private f()Ljava/lang/String;
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1057
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1096
    :cond_0
    :goto_0
    return-object v0

    .line 1062
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/message/UTrack;->f:Landroid/content/Context;

    .line 1063
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1064
    sget-object v2, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v3, Lcom/umeng/message/UTrack;->a:Ljava/lang/String;

    const/4 v4, 0x2

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "path="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v2, v3, v4, v5}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 1065
    new-instance v3, Ljava/io/File;

    const-string v2, "umeng-message.config"

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-eqz v1, :cond_0

    .line 1071
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1074
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1075
    const-string v3, "sign="

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1076
    const-string v3, "sign="

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v1

    .line 1086
    if-eqz v2, :cond_3

    .line 1087
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    :goto_1
    move-object v0, v1

    .line 1077
    goto/16 :goto_0

    .line 1089
    :catch_0
    move-exception v2

    .line 1090
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 1093
    :catch_1
    move-exception v1

    .line 1094
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1086
    :cond_4
    if-eqz v2, :cond_0

    .line 1087
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 1089
    :catch_2
    move-exception v1

    .line 1090
    :try_start_6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 1080
    :catch_3
    move-exception v1

    move-object v2, v0

    .line 1081
    :goto_2
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1086
    if-eqz v2, :cond_0

    .line 1087
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_0

    .line 1089
    :catch_4
    move-exception v1

    .line 1090
    :try_start_9
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_0

    .line 1082
    :catch_5
    move-exception v1

    move-object v2, v0

    .line 1083
    :goto_3
    :try_start_a
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1086
    if-eqz v2, :cond_0

    .line 1087
    :try_start_b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_0

    .line 1089
    :catch_6
    move-exception v1

    .line 1090
    :try_start_c
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    goto/16 :goto_0

    .line 1085
    :catchall_0
    move-exception v1

    move-object v2, v0

    .line 1086
    :goto_4
    if-eqz v2, :cond_5

    .line 1087
    :try_start_d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    .line 1091
    :cond_5
    :goto_5
    :try_start_e
    throw v1

    .line 1089
    :catch_7
    move-exception v2

    .line 1090
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    goto :goto_5

    .line 1085
    :catchall_1
    move-exception v1

    goto :goto_4

    .line 1082
    :catch_8
    move-exception v1

    goto :goto_3

    .line 1080
    :catch_9
    move-exception v1

    goto :goto_2
.end method

.method private g()Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/umeng/message/UTrack;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/MessageSharedPrefs;->getDeviceToken()Ljava/lang/String;

    move-result-object v0

    .line 1102
    iget-object v1, p0, Lcom/umeng/message/UTrack;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/message/common/UmengMessageDeviceConfig;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1103
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1105
    iget-object v3, p0, Lcom/umeng/message/UTrack;->b:Lorg/json/JSONObject;

    .line 1106
    const-string v4, "umid"

    iget-object v5, p0, Lcom/umeng/message/UTrack;->f:Landroid/content/Context;

    invoke-static {v5}, Lcom/umeng/message/common/UmengMessageDeviceConfig;->getUmid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1108
    const-string v3, "header"

    iget-object v4, p0, Lcom/umeng/message/UTrack;->b:Lorg/json/JSONObject;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1109
    const-string v3, "utdid"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1110
    const-string v1, "device_token"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1111
    return-object v2
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/umeng/message/UTrack;
    .locals 2

    .prologue
    .line 88
    const-class v1, Lcom/umeng/message/UTrack;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/umeng/message/UTrack;->d:Lcom/umeng/message/UTrack;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/umeng/message/UTrack;

    invoke-direct {v0, p0}, Lcom/umeng/message/UTrack;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/umeng/message/UTrack;->d:Lcom/umeng/message/UTrack;

    .line 90
    new-instance v0, Lcom/umeng/message/common/impl/json/JUtrack;

    invoke-direct {v0, p0}, Lcom/umeng/message/common/impl/json/JUtrack;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/umeng/message/UTrack;->e:Lcom/umeng/message/common/inter/IUtrack;

    .line 105
    :cond_0
    sget-object v0, Lcom/umeng/message/UTrack;->d:Lcom/umeng/message/UTrack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private h()Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/umeng/message/UTrack;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/MessageSharedPrefs;->getDeviceToken()Ljava/lang/String;

    move-result-object v0

    .line 1118
    iget-object v1, p0, Lcom/umeng/message/UTrack;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/message/common/UmengMessageDeviceConfig;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1119
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1121
    iget-object v3, p0, Lcom/umeng/message/UTrack;->b:Lorg/json/JSONObject;

    .line 1122
    const-string v4, "umid"

    iget-object v5, p0, Lcom/umeng/message/UTrack;->f:Landroid/content/Context;

    invoke-static {v5}, Lcom/umeng/message/common/UmengMessageDeviceConfig;->getUmid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1124
    const-string v4, "header"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1125
    const-string v3, "utdid"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1126
    const-string v1, "device_token"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1127
    return-object v2
.end method

.method private i()Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1132
    iget-object v0, p0, Lcom/umeng/message/UTrack;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/MessageSharedPrefs;->getDeviceToken()Ljava/lang/String;

    move-result-object v0

    .line 1133
    iget-object v1, p0, Lcom/umeng/message/UTrack;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/message/common/UmengMessageDeviceConfig;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1134
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1135
    const-string v3, "appkey"

    iget-object v4, p0, Lcom/umeng/message/UTrack;->f:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v4

    .line 1136
    invoke-virtual {v4}, Lcom/umeng/message/PushAgent;->getMessageAppkey()Ljava/lang/String;

    move-result-object v4

    .line 1135
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1137
    const-string v3, "utdid"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1138
    const-string v1, "device_token"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1139
    return-object v2
.end method


# virtual methods
.method a(Lcom/umeng/message/entity/UMessage;)V
    .locals 7

    .prologue
    .line 179
    iget-object v2, p1, Lcom/umeng/message/entity/UMessage;->recall:Ljava/lang/String;

    const/4 v3, 0x4

    iget-wide v0, p1, Lcom/umeng/message/entity/UMessage;->random_min:J

    const-wide/32 v4, 0xea60

    mul-long/2addr v4, v0

    iget-object v6, p1, Lcom/umeng/message/entity/UMessage;->pulledWho:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/umeng/message/UTrack;->b(Ljava/lang/String;IJLjava/lang/String;)V

    .line 181
    return-void
.end method

.method public addAlias(Ljava/lang/String;Ljava/lang/String;Lcom/umeng/message/UTrack$ICallBack;)Z
    .locals 2

    .prologue
    .line 750
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/umeng/message/UTrack$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/umeng/message/UTrack$2;-><init>(Lcom/umeng/message/UTrack;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/message/UTrack$ICallBack;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 834
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 836
    const/4 v0, 0x0

    return v0
.end method

.method b(Lcom/umeng/message/entity/UMessage;)V
    .locals 7

    .prologue
    .line 184
    iget-object v2, p1, Lcom/umeng/message/entity/UMessage;->recall:Ljava/lang/String;

    const/4 v3, 0x5

    iget-wide v0, p1, Lcom/umeng/message/entity/UMessage;->random_min:J

    const-wide/32 v4, 0xea60

    mul-long/2addr v4, v0

    iget-object v6, p1, Lcom/umeng/message/entity/UMessage;->pulledWho:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/umeng/message/UTrack;->b(Ljava/lang/String;IJLjava/lang/String;)V

    .line 186
    return-void
.end method

.method public deleteAlias(Ljava/lang/String;Ljava/lang/String;Lcom/umeng/message/UTrack$ICallBack;)V
    .locals 2

    .prologue
    .line 965
    new-instance v0, Lcom/umeng/message/UTrack$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/umeng/message/UTrack$4;-><init>(Lcom/umeng/message/UTrack;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/message/UTrack$ICallBack;)V

    .line 1033
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1034
    return-void
.end method

.method public getHeader()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lcom/umeng/message/UTrack;->b:Lorg/json/JSONObject;

    return-object v0
.end method

.method public sendAliasFailLog()V
    .locals 2

    .prologue
    .line 699
    new-instance v0, Lcom/umeng/message/UTrack$11;

    invoke-direct {v0, p0}, Lcom/umeng/message/UTrack$11;-><init>(Lcom/umeng/message/UTrack;)V

    .line 711
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 712
    return-void
.end method

.method public sendCachedMsgLog(J)V
    .locals 1

    .prologue
    .line 449
    invoke-direct {p0, p1, p2}, Lcom/umeng/message/UTrack;->a(J)V

    .line 450
    return-void
.end method

.method public declared-synchronized sendMsgLogForAgoo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 293
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v1, Lcom/umeng/message/UTrack;->a:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendMsgLogForAgoo-->msgId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",taskId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 294
    const-string v0, "8"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/umeng/message/UTrack;->f:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/taobao/agoo/TaobaoRegister;->clickMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    :goto_0
    iget-object v0, p0, Lcom/umeng/message/UTrack;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/proguard/l;->a(Landroid/content/Context;)Lcom/umeng/message/proguard/l;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/umeng/message/proguard/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    .line 302
    const-string v0, "7"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/umeng/message/UTrack;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/proguard/l;->a(Landroid/content/Context;)Lcom/umeng/message/proguard/l;

    move-result-object v0

    .line 304
    invoke-virtual {v0, p1}, Lcom/umeng/message/proguard/l;->d(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    :cond_0
    monitor-exit p0

    return-void

    .line 297
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/umeng/message/UTrack;->f:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/taobao/agoo/TaobaoRegister;->dismissMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 293
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sendRegisterLog(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 720
    new-instance v0, Lcom/umeng/message/UTrack$12;

    invoke-direct {v0, p0, p1}, Lcom/umeng/message/UTrack$12;-><init>(Lcom/umeng/message/UTrack;Ljava/lang/String;)V

    .line 738
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 739
    return-void
.end method

.method public setAlias(Ljava/lang/String;Ljava/lang/String;Lcom/umeng/message/UTrack$ICallBack;)V
    .locals 2

    .prologue
    .line 874
    new-instance v0, Lcom/umeng/message/UTrack$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/umeng/message/UTrack$3;-><init>(Lcom/umeng/message/UTrack;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/message/UTrack$ICallBack;)V

    .line 960
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 962
    return-void
.end method

.method public setClearPrevMessage(Z)V
    .locals 0

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/umeng/message/UTrack;->g:Z

    .line 79
    return-void
.end method

.method public trackAppLaunch(J)V
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 459
    invoke-direct {p0}, Lcom/umeng/message/UTrack;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 462
    :cond_1
    iget-object v0, p0, Lcom/umeng/message/UTrack;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    .line 463
    invoke-virtual {v0}, Lcom/umeng/message/MessageSharedPrefs;->getAppLaunchLogSendPolicy()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 464
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v1, Lcom/umeng/message/UTrack;->a:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "launch_policy=1, \u8df3\u8fc7\u53d1\u9001\u5e94\u7528\u7a0b\u5e8f\u542f\u52a8\u4fe1\u606f"

    aput-object v5, v3, v4

    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    goto :goto_0

    .line 466
    :cond_2
    iget-object v0, p0, Lcom/umeng/message/UTrack;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    .line 467
    invoke-virtual {v0}, Lcom/umeng/message/MessageSharedPrefs;->hasAppLaunchLogSentToday()Z

    move-result v0

    if-nez v0, :cond_0

    .line 468
    invoke-direct {p0, p1, p2}, Lcom/umeng/message/UTrack;->b(J)V

    goto :goto_0
.end method

.method public trackMiPushMsgClick(Lcom/umeng/message/entity/UMessage;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 141
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/umeng/message/entity/UMessage;->msg_id:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 142
    iget-object v2, p1, Lcom/umeng/message/entity/UMessage;->msg_id:Ljava/lang/String;

    .line 143
    const/16 v3, 0x15

    iget-wide v0, p1, Lcom/umeng/message/entity/UMessage;->random_min:J

    const-wide/32 v4, 0xea60

    mul-long/2addr v4, v0

    iget-object v6, p1, Lcom/umeng/message/entity/UMessage;->pulledWho:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/umeng/message/UTrack;->b(Ljava/lang/String;IJLjava/lang/String;)V

    .line 146
    :cond_0
    iget-boolean v0, p0, Lcom/umeng/message/UTrack;->g:Z

    if-eqz v0, :cond_1

    .line 147
    const-string v0, "notificationpullapp"

    iget-object v1, p1, Lcom/umeng/message/entity/UMessage;->display_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    iget-object v0, p0, Lcom/umeng/message/UTrack;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/PushAgent;->getAdHandler()Lcom/umeng/message/UHandler;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/UmengAdHandler;

    .line 149
    invoke-virtual {v0, v7}, Lcom/umeng/message/UmengAdHandler;->setPrevMessage(Lcom/umeng/message/entity/UMessage;)V

    .line 155
    :cond_1
    :goto_0
    return-void

    .line 151
    :cond_2
    iget-object v0, p0, Lcom/umeng/message/UTrack;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/PushAgent;->getMessageHandler()Lcom/umeng/message/UHandler;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/UmengMessageHandler;

    .line 152
    invoke-virtual {v0, v7}, Lcom/umeng/message/UmengMessageHandler;->setPrevMessage(Lcom/umeng/message/entity/UMessage;)V

    goto :goto_0
.end method

.method public trackMsgArrival(Lcom/umeng/message/entity/UMessage;)V
    .locals 7

    .prologue
    .line 109
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/umeng/message/entity/UMessage;->msg_id:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    iget-object v2, p1, Lcom/umeng/message/entity/UMessage;->msg_id:Ljava/lang/String;

    .line 112
    const/4 v3, 0x0

    iget-wide v0, p1, Lcom/umeng/message/entity/UMessage;->random_min:J

    const-wide/32 v4, 0xea60

    mul-long/2addr v4, v0

    iget-object v6, p1, Lcom/umeng/message/entity/UMessage;->pulledWho:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/umeng/message/UTrack;->b(Ljava/lang/String;IJLjava/lang/String;)V

    goto :goto_0
.end method

.method public trackMsgClick(Lcom/umeng/message/entity/UMessage;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 118
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/umeng/message/entity/UMessage;->msg_id:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 119
    iget-object v2, p1, Lcom/umeng/message/entity/UMessage;->msg_id:Ljava/lang/String;

    .line 120
    const/4 v3, 0x1

    iget-wide v0, p1, Lcom/umeng/message/entity/UMessage;->random_min:J

    const-wide/32 v4, 0xea60

    mul-long/2addr v4, v0

    iget-object v6, p1, Lcom/umeng/message/entity/UMessage;->pulledWho:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/umeng/message/UTrack;->b(Ljava/lang/String;IJLjava/lang/String;)V

    .line 123
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/umeng/message/entity/UMessage;->message_id:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p1, Lcom/umeng/message/entity/UMessage;->message_id:Ljava/lang/String;

    .line 125
    iget-object v1, p1, Lcom/umeng/message/entity/UMessage;->task_id:Ljava/lang/String;

    const-string v2, "8"

    invoke-direct {p0, v0, v1, v2}, Lcom/umeng/message/UTrack;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_1
    iget-boolean v0, p0, Lcom/umeng/message/UTrack;->g:Z

    if-eqz v0, :cond_2

    .line 129
    const-string v0, "notificationpullapp"

    iget-object v1, p1, Lcom/umeng/message/entity/UMessage;->display_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 130
    iget-object v0, p0, Lcom/umeng/message/UTrack;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/PushAgent;->getAdHandler()Lcom/umeng/message/UHandler;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/UmengAdHandler;

    .line 131
    invoke-virtual {v0, v7}, Lcom/umeng/message/UmengAdHandler;->setPrevMessage(Lcom/umeng/message/entity/UMessage;)V

    .line 137
    :cond_2
    :goto_0
    return-void

    .line 133
    :cond_3
    iget-object v0, p0, Lcom/umeng/message/UTrack;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/PushAgent;->getMessageHandler()Lcom/umeng/message/UHandler;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/UmengMessageHandler;

    .line 134
    invoke-virtual {v0, v7}, Lcom/umeng/message/UmengMessageHandler;->setPrevMessage(Lcom/umeng/message/entity/UMessage;)V

    goto :goto_0
.end method

.method public trackMsgDismissed(Lcom/umeng/message/entity/UMessage;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 159
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/umeng/message/entity/UMessage;->msg_id:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 160
    iget-object v2, p1, Lcom/umeng/message/entity/UMessage;->msg_id:Ljava/lang/String;

    .line 161
    const/4 v3, 0x2

    iget-wide v0, p1, Lcom/umeng/message/entity/UMessage;->random_min:J

    const-wide/32 v4, 0xea60

    mul-long/2addr v4, v0

    iget-object v6, p1, Lcom/umeng/message/entity/UMessage;->pulledWho:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/umeng/message/UTrack;->b(Ljava/lang/String;IJLjava/lang/String;)V

    .line 164
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/umeng/message/entity/UMessage;->message_id:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p1, Lcom/umeng/message/entity/UMessage;->message_id:Ljava/lang/String;

    .line 166
    iget-object v1, p1, Lcom/umeng/message/entity/UMessage;->task_id:Ljava/lang/String;

    const-string v2, "9"

    invoke-direct {p0, v0, v1, v2}, Lcom/umeng/message/UTrack;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_1
    const-string v0, "notificationpullapp"

    iget-object v1, p1, Lcom/umeng/message/entity/UMessage;->display_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    iget-object v0, p0, Lcom/umeng/message/UTrack;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/PushAgent;->getAdHandler()Lcom/umeng/message/UHandler;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/UmengAdHandler;

    .line 171
    invoke-virtual {v0, v7}, Lcom/umeng/message/UmengAdHandler;->setPrevMessage(Lcom/umeng/message/entity/UMessage;)V

    .line 176
    :goto_0
    return-void

    .line 173
    :cond_2
    iget-object v0, p0, Lcom/umeng/message/UTrack;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/PushAgent;->getMessageHandler()Lcom/umeng/message/UHandler;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/UmengMessageHandler;

    .line 174
    invoke-virtual {v0, v7}, Lcom/umeng/message/UmengMessageHandler;->setPrevMessage(Lcom/umeng/message/entity/UMessage;)V

    goto :goto_0
.end method

.method public trackMsgPulled(Lcom/umeng/message/entity/UMessage;I)V
    .locals 7

    .prologue
    .line 195
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/umeng/message/entity/UMessage;->msg_id:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 196
    iget-object v2, p1, Lcom/umeng/message/entity/UMessage;->msg_id:Ljava/lang/String;

    iget-wide v0, p1, Lcom/umeng/message/entity/UMessage;->random_min:J

    const-wide/32 v4, 0xea60

    mul-long/2addr v4, v0

    iget-object v6, p1, Lcom/umeng/message/entity/UMessage;->pulledWho:Ljava/lang/String;

    move-object v1, p0

    move v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/umeng/message/UTrack;->b(Ljava/lang/String;IJLjava/lang/String;)V

    .line 199
    :cond_0
    return-void
.end method

.method public trackRegister()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 549
    invoke-direct {p0}, Lcom/umeng/message/UTrack;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 552
    :cond_1
    iget-object v0, p0, Lcom/umeng/message/UTrack;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/MessageSharedPrefs;->getHasRegister()Z

    move-result v0

    if-nez v0, :cond_0

    .line 555
    sget-boolean v0, Lcom/umeng/message/UTrack;->k:Z

    if-eqz v0, :cond_2

    .line 556
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v1, Lcom/umeng/message/UTrack;->a:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "sendRegisterLog\u5df2\u7ecf\u5728\u961f\u5217\u91cc\uff0c\u5ffd\u7565\u8fd9\u6b21\u8bf7\u6c42"

    aput-object v3, v2, v7

    invoke-interface {v0, v1, v8, v2}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    goto :goto_0

    .line 559
    :cond_2
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v1, Lcom/umeng/message/UTrack;->a:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "trackRegisterLog\u5f00\u59cb, \u8bbe\u7f6eregisterSending\u6807\u5fd7\u4f4d"

    aput-object v3, v2, v7

    invoke-interface {v0, v1, v8, v2}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 560
    sput-boolean v5, Lcom/umeng/message/UTrack;->k:Z

    .line 562
    new-instance v0, Lcom/umeng/message/UTrack$10;

    invoke-direct {v0, p0}, Lcom/umeng/message/UTrack$10;-><init>(Lcom/umeng/message/UTrack;)V

    .line 586
    sget-object v1, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v2, Lcom/umeng/message/UTrack;->a:Ljava/lang/String;

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "trackRegister(delay=%d)"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-interface {v1, v2, v8, v3}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 587
    const-wide/16 v2, 0x0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v2, v3, v1}, Lcom/umeng/message/common/d;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    goto :goto_0
.end method

.method public updateHeader()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1146
    new-instance v0, Lcom/umeng/message/common/b;

    invoke-direct {v0}, Lcom/umeng/message/common/b;-><init>()V

    .line 1147
    iget-object v1, p0, Lcom/umeng/message/UTrack;->f:Landroid/content/Context;

    new-array v2, v4, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/umeng/message/common/b;->b(Landroid/content/Context;[Ljava/lang/String;)V

    .line 1148
    iget-object v1, p0, Lcom/umeng/message/UTrack;->f:Landroid/content/Context;

    new-array v2, v6, [Ljava/lang/String;

    iget-object v3, p0, Lcom/umeng/message/UTrack;->f:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v3

    .line 1149
    invoke-virtual {v3}, Lcom/umeng/message/PushAgent;->getMessageAppkey()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/umeng/message/UTrack;->f:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v3

    .line 1150
    invoke-virtual {v3}, Lcom/umeng/message/PushAgent;->getMessageChannel()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 1148
    invoke-virtual {v0, v1, v2}, Lcom/umeng/message/common/b;->a(Landroid/content/Context;[Ljava/lang/String;)V

    .line 1151
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/umeng/message/UTrack;->b:Lorg/json/JSONObject;

    .line 1153
    :try_start_0
    iget-object v1, p0, Lcom/umeng/message/UTrack;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/umeng/message/common/b;->b(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1159
    :goto_0
    new-instance v0, Lcom/umeng/message/common/b;

    invoke-direct {v0}, Lcom/umeng/message/common/b;-><init>()V

    .line 1160
    iget-object v1, p0, Lcom/umeng/message/UTrack;->f:Landroid/content/Context;

    new-array v2, v4, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/umeng/message/common/b;->c(Landroid/content/Context;[Ljava/lang/String;)V

    .line 1161
    iget-object v1, p0, Lcom/umeng/message/UTrack;->f:Landroid/content/Context;

    new-array v2, v6, [Ljava/lang/String;

    iget-object v3, p0, Lcom/umeng/message/UTrack;->f:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v3

    .line 1162
    invoke-virtual {v3}, Lcom/umeng/message/PushAgent;->getMessageAppkey()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/umeng/message/UTrack;->f:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v3

    .line 1163
    invoke-virtual {v3}, Lcom/umeng/message/PushAgent;->getMessageChannel()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 1161
    invoke-virtual {v0, v1, v2}, Lcom/umeng/message/common/b;->a(Landroid/content/Context;[Ljava/lang/String;)V

    .line 1164
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/umeng/message/UTrack;->c:Lorg/json/JSONObject;

    .line 1166
    :try_start_1
    iget-object v1, p0, Lcom/umeng/message/UTrack;->c:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/umeng/message/common/b;->c(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1170
    :goto_1
    return-void

    .line 1154
    :catch_0
    move-exception v0

    .line 1155
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1167
    :catch_1
    move-exception v0

    .line 1168
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
