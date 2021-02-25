.class Lcom/umeng/message/UTrack$7;
.super Ljava/lang/Object;
.source "UTrack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/message/UTrack;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/message/UTrack;


# direct methods
.method constructor <init>(Lcom/umeng/message/UTrack;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/umeng/message/UTrack$7;->a:Lcom/umeng/message/UTrack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 343
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 344
    iget-object v0, p0, Lcom/umeng/message/UTrack$7;->a:Lcom/umeng/message/UTrack;

    invoke-static {v0}, Lcom/umeng/message/UTrack;->a(Lcom/umeng/message/UTrack;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/message/proguard/l;->a(Landroid/content/Context;)Lcom/umeng/message/proguard/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/proguard/l;->a()Ljava/util/ArrayList;

    move-result-object v3

    .line 345
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 346
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 347
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/proguard/l$a;

    .line 348
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 349
    const-string v5, "ts"

    iget-wide v6, v0, Lcom/umeng/message/proguard/l$a;->b:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 350
    const-string v5, "pa"

    iget-object v6, v0, Lcom/umeng/message/proguard/l$a;->d:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 351
    const-string v5, "device_token"

    iget-object v6, p0, Lcom/umeng/message/UTrack$7;->a:Lcom/umeng/message/UTrack;

    invoke-static {v6}, Lcom/umeng/message/UTrack;->a(Lcom/umeng/message/UTrack;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v6

    invoke-virtual {v6}, Lcom/umeng/message/MessageSharedPrefs;->getDeviceToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 352
    const-string v5, "msg_id"

    iget-object v6, v0, Lcom/umeng/message/proguard/l$a;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 353
    const-string v5, "action_type"

    iget v0, v0, Lcom/umeng/message/proguard/l$a;->c:I

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 354
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 346
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/umeng/message/UTrack$7;->a:Lcom/umeng/message/UTrack;

    invoke-static {v0}, Lcom/umeng/message/UTrack;->a(Lcom/umeng/message/UTrack;)Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/stateless/UMSLEnvelopeBuild;->mContext:Landroid/content/Context;

    .line 358
    new-instance v1, Lcom/umeng/commonsdk/stateless/UMSLEnvelopeBuild;

    invoke-direct {v1}, Lcom/umeng/commonsdk/stateless/UMSLEnvelopeBuild;-><init>()V

    .line 359
    iget-object v0, p0, Lcom/umeng/message/UTrack$7;->a:Lcom/umeng/message/UTrack;

    invoke-static {v0}, Lcom/umeng/message/UTrack;->a(Lcom/umeng/message/UTrack;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/umeng/commonsdk/stateless/UMSLEnvelopeBuild;->buildSLBaseHeader(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v3

    .line 360
    const-string v0, "header"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 361
    const-string v4, "din"

    iget-object v5, p0, Lcom/umeng/message/UTrack$7;->a:Lcom/umeng/message/UTrack;

    invoke-static {v5}, Lcom/umeng/message/UTrack;->a(Lcom/umeng/message/UTrack;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/umeng/message/common/UmengMessageDeviceConfig;->getDINAes(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 362
    const-string v4, "p_sdk_v"

    const-string v5, "4.1.0"

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 363
    const-string v4, "umid"

    iget-object v5, p0, Lcom/umeng/message/UTrack$7;->a:Lcom/umeng/message/UTrack;

    invoke-static {v5}, Lcom/umeng/message/UTrack;->a(Lcom/umeng/message/UTrack;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/umeng/message/common/UmengMessageDeviceConfig;->getUmid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 364
    const-string v4, "header"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 365
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 366
    const-string v4, "push"

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 368
    iget-object v4, p0, Lcom/umeng/message/UTrack$7;->a:Lcom/umeng/message/UTrack;

    invoke-static {v4}, Lcom/umeng/message/UTrack;->a(Lcom/umeng/message/UTrack;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/umeng/message/proguard/h;->d(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 369
    iget-object v4, p0, Lcom/umeng/message/UTrack$7;->a:Lcom/umeng/message/UTrack;

    invoke-static {v4}, Lcom/umeng/message/UTrack;->a(Lcom/umeng/message/UTrack;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "umpx_push_logs"

    invoke-virtual {v1, v4, v3, v0, v5}, Lcom/umeng/commonsdk/stateless/UMSLEnvelopeBuild;->buildSLEnvelope(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 370
    if-eqz v0, :cond_1

    const-string v1, "exception"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 371
    iget-object v0, p0, Lcom/umeng/message/UTrack$7;->a:Lcom/umeng/message/UTrack;

    invoke-static {v0, v2}, Lcom/umeng/message/UTrack;->a(Lcom/umeng/message/UTrack;Lorg/json/JSONArray;)V

    .line 388
    :cond_1
    :goto_1
    return-void

    .line 374
    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 375
    const-string v2, "jsonHeader"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 376
    const-string v2, "jsonBody"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 377
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 378
    iget-object v2, p0, Lcom/umeng/message/UTrack$7;->a:Lcom/umeng/message/UTrack;

    invoke-static {v2}, Lcom/umeng/message/UTrack;->a(Lcom/umeng/message/UTrack;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 379
    const-string v2, "com.umeng.message.message.sendmessage.action"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 380
    const-string v2, "KEY_UMPX_PATH"

    const-string v3, "umpx_push_logs"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    const-string v2, "KEY_SENDMESSAGE"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    iget-object v1, p0, Lcom/umeng/message/UTrack$7;->a:Lcom/umeng/message/UTrack;

    invoke-static {v1}, Lcom/umeng/message/UTrack;->a(Lcom/umeng/message/UTrack;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 385
    :catch_0
    move-exception v0

    .line 386
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
