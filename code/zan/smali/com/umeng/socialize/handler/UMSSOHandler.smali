.class public abstract Lcom/umeng/socialize/handler/UMSSOHandler;
.super Ljava/lang/Object;
.source "UMSSOHandler.java"


# static fields
.field protected static final ACCESSTOKEN:Ljava/lang/String; = "accessToken"

.field protected static final ACCESS_SECRET:Ljava/lang/String; = "access_secret"

.field protected static final ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field protected static final CITY:Ljava/lang/String; = "city"

.field protected static final COUNTRY:Ljava/lang/String; = "country"

.field protected static final EMAIL:Ljava/lang/String; = "email"

.field protected static final EXPIRATION:Ljava/lang/String; = "expiration"

.field protected static final EXPIRES_IN:Ljava/lang/String; = "expires_in"

.field protected static final FIRST_NAME:Ljava/lang/String; = "first_name"

.field protected static final GENDER:Ljava/lang/String; = "gender"

.field protected static final ICON:Ljava/lang/String; = "iconurl"

.field protected static final ID:Ljava/lang/String; = "id"

.field protected static final JSON:Ljava/lang/String; = "json"

.field protected static final LAST_NAME:Ljava/lang/String; = "last_name"

.field protected static final MIDDLE_NAME:Ljava/lang/String; = "middle_name"

.field protected static final NAME:Ljava/lang/String; = "name"

.field protected static final OPENID:Ljava/lang/String; = "openid"

.field protected static final PROFILE_IMAGE_URL:Ljava/lang/String; = "profile_image_url"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected static final PROVINCE:Ljava/lang/String; = "province"

.field protected static final REFRESHTOKEN:Ljava/lang/String; = "refreshToken"

.field protected static final REFRESH_TOKEN:Ljava/lang/String; = "refresh_token"

.field protected static final REGION:Ljava/lang/String; = "region"

.field protected static final SCREEN_NAME:Ljava/lang/String; = "screen_name"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected static final UID:Ljava/lang/String; = "uid"

.field protected static final UNIONID:Ljava/lang/String; = "unionid"

.field protected static final USID:Ljava/lang/String; = "usid"

.field private static final mDefaultShareConfig:Lcom/umeng/socialize/UMShareConfig;


# instance fields
.field protected VERSION:Ljava/lang/String;

.field private isInit:Z

.field private mConfig:Lcom/umeng/socialize/PlatformConfig$Platform;

.field private mContext:Landroid/content/Context;

.field protected mShareConfig:Lcom/umeng/socialize/UMShareConfig;

.field protected mThumbLimit:I

.field protected mWeakAct:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/umeng/socialize/UMShareConfig;

    invoke-direct {v0}, Lcom/umeng/socialize/UMShareConfig;-><init>()V

    sput-object v0, Lcom/umeng/socialize/handler/UMSSOHandler;->mDefaultShareConfig:Lcom/umeng/socialize/UMShareConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/umeng/socialize/handler/UMSSOHandler;->mContext:Landroid/content/Context;

    .line 27
    iput-object v0, p0, Lcom/umeng/socialize/handler/UMSSOHandler;->mConfig:Lcom/umeng/socialize/PlatformConfig$Platform;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/handler/UMSSOHandler;->VERSION:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/socialize/handler/UMSSOHandler;->isInit:Z

    .line 62
    const v0, 0x8000

    iput v0, p0, Lcom/umeng/socialize/handler/UMSSOHandler;->mThumbLimit:I

    .line 60
    return-void
.end method


# virtual methods
.method public authorize(Lcom/umeng/socialize/UMAuthListener;)V
    .locals 0

    .prologue
    .line 122
    return-void
.end method

.method public deleteAuth(Lcom/umeng/socialize/UMAuthListener;)V
    .locals 0

    .prologue
    .line 125
    return-void
.end method

.method public getAuthListener(Lcom/umeng/socialize/UMAuthListener;)Lcom/umeng/socialize/UMAuthListener;
    .locals 0

    .prologue
    .line 248
    if-eqz p1, :cond_0

    .line 251
    :goto_0
    return-object p1

    :cond_0
    new-instance p1, Lcom/umeng/socialize/handler/UMSSOHandler$2;

    invoke-direct {p1, p0}, Lcom/umeng/socialize/handler/UMSSOHandler$2;-><init>(Lcom/umeng/socialize/handler/UMSSOHandler;)V

    goto :goto_0
.end method

