.class Lcom/umeng/message/inapp/e$1;
.super Ljava/lang/Object;
.source "UmengInAppMessageTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/message/inapp/e;->a(Lcom/umeng/message/inapp/IUmengInAppMessageCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/message/inapp/IUmengInAppMessageCallback;

.field final synthetic b:Lcom/umeng/message/inapp/e;


# direct methods
.method constructor <init>(Lcom/umeng/message/inapp/e;Lcom/umeng/message/inapp/IUmengInAppMessageCallback;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/umeng/message/inapp/e$1;->b:Lcom/umeng/message/inapp/e;

    iput-object p2, p0, Lcom/umeng/message/inapp/e$1;->a:Lcom/umeng/message/inapp/IUmengInAppMessageCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 57
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    invoke-static {}, Lcom/umeng/message/inapp/e;->a()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "get splash message begin"

    aput-object v4, v3, v5

    invoke-interface {v0, v2, v6, v3}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/umeng/message/inapp/e$1;->b:Lcom/umeng/message/inapp/e;

    invoke-static {v0}, Lcom/umeng/message/inapp/e;->a(Lcom/umeng/message/inapp/e;)Lorg/json/JSONObject;

    move-result-object v0

    .line 61
    sget-object v2, Lcom/umeng/message/MsgConstant;->SPLASH_MSG_ENDPOINT:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/umeng/message/common/impl/json/JUtrack;->sendRequest(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_1

    const-string v2, "success"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ok"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    sget-object v2, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    invoke-static {}, Lcom/umeng/message/inapp/e;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get splash message success"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v2, v3, v4, v5}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 64
    const-string v2, "data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 65
    const-string v2, "pduration"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    sput v2, Lcom/umeng/message/inapp/InAppMessageManager;->b:I

    .line 66
    const-string v2, "sduration"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    sput v2, Lcom/umeng/message/inapp/InAppMessageManager;->c:I

    .line 67
    const-string v2, "launch"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 68
    iget-object v2, p0, Lcom/umeng/message/inapp/e$1;->a:Lcom/umeng/message/inapp/IUmengInAppMessageCallback;

    new-instance v3, Lcom/umeng/message/entity/UInAppMessage;

    invoke-direct {v3, v0}, Lcom/umeng/message/entity/UInAppMessage;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v2, v3}, Lcom/umeng/message/inapp/IUmengInAppMessageCallback;->onSplashMessage(Lcom/umeng/message/entity/UInAppMessage;)V

    .line 69
    iget-object v0, p0, Lcom/umeng/message/inapp/e$1;->b:Lcom/umeng/message/inapp/e;

    invoke-static {v0}, Lcom/umeng/message/inapp/e;->b(Lcom/umeng/message/inapp/e;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/message/inapp/InAppMessageManager;->getInstance(Landroid/content/Context;)Lcom/umeng/message/inapp/InAppMessageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/inapp/InAppMessageManager;->c()V

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    if-eqz v0, :cond_2

    const-string v2, "success"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "fail"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "error"

    .line 71
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "no message"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    iget-object v0, p0, Lcom/umeng/message/inapp/e$1;->b:Lcom/umeng/message/inapp/e;

    invoke-static {v0}, Lcom/umeng/message/inapp/e;->b(Lcom/umeng/message/inapp/e;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/message/inapp/InAppMessageManager;->getInstance(Landroid/content/Context;)Lcom/umeng/message/inapp/InAppMessageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/inapp/InAppMessageManager;->e()Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 76
    :try_start_1
    new-instance v0, Lcom/umeng/message/entity/UInAppMessage;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Lcom/umeng/message/entity/UInAppMessage;-><init>(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 80
    :goto_1
    if-eqz v0, :cond_0

    .line 81
    :try_start_2
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/umeng/message/inapp/e$1;->b:Lcom/umeng/message/inapp/e;

    invoke-static {v3}, Lcom/umeng/message/inapp/e;->b(Lcom/umeng/message/inapp/e;)Landroid/content/Context;

    move-result-object v3

    iget-object v0, v0, Lcom/umeng/message/entity/UInAppMessage;->msg_id:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/umeng/message/proguard/h;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/umeng/message/inapp/e$1;->b:Lcom/umeng/message/inapp/e;

    invoke-static {v0}, Lcom/umeng/message/inapp/e;->b(Lcom/umeng/message/inapp/e;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/message/inapp/InAppMessageManager;->getInstance(Landroid/content/Context;)Lcom/umeng/message/inapp/InAppMessageManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/umeng/message/inapp/InAppMessageManager;->a(Ljava/io/File;)V

    .line 83
    iget-object v0, p0, Lcom/umeng/message/inapp/e$1;->b:Lcom/umeng/message/inapp/e;

    invoke-static {v0}, Lcom/umeng/message/inapp/e;->b(Lcom/umeng/message/inapp/e;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/message/inapp/InAppMessageManager;->getInstance(Landroid/content/Context;)Lcom/umeng/message/inapp/InAppMessageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/umeng/message/inapp/InAppMessageManager;->a(Lcom/umeng/message/entity/UInAppMessage;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    iget-object v2, p0, Lcom/umeng/message/inapp/e$1;->a:Lcom/umeng/message/inapp/IUmengInAppMessageCallback;

    invoke-interface {v2, v1}, Lcom/umeng/message/inapp/IUmengInAppMessageCallback;->onSplashMessage(Lcom/umeng/message/entity/UInAppMessage;)V

    .line 91
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 77
    :catch_1
    move-exception v0

    .line 78
    :try_start_3
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v1

    goto :goto_1

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/umeng/message/inapp/e$1;->a:Lcom/umeng/message/inapp/IUmengInAppMessageCallback;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/umeng/message/inapp/IUmengInAppMessageCallback;->onSplashMessage(Lcom/umeng/message/entity/UInAppMessage;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method
