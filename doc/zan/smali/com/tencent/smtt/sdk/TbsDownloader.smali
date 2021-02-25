.class public Lcom/tencent/smtt/sdk/TbsDownloader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/smtt/sdk/TbsDownloader$TbsDownloaderCallback;
    }
.end annotation


# static fields
.field public static final DEBUG_DISABLE_DOWNLOAD:Z = false

.field public static DOWNLOAD_OVERSEA_TBS:Z = false

.field public static final LOGTAG:Ljava/lang/String; = "TbsDownload"

.field static a:Z

.field private static b:Ljava/lang/String;

.field private static c:Landroid/content/Context;

.field private static d:Landroid/os/Handler;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/Object;

.field private static g:Lcom/tencent/smtt/sdk/ac;

.field private static h:Landroid/os/HandlerThread;

.field private static i:Z

.field private static j:Z

.field private static k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/tencent/smtt/sdk/TbsDownloader;->DOWNLOAD_OVERSEA_TBS:Z

    new-array v0, v1, [B

    sput-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->f:Ljava/lang/Object;

    sput-boolean v1, Lcom/tencent/smtt/sdk/TbsDownloader;->i:Z

    sput-boolean v1, Lcom/tencent/smtt/sdk/TbsDownloader;->j:Z

    sput-boolean v1, Lcom/tencent/smtt/sdk/TbsDownloader;->k:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    return-object v0
.end method

.method protected static a(I)Ljava/io/File;
    .locals 8

    const/4 v3, 0x0

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsShareManager;->getCoreProviderAppList()[Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v1, v4, v2

    sget-object v6, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v6, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    const/4 v7, 0x4

    invoke-static {v6, v1, v7, v3}, Lcom/tencent/smtt/utils/k;->a(Landroid/content/Context;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v6

    sget-object v1, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "x5.oversea.tbs.org"

    :goto_2
    invoke-direct {v0, v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/a;->a(Landroid/content/Context;Ljava/io/File;)I

    move-result v1

    if-ne v1, p0, :cond_3

    const-string v1, "TbsDownload"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "local tbs version fond,path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0

    :cond_2
    const-string v1, "x5.tbs.org"

    goto :goto_2

    :cond_3
    const-string v1, "TbsDownload"

    const-string v6, "version is not match"

    invoke-static {v1, v6}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v1, "TbsDownload"

    const-string v6, "can not find local backup core file"

    invoke-static {v1, v6}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const-string v5, "ISO8859-1"

    invoke-direct {v0, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    const-string v0, "; "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "-"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    :goto_3
    const-string v0, "REL"

    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :try_start_1
    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-string v4, "ISO8859-1"

    invoke-direct {v0, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, "; "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    const-string v1, "[\u4e00-\u9fa5]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    const-string v1, " Build/"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    const-string v0, "Mozilla/5.0 (Linux; U; Android %s) AppleWebKit/533.1 (KHTML, like Gecko)Version/4.0 Mobile Safari/533.1"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->b:Ljava/lang/String;

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :cond_4
    const-string v0, "1.0"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_5
    const-string v0, "en"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_4
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method private static a(ZLcom/tencent/smtt/sdk/TbsDownloader$TbsDownloaderCallback;)V
    .locals 4

    const/16 v3, 0x64

    const/4 v0, 0x0

    const-string v1, "TbsDownload"

    const-string v2, "[TbsDownloader.queryConfig]"

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/tencent/smtt/sdk/TbsDownloader;->d:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v1, Lcom/tencent/smtt/sdk/TbsDownloader;->d:Landroid/os/Handler;

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    if-eqz p1, :cond_0

    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    :cond_0
    iput v0, v1, Landroid/os/Message;->arg1:I

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput v0, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private static a(Landroid/content/Context;ZLcom/tencent/smtt/sdk/TbsDownloader$TbsDownloaderCallback;)Z
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x8

    if-ge v3, v4, :cond_1

    const/16 v1, -0x66

    invoke-virtual {v2, v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-boolean v3, Lcom/tencent/smtt/sdk/QbSdk;->c:Z

    if-nez v3, :cond_2

    sget-object v3, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloader;->c()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz p2, :cond_0

    invoke-interface {p2, v0, v0}, Lcom/tencent/smtt/sdk/TbsDownloader$TbsDownloaderCallback;->onNeedDownloadFinish(ZI)V

    goto :goto_0

    :cond_2
    iget-object v3, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "is_oversea"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz p1, :cond_3

    const-string v3, "com.tencent.mm"

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "TbsDownload"

    const-string v4, "needDownload-oversea is true, but not WX"

    invoke-static {v3, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move p1, v0

    :cond_3
    iget-object v3, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v4, "is_oversea"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    sput-boolean p1, Lcom/tencent/smtt/sdk/TbsDownloader;->j:Z

    const-string v3, "TbsDownload"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "needDownload-first-called--isoversea = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-eq v3, v4, :cond_6

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-eq v3, v4, :cond_6

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-eq v3, v4, :cond_6

    const-string v1, "TbsDownload"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "needDownload- return false,  because of  version is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", and overea"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_5

    invoke-interface {p2, v0, v0}, Lcom/tencent/smtt/sdk/TbsDownloader$TbsDownloaderCallback;->onNeedDownloadFinish(ZI)V

    :cond_5
    const/16 v1, -0x67

    invoke-virtual {v2, v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    goto/16 :goto_0

    :cond_6
    iget-object v3, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "device_cpuabi"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/tencent/smtt/sdk/TbsDownloader;->e:Ljava/lang/String;

    sget-object v3, Lcom/tencent/smtt/sdk/TbsDownloader;->e:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    :try_start_0
    const-string v3, "i686|mips|x86_64"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    sget-object v4, Lcom/tencent/smtt/sdk/TbsDownloader;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_8

    if-eqz p2, :cond_7

    invoke-interface {p2, v0, v0}, Lcom/tencent/smtt/sdk/TbsDownloader$TbsDownloaderCallback;->onNeedDownloadFinish(ZI)V

    :cond_7
    const/16 v1, -0x68

    invoke-virtual {v2, v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    goto/16 :goto_0

    :cond_8
    const/4 v0, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;ZZ)Z
    .locals 22

    const/4 v7, 0x0

    invoke-static/range {p0 .. p0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v8

    const/4 v6, 0x0

    if-nez p1, :cond_6

    iget-object v2, v8, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "app_versionname"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v2, v8, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "app_versioncode"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    iget-object v2, v8, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "app_metadata"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/utils/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/utils/b;->b(Landroid/content/Context;)I

    move-result v13

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    const-string v3, "com.tencent.mm.BuildInfo.CLIENT_VERSION"

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v2, "TbsDownload"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TbsDownloader.needSendQueryRequest] appVersionName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " oldAppVersionName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " appVersionCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " oldAppVersionCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " appMetadata="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " oldAppVersionMetadata="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v2, v8, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "last_check"

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v15, "TbsDownload"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[TbsDownloader.needSendQueryRequest] timeLastCheck="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " timeNow="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object v15, v8, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v16, "last_check"

    invoke-interface/range {v15 .. v16}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v15

    const-string v16, "TbsDownload"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[TbsDownloader.needSendQueryRequest] hasLaskCheckKey="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v15, :cond_0

    const-wide/16 v16, 0x0

    cmp-long v15, v2, v16

    if-nez v15, :cond_0

    move-wide v2, v4

    :cond_0
    invoke-virtual {v8}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getRetryInterval()J

    move-result-wide v16

    const-string v8, "TbsDownload"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "retryInterval = "

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v18, " s"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v8, v15}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sub-long v18, v4, v2

    const-wide/16 v20, 0x3e8

    mul-long v16, v16, v20

    cmp-long v8, v18, v16

    if-lez v8, :cond_2

    const/4 v2, 0x1

    move v3, v2

    move-object v2, v6

    :goto_0
    if-nez v3, :cond_1

    sget-object v4, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v4

    const/16 v5, -0x77

    invoke-virtual {v4, v5}, Lcom/tencent/smtt/sdk/TbsLogReport;->h(I)V

    sget-object v4, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->e(Ljava/lang/String;)V

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v2

    sget-object v4, Lcom/tencent/smtt/sdk/TbsLogReport$EventType;->TYPE_DOWNLOAD:Lcom/tencent/smtt/sdk/TbsLogReport$EventType;

    invoke-virtual {v2, v4}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Lcom/tencent/smtt/sdk/TbsLogReport$EventType;)V

    :cond_1
    return v3

    :cond_2
    sget-object v8, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v8}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_3

    sget-object v8, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v8}, Lcom/tencent/smtt/sdk/TbsShareManager;->findCoreForThirdPartyApp(Landroid/content/Context;)I

    move-result v8

    if-nez v8, :cond_3

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloader;->e()Z

    move-result v8

    if-nez v8, :cond_3

    const/4 v2, 0x1

    sget-object v3, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    const-string v4, "tbs"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/smtt/utils/k;->b(Ljava/io/File;)V

    sget-object v3, Lcom/tencent/smtt/sdk/aj;->a:Ljava/lang/ThreadLocal;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    move v3, v2

    move-object v2, v6

    goto :goto_0

    :cond_3
    if-eqz v12, :cond_5

    if-eqz v13, :cond_5

    if-eqz v14, :cond_5

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-ne v13, v10, :cond_4

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_4
    const/4 v2, 0x1

    move v3, v2

    move-object v2, v6

    goto :goto_0

    :cond_5
    sget-object v8, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v8}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "timeNow - timeLastCheck is "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v2, v4, v2

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TbsShareManager.findCoreForThirdPartyApp(sAppContext) is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/TbsShareManager;->findCoreForThirdPartyApp(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sendRequestWithSameHostCoreVersion() is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloader;->e()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " appVersionName is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " appVersionCode is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " appMetadata is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " oldAppVersionName is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " oldAppVersionCode is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " oldAppVersionMetadata is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move v3, v7

    goto/16 :goto_0

    :cond_6
    const/4 v3, 0x1

    move-object v2, v6

    goto/16 :goto_0

    :cond_7
    move-object v2, v6

    move v3, v7

    goto/16 :goto_0
.end method

.method private static a(Ljava/lang/String;IZZ)Z
    .locals 28
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const-string v2, "TbsDownload"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TbsDownloader.readResponse] response="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v10

    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_0

    const/16 v2, -0x6c

    invoke-virtual {v10, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    :goto_0
    const/4 v2, 0x0

    :goto_1
    return v2

    :cond_0
    const/16 v2, -0xd0

    invoke-virtual {v10, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    goto :goto_0

    :cond_1
    new-instance v11, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "RET"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p2, :cond_2

    const/16 v2, -0x6d

    invoke-virtual {v10, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    :goto_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const/16 v2, -0xd1

    invoke-virtual {v10, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    goto :goto_2

    :cond_3
    const-string v2, "RESPONSECODE"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    const-string v2, "DOWNLOADURL"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v2, "URLLIST"

    const-string v3, ""

    invoke-virtual {v11, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v2, "TBSAPKSERVERVERSION"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    const-string v2, "DOWNLOADMAXFLOW"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v16

    const-string v2, "DOWNLOAD_MIN_FREE_SPACE"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    const-string v2, "DOWNLOAD_SUCCESS_MAX_RETRYTIMES"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    const-string v2, "DOWNLOAD_FAILED_MAX_RETRYTIMES"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v19

    const-string v2, "DOWNLOAD_SINGLE_TIMEOUT"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v20

    const-string v2, "TBSAPKFILESIZE"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v22

    const-string v2, "RETRY_INTERVAL"

    const-wide/16 v4, 0x0

    invoke-virtual {v11, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v2, "FLOWCTR"

    const/4 v3, -0x1

    invoke-virtual {v11, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v24

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "USEBBACKUPVER"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v2

    :goto_3
    iget-object v3, v10, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v4, "use_backup_version"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-string v3, ""

    :try_start_1
    const-string v2, "PKGMD5"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    :try_start_2
    const-string v2, "RESETX5"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v2, "UPLOADLOG"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v2, "RESETTOKEN"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "RESETTOKEN"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    :goto_4
    move v4, v2

    :cond_4
    const-string v2, "SETTOKEN"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    const-string v2, "SETTOKEN"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    :goto_5
    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    :goto_6
    sget-object v7, Lcom/tencent/smtt/sdk/TbsDownloader;->f:Ljava/lang/Object;

    monitor-enter v7

    if-eqz v3, :cond_5

    :try_start_3
    iget-object v3, v10, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v25, "tbs_deskey_token"

    const-string v26, ""

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v25, 0x60

    move/from16 v0, v25

    if-ne v3, v0, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/tencent/smtt/utils/p;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v10, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v25, "tbs_deskey_token"

    move-object/from16 v0, v25

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v2, 0x1

    if-ne v5, v2, :cond_9

    if-eqz p2, :cond_8

    const/16 v2, -0x6e

    invoke-virtual {v10, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    :goto_7
    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/QbSdk;->reset(Landroid/content/Context;)V

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_7
    const/4 v2, 0x0

    goto :goto_4

    :catch_0
    move-exception v2

    move v2, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    :goto_8
    move-object/from16 v27, v3

    move v3, v2

    move-object/from16 v2, v27

    goto :goto_6

    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    :cond_8
    const/16 v2, -0xd2

    invoke-virtual {v10, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    goto :goto_7

    :cond_9
    const/4 v2, 0x1

    if-ne v4, v2, :cond_a

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->d:Landroid/os/Handler;

    const/16 v3, 0x68

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->d:Landroid/os/Handler;

    const/16 v3, 0x68

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :cond_a
    const-wide/32 v4, 0x15180

    const/4 v2, 0x1

    move/from16 v0, v24

    if-ne v0, v2, :cond_22

    const-wide/32 v2, 0x93a80

    cmp-long v2, v8, v2

    if-lez v2, :cond_23

    const-wide/32 v2, 0x93a80

    :goto_9
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-lez v7, :cond_22

    :goto_a
    iget-object v4, v10, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v5, "retry_interval"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, v10, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v3, "tbs_needdownload"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    if-eqz p2, :cond_b

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v15, v3}, Lcom/tencent/smtt/sdk/TbsShareManager;->writeCoreInfoForThirdPartyApp(Landroid/content/Context;IZ)V

    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_c
    if-nez v12, :cond_e

    iget-object v2, v10, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v3, "tbs_needdownload"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_d

    iget-object v2, v10, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v3, "tbs_download_interrupt_code_reason"

    const/16 v4, -0x6f

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_b
    invoke-virtual {v10}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_d
    iget-object v2, v10, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v3, "tbs_download_interrupt_code_reason"

    const/16 v4, -0xd3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, -0xd3

    invoke-virtual {v10, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    goto :goto_b

    :cond_e
    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "tbs_download_version"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-le v3, v15, :cond_f

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->g:Lcom/tencent/smtt/sdk/ac;

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/ac;->c()V

    invoke-static {}, Lcom/tencent/smtt/sdk/aj;->a()Lcom/tencent/smtt/sdk/aj;

    move-result-object v2

    sget-object v4, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-virtual {v2, v4}, Lcom/tencent/smtt/sdk/aj;->g(Landroid/content/Context;)V

    :cond_f
    move/from16 v0, p1

    if-ge v0, v15, :cond_10

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    :cond_10
    iget-object v2, v10, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v4, "tbs_needdownload"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_14

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, v10, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v4, "tbs_download_interrupt_code_reason"

    const/16 v5, -0x7c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_c
    invoke-virtual {v10}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    const-string v2, "TbsDownload"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "version error or downloadUrl empty ,return ahead tbsLocalVersion="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " tbsDownloadVersion="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " tbsLastDownloadVersion="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " downloadUrl="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_11
    if-gtz v15, :cond_12

    iget-object v2, v10, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v4, "tbs_download_interrupt_code_reason"

    const/16 v5, -0x7d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_12
    move/from16 v0, p1

    if-lt v0, v15, :cond_13

    iget-object v2, v10, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v4, "tbs_download_interrupt_code_reason"

    const/16 v5, -0x7f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_13
    iget-object v2, v10, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v4, "tbs_download_interrupt_code_reason"

    const/16 v5, -0x70

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_14
    const/16 v2, -0xd4

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_16

    const/16 v2, -0xd9

    :cond_15
    :goto_d
    iget-object v4, v10, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v5, "tbs_download_interrupt_code_reason"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    goto/16 :goto_c

    :cond_16
    if-gtz v15, :cond_17

    const/16 v2, -0xda

    goto :goto_d

    :cond_17
    move/from16 v0, p1

    if-lt v0, v15, :cond_15

    const/16 v2, -0xdb

    goto :goto_d

    :cond_18
    iget-object v2, v10, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "tbs_downloadurl"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->g:Lcom/tencent/smtt/sdk/ac;

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/ac;->c()V

    iget-object v2, v10, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v3, "tbs_download_failed_retrytimes"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v10, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v3, "tbs_download_success_retrytimes"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    iget-object v2, v10, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v3, "tbs_download_version"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v10, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v3, "tbs_downloadurl"

    invoke-interface {v2, v3, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v10, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v3, "tbs_downloadurl_list"

    invoke-interface {v2, v3, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v10, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v3, "tbs_responsecode"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v10, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v3, "tbs_download_maxflow"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v10, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v3, "tbs_download_min_free_space"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v10, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v3, "tbs_download_success_max_retrytimes"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v10, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v3, "tbs_download_failed_max_retrytimes"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v10, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v3, "tbs_single_timeout"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v10, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v3, "tbs_apkfilesize"

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    if-eqz v6, :cond_1a

    iget-object v2, v10, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v3, "tbs_apk_md5"

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    if-nez p3, :cond_1d

    invoke-static {}, Lcom/tencent/smtt/sdk/aj;->a()Lcom/tencent/smtt/sdk/aj;

    move-result-object v2

    sget-object v3, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-virtual {v2, v3, v15}, Lcom/tencent/smtt/sdk/aj;->a(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_1d

    if-eqz p2, :cond_1c

    iget-object v2, v10, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v3, "tbs_download_interrupt_code_reason"

    const/16 v4, -0x71

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_e
    iget-object v2, v10, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v3, "tbs_needdownload"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_f
    const-string v2, "stop_pre_oat"

    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1b

    iget-object v2, v10, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v3, "tbs_stop_preoat"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    invoke-virtual {v10}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_1c
    iget-object v2, v10, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v3, "tbs_download_interrupt_code_reason"

    const/16 v4, -0xd5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, -0xd5

    invoke-virtual {v10, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    goto :goto_e

    :cond_1d
    if-nez p3, :cond_20

    sget-object v3, Lcom/tencent/smtt/sdk/TbsDownloader;->g:Lcom/tencent/smtt/sdk/ac;

    const/4 v2, 0x1

    if-eq v12, v2, :cond_1e

    const/4 v2, 0x2

    if-ne v12, v2, :cond_1f

    :cond_1e
    const/4 v2, 0x1

    :goto_10
    move/from16 v0, p3

    invoke-virtual {v3, v0, v2}, Lcom/tencent/smtt/sdk/ac;->a(ZZ)Z

    move-result v2

    if-eqz v2, :cond_20

    iget-object v2, v10, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v3, "tbs_needdownload"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v2

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/TbsLogReport;->h(I)V

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "use local backup apk in needDownload"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/tencent/smtt/sdk/TbsDownloader;->g:Lcom/tencent/smtt/sdk/ac;

    iget-object v4, v4, Lcom/tencent/smtt/sdk/ac;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/TbsLogReport;->e(Ljava/lang/String;)V

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v2

    sget-object v3, Lcom/tencent/smtt/sdk/TbsLogReport$EventType;->TYPE_DOWNLOAD:Lcom/tencent/smtt/sdk/TbsLogReport$EventType;

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Lcom/tencent/smtt/sdk/TbsLogReport$EventType;)V

    goto/16 :goto_f

    :cond_1f
    const/4 v2, 0x0

    goto :goto_10

    :cond_20
    if-nez p2, :cond_21

    const/16 v2, -0xd8

    invoke-virtual {v10, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    :cond_21
    iget-object v2, v10, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v3, "tbs_needdownload"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_f

    :catch_1
    move-exception v2

    move v2, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    goto/16 :goto_8

    :catch_2
    move-exception v3

    goto/16 :goto_3

    :cond_22
    move-wide v2, v4

    goto/16 :goto_a

    :cond_23
    move-wide v2, v8

    goto/16 :goto_9

    :cond_24
    move-object v2, v3

    goto/16 :goto_5
.end method

.method static synthetic a(ZZ)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/tencent/smtt/sdk/TbsDownloader;->c(ZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic b()Lcom/tencent/smtt/sdk/ac;
    .locals 1

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->g:Lcom/tencent/smtt/sdk/ac;

    return-object v0
.end method

.method private static b(ZZ)Lorg/json/JSONObject;
    .locals 13

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v6

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/utils/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/utils/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/utils/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    const-string v0, ""

    const-string v2, ""

    const-string v1, ""

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    move-object v5, v1

    :goto_0
    :try_start_0
    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    const-string v11, "phone"

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_13

    :goto_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v1, "TIMEZONEID"

    invoke-virtual {v2, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "COUNTRYISO"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "PROTOCOLVERSION"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-boolean v0, Lcom/tencent/smtt/sdk/QbSdk;->c:Z

    if-eqz v0, :cond_8

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/smtt/sdk/TbsShareManager;->a(Landroid/content/Context;Z)I

    move-result v0

    move v1, v0

    :goto_3
    if-eqz p0, :cond_c

    const-string v0, "FUNCTION"

    const/4 v5, 0x2

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_4
    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloader;->f()Lorg/json/JSONArray;

    move-result-object v0

    const-string v5, "TBSVLARR"

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v5, v6, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v11, "last_thirdapp_sendrequest_coreversion"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    sget-boolean v0, Lcom/tencent/smtt/sdk/QbSdk;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "THIRDREQ"

    const/4 v5, 0x1

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    :goto_5
    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "APPN"

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "APPVN"

    iget-object v5, v6, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v11, "app_versionname"

    const/4 v12, 0x0

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "APPVC"

    iget-object v5, v6, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v11, "app_versioncode"

    const/4 v12, 0x0

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "APPMETA"

    iget-object v5, v6, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v6, "app_metadata"

    const/4 v11, 0x0

    invoke-interface {v5, v6, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "TBSSDKV"

    const v5, 0xa85c

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "TBSV"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    const-string v0, "TBSBACKUPV"

    sget-object v5, Lcom/tencent/smtt/sdk/TbsDownloader;->g:Lcom/tencent/smtt/sdk/ac;

    invoke-virtual {v5}, Lcom/tencent/smtt/sdk/ac;->a()I

    move-result v5

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1
    const-string v0, "CPU"

    sget-object v5, Lcom/tencent/smtt/sdk/TbsDownloader;->e:Ljava/lang/String;

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "UA"

    invoke-virtual {v2, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "IMSI"

    invoke-static {v8}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "IMEI"

    invoke-static {v9}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ANDROID_ID"

    invoke-static {v10}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v1, :cond_10

    const-string v5, "STATUS"

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v3

    :goto_6
    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    :goto_7
    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "request_full_package"

    const/4 v5, 0x0

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    const-string v5, "can_unlzma"

    const/4 v6, 0x0

    invoke-static {v0, v5, v6}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    instance-of v5, v0, Ljava/lang/Boolean;

    if-eqz v5, :cond_11

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_8
    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    move v3, v4

    :cond_3
    if-eqz v3, :cond_4

    const-string v0, "REQUEST_LZMA"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_4
    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "OVERSEA"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_5
    if-eqz p1, :cond_6

    const-string v0, "DOWNLOAD_FOREGROUND"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_6
    :goto_9
    const-string v0, "TbsDownload"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TbsDownloader.postJsonData] jsonData="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    move-object v0, v1

    goto/16 :goto_1

    :cond_8
    :try_start_2
    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "tbs_download_version"

    const/4 v5, 0x0

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    move v1, v0

    goto/16 :goto_3

    :cond_9
    invoke-static {}, Lcom/tencent/smtt/sdk/aj;->a()Lcom/tencent/smtt/sdk/aj;

    move-result-object v0

    sget-object v1, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/aj;->f(Landroid/content/Context;)I

    move-result v0

    if-nez p0, :cond_a

    if-nez v0, :cond_a

    invoke-static {}, Lcom/tencent/smtt/sdk/aj;->a()Lcom/tencent/smtt/sdk/aj;

    move-result-object v1

    sget-object v5, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-virtual {v1, v5}, Lcom/tencent/smtt/sdk/aj;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v0, -0x1

    :cond_a
    const-string v1, "TbsDownload"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[TbsDownloader.postJsonData] tbsLocalVersion="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " isDownloadForeground="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_12

    invoke-static {}, Lcom/tencent/smtt/sdk/aj;->a()Lcom/tencent/smtt/sdk/aj;

    move-result-object v1

    sget-object v5, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-virtual {v1, v5}, Lcom/tencent/smtt/sdk/aj;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_b

    :goto_a
    move v1, v0

    goto/16 :goto_3

    :cond_b
    move v0, v3

    goto :goto_a

    :cond_c
    const-string v5, "FUNCTION"

    if-nez v1, :cond_d

    move v0, v3

    :goto_b
    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_4

    :catch_1
    move-exception v0

    goto/16 :goto_9

    :cond_d
    move v0, v4

    goto :goto_b

    :cond_e
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloader;->h()Lorg/json/JSONArray;

    move-result-object v0

    sget-object v5, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/smtt/utils/Apn;->getApnType(Landroid/content/Context;)I

    move-result v5

    const/4 v11, 0x3

    if-eq v5, v11, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-eqz v5, :cond_0

    if-nez v1, :cond_0

    if-eqz p0, :cond_0

    const-string v5, "TBSBACKUPARR"

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_5

    :cond_f
    move v0, v4

    goto/16 :goto_6

    :cond_10
    const-string v0, "STATUS"

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_7

    :cond_11
    move v0, v3

    goto/16 :goto_8

    :cond_12
    move v1, v0

    goto/16 :goto_3

    :cond_13
    move-object v0, v2

    goto/16 :goto_2

    :cond_14
    move-object v5, v0

    goto/16 :goto_0
.end method

.method static b(Landroid/content/Context;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/16 v3, 0xb

    const/4 v2, 0x4

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->clear()V

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->d()V

    invoke-static {p0}, Lcom/tencent/smtt/sdk/ac;->c(Landroid/content/Context;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_0

    const-string v0, "tbs_extension_config"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_1

    const-string v0, "tbs_preloadx5_check_cfg_file"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_0
    const-string v0, "tbs_extension_config"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "tbs_preloadx5_check_cfg_file"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_1
.end method

.method private static c()Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsShareManager;->getCoreProviderAppList()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    sget-object v5, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/tencent/smtt/sdk/TbsShareManager;->getSharedTbsCoreVersion(Landroid/content/Context;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-lez v4, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_1
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static c(ZZ)Z
    .locals 11

    const/4 v2, -0x1

    const/16 v10, -0x68

    const/16 v9, -0xcd

    const/4 v1, 0x0

    const-string v0, "TbsDownload"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TbsDownloader.sendRequest]isQuery: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/aj;->a()Lcom/tencent/smtt/sdk/aj;

    move-result-object v0

    sget-object v3, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/tencent/smtt/sdk/aj;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TbsDownload"

    const-string v2, "[TbsDownloader.sendRequest] -- isTbsLocalInstalled!"

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-static {v0, v5}, Lcom/tencent/smtt/utils/k;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "x5.oversea.tbs.org"

    :goto_1
    invoke-direct {v4, v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    const/4 v6, 0x2

    invoke-static {v0, v6}, Lcom/tencent/smtt/utils/k;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "x5.oversea.tbs.org"

    :goto_2
    invoke-direct {v5, v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    const/4 v7, 0x3

    invoke-static {v0, v7}, Lcom/tencent/smtt/utils/k;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "x5.oversea.tbs.org"

    :goto_3
    invoke-direct {v6, v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    const/4 v8, 0x4

    invoke-static {v0, v8}, Lcom/tencent/smtt/utils/k;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "x5.oversea.tbs.org"

    :goto_4
    invoke-direct {v7, v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v6, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_1
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, v3, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v6, "last_check"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v3, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v4, "app_versionname"

    sget-object v5, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/smtt/utils/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v3, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v4, "app_versioncode"

    sget-object v5, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/smtt/utils/b;->b(Landroid/content/Context;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v3, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v4, "app_metadata"

    sget-object v5, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    const-string v6, "com.tencent.mm.BuildInfo.CLIENT_VERSION"

    invoke-static {v5, v6}, Lcom/tencent/smtt/utils/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->e:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/tencent/smtt/utils/b;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->e:Ljava/lang/String;

    iget-object v0, v3, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->a:Ljava/util/Map;

    const-string v4, "device_cpuabi"

    sget-object v5, Lcom/tencent/smtt/sdk/TbsDownloader;->e:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->commit()V

    :cond_2
    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :try_start_0
    const-string v4, "i686|mips|x86_64"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    sget-object v5, Lcom/tencent/smtt/sdk/TbsDownloader;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    :goto_6
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    if-eqz p0, :cond_9

    invoke-virtual {v3, v10}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/tencent/smtt/sdk/TbsLogReport;->h(I)V

    :goto_7
    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mycpu is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tencent/smtt/sdk/TbsDownloader;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    sget-object v2, Lcom/tencent/smtt/sdk/TbsLogReport$EventType;->TYPE_DOWNLOAD:Lcom/tencent/smtt/sdk/TbsLogReport$EventType;

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Lcom/tencent/smtt/sdk/TbsLogReport$EventType;)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "x5.tbs.org"

    goto/16 :goto_1

    :cond_4
    const-string v0, "x5.tbs.org"

    goto/16 :goto_2

    :cond_5
    const-string v0, "x5.tbs.org"

    goto/16 :goto_3

    :cond_6
    const-string v0, "x5.tbs.org"

    goto/16 :goto_4

    :cond_7
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v5, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto/16 :goto_5

    :cond_8
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v4, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto/16 :goto_5

    :cond_9
    invoke-virtual {v3, v9}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/tencent/smtt/sdk/TbsLogReport;->h(I)V

    goto :goto_7

    :cond_a
    if-eqz p0, :cond_b

    invoke-virtual {v3, v10}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v3, v9}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    goto/16 :goto_0

    :cond_c
    invoke-static {p0, p1}, Lcom/tencent/smtt/sdk/TbsDownloader;->b(ZZ)Lorg/json/JSONObject;

    move-result-object v4

    :try_start_1
    const-string v0, "TBSV"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    :goto_8
    if-eq v0, v2, :cond_e

    :try_start_2
    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/utils/x;->a(Landroid/content/Context;)Lcom/tencent/smtt/utils/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/smtt/utils/x;->d()Ljava/lang/String;

    move-result-object v2

    const-string v5, "TbsDownload"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[TbsDownloader.sendRequest] postUrl="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "utf-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    new-instance v5, Lcom/tencent/smtt/sdk/ag;

    invoke-direct {v5, p0, v3}, Lcom/tencent/smtt/sdk/ag;-><init>(ZLcom/tencent/smtt/sdk/TbsDownloadConfig;)V

    const/4 v6, 0x0

    invoke-static {v2, v4, v5, v6}, Lcom/tencent/smtt/utils/n;->a(Ljava/lang/String;[BLcom/tencent/smtt/utils/n$a;Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, p0, p1}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Ljava/lang/String;IZZ)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    :goto_9
    move v1, v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_8

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p0, :cond_d

    const/16 v0, -0x6a

    invoke-virtual {v3, v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    move v0, v1

    goto :goto_9

    :cond_d
    const/16 v0, -0xce

    invoke-virtual {v3, v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    :cond_e
    move v0, v1

    goto :goto_9

    :catch_2
    move-exception v4

    goto/16 :goto_6
.end method

.method private static declared-synchronized d()V
    .locals 3

    const-class v1, Lcom/tencent/smtt/sdk/TbsDownloader;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->h:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/smtt/sdk/ah;->a()Lcom/tencent/smtt/sdk/ah;

    move-result-object v0

    sput-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->h:Landroid/os/HandlerThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Lcom/tencent/smtt/sdk/ac;

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/tencent/smtt/sdk/ac;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->g:Lcom/tencent/smtt/sdk/ac;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v0, Lcom/tencent/smtt/sdk/af;

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->h:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/tencent/smtt/sdk/af;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->d:Landroid/os/Handler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    :try_start_3
    sput-boolean v0, Lcom/tencent/smtt/sdk/TbsDownloader;->i:Z

    const-string v0, "TbsDownload"

    const-string v2, "TbsApkDownloader init has Exception"

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static e()Z
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloader;->f()Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "last_thirdapp_sendrequest_coreversion"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static f()Lorg/json/JSONArray;
    .locals 9

    const/4 v2, 0x0

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsShareManager;->getCoreProviderAppList()[Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsShareManager;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    array-length v5, v1

    add-int/lit8 v0, v5, 0x1

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v1, v2, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object v4, v0, v5

    :goto_0
    array-length v5, v0

    move v4, v2

    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v1, v0, v4

    sget-object v6, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v6, v1}, Lcom/tencent/smtt/sdk/TbsShareManager;->getSharedTbsCoreVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_0

    sget-object v7, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v7, v1}, Lcom/tencent/smtt/sdk/TbsShareManager;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/tencent/smtt/sdk/aj;->a()Lcom/tencent/smtt/sdk/aj;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/tencent/smtt/sdk/aj;->c(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v6, "TbsDownload"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "host check failed,packageName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_5

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->optInt(I)I

    move-result v7

    if-ne v7, v6, :cond_2

    const/4 v1, 0x1

    :goto_4
    if-nez v1, :cond_0

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    move-object v0, v3

    :goto_5
    return-object v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_5

    :cond_5
    move v1, v2

    goto :goto_4

    :cond_6
    move-object v0, v1

    goto :goto_0
.end method

.method private static g()Z
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    iget-object v3, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "tbs_download_success_retrytimes"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getDownloadSuccessMaxRetrytimes()I

    move-result v4

    if-lt v3, v4, :cond_0

    const-string v3, "TbsDownload"

    const-string v4, "[TbsDownloader.needStartDownload] out of success retrytimes"

    invoke-static {v3, v4, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v1, -0x73

    invoke-virtual {v2, v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    :goto_0
    return v0

    :cond_0
    iget-object v3, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "tbs_download_failed_retrytimes"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getDownloadFailedMaxRetrytimes()I

    move-result v4

    if-lt v3, v4, :cond_1

    const-string v3, "TbsDownload"

    const-string v4, "[TbsDownloader.needStartDownload] out of failed retrytimes"

    invoke-static {v3, v4, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v1, -0x74

    invoke-virtual {v2, v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/utils/k;->b(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "TbsDownload"

    const-string v4, "[TbsDownloader.needStartDownload] local rom freespace limit"

    invoke-static {v3, v4, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v1, -0x75

    invoke-virtual {v2, v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v3, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v6, "tbs_downloadstarttime"

    invoke-interface {v3, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x5265c00

    cmp-long v3, v4, v6

    if-gtz v3, :cond_3

    iget-object v3, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "tbs_downloadflow"

    invoke-interface {v3, v4, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v3, "TbsDownload"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[TbsDownloader.needStartDownload] downloadFlow="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getDownloadMaxflow()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-ltz v3, :cond_3

    const-string v3, "TbsDownload"

    const-string v4, "[TbsDownloader.needStartDownload] failed because you exceeded max flow!"

    invoke-static {v3, v4, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v1, -0x78

    invoke-virtual {v2, v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static declared-synchronized getOverSea(Landroid/content/Context;)Z
    .locals 4

    const-class v1, Lcom/tencent/smtt/sdk/TbsDownloader;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/tencent/smtt/sdk/TbsDownloader;->k:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/smtt/sdk/TbsDownloader;->k:Z

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v2, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "is_oversea"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "is_oversea"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/tencent/smtt/sdk/TbsDownloader;->j:Z

    const-string v0, "TbsDownload"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TbsDownloader.getOverSea]  first called. sOverSea = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/tencent/smtt/sdk/TbsDownloader;->j:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "TbsDownload"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TbsDownloader.getOverSea]  sOverSea = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/tencent/smtt/sdk/TbsDownloader;->j:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-boolean v0, Lcom/tencent/smtt/sdk/TbsDownloader;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getsTbsHandlerThread()Landroid/os/HandlerThread;
    .locals 1

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->h:Landroid/os/HandlerThread;

    return-object v0
.end method

.method private static h()Lorg/json/JSONArray;
    .locals 10

    const/4 v1, 0x0

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsShareManager;->getCoreProviderAppList()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_3

    aget-object v0, v4, v2

    new-instance v6, Ljava/io/File;

    sget-object v7, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    const/4 v8, 0x4

    invoke-static {v7, v0, v8, v1}, Lcom/tencent/smtt/utils/k;->a(Landroid/content/Context;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v7

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "x5.oversea.tbs.org"

    :goto_1
    invoke-direct {v6, v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/tencent/smtt/utils/a;->a(Landroid/content/Context;Ljava/io/File;)I

    move-result v0

    int-to-long v6, v0

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_0

    move v0, v1

    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v0, v8, :cond_4

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optInt(I)I

    move-result v8

    int-to-long v8, v8

    cmp-long v8, v8, v6

    if-nez v8, :cond_2

    const/4 v0, 0x1

    :goto_3
    if-nez v0, :cond_0

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    const-string v0, "x5.tbs.org"

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-object v3

    :cond_4
    move v0, v1

    goto :goto_3
.end method

.method public static isDownloadForeground()Z
    .locals 1

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->g:Lcom/tencent/smtt/sdk/ac;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->g:Lcom/tencent/smtt/sdk/ac;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/ac;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized isDownloading()Z
    .locals 3

    const-class v1, Lcom/tencent/smtt/sdk/TbsDownloader;

    monitor-enter v1

    :try_start_0
    const-string v0, "TbsDownload"

    const-string v2, "[TbsDownloader.isDownloading]"

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/tencent/smtt/sdk/TbsDownloader;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static needDownload(Landroid/content/Context;Z)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/tencent/smtt/sdk/TbsDownloader;->needDownload(Landroid/content/Context;ZZLcom/tencent/smtt/sdk/TbsDownloader$TbsDownloaderCallback;)Z

    move-result v0

    return v0
.end method

.method public static needDownload(Landroid/content/Context;ZZLcom/tencent/smtt/sdk/TbsDownloader$TbsDownloaderCallback;)Z
    .locals 9

    const/16 v5, 0x66

    const/4 v2, 0x1

    const/16 v8, 0x67

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/tencent/smtt/utils/TbsLog;->initIfNeed(Landroid/content/Context;)V

    sget-boolean v1, Lcom/tencent/smtt/sdk/aj;->b:Z

    if-eqz v1, :cond_1

    if-eqz p3, :cond_0

    invoke-interface {p3, v0, v0}, Lcom/tencent/smtt/sdk/TbsDownloader$TbsDownloaderCallback;->onNeedDownloadFinish(ZI)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "TbsDownload"

    invoke-static {v1, p0}, Lcom/tencent/smtt/utils/TbsLog;->app_extra(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    sget-object v1, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    const/16 v1, -0x64

    invoke-virtual {v3, v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    sget-object v1, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v1, p1, p3}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Landroid/content/Context;ZLcom/tencent/smtt/sdk/TbsDownloader$TbsDownloaderCallback;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloader;->d()V

    sget-boolean v1, Lcom/tencent/smtt/sdk/TbsDownloader;->i:Z

    if-eqz v1, :cond_3

    if-eqz p3, :cond_2

    invoke-interface {p3, v0, v0}, Lcom/tencent/smtt/sdk/TbsDownloader$TbsDownloaderCallback;->onNeedDownloadFinish(ZI)V

    :cond_2
    const/16 v1, -0x69

    invoke-virtual {v3, v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v1, p2, v0}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Landroid/content/Context;ZZ)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {p2, p3}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(ZLcom/tencent/smtt/sdk/TbsDownloader$TbsDownloaderCallback;)V

    const/16 v1, -0x72

    invoke-virtual {v3, v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    :cond_4
    sget-object v1, Lcom/tencent/smtt/sdk/TbsDownloader;->d:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v1, Lcom/tencent/smtt/sdk/TbsDownloader;->d:Landroid/os/Handler;

    invoke-static {v1, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    sget-boolean v1, Lcom/tencent/smtt/sdk/QbSdk;->c:Z

    if-nez v1, :cond_5

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_d

    :cond_5
    iget-object v1, v3, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v5, "tbs_needdownload"

    invoke-interface {v1, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    const-string v5, "TbsDownload"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[TbsDownloader.needDownload] hasNeedDownloadKey="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_7

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_1
    if-eqz v1, :cond_9

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloader;->g()Z

    move-result v2

    if-nez v2, :cond_8

    move v1, v0

    :goto_2
    if-nez v4, :cond_6

    if-eqz p3, :cond_6

    invoke-interface {p3, v0, v0}, Lcom/tencent/smtt/sdk/TbsDownloader$TbsDownloaderCallback;->onNeedDownloadFinish(ZI)V

    :cond_6
    const-string v0, "TbsDownload"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TbsDownloader.needDownload] needDownload="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    :cond_7
    iget-object v1, v3, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v5, "tbs_needdownload"

    invoke-interface {v1, v5, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_1

    :cond_8
    const/16 v2, -0x76

    invoke-virtual {v3, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    goto :goto_2

    :cond_9
    invoke-static {}, Lcom/tencent/smtt/sdk/aj;->a()Lcom/tencent/smtt/sdk/aj;

    move-result-object v5

    sget-object v6, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/tencent/smtt/sdk/aj;->f(Landroid/content/Context;)I

    move-result v5

    if-nez v4, :cond_a

    if-gtz v5, :cond_c

    :cond_a
    sget-object v6, Lcom/tencent/smtt/sdk/TbsDownloader;->d:Landroid/os/Handler;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->removeMessages(I)V

    if-gtz v5, :cond_b

    if-nez v4, :cond_b

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->d:Landroid/os/Handler;

    sget-object v5, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v2, v8, v0, v0, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :goto_3
    const/16 v2, -0x79

    invoke-virtual {v3, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    goto :goto_2

    :cond_b
    sget-object v5, Lcom/tencent/smtt/sdk/TbsDownloader;->d:Landroid/os/Handler;

    sget-object v6, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v5, v8, v2, v0, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    :cond_c
    const/16 v2, -0x77

    invoke-virtual {v3, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    goto :goto_2

    :cond_d
    move v1, v0

    goto :goto_1
.end method

.method public static needSendRequest(Landroid/content/Context;Z)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {p0}, Lcom/tencent/smtt/utils/TbsLog;->initIfNeed(Landroid/content/Context;)V

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v0, p1, v3}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Landroid/content/Context;ZLcom/tencent/smtt/sdk/TbsDownloader$TbsDownloaderCallback;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-static {}, Lcom/tencent/smtt/sdk/aj;->a()Lcom/tencent/smtt/sdk/aj;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/aj;->f(Landroid/content/Context;)I

    move-result v0

    const-string v3, "TbsDownload"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[TbsDownloader.needSendRequest] localTbsVersion="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-gtz v0, :cond_0

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0, v2, v1}, Lcom/tencent/smtt/sdk/TbsDownloader;->a(Landroid/content/Context;ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v3, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "tbs_needdownload"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "TbsDownload"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[TbsDownloader.needSendRequest] hasNeedDownloadKey="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_3

    move v0, v1

    :goto_1
    const-string v3, "TbsDownload"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[TbsDownloader.needSendRequest] needDownload="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloader;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_2
    const-string v0, "TbsDownload"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TbsDownloader.needSendRequest] ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    goto/16 :goto_0

    :cond_3
    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "tbs_needdownload"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2
.end method

.method public static startDownload(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tencent/smtt/sdk/TbsDownloader;->startDownload(Landroid/content/Context;Z)V

    return-void
.end method

.method public static declared-synchronized startDownload(Landroid/content/Context;Z)V
    .locals 5

    const/4 v0, 0x1

    const-class v1, Lcom/tencent/smtt/sdk/TbsDownloader;

    monitor-enter v1

    :try_start_0
    const-string v2, "TbsDownload"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TbsDownloader.startDownload] sAppContext="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v2, Lcom/tencent/smtt/sdk/aj;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    const/4 v2, 0x1

    :try_start_1
    sput-boolean v2, Lcom/tencent/smtt/sdk/TbsDownloader;->a:Z

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    const/16 v3, -0xc8

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->j:Lcom/tencent/smtt/sdk/TbsListener;

    const/16 v2, 0x6e

    invoke-interface {v0, v2}, Lcom/tencent/smtt/sdk/TbsListener;->onDownloadFinish(I)V

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v2, -0xc9

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_2
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloader;->d()V

    sget-boolean v2, Lcom/tencent/smtt/sdk/TbsDownloader;->i:Z

    if-eqz v2, :cond_2

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->j:Lcom/tencent/smtt/sdk/TbsListener;

    const/16 v2, 0x79

    invoke-interface {v0, v2}, Lcom/tencent/smtt/sdk/TbsListener;->onDownloadFinish(I)V

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    const/16 v2, -0xca

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloader;->stopDownload()V

    :cond_3
    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->d:Landroid/os/Handler;

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->d:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v2, Lcom/tencent/smtt/sdk/TbsDownloader;->d:Landroid/os/Handler;

    const/16 v3, 0x65

    sget-object v4, Lcom/tencent/smtt/sdk/QbSdk;->j:Lcom/tencent/smtt/sdk/TbsListener;

    invoke-static {v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    if-eqz p1, :cond_4

    :goto_1
    iput v0, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static stopDownload()V
    .locals 2

    sget-boolean v0, Lcom/tencent/smtt/sdk/TbsDownloader;->i:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "TbsDownload"

    const-string v1, "[TbsDownloader.stopDownload]"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->g:Lcom/tencent/smtt/sdk/ac;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->g:Lcom/tencent/smtt/sdk/ac;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/ac;->b()V

    :cond_2
    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->d:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->d:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v0, Lcom/tencent/smtt/sdk/TbsDownloader;->d:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method