.method public getConfig()Lcom/umeng/socialize/PlatformConfig$Platform;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMSSOHandler;->mConfig:Lcom/umeng/socialize/PlatformConfig$Platform;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMSSOHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getGender(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 192
    sget-object v2, Lcom/umeng/socialize/bean/StringName;->male:Ljava/lang/String;

    .line 193
    sget-object v1, Lcom/umeng/socialize/bean/StringName;->female:Ljava/lang/String;

    .line 194
    if-nez p1, :cond_0

    .line 195
    const-string v0, ""

    .line 214
    :goto_0
    return-object v0

    .line 197
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 198
    const-string v0, "m"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\u7537"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move-object v0, v2

    .line 199
    goto :goto_0

    .line 200
    :cond_2
    const-string v0, "f"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "\u5973"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move-object v0, v1

    .line 201
    goto :goto_0

    .line 203
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 205
    :cond_5
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_8

    move-object v0, p1

    .line 206
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_6

    move-object v0, v2

    .line 207
    goto :goto_0

    :cond_6
    move-object v0, p1

    .line 208
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_7

    move-object v0, v1

    .line 209
    goto :goto_0

    .line 211
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 214
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPlatformInfo(Lcom/umeng/socialize/UMAuthListener;)V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method public getRequestCode()I
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    const-string v0, ""

    return-object v0
.end method

.method protected final getShareConfig()Lcom/umeng/socialize/UMShareConfig;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMSSOHandler;->mShareConfig:Lcom/umeng/socialize/UMShareConfig;

    if-nez v0, :cond_0

    .line 116
    sget-object v0, Lcom/umeng/socialize/handler/UMSSOHandler;->mDefaultShareConfig:Lcom/umeng/socialize/UMShareConfig;

    .line 118
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMSSOHandler;->mShareConfig:Lcom/umeng/socialize/UMShareConfig;

    goto :goto_0
.end method

.method public getShareListener(Lcom/umeng/socialize/UMShareListener;)Lcom/umeng/socialize/UMShareListener;
    .locals 0

    .prologue
    .line 221
    if-eqz p1, :cond_0

    .line 224
    :goto_0
    return-object p1

    :cond_0
    new-instance p1, Lcom/umeng/socialize/handler/UMSSOHandler$1;

    invoke-direct {p1, p0}, Lcom/umeng/socialize/handler/UMSSOHandler$1;-><init>(Lcom/umeng/socialize/handler/UMSSOHandler;)V

    goto :goto_0
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public isAuthorize()Z
    .locals 1

    .prologue
    .line 165
    sget-object v0, Lcom/umeng/socialize/utils/UmengText$CHECK;->NO_SUPPORT_AUTH:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->E(Ljava/lang/String;)V

    .line 166
    const/4 v0, 0x1

    return v0
.end method

.method public isHasAuthListener()Z
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x1

    return v0
.end method

.method public isInstall()Z
    .locals 1

    .prologue
    .line 155
    sget-object v0, Lcom/umeng/socialize/utils/UmengText$CHECK;->NO_SUPPORT_INSTALL:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->E(Ljava/lang/String;)V

    .line 156
    const/4 v0, 0x1

    return v0
.end method

.method public isSupport()Z
    .locals 1

    .prologue
    .line 160
    sget-object v0, Lcom/umeng/socialize/utils/UmengText$CHECK;->NO_SUPPORT_SDKL:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->E(Ljava/lang/String;)V

    .line 161
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportAuth()Z
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 145
    return-void
.end method

.method public onCreate(Landroid/content/Context;Lcom/umeng/socialize/PlatformConfig$Platform;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 69
    invoke-static {}, Lcom/umeng/socialize/utils/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/handler/UMSSOHandler;->mContext:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lcom/umeng/socialize/handler/UMSSOHandler;->mConfig:Lcom/umeng/socialize/PlatformConfig$Platform;

    .line 71
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/umeng/socialize/handler/UMSSOHandler;->mWeakAct:Ljava/lang/ref/WeakReference;

    .line 74
    :cond_0
    iget-boolean v0, p0, Lcom/umeng/socialize/handler/UMSSOHandler;->isInit:Z

    if-nez v0, :cond_1

    .line 75
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 76
    const/4 v1, 0x0

    sget-object v2, Lcom/umeng/socialize/utils/UmengText$INTER;->PINFO:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lcom/umeng/socialize/PlatformConfig$Platform;->getName()Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/socialize/utils/UmengText$INTER;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/socialize/handler/UMSSOHandler;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 78
    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/umeng/socialize/utils/UmengText$INTER;->HANDLERID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 79
    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->mutlI([Ljava/lang/String;)V

    .line 80
    iput-boolean v4, p0, Lcom/umeng/socialize/handler/UMSSOHandler;->isInit:Z

    .line 84
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 148
    return-void
.end method

.method public release()V
    .locals 0

    .prologue
    .line 189
    return-void
.end method

.method public setAuthListener(Lcom/umeng/socialize/UMAuthListener;)V
    .locals 0

    .prologue
    .line 133
    return-void
.end method

.method public final setShareConfig(Lcom/umeng/socialize/UMShareConfig;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/umeng/socialize/handler/UMSSOHandler;->mShareConfig:Lcom/umeng/socialize/UMShareConfig;

    .line 106
    return-void
.end method

.method public abstract share(Lcom/umeng/socialize/ShareContent;Lcom/umeng/socialize/UMShareListener;)Z
.end method
