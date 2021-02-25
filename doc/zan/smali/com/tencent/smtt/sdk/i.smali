.class final Lcom/tencent/smtt/sdk/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/smtt/sdk/TbsDownloader$TbsDownloaderCallback;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/smtt/sdk/i;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/smtt/sdk/i;->b:Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNeedDownloadFinish(ZI)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsShareManager;->findCoreForThirdPartyApp(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsShareManager;->getCoreDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/smtt/sdk/i;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/smtt/sdk/TbsShareManager;->forceToLoadX5ForThirdApp(Landroid/content/Context;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/i;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/i;->b:Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;

    invoke-static {v0, v1}, Lcom/tencent/smtt/sdk/QbSdk;->preInit(Landroid/content/Context;Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;)V

    goto :goto_0
.end method
