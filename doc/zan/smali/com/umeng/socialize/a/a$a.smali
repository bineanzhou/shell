.class Lcom/umeng/socialize/a/a$a;
.super Ljava/lang/Object;
.source "SocialRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/umeng/socialize/bean/SHARE_MEDIA;",
            "Lcom/umeng/socialize/handler/UMSSOHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/umeng/socialize/bean/SHARE_MEDIA;",
            "Lcom/umeng/socialize/handler/UMSSOHandler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 781
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 782
    iput-object p1, p0, Lcom/umeng/socialize/a/a$a;->a:Ljava/util/Map;

    .line 783
    return-void
.end method

.method private a(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 836
    if-nez p1, :cond_0

    .line 838
    const/4 v0, 0x0

    .line 841
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 845
    sget-object v0, Lcom/umeng/socialize/PlatformConfig;->configs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/PlatformConfig$Platform;

    .line 852
    iget-object v0, p0, Lcom/umeng/socialize/a/a$a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/handler/UMSSOHandler;

    .line 853
    if-nez v0, :cond_0

    .line 855
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1}, Lcom/umeng/socialize/utils/UmengText$CHECK;->noJar(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    sget-object v3, Lcom/umeng/socialize/utils/UrlUtil;->ALL_NO_JAR:Ljava/lang/String;

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->mutlE([Ljava/lang/String;)V

    move v0, v1

    .line 858
    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 793
    invoke-direct {p0, p1}, Lcom/umeng/socialize/a/a$a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 808
    :goto_0
    return v0

    .line 797
    :cond_0
    invoke-direct {p0, p2}, Lcom/umeng/socialize/a/a$a;->a(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 798
    goto :goto_0

    .line 801
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/a/a$a;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/handler/UMSSOHandler;

    .line 803
    invoke-virtual {v0}, Lcom/umeng/socialize/handler/UMSSOHandler;->isSupportAuth()Z

    move-result v0

    if-nez v0, :cond_2

    .line 804
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/umeng/socialize/utils/UmengText$AUTH;->NOT_SUPPORT_PLATFROM:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->E(Ljava/lang/String;)V

    move v0, v1

    .line 805
    goto :goto_0

    .line 808
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Lcom/umeng/socialize/ShareAction;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 817
    invoke-virtual {p1}, Lcom/umeng/socialize/ShareAction;->getPlatform()Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v2

    .line 818
    if-nez v2, :cond_0

    move v0, v1

    .line 832
    :goto_0
    return v0

    .line 821
    :cond_0
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->SINA:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-eq v2, v0, :cond_1

    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QQ:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-eq v2, v0, :cond_1

    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne v2, v0, :cond_2

    .line 822
    :cond_1
    sget-object v0, Lcom/umeng/socialize/PlatformConfig;->configs:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/PlatformConfig$Platform;

    invoke-interface {v0}, Lcom/umeng/socialize/PlatformConfig$Platform;->isConfigured()Z

    move-result v0

    if-nez v0, :cond_2

    .line 823
    invoke-static {v2}, Lcom/umeng/socialize/utils/UmengText$CHECK;->noKey(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->E(Ljava/lang/String;)V

    move v0, v1

    .line 825
    goto :goto_0

    .line 828
    :cond_2
    invoke-direct {p0, v2}, Lcom/umeng/socialize/a/a$a;->a(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 830
    goto :goto_0

    .line 832
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method
