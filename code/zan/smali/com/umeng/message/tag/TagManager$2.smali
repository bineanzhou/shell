.class Lcom/umeng/message/tag/TagManager$2;
.super Ljava/lang/Object;
.source "TagManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/message/tag/TagManager;->addWeightedTags(Lcom/umeng/message/tag/TagManager$TCallBack;Ljava/util/Hashtable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/message/tag/TagManager$TCallBack;

.field final synthetic b:Ljava/util/Hashtable;

.field final synthetic c:Lcom/umeng/message/tag/TagManager;


# direct methods
.method constructor <init>(Lcom/umeng/message/tag/TagManager;Lcom/umeng/message/tag/TagManager$TCallBack;Ljava/util/Hashtable;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/umeng/message/tag/TagManager$2;->c:Lcom/umeng/message/tag/TagManager;

    iput-object p2, p0, Lcom/umeng/message/tag/TagManager$2;->a:Lcom/umeng/message/tag/TagManager$TCallBack;

    iput-object p3, p0, Lcom/umeng/message/tag/TagManager$2;->b:Ljava/util/Hashtable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 190
    new-instance v0, Lcom/umeng/message/common/inter/ITagManager$Result;

    invoke-direct {v0}, Lcom/umeng/message/common/inter/ITagManager$Result;-><init>()V

    .line 192
    iget-object v1, p0, Lcom/umeng/message/tag/TagManager$2;->c:Lcom/umeng/message/tag/TagManager;

    invoke-static {v1}, Lcom/umeng/message/tag/TagManager;->a(Lcom/umeng/message/tag/TagManager;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 193
    const-string v1, "No utdid or device token"

    .line 194
    invoke-virtual {v0, v1}, Lcom/umeng/message/common/inter/ITagManager$Result;->setErrors(Ljava/lang/String;)V

    .line 195
    sget-object v2, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    invoke-static {}, Lcom/umeng/message/tag/TagManager;->a()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/String;

    aput-object v1, v4, v5

    invoke-interface {v2, v3, v5, v4}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lcom/umeng/message/tag/TagManager$2;->a:Lcom/umeng/message/tag/TagManager$TCallBack;

    invoke-interface {v1, v5, v0}, Lcom/umeng/message/tag/TagManager$TCallBack;->onMessage(ZLcom/umeng/message/common/inter/ITagManager$Result;)V

    .line 241
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v1, p0, Lcom/umeng/message/tag/TagManager$2;->b:Ljava/util/Hashtable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/umeng/message/tag/TagManager$2;->b:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 201
    :cond_1
    const-string v1, "No weighted tags"

    .line 202
    sget-object v2, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    invoke-static {}, Lcom/umeng/message/tag/TagManager;->a()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/String;

    aput-object v1, v4, v5

    invoke-interface {v2, v3, v5, v4}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 203
    invoke-virtual {v0, v1}, Lcom/umeng/message/common/inter/ITagManager$Result;->setErrors(Ljava/lang/String;)V

    .line 204
    iget-object v1, p0, Lcom/umeng/message/tag/TagManager$2;->a:Lcom/umeng/message/tag/TagManager$TCallBack;

    invoke-interface {v1, v5, v0}, Lcom/umeng/message/tag/TagManager$TCallBack;->onMessage(ZLcom/umeng/message/common/inter/ITagManager$Result;)V

    goto :goto_0

    .line 208
    :cond_2
    iget-object v1, p0, Lcom/umeng/message/tag/TagManager$2;->b:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    const/16 v2, 0x40

    if-le v1, v2, :cond_3

    .line 209
    const-string v1, "The maximum number of adding weighted tags per request is 64"

    .line 210
    sget-object v2, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    invoke-static {}, Lcom/umeng/message/tag/TagManager;->a()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/String;

    aput-object v1, v4, v5

    invoke-interface {v2, v3, v5, v4}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 211
    invoke-virtual {v0, v1}, Lcom/umeng/message/common/inter/ITagManager$Result;->setErrors(Ljava/lang/String;)V

    .line 212
    iget-object v1, p0, Lcom/umeng/message/tag/TagManager$2;->a:Lcom/umeng/message/tag/TagManager$TCallBack;

    invoke-interface {v1, v5, v0}, Lcom/umeng/message/tag/TagManager$TCallBack;->onMessage(ZLcom/umeng/message/common/inter/ITagManager$Result;)V

    goto :goto_0

    .line 216
    :cond_3
    iget-object v1, p0, Lcom/umeng/message/tag/TagManager$2;->c:Lcom/umeng/message/tag/TagManager;

    iget-object v2, p0, Lcom/umeng/message/tag/TagManager$2;->c:Lcom/umeng/message/tag/TagManager;

    .line 217
    invoke-static {v2}, Lcom/umeng/message/tag/TagManager;->c(Lcom/umeng/message/tag/TagManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/message/MessageSharedPrefs;->getAddWeightedTagsInterval()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/message/tag/TagManager$2;->b:Ljava/util/Hashtable;

    .line 216
    invoke-static {v1, v2, v3}, Lcom/umeng/message/tag/TagManager;->a(Lcom/umeng/message/tag/TagManager;Ljava/lang/String;Ljava/util/Hashtable;)Ljava/lang/String;

    move-result-object v1

    .line 219
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 220
    sget-object v2, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    invoke-static {}, Lcom/umeng/message/tag/TagManager;->a()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/String;

    aput-object v1, v4, v5

    invoke-interface {v2, v3, v5, v4}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 221
    invoke-virtual {v0, v1}, Lcom/umeng/message/common/inter/ITagManager$Result;->setErrors(Ljava/lang/String;)V

    .line 222
    iget-object v1, p0, Lcom/umeng/message/tag/TagManager$2;->a:Lcom/umeng/message/tag/TagManager$TCallBack;

    invoke-interface {v1, v5, v0}, Lcom/umeng/message/tag/TagManager$TCallBack;->onMessage(ZLcom/umeng/message/common/inter/ITagManager$Result;)V

    goto :goto_0

    .line 227
    :cond_4
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 228
    iget-object v0, p0, Lcom/umeng/message/tag/TagManager$2;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 229
    iget-object v1, p0, Lcom/umeng/message/tag/TagManager$2;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 230
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 235
    :catch_0
    move-exception v0

    .line 236
    if-eqz v0, :cond_5

    .line 237
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 239
    :cond_5
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    invoke-static {}, Lcom/umeng/message/tag/TagManager;->a()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\u6dfb\u52a0\u52a0\u6743\u6807\u7b7e\u5f02\u5e38"

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v5, v2}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 232
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/umeng/message/tag/TagManager$2;->c:Lcom/umeng/message/tag/TagManager;

    invoke-static {v0}, Lcom/umeng/message/tag/TagManager;->e(Lcom/umeng/message/tag/TagManager;)Lorg/json/JSONObject;

    move-result-object v0

    .line 233
    const-string v1, "tags"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 234
    iget-object v1, p0, Lcom/umeng/message/tag/TagManager$2;->a:Lcom/umeng/message/tag/TagManager$TCallBack;

    const/4 v2, 0x1

    invoke-static {}, Lcom/umeng/message/tag/TagManager;->b()Lcom/umeng/message/common/inter/ITagManager;

    move-result-object v3

    iget-object v4, p0, Lcom/umeng/message/tag/TagManager$2;->b:Ljava/util/Hashtable;

    invoke-interface {v3, v0, v4}, Lcom/umeng/message/common/inter/ITagManager;->addWeightedTags(Lorg/json/JSONObject;Ljava/util/Hashtable;)Lcom/umeng/message/common/inter/ITagManager$Result;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/umeng/message/tag/TagManager$TCallBack;->onMessage(ZLcom/umeng/message/common/inter/ITagManager$Result;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
