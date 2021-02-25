.class public Lcom/open/likehelper/base/upgrade/UpgradeHttpUtils;
.super Lcom/open/likehelper/util/BaseHttpUtils;
.source "UpgradeHttpUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/open/likehelper/base/upgrade/UpgradeHttpUtils$RequestService;
    }
.end annotation


# static fields
.field private static c:Lcom/open/likehelper/base/upgrade/UpgradeHttpUtils; = null

.field private static final d:Ljava/lang/String; = "https://huatang-test-1256269266.cos.ap-guangzhou.myqcloud.com/x_wechat_moments/upgrade/"


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/open/likehelper/util/BaseHttpUtils;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/open/likehelper/base/upgrade/UpgradeHttpUtils;
    .locals 2

    .prologue
    .line 26
    const-class v1, Lcom/open/likehelper/base/upgrade/UpgradeHttpUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/open/likehelper/base/upgrade/UpgradeHttpUtils;->c:Lcom/open/likehelper/base/upgrade/UpgradeHttpUtils;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/open/likehelper/base/upgrade/UpgradeHttpUtils;

    invoke-direct {v0, p0}, Lcom/open/likehelper/base/upgrade/UpgradeHttpUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/open/likehelper/base/upgrade/UpgradeHttpUtils;->c:Lcom/open/likehelper/base/upgrade/UpgradeHttpUtils;

    .line 30
    :cond_0
    sget-object v0, Lcom/open/likehelper/base/upgrade/UpgradeHttpUtils;->c:Lcom/open/likehelper/base/upgrade/UpgradeHttpUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lretrofit2/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lretrofit2/Callback",
            "<",
            "Lcom/open/likehelper/base/upgrade/UpgradeBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    const-class v0, Lcom/open/likehelper/base/upgrade/UpgradeHttpUtils$RequestService;

    invoke-virtual {p0, v0}, Lcom/open/likehelper/base/upgrade/UpgradeHttpUtils;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/open/likehelper/base/upgrade/UpgradeHttpUtils$RequestService;

    invoke-interface {v0}, Lcom/open/likehelper/base/upgrade/UpgradeHttpUtils$RequestService;->a()Lretrofit2/Call;

    move-result-object v0

    .line 35
    invoke-virtual {p0, p1, v0, p2}, Lcom/open/likehelper/base/upgrade/UpgradeHttpUtils;->a(Ljava/lang/String;Lretrofit2/Call;Lretrofit2/Callback;)V

    .line 36
    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string v0, "https://huatang-test-1256269266.cos.ap-guangzhou.myqcloud.com/x_wechat_moments/upgrade/"

    return-object v0
.end method
