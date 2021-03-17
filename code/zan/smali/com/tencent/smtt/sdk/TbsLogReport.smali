.class Lcom/tencent/smtt/sdk/TbsLogReport;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/smtt/sdk/TbsLogReport$ZipHelper;,
        Lcom/tencent/smtt/sdk/TbsLogReport$EventType;
    }
.end annotation


# static fields
.field private static b:Lcom/tencent/smtt/sdk/TbsLogReport;


# instance fields
.field a:I

.field private c:Landroid/content/Context;

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Ljava/lang/String;

.field private l:I

.field private m:I

.field private n:J

.field private o:J

.field private p:I

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:J


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->c:Landroid/content/Context;

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/TbsLogReport;->e()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;
    .locals 2

    sget-object v0, Lcom/tencent/smtt/sdk/TbsLogReport;->b:Lcom/tencent/smtt/sdk/TbsLogReport;

    if-nez v0, :cond_1

    const-class v1, Lcom/tencent/smtt/sdk/TbsLogReport;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/smtt/sdk/TbsLogReport;->b:Lcom/tencent/smtt/sdk/TbsLogReport;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/smtt/sdk/TbsLogReport;

    invoke-direct {v0, p0}, Lcom/tencent/smtt/sdk/TbsLogReport;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/smtt/sdk/TbsLogReport;->b:Lcom/tencent/smtt/sdk/TbsLogReport;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/tencent/smtt/sdk/TbsLogReport;->b:Lcom/tencent/smtt/sdk/TbsLogReport;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/tencent/smtt/sdk/TbsLogReport;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/TbsLogReport;->g()V

    return-void
.end method

.method private e(J)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private e()V
    .locals 6

    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-wide v4, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->d:J

    iput-object v2, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->e:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->f:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->g:I

    iput v1, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->h:I

    iput v1, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->i:I

    iput v3, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->j:I

    const-string v0, "unknown"

    iput-object v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->k:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->l:I

    iput v3, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->m:I

    iput-wide v4, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->n:J

    iput-wide v4, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->o:J

    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->p:I

    iput v1, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->a:I

    iput-object v2, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->q:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->r:Ljava/lang/String;

    iput-wide v4, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->s:J

    return-void
.end method

