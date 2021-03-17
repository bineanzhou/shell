.class public Lcom/umeng/message/common/impl/json/JTagManager;
.super Ljava/lang/Object;
.source "JTagManager.java"

# interfaces
.implements Lcom/umeng/message/common/inter/ITagManager;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/umeng/message/common/impl/json/JTagManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/message/common/impl/json/JTagManager;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/umeng/message/common/impl/json/JTagManager;->b:Landroid/content/Context;

    .line 27
    return-void
.end method


# virtual methods
.method public varargs addTags(Lorg/json/JSONObject;[Ljava/lang/String;)Lcom/umeng/message/common/inter/ITagManager$Result;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 32
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/umeng/message/MsgConstant;->TAG_ENDPOINT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/add"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 35
    :try_start_0
    invoke-static {p1, v0}, Lcom/umeng/message/common/impl/json/JUtrack;->sendRequest(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 46
    :goto_0
    new-instance v1, Lcom/umeng/message/common/inter/ITagManager$Result;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/umeng/message/common/inter/ITagManager$Result;-><init>(Lorg/json/JSONObject;Z)V

    .line 48
    iget-object v0, v1, Lcom/umeng/message/common/inter/ITagManager$Result;->status:Ljava/lang/String;

    const-string v2, "ok"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/umeng/message/common/impl/json/JTagManager;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/umeng/message/MessageSharedPrefs;->addTags([Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/umeng/message/common/impl/json/JTagManager;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    iget v2, v1, Lcom/umeng/message/common/inter/ITagManager$Result;->remain:I

    invoke-virtual {v0, v2}, Lcom/umeng/message/MessageSharedPrefs;->setTagRemain(I)V

    .line 52
    iget-object v0, p0, Lcom/umeng/message/common/impl/json/JTagManager;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    invoke-virtual {v1}, Lcom/umeng/message/common/inter/ITagManager$Result;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/umeng/message/MessageSharedPrefs;->add_addTagsInterval(Ljava/lang/String;)V

    .line 55
    :cond_0
    return-object v1

    .line 36
    :catch_0
    move-exception v1

    .line 37
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "java.net.UnknownHostException"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/umeng/message/common/impl/json/JTagManager;->b:Landroid/content/Context;

    .line 38
    invoke-static {v2}, Lcom/umeng/message/common/UmengMessageDeviceConfig;->isOnline(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 39
    sget-object v1, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v2, Lcom/umeng/message/common/impl/json/JTagManager;->a:Ljava/lang/String;

    const/4 v3, 0x2

    const-string v4, "\u6dfb\u52a0tag UnknownHostException"

    invoke-interface {v1, v2, v3, v4}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;ILjava/lang/String;)V

    .line 40
    iget-object v1, p0, Lcom/umeng/message/common/impl/json/JTagManager;->b:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/umeng/message/common/impl/json/JUtrack;->sendRequest(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    .line 42
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public addWeightedTags(Lorg/json/JSONObject;Ljava/util/Hashtable;)Lcom/umeng/message/common/inter/ITagManager$Result;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/umeng/message/common/inter/ITagManager$Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 60
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/umeng/message/MsgConstant;->WEIGHTED_TAG_ENDPOINT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/incr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    :try_start_0
    invoke-static {p1, v0}, Lcom/umeng/message/common/impl/json/JUtrack;->sendRequest(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 74
    :goto_0
    sget-object v1, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v2, Lcom/umeng/message/common/impl/json/JTagManager;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v4, v3}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;ILjava/lang/String;)V

    .line 76
    new-instance v1, Lcom/umeng/message/common/inter/ITagManager$Result;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/umeng/message/common/inter/ITagManager$Result;-><init>(Lorg/json/JSONObject;Z)V

    .line 77
    iget-object v0, p0, Lcom/umeng/message/common/impl/json/JTagManager;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    invoke-virtual {v1}, Lcom/umeng/message/common/inter/ITagManager$Result;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/umeng/message/MessageSharedPrefs;->setAddWeightedTagsInterval(Ljava/lang/String;)V

    .line 79
    return-object v1

    .line 64
    :catch_0
    move-exception v1

    .line 65
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "java.net.UnknownHostException"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/umeng/message/common/impl/json/JTagManager;->b:Landroid/content/Context;

    .line 66
    invoke-static {v2}, Lcom/umeng/message/common/UmengMessageDeviceConfig;->isOnline(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    sget-object v1, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v2, Lcom/umeng/message/common/impl/json/JTagManager;->a:Ljava/lang/String;

    const-string v3, "\u6dfb\u52a0\u52a0\u6743\u6807\u7b7e UnknownHostException"

    invoke-interface {v1, v2, v4, v3}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;ILjava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/umeng/message/common/impl/json/JTagManager;->b:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/umeng/message/common/impl/json/JUtrack;->sendRequest(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public varargs deleteTags(Lorg/json/JSONObject;[Ljava/lang/String;)Lcom/umeng/message/common/inter/ITagManager$Result;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 109
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/umeng/message/MsgConstant;->TAG_ENDPOINT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/delete"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    :try_start_0
    invoke-static {p1, v0}, Lcom/umeng/message/common/impl/json/JUtrack;->sendRequest(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 122
    :goto_0
    new-instance v1, Lcom/umeng/message/common/inter/ITagManager$Result;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/umeng/message/common/inter/ITagManager$Result;-><init>(Lorg/json/JSONObject;Z)V

    .line 124
    iget-object v0, v1, Lcom/umeng/message/common/inter/ITagManager$Result;->status:Ljava/lang/String;

    const-string v2, "ok"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/umeng/message/common/impl/json/JTagManager;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/umeng/message/MessageSharedPrefs;->removeTags([Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/umeng/message/common/impl/json/JTagManager;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    iget v2, v1, Lcom/umeng/message/common/inter/ITagManager$Result;->remain:I

    invoke-virtual {v0, v2}, Lcom/umeng/message/MessageSharedPrefs;->setTagRemain(I)V

    .line 128
    iget-object v0, p0, Lcom/umeng/message/common/impl/json/JTagManager;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    invoke-virtual {v1}, Lcom/umeng/message/common/inter/ITagManager$Result;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/umeng/message/MessageSharedPrefs;->add_deleteTagsInterval(Ljava/lang/String;)V

    .line 130
    :cond_0
    return-object v1

    .line 113
    :catch_0
    move-exception v1

    .line 114
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "java.net.UnknownHostException"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/umeng/message/common/impl/json/JTagManager;->b:Landroid/content/Context;

    .line 115
    invoke-static {v2}, Lcom/umeng/message/common/UmengMessageDeviceConfig;->isOnline(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 116
    iget-object v1, p0, Lcom/umeng/message/common/impl/json/JTagManager;->b:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/umeng/message/common/impl/json/JUtrack;->sendRequest(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    .line 118
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public varargs deleteWeightedTags(Lorg/json/JSONObject;[Ljava/lang/String;)Lcom/umeng/message/common/inter/ITagManager$Result;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 135
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/umeng/message/MsgConstant;->WEIGHTED_TAG_ENDPOINT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/delete"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    :try_start_0
    invoke-static {p1, v0}, Lcom/umeng/message/common/impl/json/JUtrack;->sendRequest(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 148
    :goto_0
    new-instance v1, Lcom/umeng/message/common/inter/ITagManager$Result;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/umeng/message/common/inter/ITagManager$Result;-><init>(Lorg/json/JSONObject;Z)V

    .line 149
    iget-object v0, p0, Lcom/umeng/message/common/impl/json/JTagManager;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    invoke-virtual {v1}, Lcom/umeng/message/common/inter/ITagManager$Result;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/umeng/message/MessageSharedPrefs;->setDeleteWeightedTagsInterval(Ljava/lang/String;)V

    .line 150
    return-object v1

    .line 139
    :catch_0
    move-exception v1

    .line 140
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "java.net.UnknownHostException"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/umeng/message/common/impl/json/JTagManager;->b:Landroid/content/Context;

    .line 141
    invoke-static {v2}, Lcom/umeng/message/common/UmengMessageDeviceConfig;->isOnline(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    iget-object v1, p0, Lcom/umeng/message/common/impl/json/JTagManager;->b:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/umeng/message/common/impl/json/JUtrack;->sendRequest(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    .line 144
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getTags(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 177
    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/umeng/message/MsgConstant;->TAG_ENDPOINT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/get"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    :try_start_0
    invoke-static {p1, v0}, Lcom/umeng/message/common/impl/json/JUtrack;->sendRequest(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 190
    :goto_0
    new-instance v1, Lcom/umeng/message/common/inter/ITagManager$Result;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/umeng/message/common/inter/ITagManager$Result;-><init>(Lorg/json/JSONObject;Z)V

    .line 191
    iget-object v2, v1, Lcom/umeng/message/common/inter/ITagManager$Result;->status:Ljava/lang/String;

    const-string v3, "ok"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 192
    const-string v2, "tags"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 193
    sget-object v2, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v3, Lcom/umeng/message/common/impl/json/JTagManager;->a:Ljava/lang/String;

    const/4 v4, 0x2

    const-string v5, "tags"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;ILjava/lang/String;)V

    .line 195
    iget-object v2, p0, Lcom/umeng/message/common/impl/json/JTagManager;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v2

    invoke-virtual {v1}, Lcom/umeng/message/common/inter/ITagManager$Result;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/umeng/message/MessageSharedPrefs;->add_getTagsInteral(Ljava/lang/String;)V

    .line 196
    const-string v1, "tags"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 199
    :goto_1
    return-object v0

    .line 181
    :catch_0
    move-exception v1

    .line 182
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "java.net.UnknownHostException"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/umeng/message/common/impl/json/JTagManager;->b:Landroid/content/Context;

    .line 183
    invoke-static {v2}, Lcom/umeng/message/common/UmengMessageDeviceConfig;->isOnline(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 184
    iget-object v1, p0, Lcom/umeng/message/common/impl/json/JTagManager;->b:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/umeng/message/common/impl/json/JUtrack;->sendRequest(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    .line 186
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 199
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getWeightedTags(Lorg/json/JSONObject;)Ljava/util/Hashtable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 204
    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/umeng/message/MsgConstant;->WEIGHTED_TAG_ENDPOINT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/list"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 207
    :try_start_0
    invoke-static {p1, v0}, Lcom/umeng/message/common/impl/json/JUtrack;->sendRequest(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 217
    :goto_0
    new-instance v1, Lcom/umeng/message/common/inter/ITagManager$Result;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/umeng/message/common/inter/ITagManager$Result;-><init>(Lorg/json/JSONObject;Z)V

    .line 218
    iget-object v2, p0, Lcom/umeng/message/common/impl/json/JTagManager;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v2

    invoke-virtual {v1}, Lcom/umeng/message/common/inter/ITagManager$Result;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/umeng/message/MessageSharedPrefs;->setListWeightedTagsInterval(Ljava/lang/String;)V

    .line 219
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 220
    const-string v2, "data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "tags"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 221
    if-eqz v2, :cond_1

    .line 222
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 223
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 225
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 226
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 208
    :catch_0
    move-exception v1

    .line 209
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "java.net.UnknownHostException"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/umeng/message/common/impl/json/JTagManager;->b:Landroid/content/Context;

    .line 210
    invoke-static {v2}, Lcom/umeng/message/common/UmengMessageDeviceConfig;->isOnline(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 211
    iget-object v1, p0, Lcom/umeng/message/common/impl/json/JTagManager;->b:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/umeng/message/common/impl/json/JUtrack;->sendRequest(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    .line 213
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 230
    :cond_1
    return-object v1
.end method

.method public reset(Lorg/json/JSONObject;)Lcom/umeng/message/common/inter/ITagManager$Result;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 155
    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/umeng/message/MsgConstant;->TAG_ENDPOINT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/reset"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    :try_start_0
    invoke-static {p1, v0}, Lcom/umeng/message/common/impl/json/JUtrack;->sendRequest(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 168
    :goto_0
    new-instance v1, Lcom/umeng/message/common/inter/ITagManager$Result;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/umeng/message/common/inter/ITagManager$Result;-><init>(Lorg/json/JSONObject;Z)V

    .line 169
    iget-object v0, v1, Lcom/umeng/message/common/inter/ITagManager$Result;->status:Ljava/lang/String;

    const-string v2, "ok"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/umeng/message/common/impl/json/JTagManager;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/MessageSharedPrefs;->resetTags()V

    .line 172
    :cond_0
    return-object v1

    .line 159
    :catch_0
    move-exception v1

    .line 160
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "java.net.UnknownHostException"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/umeng/message/common/impl/json/JTagManager;->b:Landroid/content/Context;

    .line 161
    invoke-static {v2}, Lcom/umeng/message/common/UmengMessageDeviceConfig;->isOnline(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 162
    iget-object v1, p0, Lcom/umeng/message/common/impl/json/JTagManager;->b:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/umeng/message/common/impl/json/JUtrack;->sendRequest(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    .line 164
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public varargs update(Lorg/json/JSONObject;[Ljava/lang/String;)Lcom/umeng/message/common/inter/ITagManager$Result;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 84
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/umeng/message/MsgConstant;->TAG_ENDPOINT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/update"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    :try_start_0
    invoke-static {p1, v0}, Lcom/umeng/message/common/impl/json/JUtrack;->sendRequest(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 97
    :goto_0
    new-instance v1, Lcom/umeng/message/common/inter/ITagManager$Result;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/umeng/message/common/inter/ITagManager$Result;-><init>(Lorg/json/JSONObject;Z)V

    .line 99
    iget-object v0, v1, Lcom/umeng/message/common/inter/ITagManager$Result;->status:Ljava/lang/String;

    const-string v2, "ok"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/umeng/message/common/impl/json/JTagManager;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/MessageSharedPrefs;->resetTags()V

    .line 101
    iget-object v0, p0, Lcom/umeng/message/common/impl/json/JTagManager;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/umeng/message/MessageSharedPrefs;->addTags([Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/umeng/message/common/impl/json/JTagManager;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    iget v2, v1, Lcom/umeng/message/common/inter/ITagManager$Result;->remain:I

    invoke-virtual {v0, v2}, Lcom/umeng/message/MessageSharedPrefs;->setTagRemain(I)V

    .line 104
    :cond_0
    return-object v1

    .line 88
    :catch_0
    move-exception v1

    .line 89
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "java.net.UnknownHostException"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/umeng/message/common/impl/json/JTagManager;->b:Landroid/content/Context;

    .line 90
    invoke-static {v2}, Lcom/umeng/message/common/UmengMessageDeviceConfig;->isOnline(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    iget-object v1, p0, Lcom/umeng/message/common/impl/json/JTagManager;->b:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/umeng/message/common/impl/json/JUtrack;->sendRequest(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    .line 93
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
