.class Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;
.super Ljava/lang/Object;
.source "UmengSplashMessageActivity.java"

# interfaces
.implements Lcom/umeng/message/inapp/UImageLoadTask$ImageLoaderCallback;


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
    .line 60
    iput-object p1, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadImage([Landroid/graphics/Bitmap;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 63
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->a(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->b(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Lcom/umeng/message/inapp/UmengSplashMessageActivity$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->b(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Lcom/umeng/message/inapp/UmengSplashMessageActivity$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity$a;->a()V

    .line 68
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->a(Lcom/umeng/message/inapp/UmengSplashMessageActivity;Lcom/umeng/message/inapp/UmengSplashMessageActivity$a;)Lcom/umeng/message/inapp/UmengSplashMessageActivity$a;

    .line 72
    :cond_1
    :try_start_0
    array-length v0, p1

    if-ne v0, v2, :cond_2

    .line 73
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->i(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1$1;

    invoke-direct {v1, p0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1$1;-><init>(Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->j(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->i(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 90
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    iget-object v1, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v1}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->i(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->a(Lcom/umeng/message/inapp/UmengSplashMessageActivity;Landroid/view/View;)V

    .line 92
    :cond_2
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 93
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->i(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1$2;

    invoke-direct {v1, p0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1$2;-><init>(Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->j(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1$3;

    invoke-direct {v1, p0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1$3;-><init>(Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->i(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 124
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->j(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 125
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    iget-object v1, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v1}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->i(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->a(Lcom/umeng/message/inapp/UmengSplashMessageActivity;Landroid/view/View;)V

    .line 126
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    iget-object v1, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v1}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->j(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->a(Lcom/umeng/message/inapp/UmengSplashMessageActivity;Landroid/view/View;)V

    .line 129
    :cond_3
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->b(Lcom/umeng/message/inapp/UmengSplashMessageActivity;J)J

    .line 131
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->c(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Lcom/umeng/message/entity/UInAppMessage;

    move-result-object v0

    iget-boolean v0, v0, Lcom/umeng/message/entity/UInAppMessage;->display_button:Z

    if-nez v0, :cond_4

    .line 132
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->m(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    :goto_1
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->f(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/message/inapp/InAppMessageManager;->getInstance(Landroid/content/Context;)Lcom/umeng/message/inapp/InAppMessageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v1}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->c(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Lcom/umeng/message/entity/UInAppMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/message/inapp/InAppMessageManager;->a(Lcom/umeng/message/entity/UInAppMessage;)V

    .line 149
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->f(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/message/inapp/InAppMessageManager;->getInstance(Landroid/content/Context;)Lcom/umeng/message/inapp/InAppMessageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v1}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->c(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Lcom/umeng/message/entity/UInAppMessage;

    move-result-object v1

    iget-object v1, v1, Lcom/umeng/message/entity/UInAppMessage;->msg_id:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/umeng/message/inapp/InAppMessageManager;->a(Ljava/lang/String;I)V

    .line 150
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->f(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/message/inapp/InAppMessageManager;->getInstance(Landroid/content/Context;)Lcom/umeng/message/inapp/InAppMessageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/inapp/InAppMessageManager;->h()V

    .line 152
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->e(Lcom/umeng/message/inapp/UmengSplashMessageActivity;Z)Z

    .line 153
    iget-object v6, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    new-instance v0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$a;

    iget-object v1, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    iget-object v2, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v2}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->c(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Lcom/umeng/message/entity/UInAppMessage;

    move-result-object v2

    iget v2, v2, Lcom/umeng/message/entity/UInAppMessage;->display_time:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    .line 154
    invoke-static {}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->a()I

    move-result v4

    int-to-long v4, v4

    invoke-direct/range {v0 .. v5}, Lcom/umeng/message/inapp/UmengSplashMessageActivity$a;-><init>(Lcom/umeng/message/inapp/UmengSplashMessageActivity;JJ)V

    .line 153
    invoke-static {v6, v0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->b(Lcom/umeng/message/inapp/UmengSplashMessageActivity;Lcom/umeng/message/inapp/UmengSplashMessageActivity$a;)Lcom/umeng/message/inapp/UmengSplashMessageActivity$a;

    .line 155
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->o(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Lcom/umeng/message/inapp/UmengSplashMessageActivity$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity$a;->b()Lcom/umeng/message/inapp/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 134
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->m(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;->a:Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-static {v0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->m(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1$4;

    invoke-direct {v1, p0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1$4;-><init>(Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method
