.class public Lcom/umeng/socialize/PlatformConfig$APPIDPlatform;
.super Ljava/lang/Object;
.source "PlatformConfig.java"

# interfaces
.implements Lcom/umeng/socialize/PlatformConfig$Platform;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/PlatformConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "APPIDPlatform"
.end annotation


# instance fields
.field public appId:Ljava/lang/String;

.field public appkey:Ljava/lang/String;

.field private p:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field public redirectUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-object v0, p0, Lcom/umeng/socialize/PlatformConfig$APPIDPlatform;->appId:Ljava/lang/String;

    .line 190
    iput-object v0, p0, Lcom/umeng/socialize/PlatformConfig$APPIDPlatform;->appkey:Ljava/lang/String;

    .line 191
    iput-object v0, p0, Lcom/umeng/socialize/PlatformConfig$APPIDPlatform;->redirectUrl:Ljava/lang/String;

    .line 194
    iput-object p1, p0, Lcom/umeng/socialize/PlatformConfig$APPIDPlatform;->p:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 195
    return-void
.end method


# virtual methods
.method public getAppSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/umeng/socialize/PlatformConfig$APPIDPlatform;->appkey:Ljava/lang/String;

    return-object v0
.end method

.method public getAppid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/umeng/socialize/PlatformConfig$APPIDPlatform;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Lcom/umeng/socialize/bean/SHARE_MEDIA;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/umeng/socialize/PlatformConfig$APPIDPlatform;->p:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    return-object v0
.end method

.method public isConfigured()Z
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/umeng/socialize/PlatformConfig$APPIDPlatform;->appId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/PlatformConfig$APPIDPlatform;->appkey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 202
    return-void
.end method
