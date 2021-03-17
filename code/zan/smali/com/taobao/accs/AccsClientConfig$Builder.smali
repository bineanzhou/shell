.class public Lcom/taobao/accs/AccsClientConfig$Builder;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/accs/AccsClientConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAppKey:Ljava/lang/String;

.field private mAppSecret:Ljava/lang/String;

.field private mAuthCode:Ljava/lang/String;

.field private mAutoUnit:Z

.field private mChannelHost:Ljava/lang/String;

.field private mChannelPubKey:I

.field private mConfigEnv:I

.field private mDisableChannel:Z

.field private mInappHost:Ljava/lang/String;

.field private mInappPubKey:I

.field private mKeepalive:Z

.field private mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    iput v0, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mInappPubKey:I

    .line 289
    iput v0, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mChannelPubKey:I

    .line 290
    iput-boolean v1, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mKeepalive:Z

    .line 291
    iput-boolean v1, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mAutoUnit:Z

    .line 292
    iput v0, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mConfigEnv:I

    .line 293
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mDisableChannel:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/taobao/accs/AccsClientConfig;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/accs/AccsException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x0

    .line 357
    iget-object v0, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mAppKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    new-instance v0, Lcom/taobao/accs/AccsException;

    const-string v1, "appkey null"

    invoke-direct {v0, v1}, Lcom/taobao/accs/AccsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_0
    new-instance v1, Lcom/taobao/accs/AccsClientConfig;

    invoke-direct {v1}, Lcom/taobao/accs/AccsClientConfig;-><init>()V

    .line 361
    iget-object v0, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mAppKey:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/taobao/accs/AccsClientConfig;->access$002(Lcom/taobao/accs/AccsClientConfig;Ljava/lang/String;)Ljava/lang/String;

    .line 362
    iget-object v0, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mAppSecret:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/taobao/accs/AccsClientConfig;->access$102(Lcom/taobao/accs/AccsClientConfig;Ljava/lang/String;)Ljava/lang/String;

    .line 363
    iget-object v0, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mAuthCode:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/taobao/accs/AccsClientConfig;->access$202(Lcom/taobao/accs/AccsClientConfig;Ljava/lang/String;)Ljava/lang/String;

    .line 364
    iget-boolean v0, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mKeepalive:Z

    invoke-static {v1, v0}, Lcom/taobao/accs/AccsClientConfig;->access$302(Lcom/taobao/accs/AccsClientConfig;Z)Z

    .line 365
    iget-boolean v0, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mAutoUnit:Z

    invoke-static {v1, v0}, Lcom/taobao/accs/AccsClientConfig;->access$402(Lcom/taobao/accs/AccsClientConfig;Z)Z

    .line 366
    iget v0, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mInappPubKey:I

    invoke-static {v1, v0}, Lcom/taobao/accs/AccsClientConfig;->access$502(Lcom/taobao/accs/AccsClientConfig;I)I

    .line 367
    iget v0, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mChannelPubKey:I

    invoke-static {v1, v0}, Lcom/taobao/accs/AccsClientConfig;->access$602(Lcom/taobao/accs/AccsClientConfig;I)I

    .line 368
    iget-object v0, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mInappHost:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/taobao/accs/AccsClientConfig;->access$702(Lcom/taobao/accs/AccsClientConfig;Ljava/lang/String;)Ljava/lang/String;

    .line 369
    iget-object v0, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mChannelHost:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/taobao/accs/AccsClientConfig;->access$802(Lcom/taobao/accs/AccsClientConfig;Ljava/lang/String;)Ljava/lang/String;

    .line 370
    iget-object v0, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mTag:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/taobao/accs/AccsClientConfig;->access$902(Lcom/taobao/accs/AccsClientConfig;Ljava/lang/String;)Ljava/lang/String;

    .line 371
    iget v0, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mConfigEnv:I

    invoke-static {v1, v0}, Lcom/taobao/accs/AccsClientConfig;->access$1002(Lcom/taobao/accs/AccsClientConfig;I)I

    .line 372
    iget-boolean v0, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mDisableChannel:Z

    invoke-static {v1, v0}, Lcom/taobao/accs/AccsClientConfig;->access$1102(Lcom/taobao/accs/AccsClientConfig;Z)Z

    .line 374
    invoke-static {v1}, Lcom/taobao/accs/AccsClientConfig;->access$1000(Lcom/taobao/accs/AccsClientConfig;)I

    move-result v0

    if-gez v0, :cond_1

    .line 375
    sget v0, Lcom/taobao/accs/AccsClientConfig;->mEnv:I

    invoke-static {v1, v0}, Lcom/taobao/accs/AccsClientConfig;->access$1002(Lcom/taobao/accs/AccsClientConfig;I)I

    .line 378
    :cond_1
    invoke-static {v1}, Lcom/taobao/accs/AccsClientConfig;->access$100(Lcom/taobao/accs/AccsClientConfig;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 379
    invoke-static {v1, v5}, Lcom/taobao/accs/AccsClientConfig;->access$1202(Lcom/taobao/accs/AccsClientConfig;I)I

    .line 384
    :goto_0
    invoke-static {v1}, Lcom/taobao/accs/AccsClientConfig;->access$700(Lcom/taobao/accs/AccsClientConfig;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 385
    sget-object v0, Lcom/taobao/accs/AccsClientConfig;->DEFAULT_CENTER_HOSTS:[Ljava/lang/String;

    sget v2, Lcom/taobao/accs/AccsClientConfig;->mEnv:I

    aget-object v0, v0, v2

    invoke-static {v1, v0}, Lcom/taobao/accs/AccsClientConfig;->access$702(Lcom/taobao/accs/AccsClientConfig;Ljava/lang/String;)Ljava/lang/String;

    .line 388
    :cond_2
    invoke-static {v1}, Lcom/taobao/accs/AccsClientConfig;->access$800(Lcom/taobao/accs/AccsClientConfig;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 389
    invoke-static {}, Lcom/taobao/accs/AccsClientConfig;->access$1300()[Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/taobao/accs/AccsClientConfig;->mEnv:I

    aget-object v0, v0, v2

    invoke-static {v1, v0}, Lcom/taobao/accs/AccsClientConfig;->access$802(Lcom/taobao/accs/AccsClientConfig;Ljava/lang/String;)Ljava/lang/String;

    .line 392
    :cond_3
    invoke-static {v1}, Lcom/taobao/accs/AccsClientConfig;->access$900(Lcom/taobao/accs/AccsClientConfig;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 393
    invoke-static {v1}, Lcom/taobao/accs/AccsClientConfig;->access$000(Lcom/taobao/accs/AccsClientConfig;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/taobao/accs/AccsClientConfig;->access$902(Lcom/taobao/accs/AccsClientConfig;Ljava/lang/String;)Ljava/lang/String;

    .line 403
    :cond_4
    invoke-static {v1}, Lcom/taobao/accs/AccsClientConfig;->access$1000(Lcom/taobao/accs/AccsClientConfig;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 411
    invoke-static {}, Lcom/taobao/accs/AccsClientConfig;->access$1600()Ljava/util/Map;

    move-result-object v0

    .line 415
    :goto_1
    invoke-virtual {v1}, Lcom/taobao/accs/AccsClientConfig;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AccsClientConfig_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/taobao/accs/AccsClientConfig;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "build"

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "config"

    aput-object v4, v3, v5

    const/4 v4, 0x1

    invoke-virtual {v1}, Lcom/taobao/accs/AccsClientConfig;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 418
    return-object v1

    .line 381
    :cond_5
    invoke-static {v1, v3}, Lcom/taobao/accs/AccsClientConfig;->access$1202(Lcom/taobao/accs/AccsClientConfig;I)I

    goto :goto_0

    .line 405
    :pswitch_0
    invoke-static {}, Lcom/taobao/accs/AccsClientConfig;->access$1400()Ljava/util/Map;

    move-result-object v0

    goto :goto_1

    .line 408
    :pswitch_1
    invoke-static {}, Lcom/taobao/accs/AccsClientConfig;->access$1500()Ljava/util/Map;

    move-result-object v0

    goto :goto_1

    .line 403
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setAppKey(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig$Builder;
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mAppKey:Ljava/lang/String;

    .line 297
    return-object p0
.end method

.method public setAppSecret(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig$Builder;
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mAppSecret:Ljava/lang/String;

    .line 302
    return-object p0
.end method

.method public setAutoCode(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig$Builder;
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mAuthCode:Ljava/lang/String;

    .line 317
    return-object p0
.end method

.method public setAutoUnit(Z)Lcom/taobao/accs/AccsClientConfig$Builder;
    .locals 0

    .prologue
    .line 336
    iput-boolean p1, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mAutoUnit:Z

    .line 337
    return-object p0
.end method

.method public setChannelHost(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig$Builder;
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mChannelHost:Ljava/lang/String;

    .line 312
    return-object p0
.end method

.method public setChannelPubKey(I)Lcom/taobao/accs/AccsClientConfig$Builder;
    .locals 0

    .prologue
    .line 326
    iput p1, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mChannelPubKey:I

    .line 327
    return-object p0
.end method

.method public setConfigEnv(I)Lcom/taobao/accs/AccsClientConfig$Builder;
    .locals 0
    .param p1    # I
        .annotation build Lcom/taobao/accs/AccsClientConfig$ENV;
        .end annotation
    .end param

    .prologue
    .line 341
    iput p1, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mConfigEnv:I

    .line 342
    return-object p0
.end method

.method public setDisableChannel(Z)Lcom/taobao/accs/AccsClientConfig$Builder;
    .locals 0

    .prologue
    .line 351
    iput-boolean p1, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mDisableChannel:Z

    .line 352
    return-object p0
.end method

.method public setInappHost(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig$Builder;
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mInappHost:Ljava/lang/String;

    .line 307
    return-object p0
.end method

.method public setInappPubKey(I)Lcom/taobao/accs/AccsClientConfig$Builder;
    .locals 0

    .prologue
    .line 321
    iput p1, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mInappPubKey:I

    .line 322
    return-object p0
.end method

.method public setKeepAlive(Z)Lcom/taobao/accs/AccsClientConfig$Builder;
    .locals 0

    .prologue
    .line 331
    iput-boolean p1, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mKeepalive:Z

    .line 332
    return-object p0
.end method

.method public setTag(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig$Builder;
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lcom/taobao/accs/AccsClientConfig$Builder;->mTag:Ljava/lang/String;

    .line 347
    return-object p0
.end method
