.class final Lcom/tencent/smtt/sdk/ag;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/smtt/utils/n$a;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/tencent/smtt/sdk/TbsDownloadConfig;


# direct methods
.method constructor <init>(ZLcom/tencent/smtt/sdk/TbsDownloadConfig;)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/smtt/sdk/ag;->a:Z

    iput-object p2, p0, Lcom/tencent/smtt/sdk/ag;->b:Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    const-string v0, "TbsDownload"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TbsDownloader.sendRequest] httpResponseCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x12c

    if-lt p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/ag;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->b:Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    const/16 v1, -0x6b

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/ag;->b:Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    const/16 v1, -0xcf

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->setDownloadInterruptCode(I)V

    goto :goto_0
.end method
