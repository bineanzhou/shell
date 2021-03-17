.class public Lcom/umeng/message/tag/TagManager;
.super Ljava/lang/Object;
.source "TagManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/message/tag/TagManager$WeightedTagListCallBack;,
        Lcom/umeng/message/tag/TagManager$TagListCallBack;,
        Lcom/umeng/message/tag/TagManager$TCallBack;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String; = "ok"

.field private static final c:Ljava/lang/String; = "fail"

.field private static d:Lcom/umeng/message/tag/TagManager;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static f:Lcom/umeng/message/common/inter/ITagManager;


# instance fields
.field private e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/umeng/message/tag/TagManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/message/tag/TagManager;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/tag/TagManager;->e:Landroid/content/Context;

    .line 59
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/umeng/message/tag/TagManager;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/umeng/message/tag/TagManager;Ljava/lang/String;Ljava/util/Hashtable;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/umeng/message/tag/TagManager;->a(Ljava/lang/String;Ljava/util/Hashtable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/umeng/message/tag/TagManager;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/umeng/message/tag/TagManager;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/umeng/message/tag/TagManager;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/umeng/message/tag/TagManager;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/util/Hashtable;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 318
    .line 319
    invoke-virtual {p2}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 321
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 322
    array-length v4, v1

    const/16 v5, 0x80

    if-le v4, v5, :cond_2

    array-length v1, v1

    if-gtz v1, :cond_2

    .line 323
    const-string v2, "\u90e8\u5206Tags\u957f\u5ea6\u4e0d\u5728\u9650\u52360\u5230128\u4e2a\u5b57\u7b26\u4e4b\u95f4"
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    :cond_1
    :goto_0
    return-object v2

    .line 325
    :catch_0
    move-exception v0

    .line 326
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v1, Lcom/umeng/message/tag/TagManager;->a:Ljava/lang/String;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "UnsupportedEncodingException"

    aput-object v3, v2, v6

    invoke-interface {v0, v1, v6, v2}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 327
    const-string v2, "\u90e8\u5206Tags\u957f\u5ea6\u4e0d\u5728\u9650\u52360\u5230128\u4e2a\u5b57\u7b26\u4e4b\u95f4"

    goto :goto_0

    .line 330
    :cond_2
    invoke-virtual {p2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v4, -0xa

    if-lt v1, v4, :cond_3

    invoke-virtual {p2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 331
    :cond_3
    const-string v2, "\u90e8\u5206Tags\u6743\u503c\u4e0d\u5728-10\u523010\u4e4b\u95f4"

    goto :goto_0

    .line 335
    :cond_4
    if-eqz p1, :cond_1

    .line 340
    :try_start_1
    new-instance v0, Lcom/umeng/message/common/inter/ITagManager$Result;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/umeng/message/common/inter/ITagManager$Result;-><init>(Lorg/json/JSONObject;Z)V

    .line 341
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 342
    iget-wide v6, v0, Lcom/umeng/message/common/inter/ITagManager$Result;->interval:J

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-eqz v1, :cond_5

    iget-wide v6, v0, Lcom/umeng/message/common/inter/ITagManager$Result;->last_requestTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    iget-wide v0, v0, Lcom/umeng/message/common/inter/ITagManager$Result;->interval:J

    cmp-long v0, v4, v0

    if-lez v0, :cond_6

    :cond_5
    move-object v0, v2

    :goto_1
    move-object v2, v0

    .line 351
    goto :goto_0

    .line 345
    :cond_6
    const-string v0, "interval\u9650\u5236"
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 347
    :catch_1
    move-exception v0

    .line 348
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v2

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 401
    if-nez p1, :cond_1

    .line 418
    :cond_0
    :goto_0
    return-object v0

    .line 406
    :cond_1
    :try_start_0
    new-instance v1, Lcom/umeng/message/common/inter/ITagManager$Result;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, p2}, Lcom/umeng/message/common/inter/ITagManager$Result;-><init>(Lorg/json/JSONObject;Z)V

    .line 407
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 408
    iget-wide v4, v1, Lcom/umeng/message/common/inter/ITagManager$Result;->interval:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    iget-wide v4, v1, Lcom/umeng/message/common/inter/ITagManager$Result;->last_requestTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iget-wide v4, v1, Lcom/umeng/message/common/inter/ITagManager$Result;->interval:J

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 411
    const-string v0, "interval\u9650\u5236"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 414
    :catch_0
    move-exception v1

    .line 415
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private varargs a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 256
    .line 258
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 259
    if-eqz p2, :cond_3

    array-length v2, p2

    if-lez v2, :cond_3

    .line 261
    array-length v4, p2

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_3

    aget-object v5, p2, v2

    .line 262
    iget-object v0, p0, Lcom/umeng/message/tag/TagManager;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/umeng/message/MessageSharedPrefs;->isTagSet(Ljava/lang/String;)Z

    move-result v0

    .line 263
    if-nez v0, :cond_0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {v5, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 271
    :goto_1
    array-length v6, v0

    const/16 v7, 0x80

    if-gt v6, v7, :cond_1

    array-length v0, v0

    if-ltz v0, :cond_1

    .line 272
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 268
    :catch_0
    move-exception v0

    .line 269
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v0, v1

    goto :goto_1

    .line 274
    :cond_1
    const-string v1, "\u90e8\u5206Tags\u957f\u5ea6\u4e0d\u5728\u9650\u52360\u5230128\u4e2a\u5b57\u7b26\u4e4b\u95f4"

    .line 307
    :cond_2
    :goto_2
    return-object v1

    .line 282
    :cond_3
    if-eqz p1, :cond_2

    .line 287
    :try_start_1
    new-instance v0, Lcom/umeng/message/common/inter/ITagManager$Result;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-direct {v0, v2, v4}, Lcom/umeng/message/common/inter/ITagManager$Result;-><init>(Lorg/json/JSONObject;Z)V

    .line 288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 289
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 290
    iget v2, v0, Lcom/umeng/message/common/inter/ITagManager$Result;->remain:I

    if-ltz v2, :cond_4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, v0, Lcom/umeng/message/common/inter/ITagManager$Result;->remain:I

    if-gt v2, v3, :cond_4

    .line 291
    iget-wide v2, v0, Lcom/umeng/message/common/inter/ITagManager$Result;->interval:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_2

    iget-wide v2, v0, Lcom/umeng/message/common/inter/ITagManager$Result;->last_requestTime:J

    sub-long v2, v4, v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iget-wide v4, v0, Lcom/umeng/message/common/inter/ITagManager$Result;->interval:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_2

    .line 294
    const-string v1, "interval\u9650\u5236"

    goto :goto_2

    .line 297
    :cond_4
    const-string v1, "Tags\u6570\u91cf\u4e0d\u80fd\u8d85\u8fc71024"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 303
    :catch_1
    move-exception v0

    .line 304
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 820
    invoke-static {p1}, Lcom/umeng/message/util/HttpRequest;->post(Ljava/lang/CharSequence;)Lcom/umeng/message/util/HttpRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/util/HttpRequest;->acceptJson()Lcom/umeng/message/util/HttpRequest;

    move-result-object v0

    const-string v1, "application/json"

    .line 821
    invoke-virtual {v0, v1}, Lcom/umeng/message/util/HttpRequest;->contentType(Ljava/lang/String;)Lcom/umeng/message/util/HttpRequest;

    move-result-object v0

    .line 822
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/message/util/HttpRequest;->send(Ljava/lang/CharSequence;)Lcom/umeng/message/util/HttpRequest;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Lcom/umeng/message/util/HttpRequest;->body(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 823
    sget-object v1, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v2, Lcom/umeng/message/tag/TagManager;->a:Ljava/lang/String;

    const/4 v3, 0x2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "postJson() url="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n request = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n response = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v1, v2, v3, v4}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 825
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private a(Lcom/umeng/message/tag/TagManager$TCallBack;)V
    .locals 1

    .prologue
    .line 647
    new-instance v0, Lcom/umeng/message/tag/TagManager$6;

    invoke-direct {v0, p0, p1}, Lcom/umeng/message/tag/TagManager$6;-><init>(Lcom/umeng/message/tag/TagManager;Lcom/umeng/message/tag/TagManager$TCallBack;)V

    .line 697
    invoke-static {v0}, Lcom/umeng/message/common/d;->a(Ljava/lang/Runnable;)V

    .line 698
    return-void
.end method

.method private varargs a(Lcom/umeng/message/tag/TagManager$TCallBack;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 429
    new-instance v0, Lcom/umeng/message/tag/TagManager$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/umeng/message/tag/TagManager$3;-><init>(Lcom/umeng/message/tag/TagManager;Lcom/umeng/message/tag/TagManager$TCallBack;[Ljava/lang/String;)V

    .line 503
    invoke-static {v0}, Lcom/umeng/message/common/d;->a(Ljava/lang/Runnable;)V

    .line 505
    return-void
.end method

.method static synthetic a(Lcom/umeng/message/tag/TagManager;)Z
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/umeng/message/tag/TagManager;->d()Z

    move-result v0

    return v0
.end method

.method static synthetic b()Lcom/umeng/message/common/inter/ITagManager;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/umeng/message/tag/TagManager;->f:Lcom/umeng/message/common/inter/ITagManager;

    return-object v0
.end method

.method static synthetic b(Lcom/umeng/message/tag/TagManager;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/umeng/message/tag/TagManager;->b(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private varargs b(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 355
    .line 356
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 358
    array-length v4, p2

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v5, p2, v1

    .line 361
    :try_start_0
    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 362
    array-length v7, v6

    const/16 v8, 0x80

    if-gt v7, v8, :cond_0

    array-length v6, v6

    if-ltz v6, :cond_0

    .line 363
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 365
    :cond_0
    const-string v0, "\u90e8\u5206Tags\u957f\u5ea6\u4e0d\u5728\u9650\u52360\u5230128\u4e2a\u5b57\u7b26\u4e4b\u95f4"
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    :cond_1
    :goto_1
    return-object v0

    .line 368
    :catch_0
    move-exception v0

    .line 369
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v1, Lcom/umeng/message/tag/TagManager;->a:Ljava/lang/String;

    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "UnsupportedEncodingException"

    aput-object v4, v3, v2

    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 370
    const-string v0, "\u90e8\u5206Tags\u957f\u5ea6\u4e0d\u5728\u9650\u52360\u5230128\u4e2a\u5b57\u7b26\u4e4b\u95f4"

    goto :goto_1

    .line 374
    :cond_2
    if-eqz p1, :cond_1

    .line 379
    :try_start_1
    new-instance v1, Lcom/umeng/message/common/inter/ITagManager$Result;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4}, Lcom/umeng/message/common/inter/ITagManager$Result;-><init>(Lorg/json/JSONObject;Z)V

    .line 380
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 381
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 382
    iget-wide v2, v1, Lcom/umeng/message/common/inter/ITagManager$Result;->interval:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    iget-wide v2, v1, Lcom/umeng/message/common/inter/ITagManager$Result;->last_requestTime:J

    sub-long v2, v4, v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iget-wide v4, v1, Lcom/umeng/message/common/inter/ITagManager$Result;->interval:J

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    .line 385
    const-string v0, "interval\u9650\u5236"
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 388
    :catch_1
    move-exception v1

    .line 389
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic b(Lcom/umeng/message/tag/TagManager;)Z
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/umeng/message/tag/TagManager;->e()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/umeng/message/tag/TagManager;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/umeng/message/tag/TagManager;->e:Landroid/content/Context;

    return-object v0
.end method

.method private c()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 805
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 806
    const-string v1, "header"

    iget-object v2, p0, Lcom/umeng/message/tag/TagManager;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/message/UTrack;->getInstance(Landroid/content/Context;)Lcom/umeng/message/UTrack;

    move-result-object v2

    .line 807
    invoke-virtual {v2}, Lcom/umeng/message/UTrack;->getHeader()Lorg/json/JSONObject;

    move-result-object v2

    .line 806
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 808
    iget-object v1, p0, Lcom/umeng/message/tag/TagManager;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/message/common/UmengMessageDeviceConfig;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 810
    const-string v2, "utdid"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 811
    const-string v1, "device_token"

    iget-object v2, p0, Lcom/umeng/message/tag/TagManager;->e:Landroid/content/Context;

    .line 812
    invoke-static {v2}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/message/MessageSharedPrefs;->getDeviceToken()Ljava/lang/String;

    move-result-object v2

    .line 811
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 813
    const-string v1, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 815
    return-object v0
.end method

.method static synthetic d(Lcom/umeng/message/tag/TagManager;)Lcom/umeng/message/common/inter/ITagManager$Result;
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/umeng/message/tag/TagManager;->f()Lcom/umeng/message/common/inter/ITagManager$Result;

    move-result-object v0

    return-object v0
.end method

.method private d()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 829
    iget-object v2, p0, Lcom/umeng/message/tag/TagManager;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/message/common/UmengMessageDeviceConfig;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 830
    sget-object v2, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v3, Lcom/umeng/message/tag/TagManager;->a:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/String;

    const-string v4, "UTDID\u4e3a\u7a7a"

    aput-object v4, v1, v0

    invoke-interface {v2, v3, v0, v1}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 839
    :goto_0
    return v0

    .line 833
    :cond_0
    iget-object v2, p0, Lcom/umeng/message/tag/TagManager;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/message/MessageSharedPrefs;->getDeviceToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 834
    sget-object v2, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v3, Lcom/umeng/message/tag/TagManager;->a:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/String;

    const-string v4, "Device token\u4e3a\u7a7a"

    aput-object v4, v1, v0

    invoke-interface {v2, v3, v0, v1}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 839
    goto :goto_0
.end method

.method static synthetic e(Lcom/umeng/message/tag/TagManager;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/umeng/message/tag/TagManager;->c()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private e()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 848
    iget-object v0, p0, Lcom/umeng/message/tag/TagManager;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    .line 849
    invoke-virtual {v0}, Lcom/umeng/message/MessageSharedPrefs;->getTagSendPolicy()I

    move-result v0

    .line 850
    if-ne v0, v1, :cond_1

    move v0, v1

    .line 851
    :goto_0
    if-eqz v0, :cond_0

    .line 852
    sget-object v3, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v4, Lcom/umeng/message/tag/TagManager;->a:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v6, "Tag API\u88ab\u670d\u52a1\u5668\u7981\u6b62"

    aput-object v6, v1, v2

    invoke-interface {v3, v4, v5, v1}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 854
    :cond_0
    return v0

    :cond_1
    move v0, v2

    .line 850
    goto :goto_0
.end method

.method private f()Lcom/umeng/message/common/inter/ITagManager$Result;
    .locals 3

    .prologue
    .line 858
    new-instance v0, Lcom/umeng/message/common/inter/ITagManager$Result;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/umeng/message/common/inter/ITagManager$Result;-><init>(Lorg/json/JSONObject;Z)V

    .line 859
    iget-object v1, p0, Lcom/umeng/message/tag/TagManager;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/message/MessageSharedPrefs;->getTagRemain()I

    move-result v1

    iput v1, v0, Lcom/umeng/message/common/inter/ITagManager$Result;->remain:I

    .line 860
    const-string v1, "ok"

    iput-object v1, v0, Lcom/umeng/message/common/inter/ITagManager$Result;->status:Ljava/lang/String;

    .line 862
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/umeng/message/common/inter/ITagManager$Result;->status:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", remain:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/umeng/message/common/inter/ITagManager$Result;->remain:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",description:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/umeng/message/common/inter/ITagManager$Result;->status:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/umeng/message/common/inter/ITagManager$Result;->jsonString:Ljava/lang/String;

    .line 864
    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/umeng/message/tag/TagManager;
    .locals 5

    .prologue
    .line 76
    const-class v1, Lcom/umeng/message/tag/TagManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/umeng/message/tag/TagManager;->d:Lcom/umeng/message/tag/TagManager;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/umeng/message/tag/TagManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/umeng/message/tag/TagManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/umeng/message/tag/TagManager;->d:Lcom/umeng/message/tag/TagManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :try_start_1
    const-string v0, "com.umeng.message.common.impl.json.JTagManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 82
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    .line 83
    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    .line 84
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 86
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 87
    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/common/inter/ITagManager;

    sput-object v0, Lcom/umeng/message/tag/TagManager;->f:Lcom/umeng/message/common/inter/ITagManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    :cond_0
    :goto_0
    :try_start_2
    sget-object v0, Lcom/umeng/message/tag/TagManager;->d:Lcom/umeng/message/tag/TagManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-object v0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public varargs addTags(Lcom/umeng/message/tag/TagManager$TCallBack;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 105
    new-instance v0, Lcom/umeng/message/tag/TagManager$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/umeng/message/tag/TagManager$1;-><init>(Lcom/umeng/message/tag/TagManager;[Ljava/lang/String;Lcom/umeng/message/tag/TagManager$TCallBack;)V

    .line 181
    invoke-static {v0}, Lcom/umeng/message/common/d;->a(Ljava/lang/Runnable;)V

    .line 182
    return-void
.end method

.method public addWeightedTags(Lcom/umeng/message/tag/TagManager$TCallBack;Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/umeng/message/tag/TagManager$TCallBack;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 186
    new-instance v0, Lcom/umeng/message/tag/TagManager$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/umeng/message/tag/TagManager$2;-><init>(Lcom/umeng/message/tag/TagManager;Lcom/umeng/message/tag/TagManager$TCallBack;Ljava/util/Hashtable;)V

    .line 244
    invoke-static {v0}, Lcom/umeng/message/common/d;->a(Ljava/lang/Runnable;)V

    .line 245
    return-void
.end method

.method public varargs deleteTags(Lcom/umeng/message/tag/TagManager$TCallBack;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 514
    new-instance v0, Lcom/umeng/message/tag/TagManager$4;

    invoke-direct {v0, p0, p2, p1}, Lcom/umeng/message/tag/TagManager$4;-><init>(Lcom/umeng/message/tag/TagManager;[Ljava/lang/String;Lcom/umeng/message/tag/TagManager$TCallBack;)V

    .line 583
    invoke-static {v0}, Lcom/umeng/message/common/d;->a(Ljava/lang/Runnable;)V

    .line 584
    return-void
.end method

.method public varargs deleteWeightedTags(Lcom/umeng/message/tag/TagManager$TCallBack;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 588
    new-instance v0, Lcom/umeng/message/tag/TagManager$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/umeng/message/tag/TagManager$5;-><init>(Lcom/umeng/message/tag/TagManager;Lcom/umeng/message/tag/TagManager$TCallBack;[Ljava/lang/String;)V

    .line 637
    invoke-static {v0}, Lcom/umeng/message/common/d;->a(Ljava/lang/Runnable;)V

    .line 638
    return-void
.end method

.method public getTags(Lcom/umeng/message/tag/TagManager$TagListCallBack;)V
    .locals 1

    .prologue
    .line 707
    new-instance v0, Lcom/umeng/message/tag/TagManager$7;

    invoke-direct {v0, p0, p1}, Lcom/umeng/message/tag/TagManager$7;-><init>(Lcom/umeng/message/tag/TagManager;Lcom/umeng/message/tag/TagManager$TagListCallBack;)V

    .line 765
    invoke-static {v0}, Lcom/umeng/message/common/d;->a(Ljava/lang/Runnable;)V

    .line 766
    return-void
.end method

.method public getWeightedTags(Lcom/umeng/message/tag/TagManager$WeightedTagListCallBack;)V
    .locals 1

    .prologue
    .line 770
    new-instance v0, Lcom/umeng/message/tag/TagManager$8;

    invoke-direct {v0, p0, p1}, Lcom/umeng/message/tag/TagManager$8;-><init>(Lcom/umeng/message/tag/TagManager;Lcom/umeng/message/tag/TagManager$WeightedTagListCallBack;)V

    .line 801
    invoke-static {v0}, Lcom/umeng/message/common/d;->a(Ljava/lang/Runnable;)V

    .line 802
    return-void
.end method
