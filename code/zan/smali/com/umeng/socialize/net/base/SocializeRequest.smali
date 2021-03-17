.class public abstract Lcom/umeng/socialize/net/base/SocializeRequest;
.super Lcom/umeng/socialize/net/utils/URequest;
.source "SocializeRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/net/base/SocializeRequest$FILE_TYPE;
    }
.end annotation


# static fields
.field private static final BASE_URL:Ljava/lang/String; = "https://log.umsns.com/"

.field public static final REQUEST_ANALYTIC:I = 0x1

.field public static final REQUEST_API:I = 0x2

.field public static final REQUEST_SOCIAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SocializeRequest"


# instance fields
.field private mFileMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/umeng/socialize/net/utils/URequest$FilePair;",
            ">;"
        }
    .end annotation
.end field

.field public mOpId:I

.field private mReqType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;ILcom/umeng/socialize/net/utils/URequest$RequestMethod;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/umeng/socialize/net/base/SocializeReseponse;",
            ">;I",
            "Lcom/umeng/socialize/net/utils/URequest$RequestMethod;",
            ")V"
        }
    .end annotation

    .prologue
    .line 73
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/umeng/socialize/net/utils/URequest;-><init>(Ljava/lang/String;)V

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/umeng/socialize/net/base/SocializeRequest;->mFileMap:Ljava/util/Map;

    .line 61
    const/4 v0, 0x1

    iput v0, p0, Lcom/umeng/socialize/net/base/SocializeRequest;->mReqType:I

    .line 74
    iput-object p3, p0, Lcom/umeng/socialize/net/base/SocializeRequest;->mResponseClz:Ljava/lang/Class;

    .line 75
    iput p4, p0, Lcom/umeng/socialize/net/base/SocializeRequest;->mOpId:I

    .line 76
    iput-object p1, p0, Lcom/umeng/socialize/net/base/SocializeRequest;->mContext:Landroid/content/Context;

    .line 77
    iput-object p5, p0, Lcom/umeng/socialize/net/base/SocializeRequest;->mMethod:Lcom/umeng/socialize/net/utils/URequest$RequestMethod;

    .line 78
    const-string v0, "https://log.umsns.com/"

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/net/base/SocializeRequest;->setBaseUrl(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public static getBaseQuery(Landroid/content/Context;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 301
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 306
    invoke-static {p0}, Lcom/umeng/socialize/utils/DeviceConfig;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 307
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 308
    const-string v2, "imei"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    :cond_0
    invoke-static {p0}, Lcom/umeng/socialize/utils/DeviceConfig;->getMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 314
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 315
    invoke-static {}, Lcom/umeng/socialize/utils/DefaultClass;->getMac()Ljava/lang/String;

    move-result-object v0

    .line 316
    sget-object v2, Lcom/umeng/socialize/utils/UmengText$NET;->MACNULL:Ljava/lang/String;

    invoke-static {v2}, Lcom/umeng/socialize/utils/SLog;->I(Ljava/lang/String;)V

    .line 318
    :cond_1
    const-string v2, "mac"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    sget-object v0, Lcom/umeng/socialize/common/SocializeConstants;->UID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 321
    const-string v0, "uid"

    sget-object v2, Lcom/umeng/socialize/common/SocializeConstants;->UID:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    :cond_2
    :try_start_0
    invoke-static {p0}, Lcom/umeng/socialize/utils/DeviceConfig;->getNetworkAccessMode(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 330
    const-string v2, "en"

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :goto_0
    const-string v0, "de"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    const-string v0, "sdkv"

    const-string v2, "6.9.0"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    const-string v0, "os"

    const-string v2, "Android"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    const-string v0, "android_id"

    invoke-static {p0}, Lcom/umeng/socialize/utils/DeviceConfig;->getAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    const-string v0, "sn"

    invoke-static {}, Lcom/umeng/socialize/utils/DeviceConfig;->getDeviceSN()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    const-string v0, "os_version"

    invoke-static {}, Lcom/umeng/socialize/utils/DeviceConfig;->getOsVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    const-string v0, "dt"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    invoke-static {p0}, Lcom/umeng/socialize/utils/SocializeUtils;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 358
    const-string v2, "ak"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    sget-object v0, Lcom/umeng/socialize/net/utils/SocializeProtocolConstants;->PROTOCOL_VERSION:Ljava/lang/String;

    const-string v2, "3.0"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    const-string v0, "u_sharetype"

    sget-object v2, Lcom/umeng/socialize/Config;->shareType:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    sget-object v0, Lcom/umeng/socialize/Config;->EntityKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 368
    const-string v0, "ek"

    sget-object v2, Lcom/umeng/socialize/Config;->EntityKey:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    :cond_3
    sget-object v0, Lcom/umeng/socialize/Config;->SessionId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 373
    const-string v0, "sid"

    sget-object v2, Lcom/umeng/socialize/Config;->SessionId:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    :cond_4
    :try_start_1
    const-string v0, "tp"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 384
    :goto_1
    return-object v1

    .line 331
    :catch_0
    move-exception v0

    .line 332
    const-string v0, "en"

    const-string v2, "Unknown"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 379
    :catch_1
    move-exception v0

    .line 380
    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private mapTostring(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 252
    iget-object v1, p0, Lcom/umeng/socialize/net/base/SocializeRequest;->mParams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    :goto_0
    return-object v0

    .line 257
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 258
    :catch_0
    move-exception v1

    .line 259
    invoke-static {v1}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public addFileParams([BLcom/umeng/socialize/net/base/SocializeRequest$FILE_TYPE;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 104
    sget-object v0, Lcom/umeng/socialize/net/base/SocializeRequest$FILE_TYPE;->IMAGE:Lcom/umeng/socialize/net/base/SocializeRequest$FILE_TYPE;

    if-ne v0, p2, :cond_1

    .line 105
    invoke-static {p1}, Lcom/umeng/socialize/b/a/a;->c([B)Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    const-string v0, "png"

    .line 112
    :cond_0
    new-instance v1, Lcom/umeng/socialize/net/utils/URequest$FilePair;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/umeng/socialize/utils/SocializeUtils;->md5([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/umeng/socialize/net/utils/URequest$FilePair;-><init>(Ljava/lang/String;[B)V

    .line 113
    iget-object v0, p0, Lcom/umeng/socialize/net/base/SocializeRequest;->mFileMap:Ljava/util/Map;

    sget-object v2, Lcom/umeng/socialize/net/utils/SocializeProtocolConstants;->PROTOCOL_KEY_IMAGE:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :cond_1
    return-void
.end method

.method public addMediaParams(Lcom/umeng/socialize/media/UMediaObject;)V
    .locals 3

    .prologue
    .line 124
    if-nez p1, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    instance-of v0, p1, Lcom/umeng/socialize/media/BaseMediaObject;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 128
    check-cast v0, Lcom/umeng/socialize/media/BaseMediaObject;

    .line 129
    sget-object v1, Lcom/umeng/socialize/net/utils/SocializeProtocolConstants;->PROTOCOL_KEY_TITLE:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/umeng/socialize/media/BaseMediaObject;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/umeng/socialize/net/base/SocializeRequest;->addStringParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_2
    invoke-interface {p1}, Lcom/umeng/socialize/media/UMediaObject;->isUrlMedia()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 133
    invoke-interface {p1}, Lcom/umeng/socialize/media/UMediaObject;->toUrlExtraParams()Ljava/util/Map;

    move-result-object v0

    .line 134
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 135
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/umeng/socialize/net/base/SocializeRequest;->addStringParams(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 138
    :cond_3
    invoke-interface {p1}, Lcom/umeng/socialize/media/UMediaObject;->toByte()[B

    move-result-object v0

    .line 139
    if-eqz v0, :cond_0

    .line 140
    sget-object v1, Lcom/umeng/socialize/net/base/SocializeRequest$FILE_TYPE;->IMAGE:Lcom/umeng/socialize/net/base/SocializeRequest$FILE_TYPE;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/umeng/socialize/net/base/SocializeRequest;->addFileParams([BLcom/umeng/socialize/net/base/SocializeRequest$FILE_TYPE;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public buildParams()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    iget-object v0, p0, Lcom/umeng/socialize/net/base/SocializeRequest;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/socialize/net/base/SocializeRequest;->getBaseQuery(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 200
    sget-object v1, Lcom/umeng/socialize/Config;->EntityKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 201
    const-string v1, "ek"

    sget-object v2, Lcom/umeng/socialize/Config;->EntityKey:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_0
    sget-object v1, Lcom/umeng/socialize/Config;->SessionId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 206
    const-string v1, "sid"

    sget-object v2, Lcom/umeng/socialize/Config;->SessionId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :cond_1
    const-string v1, "tp"

    iget v2, p0, Lcom/umeng/socialize/net/base/SocializeRequest;->mReqType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string v1, "opid"

    iget v2, p0, Lcom/umeng/socialize/net/base/SocializeRequest;->mOpId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-string v1, "uid"

    iget-object v2, p0, Lcom/umeng/socialize/net/base/SocializeRequest;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/commonsdk/utils/UMUtils;->getUMId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget-object v1, p0, Lcom/umeng/socialize/net/base/SocializeRequest;->mParams:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 213
    return-object v0
.end method

.method public getBodyPair()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/umeng/socialize/net/base/SocializeRequest;->buildParams()Ljava/util/Map;

    move-result-object v0

    .line 171
    return-object v0
.end method

.method public getDecryptString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 298
    return-object p1
.end method

.method public getEcryptString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 287
    return-object p1
.end method

.method public getFilePair()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/umeng/socialize/net/utils/URequest$FilePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/umeng/socialize/net/base/SocializeRequest;->mFileMap:Ljava/util/Map;

    return-object v0
.end method

.method protected getHttpMethod()Ljava/lang/String;
    .locals 2

    .prologue
    .line 269
    sget-object v0, Lcom/umeng/socialize/net/base/SocializeRequest$1;->$SwitchMap$com$umeng$socialize$net$utils$URequest$RequestMethod:[I

    iget-object v1, p0, Lcom/umeng/socialize/net/base/SocializeRequest;->mMethod:Lcom/umeng/socialize/net/utils/URequest$RequestMethod;

    invoke-virtual {v1}, Lcom/umeng/socialize/net/utils/URequest$RequestMethod;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 274
    sget-object v0, Lcom/umeng/socialize/net/base/SocializeRequest;->GET:Ljava/lang/String;

    :goto_0
    return-object v0

    .line 271
    :pswitch_0
    sget-object v0, Lcom/umeng/socialize/net/base/SocializeRequest;->POST:Ljava/lang/String;

    goto :goto_0

    .line 269
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected abstract getPath()Ljava/lang/String;
.end method

.method public onPrepareRequest()V
    .locals 4

    .prologue
    .line 235
    const-string v0, "pcv"

    const-string v1, "3.0"

    invoke-virtual {p0, v0, v1}, Lcom/umeng/socialize/net/base/SocializeRequest;->addStringParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v0, "u_sharetype"

    sget-object v1, Lcom/umeng/socialize/Config;->shareType:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/umeng/socialize/net/base/SocializeRequest;->addStringParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/umeng/socialize/net/base/SocializeRequest;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/socialize/utils/DeviceConfig;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 238
    const-string v1, "imei"

    invoke-virtual {p0, v1, v0}, Lcom/umeng/socialize/net/base/SocializeRequest;->addStringParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v0, "de"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/umeng/socialize/net/base/SocializeRequest;->addStringParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v0, "mac"

    iget-object v1, p0, Lcom/umeng/socialize/net/base/SocializeRequest;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/socialize/utils/DeviceConfig;->getMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/umeng/socialize/net/base/SocializeRequest;->addStringParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v0, "os"

    const-string v1, "Android"

    invoke-virtual {p0, v0, v1}, Lcom/umeng/socialize/net/base/SocializeRequest;->addStringParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v0, "en"

    iget-object v1, p0, Lcom/umeng/socialize/net/base/SocializeRequest;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/socialize/utils/DeviceConfig;->getNetworkAccessMode(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/umeng/socialize/net/base/SocializeRequest;->addStringParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v0, "uid"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/umeng/socialize/net/base/SocializeRequest;->addStringParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v0, "sdkv"

    const-string v1, "6.9.0"

    invoke-virtual {p0, v0, v1}, Lcom/umeng/socialize/net/base/SocializeRequest;->addStringParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v0, "dt"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/umeng/socialize/net/base/SocializeRequest;->addStringParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method public setBaseUrl(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 218
    const-string v0, ""

    .line 220
    :try_start_0
    invoke-virtual {p0}, Lcom/umeng/socialize/net/base/SocializeRequest;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 221
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 222
    new-instance v2, Ljava/net/URL;

    invoke-virtual {p0}, Lcom/umeng/socialize/net/base/SocializeRequest;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 229
    :cond_0
    :goto_0
    invoke-super {p0, v0}, Lcom/umeng/socialize/net/utils/URequest;->setBaseUrl(Ljava/lang/String;)V

    .line 230
    return-void

    .line 225
    :catch_0
    move-exception v1

    .line 226
    invoke-static {p1}, Lcom/umeng/socialize/utils/UmengText$NET;->getURLERROR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setReqType(I)V
    .locals 0

    .prologue
    .line 85
    iput p1, p0, Lcom/umeng/socialize/net/base/SocializeRequest;->mReqType:I

    .line 86
    return-void
.end method

.method public toGetUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/umeng/socialize/net/base/SocializeRequest;->buildParams()Ljava/util/Map;

    move-result-object v0

    .line 192
    invoke-virtual {p0}, Lcom/umeng/socialize/net/base/SocializeRequest;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/umeng/socialize/net/base/SocializeRequest;->generateGetURL(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    return-object v0
.end method
