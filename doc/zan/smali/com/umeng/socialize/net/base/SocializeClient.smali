.class public Lcom/umeng/socialize/net/base/SocializeClient;
.super Lcom/umeng/socialize/net/utils/UClient;
.source "SocializeClient.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/umeng/socialize/net/utils/UClient;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/umeng/socialize/net/utils/URequest;)Lcom/umeng/socialize/net/base/SocializeReseponse;
    .locals 2

    .prologue
    .line 27
    sget-boolean v0, Lcom/umeng/socialize/common/SocializeConstants;->DEBUG_MODE:Z

    if-eqz v0, :cond_0

    .line 29
    const-wide/16 v0, 0xbb8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :cond_0
    :goto_0
    iget-object v0, p1, Lcom/umeng/socialize/net/utils/URequest;->mResponseClz:Ljava/lang/Class;

    invoke-super {p0, p1, v0}, Lcom/umeng/socialize/net/utils/UClient;->execute(Lcom/umeng/socialize/net/utils/URequest;Ljava/lang/Class;)Lcom/umeng/socialize/net/utils/UResponse;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/net/base/SocializeReseponse;

    return-object v0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
