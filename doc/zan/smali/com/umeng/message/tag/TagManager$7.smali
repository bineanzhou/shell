.class Lcom/umeng/message/tag/TagManager$7;
.super Ljava/lang/Object;
.source "TagManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/message/tag/TagManager;->getTags(Lcom/umeng/message/tag/TagManager$TagListCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/message/tag/TagManager$TagListCallBack;

.field final synthetic b:Lcom/umeng/message/tag/TagManager;


# direct methods
.method constructor <init>(Lcom/umeng/message/tag/TagManager;Lcom/umeng/message/tag/TagManager$TagListCallBack;)V
    .locals 0

    .prologue
    .line 707
    iput-object p1, p0, Lcom/umeng/message/tag/TagManager$7;->b:Lcom/umeng/message/tag/TagManager;

    iput-object p2, p0, Lcom/umeng/message/tag/TagManager$7;->a:Lcom/umeng/message/tag/TagManager$TagListCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 710
    const/4 v1, 0x0

    .line 712
    iget-object v0, p0, Lcom/umeng/message/tag/TagManager$7;->b:Lcom/umeng/message/tag/TagManager;

    iget-object v2, p0, Lcom/umeng/message/tag/TagManager$7;->b:Lcom/umeng/message/tag/TagManager;

    invoke-static {v2}, Lcom/umeng/message/tag/TagManager;->c(Lcom/umeng/message/tag/TagManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/message/MessageSharedPrefs;->get_getTagsInterval()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v7}, Lcom/umeng/message/tag/TagManager;->a(Lcom/umeng/message/tag/TagManager;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 714
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 716
    :try_start_0
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 717
    :catch_0
    move-exception v0

    .line 718
    if-eqz v0, :cond_0

    .line 719
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

    .line 722
    :cond_0
    iget-object v0, p0, Lcom/umeng/message/tag/TagManager$7;->a:Lcom/umeng/message/tag/TagManager$TagListCallBack;

    invoke-interface {v0, v7, v1}, Lcom/umeng/message/tag/TagManager$TagListCallBack;->onMessage(ZLjava/util/List;)V

    .line 763
    :goto_0
    return-void

    .line 726
    :cond_1
    iget-object v0, p0, Lcom/umeng/message/tag/TagManager$7;->b:Lcom/umeng/message/tag/TagManager;

    invoke-static {v0}, Lcom/umeng/message/tag/TagManager;->b(Lcom/umeng/message/tag/TagManager;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 728
    :try_start_1
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "Tag API\u88ab\u670d\u52a1\u5668\u7981\u6b62."

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 729
    :catch_1
    move-exception v0

    .line 730
    if-eqz v0, :cond_2

    .line 731
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

    .line 734
    :cond_2
    iget-object v0, p0, Lcom/umeng/message/tag/TagManager$7;->a:Lcom/umeng/message/tag/TagManager$TagListCallBack;

    invoke-interface {v0, v7, v1}, Lcom/umeng/message/tag/TagManager$TagListCallBack;->onMessage(ZLjava/util/List;)V

    goto :goto_0

    .line 738
    :cond_3
    iget-object v0, p0, Lcom/umeng/message/tag/TagManager$7;->b:Lcom/umeng/message/tag/TagManager;

    invoke-static {v0}, Lcom/umeng/message/tag/TagManager;->a(Lcom/umeng/message/tag/TagManager;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 740
    :try_start_2
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "\u7f3a\u5c11utdid\u6216device token"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 741
    :catch_2
    move-exception v0

    .line 742
    if-eqz v0, :cond_4

    .line 743
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

    .line 746
    :cond_4
    iget-object v0, p0, Lcom/umeng/message/tag/TagManager$7;->a:Lcom/umeng/message/tag/TagManager$TagListCallBack;

    invoke-interface {v0, v7, v1}, Lcom/umeng/message/tag/TagManager$TagListCallBack;->onMessage(ZLjava/util/List;)V

    goto :goto_0

    .line 752
    :cond_5
    :try_start_3
    iget-object v0, p0, Lcom/umeng/message/tag/TagManager$7;->b:Lcom/umeng/message/tag/TagManager;

    invoke-static {v0}, Lcom/umeng/message/tag/TagManager;->e(Lcom/umeng/message/tag/TagManager;)Lorg/json/JSONObject;

    move-result-object v0

    .line 753
    invoke-static {}, Lcom/umeng/message/tag/TagManager;->b()Lcom/umeng/message/common/inter/ITagManager;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/umeng/message/common/inter/ITagManager;->getTags(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    .line 754
    iget-object v0, p0, Lcom/umeng/message/tag/TagManager$7;->a:Lcom/umeng/message/tag/TagManager$TagListCallBack;

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lcom/umeng/message/tag/TagManager$TagListCallBack;->onMessage(ZLjava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 755
    :catch_3
    move-exception v0

    .line 756
    if-eqz v0, :cond_6

    .line 757
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

    .line 760
    :cond_6
    iget-object v0, p0, Lcom/umeng/message/tag/TagManager$7;->a:Lcom/umeng/message/tag/TagManager$TagListCallBack;

    invoke-interface {v0, v7, v1}, Lcom/umeng/message/tag/TagManager$TagListCallBack;->onMessage(ZLjava/util/List;)V

    goto/16 :goto_0
.end method
