.class Lcom/umeng/message/inapp/UmengSplashMessageActivity$2;
.super Ljava/lang/Object;
.source "UmengSplashMessageActivity.java"

# interfaces
.implements Lcom/umeng/message/inapp/IUmengInAppMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/message/inapp/UmengSplashMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;


# direct methods
.method constructor <init>(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$2;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCardMessage(Lcom/umeng/message/entity/UInAppMessage;)V
    .locals 0

    .prologue
    .line 213
    return-void
.end method

.method public onSplashMessage(Lcom/umeng/message/entity/UInAppMessage;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 165
    const/4 v1, 0x0

    .line 166
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$2;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->f(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/message/inapp/InAppMessageManager;->getInstance(Landroid/content/Context;)Lcom/umeng/message/inapp/InAppMessageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/inapp/InAppMessageManager;->e()Ljava/lang/String;

    move-result-object v2

    .line 167
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 169
    :try_start_0
    new-instance v0, Lcom/umeng/message/entity/UInAppMessage;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Lcom/umeng/message/entity/UInAppMessage;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    if-eqz p1, :cond_4

    .line 176
    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/umeng/message/entity/UInAppMessage;->msg_id:Ljava/lang/String;

    iget-object v2, v0, Lcom/umeng/message/entity/UInAppMessage;->msg_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 177
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$2;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v2}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->f(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Landroid/app/Activity;

    move-result-object v2

    iget-object v0, v0, Lcom/umeng/message/entity/UInAppMessage;->msg_id:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/umeng/message/proguard/h;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$2;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->f(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/message/inapp/InAppMessageManager;->getInstance(Landroid/content/Context;)Lcom/umeng/message/inapp/InAppMessageManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/umeng/message/inapp/InAppMessageManager;->a(Ljava/io/File;)V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$2;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v0, p1}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->a(Lcom/umeng/message/inapp/UmengSplashMessageActivity;Lcom/umeng/message/entity/UInAppMessage;)Lcom/umeng/message/entity/UInAppMessage;

    .line 187
    :goto_1
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$2;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->c(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Lcom/umeng/message/entity/UInAppMessage;

    move-result-object v0

    iget v0, v0, Lcom/umeng/message/entity/UInAppMessage;->show_type:I

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$2;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->p(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$2;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->f(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/message/inapp/InAppMessageManager;->getInstance(Landroid/content/Context;)Lcom/umeng/message/inapp/InAppMessageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$2;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v1}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->c(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Lcom/umeng/message/entity/UInAppMessage;

    move-result-object v1

    iget-object v1, v1, Lcom/umeng/message/entity/UInAppMessage;->msg_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Lcom/umeng/message/inapp/InAppMessageManager;->a(Ljava/lang/String;I)V

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$2;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->f(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/message/inapp/InAppMessageManager;->getInstance(Landroid/content/Context;)Lcom/umeng/message/inapp/InAppMessageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$2;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v1}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->c(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Lcom/umeng/message/entity/UInAppMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/message/inapp/InAppMessageManager;->b(Lcom/umeng/message/entity/UInAppMessage;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$2;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    .line 192
    invoke-static {v0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->f(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/message/inapp/InAppMessageManager;->getInstance(Landroid/content/Context;)Lcom/umeng/message/inapp/InAppMessageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$2;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v1}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->c(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Lcom/umeng/message/entity/UInAppMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/message/inapp/InAppMessageManager;->c(Lcom/umeng/message/entity/UInAppMessage;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 208
    :cond_2
    :goto_2
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_3
    move-object v0, v1

    goto/16 :goto_0

    .line 181
    :cond_4
    if-eqz v0, :cond_2

    .line 182
    iget-object v1, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$2;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v1, v0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->a(Lcom/umeng/message/inapp/UmengSplashMessageActivity;Lcom/umeng/message/entity/UInAppMessage;)Lcom/umeng/message/entity/UInAppMessage;

    goto :goto_1

    .line 196
    :cond_5
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$2;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->c(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Lcom/umeng/message/entity/UInAppMessage;

    move-result-object v0

    iget v0, v0, Lcom/umeng/message/entity/UInAppMessage;->msg_type:I

    if-nez v0, :cond_6

    .line 197
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    invoke-static {}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->b()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "SPLASH_A"

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v6, v2}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$2;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    new-instance v1, Lcom/umeng/message/inapp/UImageLoadTask;

    iget-object v2, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$2;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v2}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->f(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$2;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v3}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->c(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Lcom/umeng/message/entity/UInAppMessage;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/umeng/message/inapp/UImageLoadTask;-><init>(Landroid/content/Context;Lcom/umeng/message/entity/UInAppMessage;)V

    invoke-static {v0, v1}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->a(Lcom/umeng/message/inapp/UmengSplashMessageActivity;Lcom/umeng/message/inapp/UImageLoadTask;)Lcom/umeng/message/inapp/UImageLoadTask;

    .line 199
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$2;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->r(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Lcom/umeng/message/inapp/UImageLoadTask;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$2;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v1}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->q(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Lcom/umeng/message/inapp/UImageLoadTask$ImageLoaderCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/message/inapp/UImageLoadTask;->a(Lcom/umeng/message/inapp/UImageLoadTask$ImageLoaderCallback;)V

    .line 200
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$2;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->r(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Lcom/umeng/message/inapp/UImageLoadTask;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    iget-object v2, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$2;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v2}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->c(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Lcom/umeng/message/entity/UInAppMessage;

    move-result-object v2

    iget-object v2, v2, Lcom/umeng/message/entity/UInAppMessage;->image_url:Ljava/lang/String;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/umeng/message/inapp/UImageLoadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 202
    :cond_6
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$2;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->c(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Lcom/umeng/message/entity/UInAppMessage;

    move-result-object v0

    iget v0, v0, Lcom/umeng/message/entity/UInAppMessage;->msg_type:I

    if-ne v0, v4, :cond_2

    .line 203
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    invoke-static {}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->b()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "SPLASH_B"

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v6, v2}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$2;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    new-instance v1, Lcom/umeng/message/inapp/UImageLoadTask;

    iget-object v2, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$2;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v2}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->f(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$2;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v3}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->c(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Lcom/umeng/message/entity/UInAppMessage;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/umeng/message/inapp/UImageLoadTask;-><init>(Landroid/content/Context;Lcom/umeng/message/entity/UInAppMessage;)V

    invoke-static {v0, v1}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->a(Lcom/umeng/message/inapp/UmengSplashMessageActivity;Lcom/umeng/message/inapp/UImageLoadTask;)Lcom/umeng/message/inapp/UImageLoadTask;

    .line 205
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$2;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->r(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Lcom/umeng/message/inapp/UImageLoadTask;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$2;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v1}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->q(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Lcom/umeng/message/inapp/UImageLoadTask$ImageLoaderCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/message/inapp/UImageLoadTask;->a(Lcom/umeng/message/inapp/UImageLoadTask$ImageLoaderCallback;)V

    .line 206
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$2;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->r(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Lcom/umeng/message/inapp/UImageLoadTask;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    iget-object v2, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$2;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v2}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->c(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Lcom/umeng/message/entity/UInAppMessage;

    move-result-object v2

    iget-object v2, v2, Lcom/umeng/message/entity/UInAppMessage;->image_url:Ljava/lang/String;

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$2;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v2}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->c(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Lcom/umeng/message/entity/UInAppMessage;

    move-result-object v2

    iget-object v2, v2, Lcom/umeng/message/entity/UInAppMessage;->bottom_image_url:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/umeng/message/inapp/UImageLoadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_2
.end method
