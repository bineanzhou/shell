.class public Lcom/umeng/socialize/handler/UMMoreHandler;
.super Lcom/umeng/socialize/handler/UMSSOHandler;
.source "UMMoreHandler.java"


# instance fields
.field private mAct:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/umeng/socialize/handler/UMSSOHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMMoreHandler;->VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public onCreate(Landroid/content/Context;Lcom/umeng/socialize/PlatformConfig$Platform;)V
    .locals 0

    .prologue
    .line 26
    invoke-super {p0, p1, p2}, Lcom/umeng/socialize/handler/UMSSOHandler;->onCreate(Landroid/content/Context;Lcom/umeng/socialize/PlatformConfig$Platform;)V

    .line 27
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/umeng/socialize/handler/UMMoreHandler;->mAct:Landroid/app/Activity;

    .line 28
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Lcom/umeng/socialize/handler/UMSSOHandler;->release()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/handler/UMMoreHandler;->mAct:Landroid/app/Activity;

    .line 70
    return-void
.end method

.method public share(Lcom/umeng/socialize/ShareContent;Lcom/umeng/socialize/UMShareListener;)Z
    .locals 3

    .prologue
    .line 35
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 36
    const-string v0, "android.intent.action.SEND"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    iget-object v0, p1, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    instance-of v0, v0, Lcom/umeng/socialize/media/UMImage;

    if-eqz v0, :cond_2

    .line 39
    const-string v0, "image/*"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    iget-object v0, p1, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    check-cast v0, Lcom/umeng/socialize/media/UMImage;

    .line 41
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMImage;->asFileImage()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/umeng/socialize/handler/UMMoreHandler;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMImage;->asFileImage()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/umeng/socialize/utils/SocializeUtils;->insertImage(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 43
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 49
    :cond_0
    :goto_0
    const-string v0, "android.intent.extra.SUBJECT"

    iget-object v2, p1, Lcom/umeng/socialize/ShareContent;->subject:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    const-string v0, "android.intent.extra.TEXT"

    iget-object v2, p1, Lcom/umeng/socialize/ShareContent;->mText:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    sget-object v0, Lcom/umeng/socialize/Config;->MORE_TITLE:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 53
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 55
    :try_start_0
    iget-object v1, p0, Lcom/umeng/socialize/handler/UMMoreHandler;->mAct:Landroid/app/Activity;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/umeng/socialize/handler/UMMoreHandler;->mAct:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 56
    iget-object v1, p0, Lcom/umeng/socialize/handler/UMMoreHandler;->mAct:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 58
    :cond_1
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->MORE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-interface {p2, v0}, Lcom/umeng/socialize/UMShareListener;->onResult(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 46
    :cond_2
    const-string v0, "text/plain"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    sget-object v1, Lcom/umeng/socialize/utils/UmengText$INTER;->MOREERROR:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->MORE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-interface {p2, v1, v0}, Lcom/umeng/socialize/UMShareListener;->onError(Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
