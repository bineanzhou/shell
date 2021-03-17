.class Lcom/umeng/message/inapp/e$2;
.super Ljava/lang/Object;
.source "UmengInAppMessageTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/message/inapp/e;->a(Ljava/lang/String;Lcom/umeng/message/inapp/IUmengInAppMessageCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/umeng/message/inapp/IUmengInAppMessageCallback;

.field final synthetic c:Lcom/umeng/message/inapp/e;


# direct methods
.method constructor <init>(Lcom/umeng/message/inapp/e;Ljava/lang/String;Lcom/umeng/message/inapp/IUmengInAppMessageCallback;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/umeng/message/inapp/e$2;->c:Lcom/umeng/message/inapp/e;

    iput-object p2, p0, Lcom/umeng/message/inapp/e$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/umeng/message/inapp/e$2;->b:Lcom/umeng/message/inapp/IUmengInAppMessageCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 106
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    invoke-static {}, Lcom/umeng/message/inapp/e;->a()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "get card message begin"

    aput-object v4, v3, v5

    invoke-interface {v0, v2, v6, v3}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/umeng/message/inapp/e$2;->c:Lcom/umeng/message/inapp/e;

    invoke-static {v0}, Lcom/umeng/message/inapp/e;->a(Lcom/umeng/message/inapp/e;)Lorg/json/JSONObject;

    move-result-object v0

    .line 110
    const-string v2, "label"

    iget-object v3, p0, Lcom/umeng/message/inapp/e$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    sget-object v2, Lcom/umeng/message/MsgConstant;->CARD_MSG_ENDPOINT:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/umeng/message/common/impl/json/JUtrack;->sendRequest(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 112
    if-eqz v2, :cond_1

    const-string v3, "success"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ok"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 113
    sget-object v3, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    invoke-static {}, Lcom/umeng/message/inapp/e;->a()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get card message success"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v3, v4, v5, v6}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 114
    const-string v3, "data"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 115
    const-string v3, "pduration"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    sput v3, Lcom/umeng/message/inapp/InAppMessageManager;->b:I

    .line 116
    const-string v3, "sduration"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    sput v3, Lcom/umeng/message/inapp/InAppMessageManager;->c:I

    .line 117
    const-string v3, "card"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 118
    iget-object v3, p0, Lcom/umeng/message/inapp/e$2;->b:Lcom/umeng/message/inapp/IUmengInAppMessageCallback;

    new-instance v4, Lcom/umeng/message/entity/UInAppMessage;

    invoke-direct {v4, v2}, Lcom/umeng/message/entity/UInAppMessage;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v3, v4}, Lcom/umeng/message/inapp/IUmengInAppMessageCallback;->onCardMessage(Lcom/umeng/message/entity/UInAppMessage;)V

    .line 119
    iget-object v2, p0, Lcom/umeng/message/inapp/e$2;->c:Lcom/umeng/message/inapp/e;

    invoke-static {v2}, Lcom/umeng/message/inapp/e;->b(Lcom/umeng/message/inapp/e;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/message/inapp/InAppMessageManager;->getInstance(Landroid/content/Context;)Lcom/umeng/message/inapp/InAppMessageManager;

    move-result-object v2

    const-string v3, "label"

    const-string v4, ""

    .line 120
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-virtual {v2, v0}, Lcom/umeng/message/inapp/InAppMessageManager;->a(Ljava/lang/String;)V

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    if-eqz v2, :cond_2

    const-string v0, "success"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "fail"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "error"

    .line 122
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "no message"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    iget-object v0, p0, Lcom/umeng/message/inapp/e$2;->c:Lcom/umeng/message/inapp/e;

    invoke-static {v0}, Lcom/umeng/message/inapp/e;->b(Lcom/umeng/message/inapp/e;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/message/inapp/InAppMessageManager;->getInstance(Landroid/content/Context;)Lcom/umeng/message/inapp/InAppMessageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/umeng/message/inapp/e$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/umeng/message/inapp/InAppMessageManager;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 125
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 127
    :try_start_1
    new-instance v0, Lcom/umeng/message/entity/UInAppMessage;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Lcom/umeng/message/entity/UInAppMessage;-><init>(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 131
    :goto_1
    if-eqz v0, :cond_0

    .line 132
    :try_start_2
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/umeng/message/inapp/e$2;->c:Lcom/umeng/message/inapp/e;

    invoke-static {v3}, Lcom/umeng/message/inapp/e;->b(Lcom/umeng/message/inapp/e;)Landroid/content/Context;

    move-result-object v3

    iget-object v0, v0, Lcom/umeng/message/entity/UInAppMessage;->msg_id:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/umeng/message/proguard/h;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/umeng/message/inapp/e$2;->c:Lcom/umeng/message/inapp/e;

    invoke-static {v0}, Lcom/umeng/message/inapp/e;->b(Lcom/umeng/message/inapp/e;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/message/inapp/InAppMessageManager;->getInstance(Landroid/content/Context;)Lcom/umeng/message/inapp/InAppMessageManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/umeng/message/inapp/InAppMessageManager;->a(Ljava/io/File;)V

    .line 134
    iget-object v0, p0, Lcom/umeng/message/inapp/e$2;->c:Lcom/umeng/message/inapp/e;

    invoke-static {v0}, Lcom/umeng/message/inapp/e;->b(Lcom/umeng/message/inapp/e;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/message/inapp/InAppMessageManager;->getInstance(Landroid/content/Context;)Lcom/umeng/message/inapp/InAppMessageManager;

    move-result-object v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/umeng/message/inapp/e$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/umeng/message/inapp/InAppMessageManager;->a(Lcom/umeng/message/entity/UInAppMessage;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    iget-object v2, p0, Lcom/umeng/message/inapp/e$2;->b:Lcom/umeng/message/inapp/IUmengInAppMessageCallback;

    invoke-interface {v2, v1}, Lcom/umeng/message/inapp/IUmengInAppMessageCallback;->onCardMessage(Lcom/umeng/message/entity/UInAppMessage;)V

    .line 142
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 128
    :catch_1
    move-exception v0

    .line 129
    :try_start_3
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v1

    goto :goto_1

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/umeng/message/inapp/e$2;->b:Lcom/umeng/message/inapp/IUmengInAppMessageCallback;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/umeng/message/inapp/IUmengInAppMessageCallback;->onCardMessage(Lcom/umeng/message/entity/UInAppMessage;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method
