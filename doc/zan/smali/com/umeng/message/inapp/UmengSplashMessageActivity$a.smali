.class Lcom/umeng/message/inapp/UmengSplashMessageActivity$a;
.super Lcom/umeng/message/inapp/c;
.source "UmengSplashMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/message/inapp/UmengSplashMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;


# direct methods
.method constructor <init>(Lcom/umeng/message/inapp/UmengSplashMessageActivity;JJ)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$a;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    .line 374
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/umeng/message/inapp/c;-><init>(JJ)V

    .line 375
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 7

    .prologue
    .line 379
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$a;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->s(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$a;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->m(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 381
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$a;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->m(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v2, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v2, v4

    invoke-static {}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->a()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$a;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    .line 382
    invoke-static {v2}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->c(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Lcom/umeng/message/entity/UInAppMessage;

    move-result-object v2

    iget-object v2, v2, Lcom/umeng/message/entity/UInAppMessage;->display_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 381
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    :cond_0
    return-void
.end method

.method public e()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 388
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$a;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->a(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$a;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->s(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    :goto_0
    return-void

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$a;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->s(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 392
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$a;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->f(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/message/inapp/e;->a(Landroid/content/Context;)Lcom/umeng/message/inapp/e;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$a;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v1}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->c(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Lcom/umeng/message/entity/UInAppMessage;

    move-result-object v1

    iget-object v1, v1, Lcom/umeng/message/entity/UInAppMessage;->msg_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$a;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    .line 393
    invoke-static {v2}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->c(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Lcom/umeng/message/entity/UInAppMessage;

    move-result-object v2

    iget v2, v2, Lcom/umeng/message/entity/UInAppMessage;->msg_type:I

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$a;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    iget-object v5, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$a;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v5}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->n(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->c(Lcom/umeng/message/inapp/UmengSplashMessageActivity;Z)I

    move-result v4

    iget-object v5, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$a;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    iget-object v6, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$a;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v6}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->l(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Z

    move-result v6

    invoke-static {v5, v6}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->c(Lcom/umeng/message/inapp/UmengSplashMessageActivity;Z)I

    move-result v5

    iget-object v6, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$a;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    iget-object v8, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$a;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    .line 394
    invoke-static {v8}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->k(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Z

    move-result v8

    invoke-static {v6, v8}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->c(Lcom/umeng/message/inapp/UmengSplashMessageActivity;Z)I

    move-result v6

    iget-object v8, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$a;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v8}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->c(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Lcom/umeng/message/entity/UInAppMessage;

    move-result-object v8

    iget v8, v8, Lcom/umeng/message/entity/UInAppMessage;->display_time:I

    mul-int/lit16 v8, v8, 0x3e8

    move v9, v7

    .line 392
    invoke-virtual/range {v0 .. v9}, Lcom/umeng/message/inapp/e;->a(Ljava/lang/String;IIIIIIII)V

    .line 396
    :cond_1
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$a;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->g(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)V

    .line 397
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$a;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-virtual {v0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->finish()V

    goto :goto_0
.end method
