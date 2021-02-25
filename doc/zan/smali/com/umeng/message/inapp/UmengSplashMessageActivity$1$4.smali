.class Lcom/umeng/message/inapp/UmengSplashMessageActivity$1$4;
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
    .line 135
    iput-object p1, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1$4;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    .prologue
    const/4 v3, 0x1

    .line 138
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1$4;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;

    iget-object v0, v0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    iget-object v1, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1$4;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;

    iget-object v1, v1, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v1}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->d(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-object v1, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1$4;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;

    iget-object v1, v1, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v1}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->e(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    add-long/2addr v4, v6

    invoke-static {v0, v4, v5}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->a(Lcom/umeng/message/inapp/UmengSplashMessageActivity;J)J

    .line 139
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1$4;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;

    iget-object v0, v0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->f(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/message/inapp/e;->a(Landroid/content/Context;)Lcom/umeng/message/inapp/e;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1$4;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;

    iget-object v1, v1, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v1}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->c(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Lcom/umeng/message/entity/UInAppMessage;

    move-result-object v1

    iget-object v1, v1, Lcom/umeng/message/entity/UInAppMessage;->msg_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1$4;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;

    iget-object v2, v2, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    .line 140
    invoke-static {v2}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->c(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Lcom/umeng/message/entity/UInAppMessage;

    move-result-object v2

    iget v2, v2, Lcom/umeng/message/entity/UInAppMessage;->msg_type:I

    iget-object v4, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1$4;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;

    iget-object v4, v4, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    iget-object v5, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1$4;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;

    iget-object v5, v5, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v5}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->n(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->c(Lcom/umeng/message/inapp/UmengSplashMessageActivity;Z)I

    move-result v4

    iget-object v5, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1$4;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;

    iget-object v5, v5, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    iget-object v6, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1$4;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;

    iget-object v6, v6, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v6}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->l(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Z

    move-result v6

    invoke-static {v5, v6}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->c(Lcom/umeng/message/inapp/UmengSplashMessageActivity;Z)I

    move-result v5

    iget-object v6, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1$4;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;

    iget-object v6, v6, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    iget-object v7, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1$4;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;

    iget-object v7, v7, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    .line 141
    invoke-static {v7}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->k(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Z

    move-result v7

    invoke-static {v6, v7}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->c(Lcom/umeng/message/inapp/UmengSplashMessageActivity;Z)I

    move-result v6

    iget-object v7, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1$4;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;

    iget-object v7, v7, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v7}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->d(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)J

    move-result-wide v8

    long-to-int v8, v8

    const/4 v9, 0x0

    move v7, v3

    .line 139
    invoke-virtual/range {v0 .. v9}, Lcom/umeng/message/inapp/e;->a(Ljava/lang/String;IIIIIIII)V

    .line 142
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1$4;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;

    iget-object v0, v0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->g(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)V

    .line 143
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1$4;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;

    iget-object v0, v0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-virtual {v0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->finish()V

    .line 144
    return-void
.end method