.method private f(J)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private f(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private f()Lorg/json/JSONArray;
    .locals 3

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/TbsLogReport;->h()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "tbs_download_upload"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    goto :goto_0
.end method

.method private g()V
    .locals 2

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/TbsLogReport;->h()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tbs_download_upload"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private h()Landroid/content/SharedPreferences;
    .locals 3

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->c:Landroid/content/Context;

    const-string v1, "tbs_download_stat"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private i(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 11

    const/4 v10, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/utils/Apn;->getApnType(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/tencent/smtt/utils/TbsLog;->getTbsLogFilePath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/tencent/smtt/utils/p;->a()Lcom/tencent/smtt/utils/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/utils/p;->b()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/utils/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/utils/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :try_start_0
    invoke-static {}, Lcom/tencent/smtt/utils/p;->a()Lcom/tencent/smtt/utils/p;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/tencent/smtt/utils/p;->a([B)[B

    move-result-object v1

    invoke-static {}, Lcom/tencent/smtt/utils/p;->a()Lcom/tencent/smtt/utils/p;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/tencent/smtt/utils/p;->a([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a

    move-result-object v0

    :goto_1
    invoke-static {v1}, Lcom/tencent/smtt/utils/p;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/tencent/smtt/utils/p;->b([B)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->c:Landroid/content/Context;

    invoke-static {v6}, Lcom/tencent/smtt/utils/x;->a(Landroid/content/Context;)Lcom/tencent/smtt/utils/x;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/smtt/utils/x;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "&aid="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v0, "Content-Type"

    const-string v1, "application/octet-stream"

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Charset"

    const-string v1, "UTF-8"

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "QUA2"

    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/utils/w;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/tencent/smtt/utils/k;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/smtt/sdk/TbsLogReport$ZipHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/tencent/smtt/utils/k;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/tbslog_temp.zip"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/tencent/smtt/sdk/TbsLogReport$ZipHelper;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsLogReport$ZipHelper;->Zip()V

    new-instance v3, Ljava/io/File;

    sget-object v0, Lcom/tencent/smtt/utils/k;->a:Ljava/lang/String;

    const-string v1, "tbslog_temp.zip"

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 v0, 0x2000

    :try_start_3
    new-array v0, v0, [B

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_2
    :try_start_4
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_5

    const/4 v9, 0x0

    invoke-virtual {v1, v0, v9, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_2

    :catch_0
    move-exception v0

    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v4, :cond_2

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_2
    :goto_4
    if-eqz v1, :cond_3

    :try_start_7
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :cond_3
    :goto_5
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-object v0, v2

    :cond_4
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&ek="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/smtt/sdk/as;

    invoke-direct {v2, p0}, Lcom/tencent/smtt/sdk/as;-><init>(Lcom/tencent/smtt/sdk/TbsLogReport;)V

    invoke-static {v1, v7, v0, v2, v10}, Lcom/tencent/smtt/utils/n;->a(Ljava/lang/String;Ljava/util/Map;[BLcom/tencent/smtt/utils/n$a;Z)Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    :try_start_8
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-static {}, Lcom/tencent/smtt/utils/p;->a()Lcom/tencent/smtt/utils/p;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/tencent/smtt/utils/p;->a([B)[B
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-result-object v0

    if-eqz v4, :cond_6

    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    :cond_6
    :goto_7
    if-eqz v1, :cond_7

    :try_start_a
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    :cond_7
    :goto_8
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v3, v2

    move-object v4, v2

    :goto_9
    if-eqz v4, :cond_8

    :try_start_b
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    :cond_8
    :goto_a
    if-eqz v2, :cond_9

    :try_start_c
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    :cond_9
    :goto_b
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_a
    throw v0

    :catch_1
    move-exception v2

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_8

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v1

    goto :goto_a

    :catch_6
    move-exception v1

    goto :goto_b

    :catchall_1
    move-exception v0

    move-object v4, v2

    goto :goto_9

    :catchall_2
    move-exception v0

    goto :goto_9

    :catchall_3
    move-exception v0

    move-object v2, v1

    goto :goto_9

    :catch_7
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    goto :goto_3

    :catch_8
    move-exception v0

    move-object v1, v2

    move-object v4, v2

    goto/16 :goto_3

    :catch_9
    move-exception v0

    move-object v1, v2

    goto/16 :goto_3

    :catch_a
    move-exception v4

    goto/16 :goto_1

    :cond_b
    move-object v0, v2

    goto :goto_6
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->g:I

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 3

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    const/16 v0, 0xdc

    if-eq p1, v0, :cond_0

    const/16 v0, 0xdd

    if-eq p1, v0, :cond_0

    const-string v0, "TbsDownload"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error occured in installation, errorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->h(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(J)V

    invoke-virtual {p0, p2}, Lcom/tencent/smtt/sdk/TbsLogReport;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->j:Lcom/tencent/smtt/sdk/TbsListener;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/sdk/TbsListener;->onInstallFinish(I)V

    sget-object v0, Lcom/tencent/smtt/sdk/TbsLogReport$EventType;->TYPE_INSTALL:Lcom/tencent/smtt/sdk/TbsLogReport$EventType;

    invoke-virtual {p0, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Lcom/tencent/smtt/sdk/TbsLogReport$EventType;)V

    return-void
.end method

.method public a(ILjava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0, p2}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->r:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(ILjava/lang/String;)V

    return-void
.end method

.method public a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->d:J

    return-void
.end method

.method public a(Lcom/tencent/smtt/sdk/TbsLogReport$EventType;)V
    .locals 6

    const/4 v5, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p1, Lcom/tencent/smtt/sdk/TbsLogReport$EventType;->a:I

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->i(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/utils/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/utils/w;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/smtt/sdk/aj;->a()Lcom/tencent/smtt/sdk/aj;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/aj;->f(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->i(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const-string v4, "ISO8859-1"

    invoke-direct {v0, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "com.tencent.mm"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->c:Landroid/content/Context;

    const-string v1, "com.tencent.mm.BuildInfo.CLIENT_VERSION"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    iget-wide v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->d:J

    invoke-direct {p0, v0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->e(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->e:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->f:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->g:I

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->i(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->h:I

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->i(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->i:I

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->i(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->j:I

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->i(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->k:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->l:I

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->i(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->m:I

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->i(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->s:J

    invoke-direct {p0, v0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->f(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->n:J

    invoke-direct {p0, v0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->f(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->o:J

    invoke-direct {p0, v0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->f(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->p:I

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->i(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->a:I

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->i(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->q:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->r:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "tbs_download_version"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->i(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/utils/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "3.1.0.1034_43100"

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/TbsLogReport;->h()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/TbsLogReport;->f()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "tbs_download_upload"

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/TbsLogReport;->e()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tencent/smtt/sdk/ar;

    invoke-direct {v1, p0}, Lcom/tencent/smtt/sdk/ar;-><init>(Lcom/tencent/smtt/sdk/TbsLogReport;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :catch_0
    move-exception v0

    move-object v0, v1

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/utils/b;->b(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->i(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->e:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 3

    const/16 v2, 0x400

    if-nez p1, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->r:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->r:Ljava/lang/String;

    goto :goto_0
.end method

.method public b()V
    .locals 4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const-string v0, "TbsDownload"

    const-string v1, "[TbsApkDownloadStat.reportDownloadStat] Run in UIThread, Report delay"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    const-string v0, "TbsDownload"

    const-string v1, "[TbsApkDownloadStat.reportDownloadStat]"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/TbsLogReport;->f()Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const-string v0, "TbsDownload"

    const-string v1, "[TbsApkDownloadStat.reportDownloadStat] no data"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    const-string v1, "TbsDownload"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TbsApkDownloadStat.reportDownloadStat] jsonArray:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/utils/x;->a(Landroid/content/Context;)Lcom/tencent/smtt/utils/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/smtt/utils/x;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "utf-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v2, Lcom/tencent/smtt/sdk/at;

    invoke-direct {v2, p0}, Lcom/tencent/smtt/sdk/at;-><init>(Lcom/tencent/smtt/sdk/TbsLogReport;)V

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lcom/tencent/smtt/utils/n;->a(Ljava/lang/String;[BLcom/tencent/smtt/utils/n$a;Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TbsDownload"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TbsApkDownloadStat.reportDownloadStat] response:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " testcase: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    monitor-exit p0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->h:I

    return-void
.end method

.method public b(ILjava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->h(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(J)V

    invoke-virtual {p0, p2}, Lcom/tencent/smtt/sdk/TbsLogReport;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/smtt/sdk/TbsLogReport$EventType;->TYPE_LOAD:Lcom/tencent/smtt/sdk/TbsLogReport$EventType;

    invoke-virtual {p0, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Lcom/tencent/smtt/sdk/TbsLogReport$EventType;)V

    return-void
.end method

.method public b(ILjava/lang/Throwable;)V
    .locals 3

    const/16 v2, 0x400

    if-eqz p2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; err: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; cause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->r:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->r:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->b(ILjava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "NULL"

    iput-object v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->r:Ljava/lang/String;

    goto :goto_0
.end method

.method public b(J)V
    .locals 1

    iput-wide p1, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->n:J

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->f:Ljava/lang/String;

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->m:I

    return v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->i:I

    return-void
.end method

.method public c(J)V
    .locals 3

    iget-wide v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->o:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->o:J

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->k:Ljava/lang/String;

    return-void
.end method

.method public d()V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/tencent/smtt/sdk/TbsLogReport;->e()V

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/TbsLogReport;->h()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->j:I

    return-void
.end method

.method public d(J)V
    .locals 3

    iget-wide v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->s:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->s:J

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x6c

    invoke-virtual {p0, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->h(I)V

    iput-object p1, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->q:Ljava/lang/String;

    return-void
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->l:I

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    const/16 v1, 0x400

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1
    iput-object p1, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->r:Ljava/lang/String;

    goto :goto_0
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->m:I

    return-void
.end method

.method public g(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->p:I

    return-void
.end method

.method public h(I)V
    .locals 5

    const/16 v4, 0x6f

    const/4 v3, 0x1

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    const/16 v0, 0x6e

    if-eq p1, v0, :cond_0

    const/16 v0, 0x78

    if-eq p1, v0, :cond_0

    if-eq p1, v4, :cond_0

    const/16 v0, 0x190

    if-ge p1, v0, :cond_0

    const-string v0, "TbsDownload"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error occured, errorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    if-ne p1, v4, :cond_1

    const-string v0, "TbsDownload"

    const-string v1, "you are not in wifi, downloading stoped"

    invoke-static {v0, v1, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    iput p1, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->a:I

    return-void
.end method
