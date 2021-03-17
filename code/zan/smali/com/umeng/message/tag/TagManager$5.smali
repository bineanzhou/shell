.class Lcom/umeng/message/tag/TagManager$5;
.super Ljava/lang/Object;
.source "TagManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/message/tag/TagManager;->deleteWeightedTags(Lcom/umeng/message/tag/TagManager$TCallBack;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/message/tag/TagManager$TCallBack;

.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:Lcom/umeng/message/tag/TagManager;


# direct methods
.method constructor <init>(Lcom/umeng/message/tag/TagManager;Lcom/umeng/message/tag/TagManager$TCallBack;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 588
    iput-object p1, p0, Lcom/umeng/message/tag/TagManager$5;->c:Lcom/umeng/message/tag/TagManager;

    iput-object p2, p0, Lcom/umeng/message/tag/TagManager$5;->a:Lcom/umeng/message/tag/TagManager$TCallBack;

    iput-object p3, p0, Lcom/umeng/message/tag/TagManager$5;->b:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 591
    new-instance v0, Lcom/umeng/message/common/inter/ITagManager$Result;

    invoke-direct {v0}, Lcom/umeng/message/common/inter/ITagManager$Result;-><init>()V

    .line 593
    iget-object v1, p0, Lcom/umeng/message/tag/TagManager$5;->c:Lcom/umeng/message/tag/TagManager;

    invoke-static {v1}, Lcom/umeng/message/tag/TagManager;->a(Lcom/umeng/message/tag/TagManager;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 594
    const-string v1, "\u7f3a\u5c11utdid\u6216device token"

    .line 595
    invoke-virtual {v0, v1}, Lcom/umeng/message/common/inter/ITagManager$Result;->setErrors(Ljava/lang/String;)V

    .line 596
    sget-object v2, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    invoke-static {}, Lcom/umeng/message/tag/TagManager;->a()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/String;

    aput-object v1, v4, v5

    invoke-interface {v2, v3, v5, v4}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 597
    iget-object v1, p0, Lcom/umeng/message/tag/TagManager$5;->a:Lcom/umeng/message/tag/TagManager$TCallBack;

    invoke-interface {v1, v5, v0}, Lcom/umeng/message/tag/TagManager$TCallBack;->onMessage(ZLcom/umeng/message/common/inter/ITagManager$Result;)V

    .line 634
    :goto_0
    return-void

    .line 601
    :cond_0
    iget-object v1, p0, Lcom/umeng/message/tag/TagManager$5;->b:[Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/umeng/message/tag/TagManager$5;->b:[Ljava/lang/String;

    array-length v1, v1

    if-nez v1, :cond_2

    .line 602
    :cond_1
    const-string v1, "\u6ca1\u6709\u52a0\u6743\u6807\u7b7e"

    .line 603
    sget-object v2, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    invoke-static {}, Lcom/umeng/message/tag/TagManager;->a()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/String;

    aput-object v1, v4, v5

    invoke-interface {v2, v3, v5, v4}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 604
    invoke-virtual {v0, v1}, Lcom/umeng/message/common/inter/ITagManager$Result;->setErrors(Ljava/lang/String;)V

    .line 605
    iget-object v1, p0, Lcom/umeng/message/tag/TagManager$5;->a:Lcom/umeng/message/tag/TagManager$TCallBack;

    invoke-interface {v1, v5, v0}, Lcom/umeng/message/tag/TagManager$TCallBack;->onMessage(ZLcom/umeng/message/common/inter/ITagManager$Result;)V

    goto :goto_0

    .line 609
    :cond_2
    iget-object v1, p0, Lcom/umeng/message/tag/TagManager$5;->b:[Ljava/lang/String;

    array-length v1, v1

    const/16 v2, 0x40

    if-le v1, v2, :cond_3

    .line 610
    const-string v1, "\u6bcf\u6b21\u8bf7\u6c42\u6700\u591a\u5220\u966464\u4e2a\u52a0\u6743\u6807\u7b7e"

    .line 611
    sget-object v2, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    invoke-static {}, Lcom/umeng/message/tag/TagManager;->a()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/String;

    aput-object v1, v4, v5

    invoke-interface {v2, v3, v5, v4}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 612
    invoke-virtual {v0, v1}, Lcom/umeng/message/common/inter/ITagManager$Result;->setErrors(Ljava/lang/String;)V

    .line 613
    iget-object v1, p0, Lcom/umeng/message/tag/TagManager$5;->a:Lcom/umeng/message/tag/TagManager$TCallBack;

    invoke-interface {v1, v5, v0}, Lcom/umeng/message/tag/TagManager$TCallBack;->onMessage(ZLcom/umeng/message/common/inter/ITagManager$Result;)V

    goto :goto_0

    .line 617
    :cond_3
    iget-object v1, p0, Lcom/umeng/message/tag/TagManager$5;->c:Lcom/umeng/message/tag/TagManager;

    iget-object v2, p0, Lcom/umeng/message/tag/TagManager$5;->c:Lcom/umeng/message/tag/TagManager;

    .line 618
    invoke-static {v2}, Lcom/umeng/message/tag/TagManager;->c(Lcom/umeng/message/tag/TagManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/message/MessageSharedPrefs;->getDeleteWeightedTagsInterval()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/message/tag/TagManager$5;->b:[Ljava/lang/String;

    .line 617
    invoke-static {v1, v2, v3}, Lcom/umeng/message/tag/TagManager;->b(Lcom/umeng/message/tag/TagManager;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 620
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 621
    sget-object v2, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    invoke-static {}, Lcom/umeng/message/tag/TagManager;->a()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/String;

    aput-object v1, v4, v5

    invoke-interface {v2, v3, v5, v4}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 622
    invoke-virtual {v0, v1}, Lcom/umeng/message/common/inter/ITagManager$Result;->setErrors(Ljava/lang/String;)V

    .line 623
    iget-object v1, p0, Lcom/umeng/message/tag/TagManager$5;->a:Lcom/umeng/message/tag/TagManager$TCallBack;

    invoke-interface {v1, v5, v0}, Lcom/umeng/message/tag/TagManager$TCallBack;->onMessage(ZLcom/umeng/message/common/inter/ITagManager$Result;)V

    goto :goto_0

    .line 628
    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/umeng/message/tag/TagManager$5;->c:Lcom/umeng/message/tag/TagManager;

    invoke-static {v0}, Lcom/umeng/message/tag/TagManager;->e(Lcom/umeng/message/tag/TagManager;)Lorg/json/JSONObject;

    move-result-object v0

    .line 629
    const-string v1, "tags"

    iget-object v2, p0, Lcom/umeng/message/tag/TagManager$5;->b:[Ljava/lang/String;

    invoke-static {v2}, Lcom/umeng/message/util/e;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 630
    iget-object v1, p0, Lcom/umeng/message/tag/TagManager$5;->a:Lcom/umeng/message/tag/TagManager$TCallBack;

    const/4 v2, 0x1

    invoke-static {}, Lcom/umeng/message/tag/TagManager;->b()Lcom/umeng/message/common/inter/ITagManager;

    move-result-object v3

    iget-object v4, p0, Lcom/umeng/message/tag/TagManager$5;->b:[Ljava/lang/String;

    invoke-interface {v3, v0, v4}, Lcom/umeng/message/common/inter/ITagManager;->deleteWeightedTags(Lorg/json/JSONObject;[Ljava/lang/String;)Lcom/umeng/message/common/inter/ITagManager$Result;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/umeng/message/tag/TagManager$TCallBack;->onMessage(ZLcom/umeng/message/common/inter/ITagManager$Result;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 631
    :catch_0
    move-exception v0

    .line 632
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    invoke-static {}, Lcom/umeng/message/tag/TagManager;->a()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\u5220\u9664\u52a0\u6743\u6807\u7b7e\u5f02\u5e38"

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v5, v2}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    goto/16 :goto_0
.end method
