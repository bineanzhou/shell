.class public Lcom/umeng/commonsdk/framework/a;
.super Ljava/lang/Object;
.source "UMEnvelopeBuildImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)J
    .locals 2

    .prologue
    .line 25
    if-nez p0, :cond_0

    .line 26
    const-wide/16 v0, 0x0

    .line 28
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/framework/b;->i(Landroid/content/Context;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    if-nez p0, :cond_0

    .line 95
    :goto_0
    return-object p2

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->getImprintService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->b()Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 77
    const-string v0, "--->>> buildEnvelopeFile Enter."

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/e;->b(Ljava/lang/String;)V

    .line 80
    new-instance v0, Lcom/umeng/commonsdk/statistics/b;

    invoke-direct {v0}, Lcom/umeng/commonsdk/statistics/b;-><init>()V

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/umeng/commonsdk/statistics/b;->a(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 43
    .line 44
    if-eqz p0, :cond_1

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 46
    invoke-static {v2}, Lcom/umeng/commonsdk/framework/b;->b(Landroid/content/Context;)Z

    move-result v3

    .line 47
    invoke-static {v2}, Lcom/umeng/commonsdk/framework/b;->c(Landroid/content/Context;)I

    move-result v4

    .line 49
    if-eqz v3, :cond_0

    .line 50
    const/4 v1, 0x1

    .line 51
    invoke-static {v2, p1}, Lcom/umeng/commonsdk/framework/b;->a(Landroid/content/Context;Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 56
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    if-lez v4, :cond_1

    .line 61
    invoke-static {}, Lcom/umeng/commonsdk/framework/c;->b()V

    .line 65
    :cond_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)J
    .locals 2

    .prologue
    .line 104
    if-nez p0, :cond_0

    .line 105
    const-wide/16 v0, 0x0

    .line 108
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/b;->a(Landroid/content/Context;)J

    move-result-wide v0

    goto :goto_0
.end method
