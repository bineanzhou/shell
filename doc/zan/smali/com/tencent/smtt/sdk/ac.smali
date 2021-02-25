.class Lcom/tencent/smtt/sdk/ac;
.super Ljava/lang/Object;


# static fields
.field private static d:I

.field private static e:I

.field private static final f:[Ljava/lang/String;


# instance fields
.field private A:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private B:I

.field private C:Z

.field a:Ljava/lang/String;

.field b:[Ljava/lang/String;

.field c:I

.field private g:Landroid/content/Context;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/io/File;

.field private l:J

.field private m:I

.field private n:I

.field private o:Z

.field private p:I

.field private q:I

.field private r:Z

.field private s:Z

.field private t:Ljava/net/HttpURLConnection;

.field private u:Ljava/lang/String;

.field private v:Lcom/tencent/smtt/sdk/TbsLogReport;

.field private w:Ljava/lang/String;

.field private x:I

.field private y:Z

.field private z:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x5

    const/4 v3, 0x1

    sput v0, Lcom/tencent/smtt/sdk/ac;->d:I

    sput v3, Lcom/tencent/smtt/sdk/ac;->e:I

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "tbs_downloading_com.tencent.mtt"

    aput-object v2, v0, v1

    const-string v1, "tbs_downloading_com.tencent.mm"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "tbs_downloading_com.tencent.mobileqq"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "tbs_downloading_com.tencent.tbs"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "tbs_downloading_com.qzone"

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/smtt/sdk/ac;->f:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x7530

    iput v0, p0, Lcom/tencent/smtt/sdk/ac;->m:I

    const/16 v0, 0x4e20

    iput v0, p0, Lcom/tencent/smtt/sdk/ac;->n:I

    sget v0, Lcom/tencent/smtt/sdk/ac;->d:I

    iput v0, p0, Lcom/tencent/smtt/sdk/ac;->B:I

    iput-object v2, p0, Lcom/tencent/smtt/sdk/ac;->b:[Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/smtt/sdk/ac;->c:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/ac;->v:Lcom/tencent/smtt/sdk/TbsLogReport;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/smtt/sdk/ac;->A:Ljava/util/Set;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tbs_downloading_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/ac;->u:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/smtt/sdk/aj;->a()Lcom/tencent/smtt/sdk/aj;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/aj;->j(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/ac;->k:Ljava/io/File;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ac;->k:Ljava/io/File;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "TbsCorePrivateDir is null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/tencent/smtt/sdk/ac;->e()V

    iput-object v2, p0, Lcom/tencent/smtt/sdk/ac;->w:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/smtt/sdk/ac;->x:I

    return-void
.end method

.method private a(JJ)J
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v2, v0, p1

    iget-object v4, p0, Lcom/tencent/smtt/sdk/ac;->v:Lcom/tencent/smtt/sdk/TbsLogReport;

    invoke-virtual {v4, v2, v3}, Lcom/tencent/smtt/sdk/TbsLogReport;->c(J)V

    iget-object v2, p0, Lcom/tencent/smtt/sdk/ac;->v:Lcom/tencent/smtt/sdk/TbsLogReport;

    invoke-virtual {v2, p3, p4}, Lcom/tencent/smtt/sdk/TbsLogReport;->d(J)V

    return-wide v0
.end method

.method static a(Landroid/content/Context;)Ljava/io/File;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v0, v2, :cond_1

    new-instance v0, Ljava/io/File;

    const/4 v2, 0x4

    invoke-static {p0, v2}, Lcom/tencent/smtt/utils/k;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "TbsDownload"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TbsApkDownloader.backupApkPath] Exception is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;I)Ljava/io/File;
    .locals 4

    const/4 v2, 0x0

    new-instance v1, Ljava/io/File;

    invoke-static {p0, p1}, Lcom/tencent/smtt/utils/k;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "x5.oversea.tbs.org"

    :goto_1
    invoke-direct {v3, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_2
    const-string v0, "x5.tbs.org"

    goto :goto_1

    :cond_3
    move-object v0, v2

    goto :goto_0
.end method

.method private a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    const/16 v2, 0x400

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private a(Ljava/net/URL;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0
.end method

.method private a(ILjava/lang/String;Z)V
    .locals 2

    if-nez p3, :cond_0

    iget v0, p0, Lcom/tencent/smtt/sdk/ac;->p:I

    iget v1, p0, Lcom/tencent/smtt/sdk/ac;->B:I

    if-le v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/ac;->v:Lcom/tencent/smtt/sdk/TbsLogReport;

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->h(I)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ac;->v:Lcom/tencent/smtt/sdk/TbsLogReport;

    invoke-virtual {v0, p2}, Lcom/tencent/smtt/sdk/TbsLogReport;->e(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private a(J)V
    .locals 3

    iget v0, p0, Lcom/tencent/smtt/sdk/ac;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/smtt/sdk/ac;->p:I

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/tencent/smtt/sdk/ac;->m()J

    move-result-wide p1

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Ljava/io/Closeable;)V
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/io/File;Landroid/content/Context;)V
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/tencent/smtt/sdk/ac;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "x5.oversea.tbs.org"

    :goto_1
    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    invoke-static {p0, v2}, Lcom/tencent/smtt/utils/k;->b(Ljava/io/File;Ljava/io/File;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    const-string v0, "x5.tbs.org"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)V
    .locals 5

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ac;->t:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/ac;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/tencent/smtt/sdk/ac;->t:Ljava/net/HttpURLConnection;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ac;->t:Ljava/net/HttpURLConnection;

    const-string v1, "User-Agent"

    iget-object v2, p0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ac;->t:Ljava/net/HttpURLConnection;

    const-string v1, "Accept-Encoding"

    const-string v2, "identity"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ac;->t:Ljava/net/HttpURLConnection;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ac;->t:Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ac;->t:Ljava/net/HttpURLConnection;

    iget v1, p0, Lcom/tencent/smtt/sdk/ac;->n:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ac;->t:Ljava/net/HttpURLConnection;

    iget v1, p0, Lcom/tencent/smtt/sdk/ac;->m:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    return-void

    :catch_0
    move-exception v0

    const-string v2, "TbsDownload"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[initHttpRequest] mHttpRequest.disconnect() Throwable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/smtt/sdk/ac;)Z
    .locals 1

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/ac;->n()Z

    move-result v0

    return v0
.end method

.method static b(Landroid/content/Context;)Ljava/io/File;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v0, v2, :cond_3

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/tencent/smtt/sdk/ac;->a(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/tencent/smtt/sdk/ac;->a(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/tencent/smtt/sdk/ac;->a(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/tencent/smtt/sdk/ac;->a(Landroid/content/Context;I)Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "TbsDownload"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TbsApkDownloader.backupApkPath] Exception is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method private b(ZZ)Z
    .locals 10

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const-string v0, "TbsDownload"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[TbsApkDownloader.verifyTbsApk] isTempFile="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/ac;->k:Ljava/io/File;

    if-nez p1, :cond_1

    const-string v0, "x5.tbs"

    :goto_0
    invoke-direct {v7, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    :goto_1
    return v4

    :cond_1
    const-string v0, "x5.tbs.temp"

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "tbs_apk_md5"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7}, Lcom/tencent/smtt/utils/a;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const-string v0, "TbsDownload"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TbsApkDownloader.verifyTbsApk] isTempFile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " md5 failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ac;->v:Lcom/tencent/smtt/sdk/TbsLogReport;

    const-string v1, "fileMd5 not match"

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v0, "TbsDownload"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[TbsApkDownloader.verifyTbsApk] md5("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ") successful!"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "tbs_apkfilesize"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    if-eqz v7, :cond_c

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_c

    cmp-long v0, v8, v2

    if-lez v0, :cond_6

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v0

    cmp-long v2, v8, v0

    if-eqz v2, :cond_5

    :goto_2
    const-string v2, "TbsDownload"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[TbsApkDownloader.verifyTbsApk] isTempFile="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " filelength failed"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/smtt/sdk/ac;->v:Lcom/tencent/smtt/sdk/TbsLogReport;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fileLength:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",contentLength:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    move-wide v2, v0

    :cond_6
    const-string v0, "TbsDownload"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[TbsApkDownloader.verifyTbsApk] length("

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") successful!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-eqz p2, :cond_7

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v0, v7}, Lcom/tencent/smtt/utils/a;->a(Landroid/content/Context;Ljava/io/File;)I

    move-result v0

    iget-object v1, p0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "tbs_download_version"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v0, :cond_7

    const-string v2, "TbsDownload"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[TbsApkDownloader.verifyTbsApk] isTempFile="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " versionCode failed"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/tencent/smtt/sdk/ac;->v:Lcom/tencent/smtt/sdk/TbsLogReport;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fileVersion:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",configVersion:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    const-string v1, "TbsDownload"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TbsApkDownloader.verifyTbsApk] tbsApkVersionCode("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") successful!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_9

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v0, v7}, Lcom/tencent/smtt/utils/b;->a(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "3082023f308201a8a00302010202044c46914a300d06092a864886f70d01010505003064310b30090603550406130238363110300e060355040813074265696a696e673110300e060355040713074265696a696e673110300e060355040a130754656e63656e74310c300a060355040b13035753443111300f0603550403130873616d75656c6d6f301e170d3130303732313036313835305a170d3430303731333036313835305a3064310b30090603550406130238363110300e060355040813074265696a696e673110300e060355040713074265696a696e673110300e060355040a130754656e63656e74310c300a060355040b13035753443111300f0603550403130873616d75656c6d6f30819f300d06092a864886f70d010101050003818d0030818902818100c209077044bd0d63ea00ede5b839914cabcc912a87f0f8b390877e0f7a2583f0d5933443c40431c35a4433bc4c965800141961adc44c9625b1d321385221fd097e5bdc2f44a1840d643ab59dc070cf6c4b4b4d98bed5cbb8046e0a7078ae134da107cdf2bfc9b440fe5cb2f7549b44b73202cc6f7c2c55b8cfb0d333a021f01f0203010001300d06092a864886f70d010105050003818100b007db9922774ef4ccfee81ba514a8d57c410257e7a2eba64bfa17c9e690da08106d32f637ac41fbc9f205176c71bde238c872c3ee2f8313502bee44c80288ea4ef377a6f2cdfe4d3653c145c4acfedbfbadea23b559d41980cc3cdd35d79a68240693739aabf5c5ed26148756cf88264226de394c8a24ac35b712b120d4d23a"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "TbsDownload"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TbsApkDownloader.verifyTbsApk] isTempFile="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " signature failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/tencent/smtt/sdk/ac;->v:Lcom/tencent/smtt/sdk/TbsLogReport;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "signature:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v0, :cond_8

    const-string v0, "null"

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3

    :cond_9
    const-string v0, "TbsDownload"

    const-string v1, "[TbsApkDownloader.verifyTbsApk] signature successful!"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_a

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/ac;->k:Ljava/io/File;

    const-string v2, "x5.tbs"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move-object v1, v6

    :goto_4
    if-nez v0, :cond_b

    const/16 v0, 0x6d

    invoke-direct {p0, v1}, Lcom/tencent/smtt/sdk/ac;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v5}, Lcom/tencent/smtt/sdk/ac;->a(ILjava/lang/String;Z)V

    goto/16 :goto_1

    :catch_0
    move-exception v0

    move-object v1, v0

    move v0, v4

    goto :goto_4

    :cond_a
    move v0, v4

    :cond_b
    const-string v1, "TbsDownload"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TbsApkDownloader.verifyTbsApk] rename("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") successful!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    goto/16 :goto_1

    :cond_c
    move-wide v0, v2

    goto/16 :goto_2
