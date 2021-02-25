.class final Lcom/tencent/smtt/sdk/bh;
.super Ljava/lang/Thread;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x1

    invoke-static {}, Lcom/tencent/smtt/sdk/WebView;->f()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "TbsNeedReboot"

    const-string v1, "WebView.updateNeeeRebootStatus--mAppContext == null"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v7}, Lcom/tencent/smtt/sdk/l;->a(Z)Lcom/tencent/smtt/sdk/l;

    move-result-object v0

    sget-boolean v1, Lcom/tencent/smtt/sdk/l;->a:Z

    if-eqz v1, :cond_2

    const-string v0, "TbsNeedReboot"

    const-string v1, "WebView.updateNeeeRebootStatus--needReboot = true"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/tencent/smtt/sdk/WebView;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/smtt/sdk/ae;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ae;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/ae;->c()I

    move-result v2

    const-string v3, "TbsNeedReboot"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WebView.updateNeeeRebootStatus--installStatus = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/smtt/utils/TbsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    const-string v2, "TbsNeedReboot"

    const-string v3, "WebView.updateNeeeRebootStatus--install setTbsNeedReboot true"

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/ae;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/l;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/tencent/smtt/sdk/l;->b(Z)Z

    goto :goto_0

    :cond_3
    const-string v3, "copy_status"

    invoke-virtual {v1, v3}, Lcom/tencent/smtt/sdk/ae;->b(Ljava/lang/String;)I

    move-result v3

    const-string v4, "TbsNeedReboot"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WebView.updateNeeeRebootStatus--copyStatus = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/smtt/utils/TbsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v3, v7, :cond_4

    const-string v2, "TbsNeedReboot"

    const-string v3, "WebView.updateNeeeRebootStatus--copy setTbsNeedReboot true"

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "copy_core_ver"

    invoke-virtual {v1, v2}, Lcom/tencent/smtt/sdk/ae;->c(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/l;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/tencent/smtt/sdk/l;->b(Z)Z

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lcom/tencent/smtt/sdk/bi;->b()Lcom/tencent/smtt/sdk/bi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/bi;->c()Z

    move-result v1

    if-nez v1, :cond_0

    if-eq v2, v8, :cond_5

    if-ne v3, v8, :cond_0

    :cond_5
    const-string v1, "TbsNeedReboot"

    const-string v2, "WebView.updateNeeeRebootStatus--setTbsNeedReboot true"

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/l;->d()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/l;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/tencent/smtt/sdk/l;->b(Z)Z

    goto/16 :goto_0
.end method
