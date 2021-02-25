.class public final Lcom/umeng/socialize/net/analytics/SocialAnalytics;
.super Ljava/lang/Object;
.source "SocialAnalytics.java"


# static fields
.field private static a:Lcom/umeng/socialize/net/base/SocializeClient;

.field private static b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/umeng/socialize/net/base/SocializeClient;

    invoke-direct {v0}, Lcom/umeng/socialize/net/base/SocializeClient;-><init>()V

    sput-object v0, Lcom/umeng/socialize/net/analytics/SocialAnalytics;->a:Lcom/umeng/socialize/net/base/SocializeClient;

    .line 36
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/net/analytics/SocialAnalytics;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/umeng/socialize/net/base/SocializeClient;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/umeng/socialize/net/analytics/SocialAnalytics;->a:Lcom/umeng/socialize/net/base/SocializeClient;

    return-object v0
.end method

.method private static a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 175
    sget-object v0, Lcom/umeng/socialize/net/analytics/SocialAnalytics;->b:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 176
    sget-object v0, Lcom/umeng/socialize/net/analytics/SocialAnalytics;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 178
    :cond_0
    return-void
.end method

.method public static authendt(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/umeng/socialize/bean/SHARE_MEDIA;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    invoke-static {p0, p1, p5, p2, p4}, Lcom/umeng/socialize/net/dplus/DplusApi;->uploadAuthend(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    if-eqz p6, :cond_0

    .line 102
    invoke-static {p0, p6, p3, p1, p5}, Lcom/umeng/socialize/net/dplus/DplusApi;->uploadAuth(Landroid/content/Context;Ljava/util/Map;ZLcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;)V

    .line 118
    :cond_0
    return-void
.end method

.method public static authstart(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    invoke-static {p0, p3, p1, p4}, Lcom/umeng/socialize/net/dplus/DplusApi;->uploadAuthStart(Landroid/content/Context;ZLcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public static dauStats(Landroid/content/Context;Z)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 144
    invoke-static {}, Lcom/umeng/socialize/uploadlog/UMLog;->getShareAndAuth()Landroid/os/Bundle;

    move-result-object v4

    .line 145
    const-string v0, "share"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x20000000

    .line 146
    :goto_0
    const-string v2, "auth"

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/high16 v2, 0x10000000

    .line 147
    :goto_1
    invoke-static {}, Lcom/umeng/socialize/uploadlog/UMLog;->isOpenShareEdit()Z

    move-result v3

    if-eqz v3, :cond_3

    const/high16 v3, 0x1000000

    .line 148
    :goto_2
    const-string v5, "isjump"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/high16 v4, 0x2000000

    .line 149
    :goto_3
    or-int/2addr v0, v2

    or-int/2addr v0, v4

    or-int/2addr v0, v3

    .line 150
    invoke-static {p0}, Lcom/umeng/socialize/utils/SocializeSpUtils;->getShareBoardConfig(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 153
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 154
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 155
    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 156
    array-length v4, v2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 157
    aget-object v4, v2, v1

    .line 158
    aget-object v5, v2, v6

    .line 159
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 160
    const-string v4, "position"

    aget-object v5, v2, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string v4, "menubg"

    aget-object v1, v2, v1

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-static {p0, v3, v0}, Lcom/umeng/socialize/net/dplus/DplusApi;->uploadStatsDAU(Landroid/content/Context;Ljava/util/Map;I)V

    .line 170
    :cond_0
    :goto_4
    return-void

    :cond_1
    move v0, v1

    .line 145
    goto :goto_0

    :cond_2
    move v2, v1

    .line 146
    goto :goto_1

    :cond_3
    move v3, v1

    .line 147
    goto :goto_2

    :cond_4
    move v4, v1

    .line 148
    goto :goto_3

    .line 167
    :cond_5
    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/umeng/socialize/net/dplus/DplusApi;->uploadStatsDAU(Landroid/content/Context;Ljava/util/Map;I)V

    goto :goto_4
.end method

.method public static getInfoendt(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/umeng/socialize/bean/SHARE_MEDIA;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    invoke-static {p0, p1, p4, p2, p3}, Lcom/umeng/socialize/net/dplus/DplusApi;->uploadInfoend(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    if-eqz p5, :cond_0

    .line 138
    invoke-static {p0, p5, p1, p4}, Lcom/umeng/socialize/net/dplus/DplusApi;->uploadUserInfo(Landroid/content/Context;Ljava/util/Map;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;)V

    .line 141
    :cond_0
    return-void
.end method

.method public static getInfostart(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 130
    invoke-static {p0, p1, p2}, Lcom/umeng/socialize/net/dplus/DplusApi;->uploadInfoStart(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public static log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/socialize/media/UMediaObject;)V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/umeng/socialize/net/analytics/SocialAnalytics$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/umeng/socialize/net/analytics/SocialAnalytics$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/socialize/media/UMediaObject;)V

    .line 55
    invoke-static {v0}, Lcom/umeng/socialize/net/analytics/SocialAnalytics;->a(Ljava/lang/Runnable;)V

    .line 58
    return-void
.end method

.method public static shareend(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 124
    invoke-static {p0, p1, p4, p2, p3}, Lcom/umeng/socialize/net/dplus/DplusApi;->uploadStatsShareEnd(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void
.end method
