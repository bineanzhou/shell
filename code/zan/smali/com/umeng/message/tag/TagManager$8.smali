.class Lcom/umeng/message/tag/TagManager$8;
.super Ljava/lang/Object;
.source "TagManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/message/tag/TagManager;->getWeightedTags(Lcom/umeng/message/tag/TagManager$WeightedTagListCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/message/tag/TagManager$WeightedTagListCallBack;

.field final synthetic b:Lcom/umeng/message/tag/TagManager;


# direct methods
.method constructor <init>(Lcom/umeng/message/tag/TagManager;Lcom/umeng/message/tag/TagManager$WeightedTagListCallBack;)V
    .locals 0

    .prologue
    .line 770
    iput-object p1, p0, Lcom/umeng/message/tag/TagManager$8;->b:Lcom/umeng/message/tag/TagManager;

    iput-object p2, p0, Lcom/umeng/message/tag/TagManager$8;->a:Lcom/umeng/message/tag/TagManager$WeightedTagListCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 773
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 774
    iget-object v1, p0, Lcom/umeng/message/tag/TagManager$8;->b:Lcom/umeng/message/tag/TagManager;

    invoke-static {v1}, Lcom/umeng/message/tag/TagManager;->a(Lcom/umeng/message/tag/TagManager;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 775
    const-string v1, "\u7f3a\u5c11utdid\u6216device token"

    .line 776
    sget-object v2, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    invoke-static {}, Lcom/umeng/message/tag/TagManager;->a()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/String;

    aput-object v1, v4, v5

    invoke-interface {v2, v3, v5, v4}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 777
    iget-object v1, p0, Lcom/umeng/message/tag/TagManager$8;->a:Lcom/umeng/message/tag/TagManager$WeightedTagListCallBack;

    invoke-interface {v1, v5, v0}, Lcom/umeng/message/tag/TagManager$WeightedTagListCallBack;->onMessage(ZLjava/util/Hashtable;)V

    .line 798
    :goto_0
    return-void

    .line 781
    :cond_0
    iget-object v1, p0, Lcom/umeng/message/tag/TagManager$8;->b:Lcom/umeng/message/tag/TagManager;

    iget-object v2, p0, Lcom/umeng/message/tag/TagManager$8;->b:Lcom/umeng/message/tag/TagManager;

    .line 782
    invoke-static {v2}, Lcom/umeng/message/tag/TagManager;->c(Lcom/umeng/message/tag/TagManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/message/MessageSharedPrefs;->getListWeightedTagsInterval()Ljava/lang/String;

    move-result-object v2

    .line 781
    invoke-static {v1, v2, v4}, Lcom/umeng/message/tag/TagManager;->a(Lcom/umeng/message/tag/TagManager;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 784
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 785
    sget-object v2, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    invoke-static {}, Lcom/umeng/message/tag/TagManager;->a()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/String;

    aput-object v1, v4, v5

    invoke-interface {v2, v3, v5, v4}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 786
    iget-object v1, p0, Lcom/umeng/message/tag/TagManager$8;->a:Lcom/umeng/message/tag/TagManager$WeightedTagListCallBack;

    invoke-interface {v1, v5, v0}, Lcom/umeng/message/tag/TagManager$WeightedTagListCallBack;->onMessage(ZLjava/util/Hashtable;)V

    goto :goto_0

    .line 791
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/umeng/message/tag/TagManager$8;->b:Lcom/umeng/message/tag/TagManager;

    invoke-static {v1}, Lcom/umeng/message/tag/TagManager;->e(Lcom/umeng/message/tag/TagManager;)Lorg/json/JSONObject;

    move-result-object v1

    .line 792
    invoke-static {}, Lcom/umeng/message/tag/TagManager;->b()Lcom/umeng/message/common/inter/ITagManager;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/umeng/message/common/inter/ITagManager;->getWeightedTags(Lorg/json/JSONObject;)Ljava/util/Hashtable;

    move-result-object v0

    .line 793
    iget-object v1, p0, Lcom/umeng/message/tag/TagManager$8;->a:Lcom/umeng/message/tag/TagManager$WeightedTagListCallBack;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Lcom/umeng/message/tag/TagManager$WeightedTagListCallBack;->onMessage(ZLjava/util/Hashtable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 794
    :catch_0
    move-exception v1

    .line 795
    sget-object v1, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    invoke-static {}, Lcom/umeng/message/tag/TagManager;->a()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/String;

    const-string v4, "\u83b7\u53d6\u52a0\u6743\u6807\u7b7e\u5217\u8868\u5f02\u5e38"

    aput-object v4, v3, v5

    invoke-interface {v1, v2, v5, v3}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 796
    iget-object v1, p0, Lcom/umeng/message/tag/TagManager$8;->a:Lcom/umeng/message/tag/TagManager$WeightedTagListCallBack;

    invoke-interface {v1, v5, v0}, Lcom/umeng/message/tag/TagManager$WeightedTagListCallBack;->onMessage(ZLjava/util/Hashtable;)V

    goto :goto_0
.end method
