.class Lcom/umeng/message/inapp/UmengSplashMessageActivity$1$1;
.super Ljava/lang/Object;
.source "UmengSplashMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->onLoadImage([Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;


# direct methods
.method constructor <init>(Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 76
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;

    iget-object v0, v0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v0, v3}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->a(Lcom/umeng/message/inapp/UmengSplashMessageActivity;Z)Z

    .line 77
    const-string v0, "none"

    iget-object v1, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;

    iget-object v1, v1, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v1}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->c(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Lcom/umeng/message/entity/UInAppMessage;

    move-result-object v1

    iget-object v1, v1, Lcom/umeng/message/entity/UInAppMessage;->action_type:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;

    iget-object v0, v0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    iget-object v1, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;

    iget-object v1, v1, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v1}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->d(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-object v1, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;

    iget-object v1, v1, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v1}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->e(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    add-long/2addr v6, v8

    invoke-static {v0, v6, v7}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->a(Lcom/umeng/message/inapp/UmengSplashMessageActivity;J)J

    .line 81
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;

    iget-object v0, v0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->f(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/message/inapp/e;->a(Landroid/content/Context;)Lcom/umeng/message/inapp/e;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;

    iget-object v1, v1, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v1}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->c(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Lcom/umeng/message/entity/UInAppMessage;

    move-result-object v1

    iget-object v1, v1, Lcom/umeng/message/entity/UInAppMessage;->msg_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;

    iget-object v2, v2, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    .line 82
    invoke-static {v2}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->c(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Lcom/umeng/message/entity/UInAppMessage;

    move-result-object v2

    iget v2, v2, Lcom/umeng/message/entity/UInAppMessage;->msg_type:I

    iget-object v4, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;

    iget-object v4, v4, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v4}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->d(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)J

    move-result-wide v6

    long-to-int v8, v6

    move v4, v3

    move v6, v5

    move v7, v5

    move v9, v5

    .line 81
    invoke-virtual/range {v0 .. v9}, Lcom/umeng/message/inapp/e;->a(Ljava/lang/String;IIIIIIII)V

    .line 83
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;

    iget-object v0, v0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->g(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)V

    .line 84
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;

    iget-object v0, v0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->h(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Lcom/umeng/message/inapp/d;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;

    iget-object v1, v1, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v1}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->f(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;

    iget-object v2, v2, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v2}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->c(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Lcom/umeng/message/entity/UInAppMessage;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Lcom/umeng/message/inapp/d;->handleInAppMessage(Landroid/app/Activity;Lcom/umeng/message/entity/UInAppMessage;I)V

    .line 85
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;

    iget-object v0, v0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-virtual {v0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->finish()V

    goto :goto_0
.end method
