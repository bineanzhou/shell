.class public Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;
.super Ljava/lang/Object;
.source "DplusCacheApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi$SingletonHolder;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "DplusCacheApi"


# instance fields
.field private b:Landroid/os/HandlerThread;

.field private c:Landroid/os/Handler;

.field private final d:I

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/high16 v0, 0x100000

    iput v0, p0, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;->d:I

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;->e:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;->f:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;->g:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;->h:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;->i:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DplusCacheApi"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;->b:Landroid/os/HandlerThread;

    .line 44
    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 45
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;->c:Landroid/os/Handler;

    .line 46
    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi$1;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static a()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 235
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 236
    const-string v1, "s_sdk_v"

    const-string v2, "6.9.0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 237
    const-string v1, "s_pcv"

    const-string v2, "3.0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 238
    return-object v0
.end method

.method static synthetic b(Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static checkFile()D
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 315
    const-string v2, "share.db"

    invoke-static {v2}, Lcom/umeng/socialize/utils/ContextUtil;->getDataFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 316
    if-eqz v2, :cond_0

    .line 317
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 318
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-double v0, v0

    .line 323
    :cond_0
    return-wide v0
.end method

.method static synthetic d(Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic e(Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static final getInstance()Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi$SingletonHolder;->a()Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deleteAll(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;->c:Landroid/os/Handler;

    new-instance v1, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi$4;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi$4;-><init>(Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 311
    return-void
.end method

.method public deleteAllAsnc(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 297
    invoke-static {}, Lcom/umeng/socialize/utils/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/net/dplus/db/DBManager;->get(Landroid/content/Context;)Lcom/umeng/socialize/net/dplus/db/DBManager;

    move-result-object v0

    const-string v1, "stats"

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/net/dplus/db/DBManager;->deleteTable(Ljava/lang/String;)V

    .line 301
    return-void
.end method

.method public deleteFile(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;->c:Landroid/os/Handler;

    new-instance v1, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi$3;

    invoke-direct {v1, p0, p1}, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi$3;-><init>(Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 268
    return-void
.end method

.method public deleteFileAsnc(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 271
    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 272
    invoke-static {p1}, Lcom/umeng/socialize/net/dplus/db/DBManager;->get(Landroid/content/Context;)Lcom/umeng/socialize/net/dplus/db/DBManager;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;->e:Ljava/util/ArrayList;

    const-string v2, "s_e"

    invoke-virtual {v0, v1, v2}, Lcom/umeng/socialize/net/dplus/db/DBManager;->delete(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 276
    invoke-static {p1}, Lcom/umeng/socialize/net/dplus/db/DBManager;->get(Landroid/content/Context;)Lcom/umeng/socialize/net/dplus/db/DBManager;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;->f:Ljava/util/ArrayList;

    const-string v2, "auth"

    invoke-virtual {v0, v1, v2}, Lcom/umeng/socialize/net/dplus/db/DBManager;->delete(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 280
    invoke-static {p1}, Lcom/umeng/socialize/net/dplus/db/DBManager;->get(Landroid/content/Context;)Lcom/umeng/socialize/net/dplus/db/DBManager;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;->h:Ljava/util/ArrayList;

    const-string v2, "dau"

    invoke-virtual {v0, v1, v2}, Lcom/umeng/socialize/net/dplus/db/DBManager;->delete(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 283
    :cond_2
    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 284
    invoke-static {p1}, Lcom/umeng/socialize/net/dplus/db/DBManager;->get(Landroid/content/Context;)Lcom/umeng/socialize/net/dplus/db/DBManager;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;->g:Ljava/util/ArrayList;

    const-string v2, "userinfo"

    invoke-virtual {v0, v1, v2}, Lcom/umeng/socialize/net/dplus/db/DBManager;->delete(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 287
    :cond_3
    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 288
    invoke-static {p1}, Lcom/umeng/socialize/net/dplus/db/DBManager;->get(Landroid/content/Context;)Lcom/umeng/socialize/net/dplus/db/DBManager;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;->i:Ljava/util/ArrayList;

    const-string v2, "stats"

    invoke-virtual {v0, v1, v2}, Lcom/umeng/socialize/net/dplus/db/DBManager;->delete(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 294
    :cond_4
    return-void
.end method

.method public readFile(Landroid/content/Context;ILcom/umeng/socialize/net/dplus/cache/DplusCacheListener;)V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;->c:Landroid/os/Handler;

    new-instance v1, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi$2;-><init>(Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;Landroid/content/Context;ILcom/umeng/socialize/net/dplus/cache/DplusCacheListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 233
    return-void
.end method

.method public readFileAsnc(Landroid/content/Context;I)Lorg/json/JSONObject;
    .locals 20

    .prologue
    .line 79
    const-wide/high16 v10, 0x4130000000000000L    # 1048576.0

    .line 81
    const-wide/high16 v12, 0x4130000000000000L    # 1048576.0

    .line 82
    invoke-static {}, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;->checkFile()D

    move-result-wide v2

    .line 83
    const/4 v8, 0x1

    .line 84
    const-wide/high16 v4, 0x4154000000000000L    # 5242880.0

    cmpl-double v4, v2, v4

    if-ltz v4, :cond_1

    .line 85
    invoke-static {}, Lcom/umeng/socialize/utils/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/socialize/net/dplus/db/DBManager;->get(Landroid/content/Context;)Lcom/umeng/socialize/net/dplus/db/DBManager;

    move-result-object v2

    const-string v3, "stats"

    invoke-virtual {v2, v3}, Lcom/umeng/socialize/net/dplus/db/DBManager;->deleteTable(Ljava/lang/String;)V

    .line 87
    const/4 v2, 0x0

    .line 151
    :cond_0
    :goto_0
    return-object v2

    .line 89
    :cond_1
    const-wide/high16 v4, 0x40d8000000000000L    # 24576.0

    add-double/2addr v2, v4

    cmpl-double v2, v12, v2

    if-lez v2, :cond_2

    .line 90
    const/4 v8, 0x0

    .line 92
    :cond_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 95
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 96
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 97
    const-wide/high16 v14, 0x4090000000000000L    # 1024.0

    .line 98
    invoke-static/range {p1 .. p1}, Lcom/umeng/socialize/net/dplus/db/DBManager;->get(Landroid/content/Context;)Lcom/umeng/socialize/net/dplus/db/DBManager;

    move-result-object v3

    const-string v4, "s_e"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;->e:Ljava/util/ArrayList;

    sub-double v6, v10, v14

    invoke-virtual/range {v3 .. v8}, Lcom/umeng/socialize/net/dplus/db/DBManager;->select(Ljava/lang/String;Ljava/util/ArrayList;DZ)Lorg/json/JSONArray;

    move-result-object v16

    .line 99
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    int-to-double v4, v3

    add-double/2addr v14, v4

    .line 100
    invoke-static/range {p1 .. p1}, Lcom/umeng/socialize/net/dplus/db/DBManager;->get(Landroid/content/Context;)Lcom/umeng/socialize/net/dplus/db/DBManager;

    move-result-object v3

    const-string v4, "auth"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;->f:Ljava/util/ArrayList;

    sub-double v6, v10, v14

    invoke-virtual/range {v3 .. v8}, Lcom/umeng/socialize/net/dplus/db/DBManager;->select(Ljava/lang/String;Ljava/util/ArrayList;DZ)Lorg/json/JSONArray;

    move-result-object v17

    .line 101
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    int-to-double v4, v3

    add-double/2addr v14, v4

    .line 102
    invoke-static/range {p1 .. p1}, Lcom/umeng/socialize/net/dplus/db/DBManager;->get(Landroid/content/Context;)Lcom/umeng/socialize/net/dplus/db/DBManager;

    move-result-object v3

    const-string v4, "userinfo"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;->g:Ljava/util/ArrayList;

    sub-double v6, v10, v14

    invoke-virtual/range {v3 .. v8}, Lcom/umeng/socialize/net/dplus/db/DBManager;->select(Ljava/lang/String;Ljava/util/ArrayList;DZ)Lorg/json/JSONArray;

    move-result-object v18

    .line 103
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    int-to-double v4, v3

    add-double/2addr v14, v4

    .line 104
    invoke-static/range {p1 .. p1}, Lcom/umeng/socialize/net/dplus/db/DBManager;->get(Landroid/content/Context;)Lcom/umeng/socialize/net/dplus/db/DBManager;

    move-result-object v3

    const-string v4, "dau"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;->h:Ljava/util/ArrayList;

    sub-double v6, v10, v14

    invoke-virtual/range {v3 .. v8}, Lcom/umeng/socialize/net/dplus/db/DBManager;->select(Ljava/lang/String;Ljava/util/ArrayList;DZ)Lorg/json/JSONArray;

    move-result-object v19

    .line 105
    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    int-to-double v4, v3

    add-double v6, v14, v4

    .line 107
    invoke-static {}, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;->checkFile()D

    move-result-wide v4

    .line 108
    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-eqz v3, :cond_3

    .line 109
    const-string v3, "dau"

    move-object/from16 v0, v19

    invoke-virtual {v9, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    :cond_3
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-eqz v3, :cond_4

    .line 112
    const-string v3, "s_e"

    move-object/from16 v0, v16

    invoke-virtual {v9, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    :cond_4
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-eqz v3, :cond_5

    .line 115
    const-string v3, "auth"

    move-object/from16 v0, v17

    invoke-virtual {v9, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    :cond_5
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-eqz v3, :cond_6

    .line 118
    const-string v3, "userinfo"

    move-object/from16 v0, v18

    invoke-virtual {v9, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    :cond_6
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 121
    const-wide/high16 v14, 0x4120000000000000L    # 524288.0

    cmpl-double v4, v4, v14

    if-gez v4, :cond_7

    const/16 v4, 0x6007

    move/from16 v0, p2

    if-ne v0, v4, :cond_8

    .line 122
    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/umeng/socialize/net/dplus/db/DBManager;->get(Landroid/content/Context;)Lcom/umeng/socialize/net/dplus/db/DBManager;

    move-result-object v3

    const-string v4, "stats"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;->i:Ljava/util/ArrayList;

    sub-double v6, v10, v6

    invoke-virtual/range {v3 .. v8}, Lcom/umeng/socialize/net/dplus/db/DBManager;->select(Ljava/lang/String;Ljava/util/ArrayList;DZ)Lorg/json/JSONArray;

    move-result-object v3

    .line 123
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-eqz v4, :cond_8

    .line 124
    const-string v4, "stats"

    invoke-virtual {v9, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    :cond_8
    const-string v4, "share"

    invoke-virtual {v2, v4, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-nez v4, :cond_9

    .line 132
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-nez v4, :cond_9

    .line 133
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-nez v4, :cond_9

    .line 134
    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-nez v4, :cond_9

    .line 135
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_9

    .line 138
    const/4 v2, 0x0

    .line 144
    :cond_9
    :goto_1
    if-eqz v2, :cond_0

    .line 145
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    int-to-double v4, v3

    cmpl-double v3, v4, v12

    if-lez v3, :cond_0

    .line 146
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 141
    :catch_0
    move-exception v3

    .line 142
    sget-object v4, Lcom/umeng/socialize/utils/UmengText$CACHE;->CACHEFILE:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public saveFile(Landroid/content/Context;Lorg/json/JSONObject;ILcom/umeng/socialize/net/dplus/cache/DplusCacheListener;)V
    .locals 7

    .prologue
    .line 48
    iget-object v6, p0, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;->c:Landroid/os/Handler;

    new-instance v0, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi$1;

    move-object v1, p0

    move v2, p3

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi$1;-><init>(Lcom/umeng/socialize/net/dplus/cache/DplusCacheApi;ILandroid/content/Context;Lorg/json/JSONObject;Lcom/umeng/socialize/net/dplus/cache/DplusCacheListener;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77
    return-void
.end method
