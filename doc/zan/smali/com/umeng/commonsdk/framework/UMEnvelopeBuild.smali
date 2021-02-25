.class public Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;
.super Ljava/lang/Object;
.source "UMEnvelopeBuild.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildEnvelopeWithExtHeader(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 14
    invoke-static {p0, p1, p2}, Lcom/umeng/commonsdk/framework/a;->a(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    invoke-static {p0, p1, p2}, Lcom/umeng/commonsdk/framework/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isReadyBuild(Landroid/content/Context;Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;)Z
    .locals 1

    .prologue
    .line 12
    invoke-static {p0, p1}, Lcom/umeng/commonsdk/framework/a;->a(Landroid/content/Context;Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;)Z

    move-result v0

    return v0
.end method

.method public static lastSuccessfulBuildTime(Landroid/content/Context;)J
    .locals 2

    .prologue
    .line 23
    invoke-static {p0}, Lcom/umeng/commonsdk/framework/a;->a(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static maxDataSpace(Landroid/content/Context;)J
    .locals 2

    .prologue
    .line 20
    invoke-static {p0}, Lcom/umeng/commonsdk/framework/a;->b(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method
