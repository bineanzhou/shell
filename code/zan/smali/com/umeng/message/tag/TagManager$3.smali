.class Lcom/umeng/message/tag/TagManager$3;
.super Ljava/lang/Object;
.source "TagManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/message/tag/TagManager;->a(Lcom/umeng/message/tag/TagManager$TCallBack;[Ljava/lang/String;)V
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
    .line 429
    iput-object p1, p0, Lcom/umeng/message/tag/TagManager$3;->c:Lcom/umeng/message/tag/TagManager;

    iput-object p2, p0, Lcom/umeng/message/tag/TagManager$3;->a:Lcom/umeng/message/tag/TagManager$TCallBack;

    iput-object p3, p0, Lcom/umeng/message/tag/TagManager$3;->b:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 432
    const/4 v1, 0x0

    .line 433
    iget-object v0, p0, Lcom/umeng/message/tag/TagManager$3;->c:Lcom/umeng/message/tag/TagManager;

    invoke-static {v0}, Lcom/umeng/message/tag/TagManager;->b(Lcom/umeng/message/tag/TagManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v3, "Tag API is disabled by the server."

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    :catch_0
    move-exception v0

    .line 437
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 439
    iget-object v0, p0, Lcom/umeng/message/tag/TagManager$3;->a:Lcom/umeng/message/tag/TagManager$TCallBack;

    invoke-interface {v0, v2, v1}, Lcom/umeng/message/tag/TagManager$TCallBack;->onMessage(ZLcom/umeng/message/common/inter/ITagManager$Result;)V

    .line 501
    :goto_0
    return-void

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/umeng/message/tag/TagManager$3;->c:Lcom/umeng/message/tag/TagManager;

    invoke-static {v0}, Lcom/umeng/message/tag/TagManager;->a(Lcom/umeng/message/tag/TagManager;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 445
    :try_start_1
    new-instance v0, Ljava/lang/Exception;

    const-string v3, "No utdid or device_token"

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 446
    :catch_1
    move-exception v0

    .line 447
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 449
    iget-object v0, p0, Lcom/umeng/message/tag/TagManager$3;->a:Lcom/umeng/message/tag/TagManager$TCallBack;

    invoke-interface {v0, v2, v1}, Lcom/umeng/message/tag/TagManager$TCallBack;->onMessage(ZLcom/umeng/message/common/inter/ITagManager$Result;)V

    goto :goto_0

    .line 453
    :cond_1
    iget-object v0, p0, Lcom/umeng/message/tag/TagManager$3;->b:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/umeng/message/tag/TagManager$3;->b:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_3

    .line 455
    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/Exception;

    const-string v3, "No tags"

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 456
    :catch_2
    move-exception v0

    .line 457
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 459
    iget-object v0, p0, Lcom/umeng/message/tag/TagManager$3;->a:Lcom/umeng/message/tag/TagManager$TCallBack;

    invoke-interface {v0, v2, v1}, Lcom/umeng/message/tag/TagManager$TCallBack;->onMessage(ZLcom/umeng/message/common/inter/ITagManager$Result;)V

    goto :goto_0

    .line 463
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 464
    iget-object v4, p0, Lcom/umeng/message/tag/TagManager$3;->b:[Ljava/lang/String;

    array-length v5, v4

    move v0, v2

    :goto_1
    if-ge v0, v5, :cond_4

    aget-object v2, v4, v0

    .line 467
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 470
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 471
    iget-object v0, p0, Lcom/umeng/message/tag/TagManager$3;->c:Lcom/umeng/message/tag/TagManager;

    invoke-static {v0}, Lcom/umeng/message/tag/TagManager;->d(Lcom/umeng/message/tag/TagManager;)Lcom/umeng/message/common/inter/ITagManager$Result;

    move-result-object v0

    .line 472
    iget-object v1, p0, Lcom/umeng/message/tag/TagManager$3;->a:Lcom/umeng/message/tag/TagManager$TCallBack;

    invoke-interface {v1, v6, v0}, Lcom/umeng/message/tag/TagManager$TCallBack;->onMessage(ZLcom/umeng/message/common/inter/ITagManager$Result;)V

    goto :goto_0

    .line 478
    :cond_5
    :try_start_3
    iget-object v0, p0, Lcom/umeng/message/tag/TagManager$3;->c:Lcom/umeng/message/tag/TagManager;

    invoke-static {v0}, Lcom/umeng/message/tag/TagManager;->e(Lcom/umeng/message/tag/TagManager;)Lorg/json/JSONObject;

    move-result-object v0

    .line 479
    const-string v2, "tags"

    invoke-static {v3}, Lcom/umeng/message/util/e;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 481
    invoke-static {}, Lcom/umeng/message/tag/TagManager;->b()Lcom/umeng/message/common/inter/ITagManager;

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/message/tag/TagManager$3;->b:[Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Lcom/umeng/message/common/inter/ITagManager;->update(Lorg/json/JSONObject;[Ljava/lang/String;)Lcom/umeng/message/common/inter/ITagManager$Result;

    move-result-object v1

    .line 482
    iget-object v0, p0, Lcom/umeng/message/tag/TagManager$3;->a:Lcom/umeng/message/tag/TagManager$TCallBack;

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lcom/umeng/message/tag/TagManager$TCallBack;->onMessage(ZLcom/umeng/message/common/inter/ITagManager$Result;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 483
    :catch_3
    move-exception v0

    .line 484
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 498
    iget-object v0, p0, Lcom/umeng/message/tag/TagManager$3;->a:Lcom/umeng/message/tag/TagManager$TCallBack;

    invoke-interface {v0, v6, v1}, Lcom/umeng/message/tag/TagManager$TCallBack;->onMessage(ZLcom/umeng/message/common/inter/ITagManager$Result;)V

    goto/16 :goto_0
.end method
