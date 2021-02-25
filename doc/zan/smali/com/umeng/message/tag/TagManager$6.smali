.class Lcom/umeng/message/tag/TagManager$6;
.super Ljava/lang/Object;
.source "TagManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/message/tag/TagManager;->a(Lcom/umeng/message/tag/TagManager$TCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/message/tag/TagManager$TCallBack;

.field final synthetic b:Lcom/umeng/message/tag/TagManager;


# direct methods
.method constructor <init>(Lcom/umeng/message/tag/TagManager;Lcom/umeng/message/tag/TagManager$TCallBack;)V
    .locals 0

    .prologue
    .line 647
    iput-object p1, p0, Lcom/umeng/message/tag/TagManager$6;->b:Lcom/umeng/message/tag/TagManager;

    iput-object p2, p0, Lcom/umeng/message/tag/TagManager$6;->a:Lcom/umeng/message/tag/TagManager$TCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 650
    const/4 v1, 0x0

    .line 651
    iget-object v0, p0, Lcom/umeng/message/tag/TagManager$6;->b:Lcom/umeng/message/tag/TagManager;

    invoke-static {v0}, Lcom/umeng/message/tag/TagManager;->b(Lcom/umeng/message/tag/TagManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 653
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "Tag API\u88ab\u670d\u52a1\u5668\u7981\u6b62"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 654
    :catch_0
    move-exception v0

    .line 655
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 657
    iget-object v0, p0, Lcom/umeng/message/tag/TagManager$6;->a:Lcom/umeng/message/tag/TagManager$TCallBack;

    invoke-interface {v0, v3, v1}, Lcom/umeng/message/tag/TagManager$TCallBack;->onMessage(ZLcom/umeng/message/common/inter/ITagManager$Result;)V

    .line 695
    :goto_0
    return-void

    .line 661
    :cond_0
    iget-object v0, p0, Lcom/umeng/message/tag/TagManager$6;->b:Lcom/umeng/message/tag/TagManager;

    invoke-static {v0}, Lcom/umeng/message/tag/TagManager;->a(Lcom/umeng/message/tag/TagManager;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 663
    :try_start_1
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "\u7f3a\u5c11utdid\u6216device token"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 664
    :catch_1
    move-exception v0

    .line 665
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 667
    iget-object v0, p0, Lcom/umeng/message/tag/TagManager$6;->a:Lcom/umeng/message/tag/TagManager$TCallBack;

    invoke-interface {v0, v3, v1}, Lcom/umeng/message/tag/TagManager$TCallBack;->onMessage(ZLcom/umeng/message/common/inter/ITagManager$Result;)V

    goto :goto_0

    .line 673
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/umeng/message/tag/TagManager$6;->b:Lcom/umeng/message/tag/TagManager;

    invoke-static {v0}, Lcom/umeng/message/tag/TagManager;->e(Lcom/umeng/message/tag/TagManager;)Lorg/json/JSONObject;

    move-result-object v0

    .line 674
    invoke-static {}, Lcom/umeng/message/tag/TagManager;->b()Lcom/umeng/message/common/inter/ITagManager;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/umeng/message/common/inter/ITagManager;->reset(Lorg/json/JSONObject;)Lcom/umeng/message/common/inter/ITagManager$Result;

    move-result-object v1

    .line 675
    iget-object v0, p0, Lcom/umeng/message/tag/TagManager$6;->a:Lcom/umeng/message/tag/TagManager$TCallBack;

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lcom/umeng/message/tag/TagManager$TCallBack;->onMessage(ZLcom/umeng/message/common/inter/ITagManager$Result;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 676
    :catch_2
    move-exception v0

    .line 677
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 692
    iget-object v0, p0, Lcom/umeng/message/tag/TagManager$6;->a:Lcom/umeng/message/tag/TagManager$TCallBack;

    invoke-interface {v0, v3, v1}, Lcom/umeng/message/tag/TagManager$TCallBack;->onMessage(ZLcom/umeng/message/common/inter/ITagManager$Result;)V

    goto :goto_0
.end method