.end method

.method public static c(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/tencent/smtt/sdk/aj;->a()Lcom/tencent/smtt/sdk/aj;

    invoke-static {p0}, Lcom/tencent/smtt/sdk/aj;->j(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "x5.tbs"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    new-instance v1, Ljava/io/File;

    const-string v2, "x5.tbs.temp"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    invoke-static {p0}, Lcom/tencent/smtt/sdk/ac;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/File;

    const-string v2, "x5.tbs.org"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    new-instance v1, Ljava/io/File;

    const-string v2, "x5.oversea.tbs.org"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private c(Z)V
    .locals 8

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/utils/aa;->a(Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v1

    iget-object v0, v1, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v2, "request_full_package"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v2, "tbs_needdownload"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v2, "tbs_download_interrupt_code_reason"

    const/16 v3, -0x7b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    sget-object v2, Lcom/tencent/smtt/sdk/QbSdk;->j:Lcom/tencent/smtt/sdk/TbsListener;

    if-eqz p1, :cond_1

    const/16 v0, 0x64

    :goto_0
    invoke-interface {v2, v0}, Lcom/tencent/smtt/sdk/TbsListener;->onDownloadFinish(I)V

    iget-object v0, v1, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "tbs_responsecode"

    invoke-interface {v0, v2, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v0, 0x3

    if-eq v2, v0, :cond_0

    const/16 v0, 0x2710

    if-le v2, v0, :cond_5

    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/ac;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_4

    new-instance v4, Ljava/io/File;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "x5.oversea.tbs.org"

    :goto_1
    invoke-direct {v4, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/tencent/smtt/utils/a;->a(Landroid/content/Context;Ljava/io/File;)I

    move-result v3

    new-instance v0, Ljava/io/File;

    iget-object v5, p0, Lcom/tencent/smtt/sdk/ac;->k:Ljava/io/File;

    const-string v6, "x5.tbs"

    invoke-direct {v0, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_2
    iget-object v1, v1, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v5, "tbs_download_version"

    invoke-interface {v1, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "operation"

    invoke-virtual {v5, v6, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "old_core_ver"

    invoke-virtual {v5, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "new_core_ver"

    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "old_apk_location"

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "new_apk_location"

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "diff_file_location"

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/aj;->a()Lcom/tencent/smtt/sdk/aj;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-virtual {v0, v1, v5}, Lcom/tencent/smtt/sdk/aj;->b(Landroid/content/Context;Landroid/os/Bundle;)V

    :goto_3
    return-void

    :cond_1
    const/16 v0, 0x78

    goto :goto_0

    :cond_2
    const-string v0, "x5.tbs.org"

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/ac;->c()V

    iget-object v0, v1, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v2, "tbs_needdownload"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    goto :goto_3

    :cond_5
    iget-object v0, v1, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "tbs_download_version"

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/tencent/smtt/sdk/aj;->a()Lcom/tencent/smtt/sdk/aj;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/tencent/smtt/sdk/ac;->k:Ljava/io/File;

    const-string v5, "x5.tbs"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/tencent/smtt/sdk/aj;->a(Landroid/content/Context;Ljava/lang/String;I)V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/ac;->k:Ljava/io/File;

    const-string v2, "x5.tbs"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/tencent/smtt/sdk/ac;->a(Ljava/io/File;Landroid/content/Context;)V

    goto :goto_3
.end method

.method private d(Z)Z
    .locals 3

    const-string v0, "TbsDownload"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TbsApkDownloader.deleteFile] isApk="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/ac;->k:Ljava/io/File;

    const-string v2, "x5.tbs"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v0

    :goto_0
    const/4 v0, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    :cond_0
    return v0

    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/ac;->k:Ljava/io/File;

    const-string v2, "x5.tbs.temp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_0
.end method

.method private e()V
    .locals 3

    const/4 v2, 0x0

    iput v2, p0, Lcom/tencent/smtt/sdk/ac;->p:I

    iput v2, p0, Lcom/tencent/smtt/sdk/ac;->q:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/smtt/sdk/ac;->l:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/ac;->j:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/tencent/smtt/sdk/ac;->o:Z

    iput-boolean v2, p0, Lcom/tencent/smtt/sdk/ac;->r:Z

    iput-boolean v2, p0, Lcom/tencent/smtt/sdk/ac;->s:Z

    iput-boolean v2, p0, Lcom/tencent/smtt/sdk/ac;->y:Z

    return-void
.end method

.method private f()V
    .locals 8

    const/16 v7, 0x65

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-string v0, "TbsDownload"

    const-string v1, "[TbsApkDownloader.closeHttpRequest]"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ac;->t:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/ac;->r:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ac;->v:Lcom/tencent/smtt/sdk/TbsLogReport;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/ac;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tencent/smtt/sdk/ac;->a(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->b(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/ac;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v4, p0, Lcom/tencent/smtt/sdk/ac;->t:Ljava/net/HttpURLConnection;

    :cond_1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/ac;->v:Lcom/tencent/smtt/sdk/TbsLogReport;

    iget v1, v0, Lcom/tencent/smtt/sdk/TbsLogReport;->a:I

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/ac;->r:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/ac;->y:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ac;->v:Lcom/tencent/smtt/sdk/TbsLogReport;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(J)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/utils/Apn;->getApnInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    iget-object v2, p0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/utils/Apn;->getApnType(Landroid/content/Context;)I

    move-result v2

    iget-object v3, p0, Lcom/tencent/smtt/sdk/ac;->v:Lcom/tencent/smtt/sdk/TbsLogReport;

    invoke-virtual {v3, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->c(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/smtt/sdk/ac;->v:Lcom/tencent/smtt/sdk/TbsLogReport;

    invoke-virtual {v3, v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->e(I)V

    iget v3, p0, Lcom/tencent/smtt/sdk/ac;->x:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/tencent/smtt/sdk/ac;->w:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/tencent/smtt/sdk/ac;->v:Lcom/tencent/smtt/sdk/TbsLogReport;

    invoke-virtual {v0, v5}, Lcom/tencent/smtt/sdk/TbsLogReport;->g(I)V

    :cond_4
    iget-object v0, p0, Lcom/tencent/smtt/sdk/ac;->v:Lcom/tencent/smtt/sdk/TbsLogReport;

    iget v0, v0, Lcom/tencent/smtt/sdk/TbsLogReport;->a:I

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ac;->v:Lcom/tencent/smtt/sdk/TbsLogReport;

    iget v0, v0, Lcom/tencent/smtt/sdk/TbsLogReport;->a:I

    const/16 v2, 0x6b

    if-ne v0, v2, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/tencent/smtt/sdk/ac;->v:Lcom/tencent/smtt/sdk/TbsLogReport;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->c()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/utils/Apn;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-direct {p0, v7, v4, v6}, Lcom/tencent/smtt/sdk/ac;->a(ILjava/lang/String;Z)V

    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/ac;->v:Lcom/tencent/smtt/sdk/TbsLogReport;

    sget-object v2, Lcom/tencent/smtt/sdk/TbsLogReport$EventType;->TYPE_DOWNLOAD:Lcom/tencent/smtt/sdk/TbsLogReport$EventType;

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Lcom/tencent/smtt/sdk/TbsLogReport$EventType;)V

    const/16 v0, 0x64

    if-eq v1, v0, :cond_7

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->j:Lcom/tencent/smtt/sdk/TbsListener;

    invoke-interface {v0, v1}, Lcom/tencent/smtt/sdk/TbsListener;->onDownloadFinish(I)V

    :cond_7
    :goto_2
    return-void

    :catch_0
    move-exception v0

    const-string v1, "TbsDownload"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[closeHttpRequest] mHttpRequest.disconnect() Throwable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    invoke-direct {p0}, Lcom/tencent/smtt/sdk/ac;->l()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0, v7, v4, v6}, Lcom/tencent/smtt/sdk/ac;->a(ILjava/lang/String;Z)V

    goto :goto_1

    :cond_9
    sput-boolean v5, Lcom/tencent/smtt/sdk/TbsDownloader;->a:Z

    goto :goto_2
.end method

.method private g()Z
    .locals 4

    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ac;->k:Ljava/io/File;

    const-string v2, "x5.tbs"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/ac;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Ljava/io/File;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "x5.oversea.tbs.org"

    :goto_0
    invoke-direct {v3, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    invoke-static {v3, v1}, Lcom/tencent/smtt/utils/k;->b(Ljava/io/File;Ljava/io/File;)Z

    :cond_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const-string v0, "x5.tbs.org"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "TbsDownload"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TbsApkDownloader.copyTbsApkFromBackupToInstall] Exception is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_1
.end method

.method private h()Z
    .locals 6

    const/4 v3, 0x0

    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    const/4 v2, 0x4

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/k;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "x5.oversea.tbs.org"

    :goto_0
    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "use_backup_version"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "tbs_download_version"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    :cond_0
    iget-object v2, p0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    const-wide/16 v4, 0x0

    invoke-static {v2, v1, v4, v5, v0}, Lcom/tencent/smtt/utils/a;->a(Landroid/content/Context;Ljava/io/File;JI)Z

    move-result v0

    return v0

    :cond_1
    const-string v0, "x5.tbs.org"

    goto :goto_0
.end method

.method private i()V
    .locals 3

    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    const/4 v2, 0x4

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/k;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "x5.oversea.tbs.org"

    :goto_0
    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string v0, "x5.tbs.org"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private j()Z
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/tencent/smtt/sdk/ac;->k:Ljava/io/File;

    const-string v3, "x5.tbs.temp"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private k()J
    .locals 5

    const-wide/16 v0, 0x0

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/tencent/smtt/sdk/ac;->k:Ljava/io/File;

    const-string v4, "x5.tbs.temp"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method private l()Z
    .locals 7

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "www.qq.com"

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ping "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    :try_start_1
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move v1, v0

    :cond_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v6, "TTL"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "ttl"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_0
    invoke-direct {p0, v5}, Lcom/tencent/smtt/sdk/ac;->a(Ljava/io/Closeable;)V

    invoke-direct {p0, v4}, Lcom/tencent/smtt/sdk/ac;->a(Ljava/io/Closeable;)V

    invoke-direct {p0, v2}, Lcom/tencent/smtt/sdk/ac;->a(Ljava/io/Closeable;)V

    :goto_1
    return v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x5

    if-lt v1, v3, :cond_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    invoke-direct {p0, v4}, Lcom/tencent/smtt/sdk/ac;->a(Ljava/io/Closeable;)V

    invoke-direct {p0, v3}, Lcom/tencent/smtt/sdk/ac;->a(Ljava/io/Closeable;)V

    invoke-direct {p0, v2}, Lcom/tencent/smtt/sdk/ac;->a(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v4, v3

    move-object v5, v3

    :goto_3
    invoke-direct {p0, v5}, Lcom/tencent/smtt/sdk/ac;->a(Ljava/io/Closeable;)V

    invoke-direct {p0, v4}, Lcom/tencent/smtt/sdk/ac;->a(Ljava/io/Closeable;)V

    invoke-direct {p0, v3}, Lcom/tencent/smtt/sdk/ac;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v4, v3

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_3

    :catchall_4
    move-exception v0

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v2, v3

    move-object v4, v5

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    goto :goto_2

    :catch_3
    move-exception v1

    move-object v3, v4

    move-object v4, v5

    goto :goto_2
.end method

.method private m()J
    .locals 4

    const-wide/16 v0, 0x4e20

    iget v2, p0, Lcom/tencent/smtt/sdk/ac;->p:I

    packed-switch v2, :pswitch_data_0

    const-wide/16 v2, 0xa

    mul-long/2addr v0, v2

    :goto_0
    return-wide v0

    :pswitch_0
    iget v2, p0, Lcom/tencent/smtt/sdk/ac;->p:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    goto :goto_0

    :pswitch_1
    const-wide/16 v2, 0x5

    mul-long/2addr v0, v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private n()Z
    .locals 9

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/utils/Apn;->getApnType(Landroid/content/Context;)I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_3

    move v0, v1

    :goto_0
    const-string v4, "TbsDownload"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[TbsApkDwonloader.detectWifiNetworkAvailable] isWifi="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/utils/Apn;->getWifiSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "TbsDownload"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[TbsApkDwonloader.detectWifiNetworkAvailable] localBSSID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string v5, "http://pms.mb.qq.com/rsp204"

    invoke-direct {v0, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/16 v3, 0x2710

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v3, 0x2710

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const-string v5, "TbsDownload"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[TbsApkDwonloader.detectWifiNetworkAvailable] responseCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v5, 0xcc

    if-ne v3, v5, :cond_4

    :goto_1
    if-eqz v0, :cond_7

    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    move v2, v1

    :cond_0
    :goto_2
    if-nez v2, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ac;->A:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ac;->A:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/ac;->o()V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ac;->z:Landroid/os/Handler;

    const/16 v1, 0x96

    invoke-virtual {v0, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/smtt/sdk/ac;->z:Landroid/os/Handler;

    const-wide/32 v4, 0x1d4c0

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ac;->A:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ac;->A:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_2
    return v2

    :cond_3
    move v0, v2

    goto/16 :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v3, v4

    move v2, v1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v3

    :goto_3
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v1, :cond_6

    :try_start_4
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object v3, v4

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v3, v4

    goto :goto_2

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v3, :cond_5

    :try_start_5
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_5
    :goto_5
    throw v0

    :catch_3
    move-exception v1

    goto :goto_5

    :catchall_1
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v3, v1

    goto :goto_4

    :catch_4
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_3

    :cond_6
    move-object v3, v4

    goto :goto_2

    :cond_7
    move-object v3, v4

    move v2, v1

    goto :goto_2
.end method

.method private o()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ac;->z:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/smtt/sdk/ad;

    invoke-static {}, Lcom/tencent/smtt/sdk/ah;->a()Lcom/tencent/smtt/sdk/ah;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/ah;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tencent/smtt/sdk/ad;-><init>(Lcom/tencent/smtt/sdk/ac;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/smtt/sdk/ac;->z:Landroid/os/Handler;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 4

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/ac;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    new-instance v3, Ljava/io/File;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "x5.oversea.tbs.org"

    :goto_1
    invoke-direct {v3, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/a;->a(Landroid/content/Context;Ljava/io/File;)I

    move-result v0

    goto :goto_0

    :cond_1
    const-string v0, "x5.tbs.org"

    goto :goto_1
.end method

.method public a(I)V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/ac;->k:Ljava/io/File;

    const-string v2, "x5.tbs"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/a;->a(Landroid/content/Context;Ljava/io/File;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v2, v1, :cond_0

    if-lez p1, :cond_1

    if-ne p1, v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Z)V
    .locals 32

    invoke-static {}, Lcom/tencent/smtt/sdk/aj;->a()Lcom/tencent/smtt/sdk/aj;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/tencent/smtt/sdk/aj;->b(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez p1, :cond_0

    const/4 v4, 0x0

    sput-boolean v4, Lcom/tencent/smtt/sdk/TbsDownloader;->a:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v4

    const/16 v5, -0x142

    invoke-virtual {v4, v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v4

    iget-object v4, v4, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v5, "tbs_responsecode"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    :cond_1
    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lcom/tencent/smtt/sdk/ac;->a(ZZ)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v4, 0x0

    sput-boolean v4, Lcom/tencent/smtt/sdk/TbsDownloader;->a:Z

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tencent/smtt/sdk/ac;->C:Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v5

    iget-object v5, v5, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v6, "tbs_downloadurl"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/tencent/smtt/sdk/ac;->h:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v5

    iget-object v5, v5, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v6, "tbs_downloadurl_list"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "TbsDownload"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "backupUrlStrings:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/tencent/smtt/sdk/ac;->b:[Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Lcom/tencent/smtt/sdk/ac;->c:I

    if-nez p1, :cond_4

    if-eqz v5, :cond_4

    const-string v6, ""

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/tencent/smtt/sdk/ac;->b:[Ljava/lang/String;

    :cond_4
    const-string v6, "TbsDownload"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[TbsApkDownloader.startDownload] mDownloadUrl="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ac;->h:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " backupUrlStrings="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " mLocation="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ac;->j:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " mCanceled="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/tencent/smtt/sdk/ac;->r:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " mHttpRequest="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ac;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/smtt/sdk/ac;->h:Ljava/lang/String;

    if-nez v5, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/smtt/sdk/ac;->j:Ljava/lang/String;

    if-nez v5, :cond_5

    sget-object v4, Lcom/tencent/smtt/sdk/QbSdk;->j:Lcom/tencent/smtt/sdk/TbsListener;

    const/16 v5, 0x6e

    invoke-interface {v4, v5}, Lcom/tencent/smtt/sdk/TbsListener;->onDownloadFinish(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v4

    const/16 v5, -0x12e

    invoke-virtual {v4, v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/smtt/sdk/ac;->t:Ljava/net/HttpURLConnection;

    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/tencent/smtt/sdk/ac;->r:Z

    if-nez v5, :cond_6

    sget-object v4, Lcom/tencent/smtt/sdk/QbSdk;->j:Lcom/tencent/smtt/sdk/TbsListener;

    const/16 v5, 0x6e

    invoke-interface {v4, v5}, Lcom/tencent/smtt/sdk/TbsListener;->onDownloadFinish(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v4

    const/16 v5, -0x12f

    invoke-virtual {v4, v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    goto/16 :goto_0

    :cond_6
    if-nez p1, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/smtt/sdk/ac;->A:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v6}, Lcom/tencent/smtt/utils/Apn;->getWifiSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v4, "TbsDownload"

    const-string v5, "[TbsApkDownloader.startDownload] WIFI Unavailable"

    invoke-static {v4, v5}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/tencent/smtt/sdk/QbSdk;->j:Lcom/tencent/smtt/sdk/TbsListener;

    const/16 v5, 0x6e

    invoke-interface {v4, v5}, Lcom/tencent/smtt/sdk/TbsListener;->onDownloadFinish(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v4

    const/16 v5, -0x130

    invoke-virtual {v4, v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    goto/16 :goto_0

    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/tencent/smtt/sdk/ac;->e()V

    const-string v5, "TbsDownload"

    const-string v6, "STEP 1/2 begin downloading..."

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getDownloadMaxflow()J

    move-result-wide v24

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v6}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v6

    iget-object v6, v6, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v7, "tbs_downloadflow"

    const-wide/16 v8, 0x0

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    if-eqz p1, :cond_e

    sget v8, Lcom/tencent/smtt/sdk/ac;->e:I

    move-object/from16 v0, p0

    iput v8, v0, Lcom/tencent/smtt/sdk/ac;->B:I

    :cond_8
    :goto_2
    move-object/from16 v0, p0

    iget v8, v0, Lcom/tencent/smtt/sdk/ac;->p:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/tencent/smtt/sdk/ac;->B:I

    if-le v8, v9, :cond_f

    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/tencent/smtt/sdk/ac;->r:Z

    if-nez v6, :cond_d

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/tencent/smtt/sdk/ac;->s:Z

    if-eqz v6, :cond_b

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/smtt/sdk/ac;->b:[Ljava/lang/String;

    if-nez v6, :cond_a

    if-nez v5, :cond_a

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4}, Lcom/tencent/smtt/sdk/ac;->b(ZZ)Z

    move-result v5

    :cond_a
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/smtt/sdk/ac;->v:Lcom/tencent/smtt/sdk/TbsLogReport;

    if-eqz v5, :cond_4c

    const/4 v6, 0x1

    :goto_4
    invoke-virtual {v7, v6}, Lcom/tencent/smtt/sdk/TbsLogReport;->d(I)V

    if-nez v4, :cond_4e

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/smtt/sdk/ac;->v:Lcom/tencent/smtt/sdk/TbsLogReport;

    if-eqz v5, :cond_4d

    const/4 v4, 0x1

    :goto_5
    invoke-virtual {v6, v4}, Lcom/tencent/smtt/sdk/TbsLogReport;->b(I)V

    :goto_6
    if-eqz v5, :cond_4f

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/tencent/smtt/sdk/ac;->c(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v4

    const/16 v6, -0x13d

    invoke-virtual {v4, v6}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    const/16 v4, 0x64

    const-string v6, "success"

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6, v7}, Lcom/tencent/smtt/sdk/ac;->a(ILjava/lang/String;Z)V

    :cond_b
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v4

    if-eqz v5, :cond_50

    iget-object v6, v4, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v7, "tbs_download_success_retrytimes"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    iget-object v7, v4, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v8, "tbs_download_success_retrytimes"

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    :goto_8
    invoke-virtual {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/smtt/sdk/ac;->v:Lcom/tencent/smtt/sdk/TbsLogReport;

    if-eqz v5, :cond_51

    const/4 v4, 0x1

    :goto_9
    invoke-virtual {v6, v4}, Lcom/tencent/smtt/sdk/TbsLogReport;->f(I)V

    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/tencent/smtt/sdk/ac;->f()V

    goto/16 :goto_0

    :cond_e
    sget v8, Lcom/tencent/smtt/sdk/ac;->d:I

    move-object/from16 v0, p0

    iput v8, v0, Lcom/tencent/smtt/sdk/ac;->B:I

    goto/16 :goto_2

    :cond_f
    move-object/from16 v0, p0

    iget v8, v0, Lcom/tencent/smtt/sdk/ac;->q:I

    const/16 v9, 0x8

    if-le v8, v9, :cond_10

    const/16 v6, 0x7b

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v8}, Lcom/tencent/smtt/sdk/ac;->a(ILjava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v6}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v6

    const/16 v7, -0x132

    invoke-virtual {v6, v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    goto/16 :goto_3

    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    if-nez p1, :cond_13

    :try_start_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v8

    iget-object v8, v8, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v9, "tbs_downloadstarttime"

    const-wide/16 v10, 0x0

    invoke-interface {v8, v9, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    sub-long v8, v20, v8

    const-wide/32 v10, 0x5265c00

    cmp-long v8, v8, v10

    if-lez v8, :cond_11

    const-string v8, "TbsDownload"

    const-string v9, "[TbsApkDownloader.startDownload] OVER DOWNLOAD_PERIOD"

    invoke-static {v8, v9}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v8

    iget-object v8, v8, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v9, "tbs_downloadstarttime"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v8

    iget-object v8, v8, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v9, "tbs_downloadflow"

    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v8, 0x0

    :goto_a
    :try_start_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v6}, Lcom/tencent/smtt/utils/k;->b(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_12

    const-string v6, "TbsDownload"

    const-string v7, "DownloadBegin FreeSpace too small"

    const/4 v10, 0x1

    invoke-static {v6, v7, v10}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v6, 0x69

    const/4 v7, 0x0

    const/4 v10, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v10}, Lcom/tencent/smtt/sdk/ac;->a(ILjava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v6}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v6

    const/16 v7, -0x134

    invoke-virtual {v6, v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez p1, :cond_9

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v6}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v6

    iget-object v6, v6, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v7, "tbs_downloadflow"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v6}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    goto/16 :goto_3

    :cond_11
    :try_start_2
    const-string v8, "TbsDownload"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[TbsApkDownloader.startDownload] downloadFlow="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v8, v6, v24

    if-ltz v8, :cond_55

    const-string v8, "TbsDownload"

    const-string v9, "STEP 1/2 begin downloading...failed because you exceeded max flow!"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v8, 0x70

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v10}, Lcom/tencent/smtt/sdk/ac;->a(ILjava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v8

    const/16 v9, -0x133

    invoke-virtual {v8, v9}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_9

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v8

    iget-object v8, v8, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v9, "tbs_downloadflow"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v8, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v6}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    goto/16 :goto_3

    :cond_12
    move-wide v6, v8

    :cond_13
    const/4 v8, 0x1

    :try_start_3
    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/tencent/smtt/sdk/ac;->y:Z

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ac;->j:Ljava/lang/String;

    if-eqz v8, :cond_1c

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ac;->j:Ljava/lang/String;

    :goto_b
    const-string v9, "TbsDownload"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "try url:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",mRetryTimes:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/tencent/smtt/sdk/ac;->p:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tencent/smtt/sdk/ac;->i:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_14

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tencent/smtt/sdk/ac;->v:Lcom/tencent/smtt/sdk/TbsLogReport;

    invoke-virtual {v9, v8}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Ljava/lang/String;)V

    :cond_14
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/tencent/smtt/sdk/ac;->i:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/tencent/smtt/sdk/ac;->a(Ljava/lang/String;)V

    const-wide/16 v18, 0x0

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/tencent/smtt/sdk/ac;->o:Z

    if-nez v8, :cond_15

    invoke-direct/range {p0 .. p0}, Lcom/tencent/smtt/sdk/ac;->k()J

    move-result-wide v18

    const-string v8, "TbsDownload"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[TbsApkDownloader.startDownload] range="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, v18

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/tencent/smtt/sdk/ac;->l:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gtz v8, :cond_1d

    const-string v8, "TbsDownload"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "STEP 1/2 begin downloading...current"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, v18

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ac;->t:Ljava/net/HttpURLConnection;

    const-string v9, "Range"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bytes="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, v18

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    :goto_c
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tencent/smtt/sdk/ac;->v:Lcom/tencent/smtt/sdk/TbsLogReport;

    const-wide/16 v10, 0x0

    cmp-long v8, v18, v10

    if-nez v8, :cond_1f

    const/4 v8, 0x0

    :goto_d
    invoke-virtual {v9, v8}, Lcom/tencent/smtt/sdk/TbsLogReport;->c(I)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v8}, Lcom/tencent/smtt/utils/Apn;->getApnType(Landroid/content/Context;)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v9}, Lcom/tencent/smtt/utils/Apn;->getApnInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/tencent/smtt/sdk/ac;->w:Ljava/lang/String;

    if-nez v10, :cond_20

    move-object/from16 v0, p0

    iget v10, v0, Lcom/tencent/smtt/sdk/ac;->x:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_20

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/tencent/smtt/sdk/ac;->w:Ljava/lang/String;

    move-object/from16 v0, p0

    iput v8, v0, Lcom/tencent/smtt/sdk/ac;->x:I

    :cond_16
    :goto_e
    move-object/from16 v0, p0

    iget v8, v0, Lcom/tencent/smtt/sdk/ac;->p:I

    const/4 v9, 0x1

    if-lt v8, v9, :cond_17

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ac;->t:Ljava/net/HttpURLConnection;

    const-string v9, "Referer"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/tencent/smtt/sdk/ac;->h:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ac;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    const-string v9, "TbsDownload"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[TbsApkDownloader.startDownload] responseCode="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tencent/smtt/sdk/ac;->v:Lcom/tencent/smtt/sdk/TbsLogReport;

    invoke-virtual {v9, v8}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(I)V

    if-nez p1, :cond_1b

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v9}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_1b

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v9}, Lcom/tencent/smtt/utils/Apn;->getApnType(Landroid/content/Context;)I

    move-result v9

    const/4 v10, 0x3

    if-eq v9, v10, :cond_18

    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->getDownloadWithoutWifi()Z

    move-result v9

    if-eqz v9, :cond_19

    :cond_18
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v9}, Lcom/tencent/smtt/utils/Apn;->getApnType(Landroid/content/Context;)I

    move-result v9

    if-nez v9, :cond_1b

    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/smtt/sdk/ac;->b()V

    sget-object v9, Lcom/tencent/smtt/sdk/QbSdk;->j:Lcom/tencent/smtt/sdk/TbsListener;

    if-eqz v9, :cond_1a

    sget-object v9, Lcom/tencent/smtt/sdk/QbSdk;->j:Lcom/tencent/smtt/sdk/TbsListener;

    const/16 v10, 0x6f

    invoke-interface {v9, v10}, Lcom/tencent/smtt/sdk/TbsListener;->onDownloadFinish(I)V

    :cond_1a
    const-string v9, "TbsDownload"

    const-string v10, "Download is canceled due to NOT_WIFI error!"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/tencent/smtt/sdk/ac;->r:Z

    if-eqz v9, :cond_23

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v8

    const/16 v9, -0x135

    invoke-virtual {v8, v9}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p1, :cond_9

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v8

    iget-object v8, v8, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v9, "tbs_downloadflow"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v8, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v6}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    goto/16 :goto_3

    :cond_1c
    :try_start_4
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ac;->h:Ljava/lang/String;

    goto/16 :goto_b

    :cond_1d
    const-string v8, "TbsDownload"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "#1 STEP 1/2 begin downloading...current/total="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, v18

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/tencent/smtt/sdk/ac;->l:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ac;->t:Ljava/net/HttpURLConnection;

    const-string v9, "Range"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bytes="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, v18

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/tencent/smtt/sdk/ac;->l:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_c

    :catch_0
    move-exception v8

    :goto_f
    :try_start_5
    instance-of v9, v8, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v9, :cond_4b

    if-nez p1, :cond_4b

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tencent/smtt/sdk/ac;->b:[Ljava/lang/String;

    if-eqz v9, :cond_4b

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/tencent/smtt/sdk/ac;->b(Z)Z

    move-result v9

    if-eqz v9, :cond_4b

    const-string v9, "TbsDownload"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[startdownload]url:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/tencent/smtt/sdk/ac;->j:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " download exception\uff1a"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0x7d

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v10}, Lcom/tencent/smtt/sdk/ac;->a(ILjava/lang/String;Z)V

    :cond_1e
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v8

    const/16 v9, -0x13c

    invoke-virtual {v8, v9}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez p1, :cond_8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v8

    iget-object v8, v8, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v9, "tbs_downloadflow"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    goto/16 :goto_2

    :cond_1f
    const/4 v8, 0x1

    goto/16 :goto_d

    :cond_20
    :try_start_6
    move-object/from16 v0, p0

    iget v10, v0, Lcom/tencent/smtt/sdk/ac;->x:I

    if-ne v8, v10, :cond_21

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/tencent/smtt/sdk/ac;->w:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_16

    :cond_21
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/tencent/smtt/sdk/ac;->v:Lcom/tencent/smtt/sdk/TbsLogReport;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/tencent/smtt/sdk/TbsLogReport;->g(I)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/tencent/smtt/sdk/ac;->w:Ljava/lang/String;

    move-object/from16 v0, p0

    iput v8, v0, Lcom/tencent/smtt/sdk/ac;->x:I
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_e

    :catchall_0
    move-exception v4

    :goto_10
    if-nez p1, :cond_22

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v5

    iget-object v5, v5, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v8, "tbs_downloadflow"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    :cond_22
    throw v4

    :cond_23
    const/16 v9, 0xc8

    if-eq v8, v9, :cond_24

    const/16 v9, 0xce

    if-ne v8, v9, :cond_3d

    :cond_24
    :try_start_7
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ac;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v8

    int-to-long v8, v8

    add-long v8, v8, v18

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/tencent/smtt/sdk/ac;->l:J

    const-string v8, "TbsDownload"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[TbsApkDownloader.startDownload] mContentLength="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/tencent/smtt/sdk/ac;->l:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ac;->v:Lcom/tencent/smtt/sdk/TbsLogReport;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/tencent/smtt/sdk/ac;->l:J

    invoke-virtual {v8, v10, v11}, Lcom/tencent/smtt/sdk/TbsLogReport;->b(J)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v8

    iget-object v8, v8, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v9, "tbs_apkfilesize"

    const-wide/16 v10, 0x0

    invoke-interface {v8, v9, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-eqz v10, :cond_28

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/tencent/smtt/sdk/ac;->l:J

    cmp-long v10, v10, v8

    if-eqz v10, :cond_28

    const-string v10, "TbsDownload"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "DownloadBegin tbsApkFileSize="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "  but contentLength="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/tencent/smtt/sdk/ac;->l:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez p1, :cond_27

    invoke-direct/range {p0 .. p0}, Lcom/tencent/smtt/sdk/ac;->n()Z

    move-result v10

    if-nez v10, :cond_25

    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->getDownloadWithoutWifi()Z

    move-result v10

    if-eqz v10, :cond_27

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v10}, Lcom/tencent/smtt/utils/Apn;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_27

    :cond_25
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/tencent/smtt/sdk/ac;->b:[Ljava/lang/String;

    if-eqz v10, :cond_26

    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/tencent/smtt/sdk/ac;->b(Z)Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v10

    if-eqz v10, :cond_26

    if-nez p1, :cond_8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v8

    iget-object v8, v8, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v9, "tbs_downloadflow"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    goto/16 :goto_2

    :cond_26
    const/16 v10, 0x71

    :try_start_8
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "tbsApkFileSize="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  but contentLength="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/tencent/smtt/sdk/ac;->l:J

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v8, v9}, Lcom/tencent/smtt/sdk/ac;->a(ILjava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v8

    const/16 v9, -0x136

    invoke-virtual {v8, v9}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_11
    if-nez p1, :cond_9

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v8

    iget-object v8, v8, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v9, "tbs_downloadflow"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v8, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v6}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    goto/16 :goto_3

    :cond_27
    const/16 v8, 0x65

    :try_start_9
    const-string v9, "WifiNetworkUnAvailable"

    const/4 v10, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v10}, Lcom/tencent/smtt/sdk/ac;->a(ILjava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v8

    const/16 v9, -0x130

    invoke-virtual {v8, v9}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    goto :goto_11

    :cond_28
    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    const-string v8, "TbsDownload"

    const-string v12, "[TbsApkDownloader.startDownload] begin readResponse"

    invoke-static {v8, v12}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ac;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move-result-object v15

    if-eqz v15, :cond_54

    :try_start_b
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ac;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_29

    const-string v10, "gzip"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_29

    new-instance v14, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v14, v15}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :goto_12
    const/16 v8, 0x2000

    :try_start_c
    new-array v0, v8, [B

    move-object/from16 v26, v0

    new-instance v16, Ljava/io/FileOutputStream;

    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tencent/smtt/sdk/ac;->k:Ljava/io/File;

    const-string v10, "x5.tbs.temp"

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v9, 0x1

    move-object/from16 v0, v16

    invoke-direct {v0, v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :try_start_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    move-result-wide v12

    const/16 v17, 0x0

    move-wide/from16 v10, v20

    move-wide v8, v6

    move-wide/from16 v20, v18

    move-wide/from16 v6, v18

    :goto_13
    :try_start_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/smtt/sdk/ac;->r:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2c

    const-string v6, "TbsDownload"

    const-string v7, "STEP 1/2 begin downloading...Canceled!"

    const/4 v10, 0x1

    invoke-static {v6, v7, v10}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v6}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v6

    const/16 v7, -0x135

    invoke-virtual {v6, v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    move-wide v6, v8

    move/from16 v8, v17

    :goto_14
    if-eqz v8, :cond_38

    :try_start_f
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/tencent/smtt/sdk/ac;->a(Ljava/io/Closeable;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/tencent/smtt/sdk/ac;->a(Ljava/io/Closeable;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/tencent/smtt/sdk/ac;->a(Ljava/io/Closeable;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    if-nez p1, :cond_8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v8

    iget-object v8, v8, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v9, "tbs_downloadflow"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    goto/16 :goto_2

    :cond_29
    if-eqz v8, :cond_2b

    :try_start_10
    const-string v10, "deflate"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2b

    new-instance v14, Ljava/util/zip/InflaterInputStream;

    new-instance v8, Ljava/util/zip/Inflater;

    const/4 v10, 0x1

    invoke-direct {v8, v10}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {v14, v15, v8}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    goto/16 :goto_12

    :catch_1
    move-exception v8

    move-object v10, v15

    :goto_15
    :try_start_11
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    instance-of v12, v8, Ljava/net/SocketTimeoutException;

    if-nez v12, :cond_2a

    instance-of v12, v8, Ljava/net/SocketException;

    if-eqz v12, :cond_3a

    :cond_2a
    const v12, 0x186a0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/tencent/smtt/sdk/ac;->m:I

    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/tencent/smtt/sdk/ac;->a(J)V

    const/16 v12, 0x67

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/tencent/smtt/sdk/ac;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v8, v13}, Lcom/tencent/smtt/sdk/ac;->a(ILjava/lang/String;Z)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :try_start_12
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/tencent/smtt/sdk/ac;->a(Ljava/io/Closeable;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/tencent/smtt/sdk/ac;->a(Ljava/io/Closeable;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/tencent/smtt/sdk/ac;->a(Ljava/io/Closeable;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    if-nez p1, :cond_8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v8

    iget-object v8, v8, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v9, "tbs_downloadflow"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    goto/16 :goto_2

    :cond_2b
    move-object v14, v15

    goto/16 :goto_12

    :cond_2c
    const/16 v18, 0x0

    const/16 v19, 0x2000

    :try_start_13
    move-object/from16 v0, v26

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v14, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v27

    if-gtz v27, :cond_2f

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/smtt/sdk/ac;->b:[Ljava/lang/String;

    if-eqz v6, :cond_2e

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4}, Lcom/tencent/smtt/sdk/ac;->b(ZZ)Z

    move-result v6

    if-nez v6, :cond_2e

    if-nez p1, :cond_2d

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/tencent/smtt/sdk/ac;->b(Z)Z

    move-result v6

    if-eqz v6, :cond_2d

    const/4 v6, 0x1

    move/from16 v30, v6

    move-wide v6, v8

    move/from16 v8, v30

    goto/16 :goto_14

    :cond_2d
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/tencent/smtt/sdk/ac;->s:Z

    const/4 v5, 0x0

    move-wide v6, v8

    move/from16 v8, v17

    goto/16 :goto_14

    :cond_2e
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/tencent/smtt/sdk/ac;->s:Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/smtt/sdk/ac;->b:[Ljava/lang/String;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_7
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    if-eqz v6, :cond_53

    const/4 v6, 0x1

    :goto_16
    :try_start_14
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v5

    const/16 v7, -0x137

    invoke-virtual {v5, v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_8
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    move v5, v6

    move-wide v6, v8

    move/from16 v8, v17

    goto/16 :goto_14

    :cond_2f
    const/16 v18, 0x0

    :try_start_15
    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move/from16 v2, v18

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->flush()V

    if-nez p1, :cond_31

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v8, v8, v18

    cmp-long v18, v8, v24

    if-ltz v18, :cond_30

    const-string v6, "TbsDownload"

    const-string v7, "STEP 1/2 begin downloading...failed because you exceeded max flow!"

    const/4 v10, 0x1

    invoke-static {v6, v7, v10}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v6, 0x70

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "downloadFlow="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " downloadMaxflow="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v24

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v10}, Lcom/tencent/smtt/sdk/ac;->a(ILjava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v6}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v6

    const/16 v7, -0x133

    invoke-virtual {v6, v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    move-wide v6, v8

    move/from16 v8, v17

    goto/16 :goto_14

    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/tencent/smtt/utils/k;->b(Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_31

    const-string v6, "TbsDownload"

    const-string v7, "DownloadEnd FreeSpace too small "

    const/4 v10, 0x1

    invoke-static {v6, v7, v10}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v6, 0x69

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "freespace="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/tencent/smtt/utils/aa;->a()J

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ",and minFreeSpace="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v10}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v10

    invoke-virtual {v10}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getDownloadMinFreeSpace()J

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v10}, Lcom/tencent/smtt/sdk/ac;->a(ILjava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v6}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v6

    const/16 v7, -0x134

    invoke-virtual {v6, v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_7
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    move-wide v6, v8

    move/from16 v8, v17

    goto/16 :goto_14

    :cond_31
    move-wide/from16 v18, v8

    move/from16 v0, v27

    int-to-long v8, v0

    :try_start_16
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v8, v9}, Lcom/tencent/smtt/sdk/ac;->a(JJ)J

    move-result-wide v22

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move/from16 v0, v27

    int-to-long v8, v0

    add-long v8, v8, v20

    sub-long v20, v10, v12

    const-wide/16 v28, 0x3e8

    cmp-long v20, v20, v28

    if-lez v20, :cond_52

    const-string v12, "TbsDownload"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "#2 STEP 1/2 begin downloading...current/total="

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v20, "/"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/tencent/smtt/sdk/ac;->l:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-static {v12, v13, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v12, Lcom/tencent/smtt/sdk/QbSdk;->j:Lcom/tencent/smtt/sdk/TbsListener;

    if-eqz v12, :cond_32

    long-to-double v12, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/tencent/smtt/sdk/ac;->l:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    div-double v12, v12, v20

    const-wide/high16 v20, 0x4059000000000000L    # 100.0

    mul-double v12, v12, v20

    double-to-int v12, v12

    sget-object v13, Lcom/tencent/smtt/sdk/QbSdk;->j:Lcom/tencent/smtt/sdk/TbsListener;

    invoke-interface {v13, v12}, Lcom/tencent/smtt/sdk/TbsListener;->onDownloadProgress(I)V

    :cond_32
    if-nez p1, :cond_37

    sub-long v12, v8, v6

    const-wide/32 v20, 0x100000

    cmp-long v12, v12, v20

    if-lez v12, :cond_37

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v6}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_36

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v6}, Lcom/tencent/smtt/utils/Apn;->getApnType(Landroid/content/Context;)I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_33

    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->getDownloadWithoutWifi()Z

    move-result v6

    if-eqz v6, :cond_34

    :cond_33
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v6}, Lcom/tencent/smtt/utils/Apn;->getApnType(Landroid/content/Context;)I

    move-result v6

    if-nez v6, :cond_36

    :cond_34
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/smtt/sdk/ac;->b()V

    sget-object v6, Lcom/tencent/smtt/sdk/QbSdk;->j:Lcom/tencent/smtt/sdk/TbsListener;

    if-eqz v6, :cond_35

    sget-object v6, Lcom/tencent/smtt/sdk/QbSdk;->j:Lcom/tencent/smtt/sdk/TbsListener;

    const/16 v7, 0x6f

    invoke-interface {v6, v7}, Lcom/tencent/smtt/sdk/TbsListener;->onDownloadFinish(I)V

    :cond_35
    const-string v6, "TbsDownload"

    const-string v7, "Download is paused due to NOT_WIFI error!"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v6}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v6

    const/16 v7, -0x130

    invoke-virtual {v6, v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_9
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    move/from16 v8, v17

    move-wide/from16 v6, v18

    goto/16 :goto_14

    :cond_36
    move-wide v6, v8

    :cond_37
    move-wide/from16 v30, v10

    move-wide v10, v6

    move-wide/from16 v6, v30

    :goto_17
    move-wide v12, v6

    move-wide/from16 v20, v8

    move-wide v6, v10

    move-wide/from16 v8, v18

    move-wide/from16 v10, v22

    goto/16 :goto_13

    :cond_38
    move-wide v8, v6

    :goto_18
    :try_start_17
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/tencent/smtt/sdk/ac;->a(Ljava/io/Closeable;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/tencent/smtt/sdk/ac;->a(Ljava/io/Closeable;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/tencent/smtt/sdk/ac;->a(Ljava/io/Closeable;)V

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/tencent/smtt/sdk/ac;->s:Z

    if-nez v6, :cond_39

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v6}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v6

    const/16 v7, -0x13f

    invoke-virtual {v6, v7}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_3
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    :cond_39
    if-nez p1, :cond_9

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v6}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v6

    iget-object v6, v6, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v7, "tbs_downloadflow"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v6}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    goto/16 :goto_3

    :cond_3a
    if-nez p1, :cond_3b

    :try_start_18
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v12}, Lcom/tencent/smtt/utils/k;->b(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_3b

    const/16 v8, 0x69

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "freespace="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Lcom/tencent/smtt/utils/aa;->a()J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",and minFreeSpace="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v13}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v13

    invoke-virtual {v13}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getDownloadMinFreeSpace()J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v12, v13}, Lcom/tencent/smtt/sdk/ac;->a(ILjava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v8

    const/16 v12, -0x134

    invoke-virtual {v8, v12}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    :try_start_19
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/tencent/smtt/sdk/ac;->a(Ljava/io/Closeable;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/tencent/smtt/sdk/ac;->a(Ljava/io/Closeable;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/tencent/smtt/sdk/ac;->a(Ljava/io/Closeable;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_0
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    if-nez p1, :cond_9

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v8

    iget-object v8, v8, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v9, "tbs_downloadflow"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v8, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v6}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    goto/16 :goto_3

    :cond_3b
    const-wide/16 v12, 0x0

    :try_start_1a
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/tencent/smtt/sdk/ac;->a(J)V

    invoke-direct/range {p0 .. p0}, Lcom/tencent/smtt/sdk/ac;->j()Z

    move-result v12

    if-nez v12, :cond_3c

    const/16 v12, 0x6a

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/tencent/smtt/sdk/ac;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v8, v13}, Lcom/tencent/smtt/sdk/ac;->a(ILjava/lang/String;Z)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    :goto_19
    :try_start_1b
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/tencent/smtt/sdk/ac;->a(Ljava/io/Closeable;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/tencent/smtt/sdk/ac;->a(Ljava/io/Closeable;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/tencent/smtt/sdk/ac;->a(Ljava/io/Closeable;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_0
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    if-nez p1, :cond_8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v8

    iget-object v8, v8, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v9, "tbs_downloadflow"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    goto/16 :goto_2

    :cond_3c
    const/16 v12, 0x68

    :try_start_1c
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/tencent/smtt/sdk/ac;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v8, v13}, Lcom/tencent/smtt/sdk/ac;->a(ILjava/lang/String;Z)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    goto :goto_19

    :catchall_1
    move-exception v8

    move-object v14, v9

    move-object v15, v10

    move-object/from16 v16, v11

    move-object/from16 v30, v8

    move-wide v8, v6

    move v6, v5

    move-object/from16 v5, v30

    :goto_1a
    :try_start_1d
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/tencent/smtt/sdk/ac;->a(Ljava/io/Closeable;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/tencent/smtt/sdk/ac;->a(Ljava/io/Closeable;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/tencent/smtt/sdk/ac;->a(Ljava/io/Closeable;)V

    throw v5
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_2
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    :catch_2
    move-exception v5

    move-object/from16 v30, v5

    move v5, v6

    move-wide v6, v8

    move-object/from16 v8, v30

    goto/16 :goto_f

    :cond_3d
    const/16 v9, 0x12c

    if-lt v8, v9, :cond_3f

    const/16 v9, 0x133

    if-gt v8, v9, :cond_3f

    :try_start_1e
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ac;->t:Ljava/net/HttpURLConnection;

    const-string v9, "Location"

    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3e

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/tencent/smtt/sdk/ac;->j:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/tencent/smtt/sdk/ac;->q:I

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    iput v8, v0, Lcom/tencent/smtt/sdk/ac;->q:I
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_0
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    if-nez p1, :cond_8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v8

    iget-object v8, v8, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v9, "tbs_downloadflow"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    goto/16 :goto_2

    :cond_3e
    const/16 v8, 0x7c

    const/4 v9, 0x0

    const/4 v10, 0x1

    :try_start_1f
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v10}, Lcom/tencent/smtt/sdk/ac;->a(ILjava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v8

    const/16 v9, -0x138

    invoke-virtual {v8, v9}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_0
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    if-nez p1, :cond_9

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v8

    iget-object v8, v8, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v9, "tbs_downloadflow"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v8, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v6}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    goto/16 :goto_3

    :cond_3f
    const/16 v9, 0x66

    :try_start_20
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10, v11}, Lcom/tencent/smtt/sdk/ac;->a(ILjava/lang/String;Z)V

    const/16 v9, 0x1a0

    if-ne v8, v9, :cond_41

    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v4}, Lcom/tencent/smtt/sdk/ac;->b(ZZ)Z

    move-result v8

    if-eqz v8, :cond_40

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v8

    const/16 v9, -0xd6

    invoke-virtual {v8, v9}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_0
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    if-nez p1, :cond_9

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v8

    iget-object v8, v8, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v9, "tbs_downloadflow"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v8, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v6}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    goto/16 :goto_3

    :cond_40
    const/4 v8, 0x0

    :try_start_21
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/tencent/smtt/sdk/ac;->d(Z)Z

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v8

    const/16 v9, -0x139

    invoke-virtual {v8, v9}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_0
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    if-nez p1, :cond_9

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v8

    iget-object v8, v8, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v9, "tbs_downloadflow"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v8, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v6}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    goto/16 :goto_3

    :cond_41
    const/16 v9, 0x193

    if-eq v8, v9, :cond_42

    const/16 v9, 0x196

    if-ne v8, v9, :cond_43

    :cond_42
    :try_start_22
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/tencent/smtt/sdk/ac;->l:J

    const-wide/16 v12, -0x1

    cmp-long v9, v10, v12

    if-nez v9, :cond_43

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v8

    const/16 v9, -0x13a

    invoke-virtual {v8, v9}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_0
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    if-nez p1, :cond_9

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v8

    iget-object v8, v8, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v9, "tbs_downloadflow"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v8, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v6}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    goto/16 :goto_3

    :cond_43
    const/16 v9, 0xca

    if-ne v8, v9, :cond_44

    if-nez p1, :cond_8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v8

    iget-object v8, v8, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v9, "tbs_downloadflow"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    goto/16 :goto_2

    :cond_44
    :try_start_23
    move-object/from16 v0, p0

    iget v9, v0, Lcom/tencent/smtt/sdk/ac;->p:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/tencent/smtt/sdk/ac;->B:I

    if-ge v9, v10, :cond_46

    const/16 v9, 0x1f7

    if-ne v8, v9, :cond_46

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ac;->t:Ljava/net/HttpURLConnection;

    const-string v9, "Retry-After"

    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/tencent/smtt/sdk/ac;->a(J)V

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/tencent/smtt/sdk/ac;->r:Z

    if-eqz v8, :cond_45

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v8

    const/16 v9, -0x135

    invoke-virtual {v8, v9}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_0
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    if-nez p1, :cond_9

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v8

    iget-object v8, v8, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v9, "tbs_downloadflow"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v8, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v6}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    goto/16 :goto_3

    :cond_45
    if-nez p1, :cond_8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v8

    iget-object v8, v8, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v9, "tbs_downloadflow"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    goto/16 :goto_2

    :cond_46
    :try_start_24
    move-object/from16 v0, p0

    iget v9, v0, Lcom/tencent/smtt/sdk/ac;->p:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/tencent/smtt/sdk/ac;->B:I

    if-ge v9, v10, :cond_49

    const/16 v9, 0x198

    if-eq v8, v9, :cond_47

    const/16 v9, 0x1f8

    if-eq v8, v9, :cond_47

    const/16 v9, 0x1f6

    if-eq v8, v9, :cond_47

    const/16 v9, 0x198

    if-ne v8, v9, :cond_49

    :cond_47
    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/tencent/smtt/sdk/ac;->a(J)V

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/tencent/smtt/sdk/ac;->r:Z

    if-eqz v8, :cond_48

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v8

    const/16 v9, -0x135

    invoke-virtual {v8, v9}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_0
    .catchall {:try_start_24 .. :try_end_24} :catchall_0

    if-nez p1, :cond_9

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v8

    iget-object v8, v8, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v9, "tbs_downloadflow"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v8, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v6}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    goto/16 :goto_3

    :cond_48
    if-nez p1, :cond_8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v8

    iget-object v8, v8, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v9, "tbs_downloadflow"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    goto/16 :goto_2

    :cond_49
    :try_start_25
    invoke-direct/range {p0 .. p0}, Lcom/tencent/smtt/sdk/ac;->k()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-gtz v9, :cond_4a

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/tencent/smtt/sdk/ac;->o:Z

    if-nez v9, :cond_4a

    const/16 v9, 0x19a

    if-eq v8, v9, :cond_4a

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/tencent/smtt/sdk/ac;->o:Z
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_0
    .catchall {:try_start_25 .. :try_end_25} :catchall_0

    if-nez p1, :cond_8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v8

    iget-object v8, v8, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v9, "tbs_downloadflow"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    goto/16 :goto_2

    :cond_4a
    :try_start_26
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v8

    const/16 v9, -0x13b

    invoke-virtual {v8, v9}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_0
    .catchall {:try_start_26 .. :try_end_26} :catchall_0

    if-nez p1, :cond_9

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v8

    iget-object v8, v8, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v9, "tbs_downloadflow"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v8, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v6}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    goto/16 :goto_3

    :cond_4b
    :try_start_27
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/tencent/smtt/sdk/ac;->a(J)V

    const/16 v9, 0x6b

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/tencent/smtt/sdk/ac;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8, v10}, Lcom/tencent/smtt/sdk/ac;->a(ILjava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/tencent/smtt/sdk/ac;->r:Z

    if-eqz v8, :cond_1e

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v8

    const/16 v9, -0x135

    invoke-virtual {v8, v9}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_0

    if-nez p1, :cond_9

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v8

    iget-object v8, v8, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v9, "tbs_downloadflow"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v8, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v6}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    goto/16 :goto_3

    :cond_4c
    const/4 v6, 0x0

    goto/16 :goto_4

    :cond_4d
    const/4 v4, 0x2

    goto/16 :goto_5

    :cond_4e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/smtt/sdk/ac;->v:Lcom/tencent/smtt/sdk/TbsLogReport;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/tencent/smtt/sdk/TbsLogReport;->b(I)V

    goto/16 :goto_6

    :cond_4f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v4

    const/16 v6, -0x13e

    invoke-virtual {v4, v6}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/tencent/smtt/sdk/ac;->d(Z)Z

    goto/16 :goto_7

    :cond_50
    iget-object v6, v4, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v7, "tbs_download_failed_retrytimes"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    iget-object v7, v4, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v8, "tbs_download_failed_retrytimes"

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getDownloadFailedMaxRetrytimes()I

    move-result v7

    if-ne v6, v7, :cond_c

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tencent/smtt/sdk/ac;->v:Lcom/tencent/smtt/sdk/TbsLogReport;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/tencent/smtt/sdk/TbsLogReport;->c(I)V

    goto/16 :goto_8

    :cond_51
    const/4 v4, 0x0

    goto/16 :goto_9

    :catchall_2
    move-exception v4

    move-wide v6, v8

    goto/16 :goto_10

    :catch_3
    move-exception v6

    move-object/from16 v30, v6

    move-wide v6, v8

    move-object/from16 v8, v30

    goto/16 :goto_f

    :catchall_3
    move-exception v8

    move-object v14, v9

    move-object v15, v10

    move-object/from16 v16, v11

    move-object/from16 v30, v8

    move-wide v8, v6

    move v6, v5

    move-object/from16 v5, v30

    goto/16 :goto_1a

    :catchall_4
    move-exception v8

    move-object v14, v9

    move-object/from16 v16, v11

    move-object/from16 v30, v8

    move-wide v8, v6

    move v6, v5

    move-object/from16 v5, v30

    goto/16 :goto_1a

    :catchall_5
    move-exception v8

    move-object/from16 v16, v11

    move-object/from16 v30, v8

    move-wide v8, v6

    move v6, v5

    move-object/from16 v5, v30

    goto/16 :goto_1a

    :catchall_6
    move-exception v8

    move-object/from16 v30, v8

    move-wide v8, v6

    move v6, v5

    move-object/from16 v5, v30

    goto/16 :goto_1a

    :catchall_7
    move-exception v6

    move-object/from16 v30, v6

    move v6, v5

    move-object/from16 v5, v30

    goto/16 :goto_1a

    :catchall_8
    move-exception v5

    goto/16 :goto_1a

    :catchall_9
    move-exception v6

    move-wide/from16 v8, v18

    move-object/from16 v30, v6

    move v6, v5

    move-object/from16 v5, v30

    goto/16 :goto_1a

    :catch_4
    move-exception v8

    goto/16 :goto_15

    :catch_5
    move-exception v8

    move-object v9, v14

    move-object v10, v15

    goto/16 :goto_15

    :catch_6
    move-exception v8

    move-object v9, v14

    move-object v10, v15

    move-object/from16 v11, v16

    goto/16 :goto_15

    :catch_7
    move-exception v6

    move-object v10, v15

    move-object/from16 v11, v16

    move-object/from16 v30, v6

    move-wide v6, v8

    move-object v9, v14

    move-object/from16 v8, v30

    goto/16 :goto_15

    :catch_8
    move-exception v5

    move-object v10, v15

    move-object/from16 v11, v16

    move-object/from16 v30, v5

    move v5, v6

    move-wide v6, v8

    move-object v9, v14

    move-object/from16 v8, v30

    goto/16 :goto_15

    :catch_9
    move-exception v6

    move-object v8, v6

    move-object v9, v14

    move-object v10, v15

    move-object/from16 v11, v16

    move-wide/from16 v6, v18

    goto/16 :goto_15

    :cond_52
    move-wide v10, v6

    move-wide v6, v12

    goto/16 :goto_17

    :cond_53
    move v6, v5

    goto/16 :goto_16

    :cond_54
    move-object v14, v9

    move-object/from16 v16, v11

    move-wide v8, v6

    goto/16 :goto_18

    :cond_55
    move-wide v8, v6

    goto/16 :goto_a
.end method

.method public a(ZZ)Z
    .locals 9

    const/16 v8, -0xd6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "use_backup_version"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/tencent/smtt/sdk/aj;->a()Lcom/tencent/smtt/sdk/aj;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/tencent/smtt/sdk/aj;->d(Landroid/content/Context;)I

    move-result v4

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "tbs_download_version"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v3, "by default key"

    iput-object v3, p0, Lcom/tencent/smtt/sdk/ac;->a:Ljava/lang/String;

    move v3, v0

    :goto_0
    if-eqz v3, :cond_0

    if-ne v3, v4, :cond_3

    :cond_0
    move v1, v2

    :cond_1
    :goto_1
    return v1

    :cond_2
    const-string v3, "by new key"

    iput-object v3, p0, Lcom/tencent/smtt/sdk/ac;->a:Ljava/lang/String;

    move v3, v0

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_7

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(I)Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v5, Ljava/io/File;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    const/4 v6, 0x4

    invoke-static {v0, v6}, Lcom/tencent/smtt/utils/k;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "x5.oversea.tbs.org"

    :goto_2
    invoke-direct {v5, v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {v4, v5}, Lcom/tencent/smtt/utils/k;->b(Ljava/io/File;Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_3
    invoke-direct {p0}, Lcom/tencent/smtt/sdk/ac;->h()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/ac;->g()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v4, "tbs_download_interrupt_code_reason"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    invoke-direct {p0, v2}, Lcom/tencent/smtt/sdk/ac;->c(Z)V

    if-eqz v0, :cond_1

    const/16 v0, 0x64

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "use local backup apk in startDownload"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/smtt/sdk/ac;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, v1}, Lcom/tencent/smtt/sdk/ac;->a(ILjava/lang/String;Z)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ac;->v:Lcom/tencent/smtt/sdk/TbsLogReport;

    sget-object v2, Lcom/tencent/smtt/sdk/TbsLogReport$EventType;->TYPE_DOWNLOAD:Lcom/tencent/smtt/sdk/TbsLogReport$EventType;

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Lcom/tencent/smtt/sdk/TbsLogReport$EventType;)V

    goto :goto_1

    :cond_4
    const-string v0, "x5.tbs.org"

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    move v0, v2

    goto :goto_3

    :cond_6
    invoke-direct {p0}, Lcom/tencent/smtt/sdk/ac;->i()V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    const-wide/16 v6, 0x0

    invoke-static {v0, v4, v6, v7, v3}, Lcom/tencent/smtt/utils/a;->a(Landroid/content/Context;Ljava/io/File;JI)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {v4}, Lcom/tencent/smtt/utils/k;->b(Ljava/io/File;)V

    :cond_7
    invoke-direct {p0, v2, p2}, Lcom/tencent/smtt/sdk/ac;->b(ZZ)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v3, "tbs_download_interrupt_code_reason"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    invoke-direct {p0, v2}, Lcom/tencent/smtt/sdk/ac;->c(Z)V

    goto/16 :goto_1

    :cond_8
    invoke-direct {p0, v1}, Lcom/tencent/smtt/sdk/ac;->d(Z)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-direct {p0, v1}, Lcom/tencent/smtt/sdk/ac;->d(Z)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "TbsDownload"

    const-string v1, "[TbsApkDownloader] delete file failed!"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v1, -0x12d

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    :cond_9
    move v1, v2

    goto/16 :goto_1
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/ac;->r:Z

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    const/16 v1, -0x135

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->h(I)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    sget-object v1, Lcom/tencent/smtt/sdk/TbsLogReport$EventType;->TYPE_DOWNLOAD:Lcom/tencent/smtt/sdk/TbsLogReport$EventType;

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Lcom/tencent/smtt/sdk/TbsLogReport$EventType;)V

    :cond_0
    return-void
.end method

.method public b(Z)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/ac;->n()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->getDownloadWithoutWifi()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/smtt/sdk/ac;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/utils/Apn;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/tencent/smtt/sdk/ac;->b:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/tencent/smtt/sdk/ac;->c:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/tencent/smtt/sdk/ac;->c:I

    iget-object v2, p0, Lcom/tencent/smtt/sdk/ac;->b:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/tencent/smtt/sdk/ac;->b:[Ljava/lang/String;

    iget v2, p0, Lcom/tencent/smtt/sdk/ac;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/tencent/smtt/sdk/ac;->c:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/tencent/smtt/sdk/ac;->j:Ljava/lang/String;

    iput v0, p0, Lcom/tencent/smtt/sdk/ac;->p:I

    iput v0, p0, Lcom/tencent/smtt/sdk/ac;->q:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/tencent/smtt/sdk/ac;->l:J

    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/ac;->o:Z

    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/ac;->r:Z

    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/ac;->s:Z

    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/ac;->y:Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c()V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/ac;->b()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/ac;->d(Z)Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/ac;->d(Z)Z

    return-void
.end method

.method public d()Z
    .locals 3

    const-string v0, "TbsDownload"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TbsApkDownloader.isDownloadForeground] mIsDownloadForeground="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/smtt/sdk/ac;->C:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/ac;->C:Z

    return v0
.end method
