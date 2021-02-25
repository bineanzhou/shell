.class Lcom/umeng/message/tag/TagManager$4;
.super Ljava/lang/Object;
.source "TagManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/message/tag/TagManager;->deleteTags(Lcom/umeng/message/tag/TagManager$TCallBack;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lcom/umeng/message/tag/TagManager$TCallBack;

.field final synthetic c:Lcom/umeng/message/tag/TagManager;


# direct methods
.method constructor <init>(Lcom/umeng/message/tag/TagManager;[Ljava/lang/String;Lcom/umeng/message/tag/TagManager$TCallBack;)V
    .locals 0

    .prologue
    .line 514
    iput-object p1, p0, Lcom/umeng/message/tag/TagManager$4;->c:Lcom/umeng/message/tag/TagManager;

    iput-object p2, p0, Lcom/umeng/message/tag/TagManager$4;->a:[Ljava/lang/String;

    iput-object p3, p0, Lcom/umeng/message/tag/TagManager$4;->b:Lcom/umeng/message/tag/TagManager$TCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 517
    const/4 v1, 0x0

    .line 518
    iget-object v0, p0, Lcom/umeng/message/tag/TagManager$4;->c:Lcom/umeng/message/tag/TagManager;

    iget-object v2, p0, Lcom/umeng/message/tag/TagManager$4;->c:Lcom/umeng/message/tag/TagManager;

    invoke-static {v2}, Lcom/umeng/message/tag/TagManager;->c(Lcom/umeng/message/tag/TagManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/message/MessageSharedPrefs;->get_deleteTagsInterval()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/message/tag/TagManager$4;->a:[Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/umeng/message/tag/TagManager;->a(Lcom/umeng/message/tag/TagManager;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 519
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 521
    :try_start_0
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    :catch_0
    move-exception v0

    .line 523
    if-eqz v0, :cond_0

    .line 524
    sget-object v2, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    invoke-static {}, Lcom/umeng/message/tag/TagManager;->a()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-interface {v2, v3, v7, v4}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/umeng/message/tag/TagManager$4;->b:Lcom/umeng/message/tag/TagManager$TCallBack;

    invoke-interface {v0, v7, v1}, Lcom/umeng/message/tag/TagManager$TCallBack;->onMessage(ZLcom/umeng/message/common/inter/ITagManager$Result;)V

    .line 581
    :goto_0
    return-void

    .line 531
    :cond_1
    iget-object v0, p0, Lcom/umeng/message/tag/TagManager$4;->c:Lcom/umeng/message/tag/TagManager;

    invoke-static {v0}, Lcom/umeng/message/tag/TagManager;->b(Lcom/umeng/message/tag/TagManager;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 533
    :try_start_1
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "Tag API is disabled by the server."

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 534
    :catch_1
    move-exception v0

    .line 535
    if-eqz v0, :cond_2

    .line 536
    sget-object v2, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    invoke-static {}, Lcom/umeng/message/tag/TagManager;->a()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-interface {v2, v3, v7, v4}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 539
    :cond_2
    iget-object v0, p0, Lcom/umeng/message/tag/TagManager$4;->b:Lcom/umeng/message/tag/TagManager$TCallBack;

    invoke-interface {v0, v7, v1}, Lcom/umeng/message/tag/TagManager$TCallBack;->onMessage(ZLcom/umeng/message/common/inter/ITagManager$Result;)V

    goto :goto_0

    .line 542
    :cond_3
    iget-object v0, p0, Lcom/umeng/message/tag/TagManager$4;->c:Lcom/umeng/message/tag/TagManager;

    invoke-static {v0}, Lcom/umeng/message/tag/TagManager;->a(Lcom/umeng/message/tag/TagManager;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 544
    :try_start_2
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "No utdid or device_token"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 545
    :catch_2
    move-exception v0

    .line 546
    if-eqz v0, :cond_4

    .line 547
    sget-object v2, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    invoke-static {}, Lcom/umeng/message/tag/TagManager;->a()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-interface {v2, v3, v7, v4}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 550
    :cond_4
    iget-object v0, p0, Lcom/umeng/message/tag/TagManager$4;->b:Lcom/umeng/message/tag/TagManager$TCallBack;

    invoke-interface {v0, v7, v1}, Lcom/umeng/message/tag/TagManager$TCallBack;->onMessage(ZLcom/umeng/message/common/inter/ITagManager$Result;)V

    goto :goto_0

    .line 554
    :cond_5
    iget-object v0, p0, Lcom/umeng/message/tag/TagManager$4;->a:[Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/umeng/message/tag/TagManager$4;->a:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_8

    .line 556
    :cond_6
    :try_start_3
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "No tags"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 557
    :catch_3
    move-exception v0

    .line 558
    if-eqz v0, :cond_7

    .line 559
    sget-object v2, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    invoke-static {}, Lcom/umeng/message/tag/TagManager;->a()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-interface {v2, v3, v7, v4}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 562
    :cond_7
    iget-object v0, p0, Lcom/umeng/message/tag/TagManager$4;->b:Lcom/umeng/message/tag/TagManager$TCallBack;

    invoke-interface {v0, v7, v1}, Lcom/umeng/message/tag/TagManager$TCallBack;->onMessage(ZLcom/umeng/message/common/inter/ITagManager$Result;)V

    goto/16 :goto_0

    .line 568
    :cond_8
    :try_start_4
    iget-object v0, p0, Lcom/umeng/message/tag/TagManager$4;->c:Lcom/umeng/message/tag/TagManager;

    invoke-static {v0}, Lcom/umeng/message/tag/TagManager;->e(Lcom/umeng/message/tag/TagManager;)Lorg/json/JSONObject;

    move-result-object v0

    .line 569
    const-string v2, "tags"

    iget-object v3, p0, Lcom/umeng/message/tag/TagManager$4;->a:[Ljava/lang/String;

    invoke-static {v3}, Lcom/umeng/message/util/e;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 571
    invoke-static {}, Lcom/umeng/message/tag/TagManager;->b()Lcom/umeng/message/common/inter/ITagManager;

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/message/tag/TagManager$4;->a:[Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Lcom/umeng/message/common/inter/ITagManager;->deleteTags(Lorg/json/JSONObject;[Ljava/lang/String;)Lcom/umeng/message/common/inter/ITagManager$Result;

    move-result-object v1

    .line 572
    iget-object v0, p0, Lcom/umeng/message/tag/TagManager$4;->b:Lcom/umeng/message/tag/TagManager$TCallBack;

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lcom/umeng/message/tag/TagManager$TCallBack;->onMessage(ZLcom/umeng/message/common/inter/ITagManager$Result;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 573
    :catch_4
    move-exception v0

    .line 574
    if-eqz v0, :cond_9

    .line 575
    sget-object v2, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    invoke-static {}, Lcom/umeng/message/tag/TagManager;->a()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-interface {v2, v3, v7, v4}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 578
    :cond_9
    iget-object v0, p0, Lcom/umeng/message/tag/TagManager$4;->b:Lcom/umeng/message/tag/TagManager$TCallBack;

    invoke-interface {v0, v7, v1}, Lcom/umeng/message/tag/TagManager$TCallBack;->onMessage(ZLcom/umeng/message/common/inter/ITagManager$Result;)V

    goto/16 :goto_0
.end method
