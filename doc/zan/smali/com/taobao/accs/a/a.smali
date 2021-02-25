.class public Lcom/taobao/accs/a/a;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/accs/a/a$a;
    }
.end annotation


# static fields
.field public static final ACTION_ACCS_CUSTOM_ELECTION:Ljava/lang/String;

.field public static final ACTION_ACCS_ELECTION:Ljava/lang/String; = "com.taobao.accs.intent.action.ELECTION"

.field public static final TAG:Ljava/lang/String; = "ElectionServiceUtil"

.field public static a:Ljava/lang/String;

.field public static b:Z

.field private static c:Ljava/io/File;

.field private static d:Ljava/io/File;

.field private static e:J

.field private static final f:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 43
    sput-object v0, Lcom/taobao/accs/a/a;->a:Ljava/lang/String;

    .line 45
    sput-object v0, Lcom/taobao/accs/a/a;->c:Ljava/io/File;

    .line 47
    sput-object v0, Lcom/taobao/accs/a/a;->d:Ljava/io/File;

    .line 48
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/taobao/accs/a/a;->e:J

    .line 49
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/taobao/accs/a/a;->f:Ljava/util/Random;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.taobao.accs.intent.action."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/taobao/accs/client/GlobalConfig;->mGroup:Lcom/taobao/accs/client/AccsConfig$ACCS_GROUP;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ELECTION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/a/a;->ACTION_ACCS_CUSTOM_ELECTION:Ljava/lang/String;

    .line 169
    const/4 v0, 0x0

    sput-boolean v0, Lcom/taobao/accs/a/a;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method public static final a(Landroid/content/Context;)Lcom/taobao/accs/a/a$a;
    .locals 6

    .prologue
    .line 156
    invoke-static {}, Lcom/taobao/accs/a/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Lcom/taobao/accs/a/a$a;

    invoke-direct {v0}, Lcom/taobao/accs/a/a$a;-><init>()V

    .line 166
    :goto_0
    return-object v0

    .line 160
    :cond_0
    invoke-static {p0}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/accs/client/GlobalClientInfo;->getElectionResult()Lcom/taobao/accs/a/a$a;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_1

    .line 162
    const-string v1, "ElectionServiceUtil"

    const-string v2, "getElectionResult from mem"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "host"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v0, Lcom/taobao/accs/a/a$a;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "retry"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget v5, v0, Lcom/taobao/accs/a/a$a;->b:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 165
    :cond_1
    invoke-static {p0}, Lcom/taobao/accs/a/a;->b(Landroid/content/Context;)Lcom/taobao/accs/a/a$a;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Ljava/io/File;)Ljava/io/File;
    .locals 0

    .prologue
    .line 39
    sput-object p0, Lcom/taobao/accs/a/a;->c:Ljava/io/File;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 397
    const/4 v0, 0x0

    .line 398
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-gtz v1, :cond_2

    .line 399
    :cond_0
    const-string v1, "ElectionServiceUtil"

    const-string v2, "localElection failed, packMap null"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 431
    :cond_1
    :goto_0
    return-object v0

    .line 403
    :cond_2
    const-wide/16 v0, -0x1

    .line 404
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 407
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-wide v2, v0

    .line 410
    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 411
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 412
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 413
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    .line 414
    cmp-long v0, v4, v2

    if-lez v0, :cond_4

    .line 416
    invoke-interface {v7}, Ljava/util/List;->clear()V

    move-wide v2, v4

    .line 418
    :cond_4
    cmp-long v0, v4, v2

    if-nez v0, :cond_3

    .line 419
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 422
    :cond_5
    sget-object v0, Lcom/taobao/accs/a/a;->f:Ljava/util/Random;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 423
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    .line 424
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 425
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 428
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 429
    const-string v1, "ElectionServiceUtil"

    const-string v2, "localElection localResult null, user curr app"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "pkg"

    aput-object v4, v3, v8

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static a([B)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 294
    if-nez p0, :cond_0

    .line 322
    :goto_0
    return-object v0

    .line 299
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    .line 300
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 301
    const-string v1, "blacklist"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 302
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 303
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v2

    .line 304
    :goto_1
    :try_start_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v3, v0, :cond_3

    .line 305
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 306
    const-string v5, "sdkvs"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 307
    const-string v6, "pkg"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 308
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 309
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    move v0, v2

    .line 310
    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v0, v8, :cond_1

    .line 311
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 310
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 313
    :cond_1
    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 304
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 317
    :cond_4
    :try_start_2
    const-string v3, "ElectionServiceUtil"

    const-string v4, "praseBlackList"

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v6, "blacklist"

    aput-object v6, v5, v1

    const/4 v6, 0x1

    if-nez v0, :cond_5

    const-string v1, "null"

    :goto_3
    aput-object v1, v5, v6

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 318
    :catch_0
    move-exception v1

    .line 319
    :goto_4
    const-string v3, "ElectionServiceUtil"

    const-string v4, "praseBlackList"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 317
    :cond_5
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v1

    goto :goto_3

    .line 318
    :catch_1
    move-exception v0

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    goto :goto_4
.end method

.method public static a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 76
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/taobao/accs/a/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/a/a;->c:Ljava/io/File;

    .line 77
    const-string v0, "ElectionServiceUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/taobao/accs/a/a;->c:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/taobao/accs/a/a;->c:Ljava/io/File;

    const-string v2, "accs_election"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/accs/a/a;->d:Ljava/io/File;

    .line 79
    sget-object v0, Lcom/taobao/accs/a/a;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/a/a;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    const-string v1, "ElectionServiceUtil"

    const-string v2, "ElectionServiceUtil"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static final a(Landroid/content/Context;Lcom/taobao/accs/a/a$a;)V
    .locals 1

    .prologue
    .line 93
    if-nez p1, :cond_0

    .line 147
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-static {p0}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/accs/client/GlobalClientInfo;->setElectionReslt(Lcom/taobao/accs/a/a$a;)V

    .line 99
    new-instance v0, Lcom/taobao/accs/a/b;

    invoke-direct {v0, p0, p1}, Lcom/taobao/accs/a/b;-><init>(Landroid/content/Context;Lcom/taobao/accs/a/a$a;)V

    invoke-static {v0}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static final a(Landroid/content/Context;[B)V
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 224
    if-eqz p1, :cond_0

    sget-object v0, Lcom/taobao/accs/a/a;->c:Ljava/io/File;

    if-nez v0, :cond_1

    .line 225
    :cond_0
    const-string v0, "ElectionServiceUtil"

    const-string v1, "saveBlackList null"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "data"

    aput-object v3, v2, v5

    aput-object p1, v2, v6

    const-string v3, "path"

    aput-object v3, v2, v4

    const/4 v3, 0x3

    sget-object v4, Lcom/taobao/accs/a/a;->c:Ljava/io/File;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    :goto_0
    return-void

    .line 228
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/taobao/accs/a/a;->c:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/accs_blacklist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 229
    const-string v1, "ElectionServiceUtil"

    const-string v2, "saveBlackList"

    new-array v3, v4, [Ljava/lang/Object;

    const-string v4, "path"

    aput-object v4, v3, v5

    aput-object v0, v3, v6

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    invoke-static {p0}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object v1

    invoke-static {p1}, Lcom/taobao/accs/a/a;->a([B)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/accs/client/GlobalClientInfo;->setElectionBlackList(Ljava/util/Map;)V

    .line 231
    new-instance v1, Lcom/taobao/accs/a/c;

    invoke-direct {v1, p0, p1, v0}, Lcom/taobao/accs/a/c;-><init>(Landroid/content/Context;[BLjava/lang/String;)V

    invoke-static {v1}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static final a(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 334
    .line 335
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    :goto_0
    return v2

    .line 341
    :cond_0
    if-eq p2, v1, :cond_1

    .line 342
    :try_start_0
    const-string v0, "ElectionServiceUtil"

    const-string v1, "checkApp election version not match"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "package"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    const-string v5, "require"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "self ver"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v3}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 381
    :catch_0
    move-exception v0

    .line 383
    const-string v1, "ElectionServiceUtil"

    const-string v3, "checkApp error"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v0, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    move v0, v2

    :goto_1
    move v2, v0

    .line 385
    goto :goto_0

    .line 347
    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/taobao/accs/internal/ServiceImpl;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 348
    const-string v0, "ElectionServiceUtil"

    const-string v1, "checkApp is unbinded"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "package"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v3}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 351
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 352
    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 355
    if-nez v0, :cond_3

    .line 356
    const-string v0, "ElectionServiceUtil"

    const-string v1, "checkApp applicaton info null"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "package"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v3}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 360
    :cond_3
    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v0, :cond_4

    .line 361
    const-string v0, "ElectionServiceUtil"

    const-string v1, "checkApp is disabled"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "package"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 366
    :cond_4
    invoke-static {p0}, Lcom/taobao/accs/a/a;->d(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v3

    .line 367
    if-eqz v3, :cond_8

    .line 368
    const-string v0, "ElectionServiceUtil"

    const-string v4, "checkApp"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "blackList"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v4, v5}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 369
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 370
    if-eqz v0, :cond_6

    const/16 v4, 0xdd

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 371
    :cond_5
    const-string v0, "ElectionServiceUtil"

    const-string v1, "checkApp in blacklist"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "package"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    const-string v5, "sdkv"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const/16 v5, 0xdd

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v3}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 374
    :cond_6
    const-string v0, "*"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 375
    if-eqz v0, :cond_8

    const/16 v3, 0xdd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 376
    :cond_7
    const-string v0, "ElectionServiceUtil"

    const-string v1, "checkApp in blacklist *"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "package"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    const-string v5, "sdkv"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const/16 v5, 0xdd

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v3}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_8
    move v0, v1

    .line 384
    goto/16 :goto_1
.end method

.method public static final b(Landroid/content/Context;)Lcom/taobao/accs/a/a$a;
    .locals 10

    .prologue
    .line 180
    new-instance v3, Lcom/taobao/accs/a/a$a;

    invoke-direct {v3}, Lcom/taobao/accs/a/a$a;-><init>()V

    .line 181
    const/4 v1, 0x0

    .line 183
    :try_start_0
    sget-object v0, Lcom/taobao/accs/a/a;->c:Ljava/io/File;

    if-nez v0, :cond_0

    .line 184
    invoke-static {}, Lcom/taobao/accs/a/a;->a()V

    .line 186
    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/taobao/accs/a/a;->a:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 188
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v0

    .line 190
    new-array v0, v0, [B

    .line 191
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 192
    new-instance v1, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v1, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 193
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 194
    if-eqz v0, :cond_5

    .line 195
    const-string v1, "package"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 196
    invoke-static {p0, v1}, Lcom/taobao/accs/utl/UtilityImpl;->packageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 197
    iput-object v1, v3, Lcom/taobao/accs/a/a$a;->a:Ljava/lang/String;

    .line 198
    const-string v1, "lastFlushTime"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    sput-wide v4, Lcom/taobao/accs/a/a;->e:J

    .line 200
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/taobao/accs/a/a;->e:J

    const-wide/32 v8, 0x5265c00

    add-long/2addr v6, v8

    cmp-long v1, v4, v6

    if-gez v1, :cond_4

    .line 201
    const-string v1, "retry"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Lcom/taobao/accs/a/a$a;->b:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 207
    :cond_2
    :goto_0
    :try_start_2
    const-string v0, "ElectionServiceUtil"

    const-string v2, "getElectionResult"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "host"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, v3, Lcom/taobao/accs/a/a$a;->a:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "retry"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget v6, v3, Lcom/taobao/accs/a/a$a;->b:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v2, v4}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    invoke-static {p0}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/taobao/accs/client/GlobalClientInfo;->setElectionReslt(Lcom/taobao/accs/a/a$a;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 212
    if-eqz v1, :cond_3

    .line 214
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 220
    :cond_3
    :goto_1
    return-object v3

    .line 203
    :cond_4
    const-wide/16 v0, 0x0

    :try_start_4
    sput-wide v0, Lcom/taobao/accs/a/a;->e:J
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_5
    move-object v1, v2

    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 209
    :catch_1
    move-exception v0

    .line 210
    :goto_2
    :try_start_5
    const-string v2, "ElectionServiceUtil"

    const-string v4, "readFile is error"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v0, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 212
    if-eqz v1, :cond_3

    .line 214
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 215
    :catch_2
    move-exception v0

    .line 216
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 212
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_6

    .line 214
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 217
    :cond_6
    :goto_4
    throw v0

    .line 215
    :catch_3
    move-exception v1

    .line 216
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 212
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    .line 209
    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method static synthetic b(Ljava/io/File;)Ljava/io/File;
    .locals 0

    .prologue
    .line 39
    sput-object p0, Lcom/taobao/accs/a/a;->d:Ljava/io/File;

    return-object p0
.end method

.method public static final b()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 171
    sget-boolean v1, Lcom/taobao/accs/a/a;->b:Z

    if-eqz v1, :cond_0

    .line 172
    const-string v1, "ElectionServiceUtil"

    const-string v2, "try Election Fail, disable election!!"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/taobao/accs/utl/i;->c()Z

    move-result v0

    goto :goto_0
.end method

.method public static c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 475
    sget-object v0, Lcom/taobao/accs/client/GlobalConfig;->mGroup:Lcom/taobao/accs/client/AccsConfig$ACCS_GROUP;

    sget-object v1, Lcom/taobao/accs/client/AccsConfig$ACCS_GROUP;->TAOBAO:Lcom/taobao/accs/client/AccsConfig$ACCS_GROUP;

    if-ne v0, v1, :cond_0

    .line 476
    const-string v0, "com.taobao.accs.intent.action.ELECTION"

    .line 478
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/taobao/accs/a/a;->ACTION_ACCS_CUSTOM_ELECTION:Ljava/lang/String;

    goto :goto_0
.end method

.method public static final c(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 250
    const-string v0, "ElectionServiceUtil"

    const-string v1, "clearBlackList"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    invoke-static {p0}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/taobao/accs/client/GlobalClientInfo;->setElectionBlackList(Ljava/util/Map;)V

    .line 252
    sget-object v0, Lcom/taobao/accs/a/a;->c:Ljava/io/File;

    if-nez v0, :cond_1

    .line 253
    const-string v0, "ElectionServiceUtil"

    const-string v1, "clearBlackList path null"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/taobao/accs/a/a;->c:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "accs_blacklist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 261
    :catch_0
    move-exception v0

    .line 262
    const-string v1, "ElectionServiceUtil"

    const-string v2, "clearBlackList"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 483
    sget-object v0, Lcom/taobao/accs/client/GlobalConfig;->mGroup:Lcom/taobao/accs/client/AccsConfig$ACCS_GROUP;

    sget-object v1, Lcom/taobao/accs/client/AccsConfig$ACCS_GROUP;->TAOBAO:Lcom/taobao/accs/client/AccsConfig$ACCS_GROUP;

    if-ne v0, v1, :cond_0

    .line 484
    const-string v0, "/accs/accs_main/1"

    .line 486
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/accs/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/taobao/accs/client/GlobalConfig;->mGroup:Lcom/taobao/accs/client/AccsConfig$ACCS_GROUP;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static final d(Landroid/content/Context;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 269
    invoke-static {p0}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/accs/client/GlobalClientInfo;->getElectionBlackList()Ljava/util/Map;

    move-result-object v0

    .line 271
    if-eqz v0, :cond_0

    .line 272
    const-string v1, "ElectionServiceUtil"

    const-string v2, "getBlackList from mem"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    :goto_0
    return-object v0

    .line 276
    :cond_0
    sget-object v1, Lcom/taobao/accs/a/a;->c:Ljava/io/File;

    if-nez v1, :cond_1

    .line 277
    const-string v0, "ElectionServiceUtil"

    const-string v1, "getBlackList path null"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    const/4 v0, 0x0

    goto :goto_0

    .line 282
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/taobao/accs/a/a;->c:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "accs_blacklist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/taobao/accs/utl/c;->a(Ljava/io/File;)[B

    move-result-object v1

    .line 283
    if-eqz v1, :cond_2

    .line 284
    invoke-static {v1}, Lcom/taobao/accs/a/a;->a([B)Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 289
    :cond_2
    :goto_1
    invoke-static {p0}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/taobao/accs/client/GlobalClientInfo;->setElectionBlackList(Ljava/util/Map;)V

    goto :goto_0

    .line 286
    :catch_0
    move-exception v1

    .line 287
    const-string v2, "ElectionServiceUtil"

    const-string v3, "getBlackList"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method static synthetic e()Ljava/io/File;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/taobao/accs/a/a;->c:Ljava/io/File;

    return-object v0
.end method

.method public static final e(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 441
    .line 443
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 444
    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/taobao/accs/a/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 445
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 446
    if-nez v0, :cond_0

    .line 447
    const-string v0, "ElectionServiceUtil"

    const-string v2, "getResolveService resolveInfo null"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 467
    :goto_0
    return-object v0

    .line 450
    :cond_0
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 451
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/pm/ServiceInfo;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 452
    :cond_1
    const-string v0, "ElectionServiceUtil"

    const-string v2, "getResolveService serviceinfo null or disabled"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 453
    goto :goto_0

    .line 455
    :cond_2
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 457
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 458
    const-string v0, "ElectionServiceUtil"

    const-string v2, "getResolveService clientPack null"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v1

    .line 459
    goto :goto_0

    .line 463
    :cond_3
    :try_start_1
    const-string v1, "ElectionServiceUtil"

    const-string v2, "getResolveService"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "package"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 464
    :catch_0
    move-exception v1

    .line 465
    :goto_1
    const-string v2, "ElectionServiceUtil"

    const-string v3, "getResolveService error"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 464
    :catch_1
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    goto :goto_1
.end method

.method static synthetic f()Ljava/io/File;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/taobao/accs/a/a;->d:Ljava/io/File;

    return-object v0
.end method

.method static synthetic g()J
    .locals 2

    .prologue
    .line 39
    sget-wide v0, Lcom/taobao/accs/a/a;->e:J

    return-wide v0
.end method
