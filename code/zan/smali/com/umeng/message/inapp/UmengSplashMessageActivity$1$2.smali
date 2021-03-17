.class Lcom/umeng/message/inapp/UmengSplashMessageActivity$1$2;
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
    .line 93
    iput-object p1, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1$2;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 96
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1$2;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;

    iget-object v0, v0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v0, v3}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->b(Lcom/umeng/message/inapp/UmengSplashMessageActivity;Z)Z

    .line 97
    const-string v0, "none"

    iget-object v1, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1$2;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;

    iget-object v1, v1, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v1}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->c(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Lcom/umeng/message/entity/UInAppMessage;

    move-result-object v1

    iget-object v1, v1, Lcom/umeng/message/entity/UInAppMessage;->action_type:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1$2;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;

    iget-object v0, v0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    iget-object v1, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1$2;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;

    iget-object v1, v1, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v1}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->d(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-object v1, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1$2;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;

    iget-object v1, v1, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v1}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->e(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    add-long/2addr v6, v8

    invoke-static {v0, v6, v7}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->a(Lcom/umeng/message/inapp/UmengSplashMessageActivity;J)J

    .line 101
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1$2;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;

    iget-object v0, v0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->f(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/message/inapp/e;->a(Landroid/content/Context;)Lcom/umeng/message/inapp/e;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1$2;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;

    iget-object v1, v1, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v1}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->c(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Lcom/umeng/message/entity/UInAppMessage;

    move-result-object v1

    iget-object v1, v1, Lcom/umeng/message/entity/UInAppMessage;->msg_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1$2;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;

    iget-object v2, v2, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    .line 102
    invoke-static {v2}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->c(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Lcom/umeng/message/entity/UInAppMessage;

    move-result-object v2

    iget v2, v2, Lcom/umeng/message/entity/UInAppMessage;->msg_type:I

    iget-object v5, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1$2;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;

    iget-object v5, v5, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    iget-object v6, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1$2;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;

    iget-object v6, v6, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v6}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->k(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Z

    move-result v6

    invoke-static {v5, v6}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->c(Lcom/umeng/message/inapp/UmengSplashMessageActivity;Z)I

    move-result v6

    iget-object v5, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1$2;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;

    iget-object v5, v5, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v5}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->d(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)J

    move-result-wide v8

    long-to-int v8, v8

    move v5, v3

    move v7, v4

    move v9, v4

    .line 101
    invoke-virtual/range {v0 .. v9}, Lcom/umeng/message/inapp/e;->a(Ljava/lang/String;IIIIIIII)V

    .line 103
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1$2;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;

    iget-object v0, v0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->g(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)V

    .line 104
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1$2;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;

    iget-object v0, v0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->h(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Lcom/umeng/message/inapp/d;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1$2;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;

    iget-object v1, v1, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v1}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->f(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1$2;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;

    iget-object v2, v2, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v2}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->c(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Lcom/umeng/message/entity/UInAppMessage;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Lcom/umeng/message/inapp/d;->handleInAppMessage(Landroid/app/Activity;Lcom/umeng/message/entity/UInAppMessage;I)V

    .line 105
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1$2;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;

    iget-object v0, v0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-virtual {v0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->finish()V

    goto/16 :goto_0
.end method
