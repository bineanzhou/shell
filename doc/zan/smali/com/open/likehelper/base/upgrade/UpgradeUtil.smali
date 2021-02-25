.class public Lcom/open/likehelper/base/upgrade/UpgradeUtil;
.super Ljava/lang/Object;
.source "UpgradeUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/open/likehelper/base/upgrade/UpgradeUtil$DownLoadBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/open/likehelper/base/upgrade/UpgradeUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/open/likehelper/base/upgrade/UpgradeUtil;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    return-void
.end method

.method static synthetic a(Landroid/app/Activity;Lcom/open/likehelper/base/upgrade/UpgradeBean;Z)V
    .locals 0

    .prologue
    .line 38
    invoke-static {p0, p1, p2}, Lcom/open/likehelper/base/upgrade/UpgradeUtil;->b(Landroid/app/Activity;Lcom/open/likehelper/base/upgrade/UpgradeBean;Z)V

    return-void
.end method

.method public static a(Landroid/app/Activity;Z)V
    .locals 4

    .prologue
    .line 42
    invoke-static {p0}, Lcom/open/likehelper/base/upgrade/UpgradeHttpUtils;->a(Landroid/content/Context;)Lcom/open/likehelper/base/upgrade/UpgradeHttpUtils;

    move-result-object v0

    sget-object v1, Lcom/open/likehelper/base/upgrade/UpgradeUtil;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/open/likehelper/base/upgrade/UpgradeHttpUtils;->b(Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x0

    .line 44
    if-eqz p1, :cond_0

    .line 45
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 46
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 47
    const-string v1, "\u68c0\u67e5\u66f4\u65b0\u4e2d..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 48
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 51
    :cond_0
    invoke-static {p0}, Lcom/open/likehelper/base/upgrade/UpgradeHttpUtils;->a(Landroid/content/Context;)Lcom/open/likehelper/base/upgrade/UpgradeHttpUtils;

    move-result-object v1

    sget-object v2, Lcom/open/likehelper/base/upgrade/UpgradeUtil;->a:Ljava/lang/String;

    new-instance v3, Lcom/open/likehelper/base/upgrade/UpgradeUtil$1;

    invoke-direct {v3, p0, p1, v0}, Lcom/open/likehelper/base/upgrade/UpgradeUtil$1;-><init>(Landroid/app/Activity;ZLandroid/app/ProgressDialog;)V

    invoke-virtual {v1, v2, v3}, Lcom/open/likehelper/base/upgrade/UpgradeHttpUtils;->a(Ljava/lang/String;Lretrofit2/Callback;)V

    .line 68
    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    invoke-static {p0, p1}, Lcom/open/likehelper/base/upgrade/UpgradeUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static b(Landroid/app/Activity;Lcom/open/likehelper/base/upgrade/UpgradeBean;Z)V
    .locals 4

    .prologue
    .line 71
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    new-instance v1, Lcom/open/likehelper/util/SharedPreferUtils;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/open/likehelper/util/SharedPreferUtils;-><init>(Landroid/content/Context;)V

    .line 74
    if-nez p1, :cond_2

    .line 75
    const-string v0, "upgrade"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/open/likehelper/util/SharedPreferUtils;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 77
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    new-instance v3, Lcom/open/likehelper/base/upgrade/UpgradeUtil$2;

    invoke-direct {v3}, Lcom/open/likehelper/base/upgrade/UpgradeUtil$2;-><init>()V

    .line 78
    invoke-virtual {v3}, Lcom/open/likehelper/base/upgrade/UpgradeUtil$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 77
    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/open/likehelper/base/upgrade/UpgradeBean;

    move-object p1, v0

    .line 81
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/open/likehelper/base/upgrade/UpgradeBean;->e()Z

    move-result v0

    if-nez v0, :cond_4

    .line 82
    :cond_3
    if-eqz p2, :cond_0

    .line 83
    const-string v0, "\u68c0\u67e5\u66f4\u65b0\u5931\u8d25"

    invoke-static {p0, v0}, Lcom/open/likehelper/util/ToastUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_4
    const-string v0, "upgrade"

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/open/likehelper/util/SharedPreferUtils;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {p0, p1, p2}, Lcom/open/likehelper/base/upgrade/UpgradeUtil;->c(Landroid/app/Activity;Lcom/open/likehelper/base/upgrade/UpgradeBean;Z)V

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 133
    const-string v0, "download"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    .line 134
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 135
    new-instance v2, Landroid/app/DownloadManager$Request;

    invoke-direct {v2, v1}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 137
    invoke-virtual {v2}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    .line 139
    invoke-virtual {v2, v3}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    .line 140
    invoke-virtual {v2, v3}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f070022

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\u66f4\u65b0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 143
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    .line 144
    invoke-static {p1}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-virtual {v2, v1}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 147
    const-string v1, "/download/"

    const-string v3, "huatang.apk"

    invoke-virtual {v2, v1, v3}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 148
    invoke-virtual {v0, v2}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v0

    .line 150
    const-string v2, "download_plato"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 151
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "plato"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 152
    const-string v0, "\u6b63\u5728\u540e\u53f0\u4e0b\u8f7d\u4e2d..."

    invoke-static {p0, v0}, Lcom/open/likehelper/util/ToastUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method private static c(Landroid/app/Activity;Lcom/open/likehelper/base/upgrade/UpgradeBean;Z)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 92
    new-instance v0, Lcom/open/likehelper/util/SharedPreferUtils;

    invoke-direct {v0, p0}, Lcom/open/likehelper/util/SharedPreferUtils;-><init>(Landroid/content/Context;)V

    const-string v3, "new_version_code"

    invoke-virtual {p1}, Lcom/open/likehelper/base/upgrade/UpgradeBean;->b()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/open/likehelper/util/SharedPreferUtils;->a(Ljava/lang/String;I)V

    .line 94
    invoke-virtual {p1}, Lcom/open/likehelper/base/upgrade/UpgradeBean;->b()I

    move-result v0

    invoke-static {p0}, Lcom/open/likehelper/util/AppUtils;->b(Landroid/content/Context;)I

    move-result v3

    if-gt v0, v3, :cond_1

    .line 95
    if-eqz p2, :cond_0

    .line 96
    const-string v0, "\u5df2\u7ecf\u662f\u6700\u65b0\u7248\u672c"

    invoke-static {p0, v0}, Lcom/open/likehelper/util/ToastUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    invoke-virtual {p1}, Lcom/open/likehelper/base/upgrade/UpgradeBean;->a()I

    move-result v0

    invoke-static {p0}, Lcom/open/likehelper/util/AppUtils;->b(Landroid/content/Context;)I

    move-result v3

    if-le v0, v3, :cond_2

    move v0, v1

    .line 102
    :goto_1
    new-instance v3, Lcom/open/likehelper/base/upgrade/WMDialog$Builder;

    invoke-direct {v3, p0}, Lcom/open/likehelper/base/upgrade/WMDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v4, "\u53d1\u73b0\u65b0\u7248\u672c"

    .line 103
    invoke-virtual {v3, v4}, Lcom/open/likehelper/base/upgrade/WMDialog$Builder;->a(Ljava/lang/CharSequence;)Lcom/open/likehelper/base/upgrade/WMDialog$Builder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_3

    const-string v3, "<font color=\'#fe4b37\'>\u5f53\u524d\u7248\u672c\u4e0d\u53ef\u7528\uff0c\u8bf7\u66f4\u65b0\u540e\u4f7f\u7528\uff01</font><br>"

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 105
    invoke-virtual {p1}, Lcom/open/likehelper/base/upgrade/UpgradeBean;->d()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\n"

    const-string v7, "<br>"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 104
    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/open/likehelper/base/upgrade/WMDialog$Builder;->b(Ljava/lang/CharSequence;)Lcom/open/likehelper/base/upgrade/WMDialog$Builder;

    move-result-object v3

    const/16 v4, 0x13

    .line 106
    invoke-virtual {v3, v4}, Lcom/open/likehelper/base/upgrade/WMDialog$Builder;->a(I)Lcom/open/likehelper/base/upgrade/WMDialog$Builder;

    move-result-object v4

    if-eqz v0, :cond_4

    const-string v3, ""

    :goto_3
    new-instance v5, Lcom/open/likehelper/base/upgrade/UpgradeUtil$4;

    invoke-direct {v5}, Lcom/open/likehelper/base/upgrade/UpgradeUtil$4;-><init>()V

    .line 107
    invoke-virtual {v4, v3, v5}, Lcom/open/likehelper/base/upgrade/WMDialog$Builder;->a(Ljava/lang/String;Lcom/open/likehelper/base/upgrade/WMDialog$OnCancelClickListener;)Lcom/open/likehelper/base/upgrade/WMDialog$Builder;

    move-result-object v3

    const-string v4, "\u7acb\u5373\u66f4\u65b0"

    new-instance v5, Lcom/open/likehelper/base/upgrade/UpgradeUtil$3;

    invoke-direct {v5, p0, p1, v0}, Lcom/open/likehelper/base/upgrade/UpgradeUtil$3;-><init>(Landroid/app/Activity;Lcom/open/likehelper/base/upgrade/UpgradeBean;Z)V

    .line 112
    invoke-virtual {v3, v4, v5}, Lcom/open/likehelper/base/upgrade/WMDialog$Builder;->a(Ljava/lang/String;Lcom/open/likehelper/base/upgrade/WMDialog$OnConfirmClickListener;)Lcom/open/likehelper/base/upgrade/WMDialog$Builder;

    move-result-object v3

    if-nez v0, :cond_5

    .line 129
    :goto_4
    invoke-virtual {v3, v1}, Lcom/open/likehelper/base/upgrade/WMDialog$Builder;->a(Z)Lcom/open/likehelper/base/upgrade/WMDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/open/likehelper/base/upgrade/WMDialog$Builder;->a()Lcom/open/likehelper/base/upgrade/WMDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/open/likehelper/base/upgrade/WMDialog;->show()V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 101
    goto :goto_1

    .line 103
    :cond_3
    const-string v3, ""

    goto :goto_2

    .line 106
    :cond_4
    const-string v3, "\u7a0d\u540e\u518d\u8bf4"

    goto :goto_3

    :cond_5
    move v1, v2

    .line 112
    goto :goto_4
.end method
