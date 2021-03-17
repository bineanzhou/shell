.class Lcom/open/likehelper/ui/WelcomeActivity$1;
.super Landroid/os/Handler;
.source "WelcomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/open/likehelper/ui/WelcomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/open/likehelper/ui/WelcomeActivity;

.field private b:I


# direct methods
.method constructor <init>(Lcom/open/likehelper/ui/WelcomeActivity;Landroid/os/Looper;)V
    .locals 1

    .prologue
    .line 42
    iput-object p1, p0, Lcom/open/likehelper/ui/WelcomeActivity$1;->a:Lcom/open/likehelper/ui/WelcomeActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 44
    const/4 v0, 0x3

    iput v0, p0, Lcom/open/likehelper/ui/WelcomeActivity$1;->b:I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 48
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 55
    iget-object v0, p0, Lcom/open/likehelper/ui/WelcomeActivity$1;->a:Lcom/open/likehelper/ui/WelcomeActivity;

    iget-object v0, v0, Lcom/open/likehelper/ui/WelcomeActivity;->mTimer:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 56
    iget-object v0, p0, Lcom/open/likehelper/ui/WelcomeActivity$1;->a:Lcom/open/likehelper/ui/WelcomeActivity;

    iget-object v0, v0, Lcom/open/likehelper/ui/WelcomeActivity;->mTimer:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/open/likehelper/ui/WelcomeActivity$1;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/open/likehelper/ui/WelcomeActivity$1;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u79d2\u8df3\u8fc7"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget v0, p0, Lcom/open/likehelper/ui/WelcomeActivity$1;->b:I

    if-lez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/open/likehelper/ui/WelcomeActivity$1;->a:Lcom/open/likehelper/ui/WelcomeActivity;

    invoke-static {v0}, Lcom/open/likehelper/ui/WelcomeActivity;->a(Lcom/open/likehelper/ui/WelcomeActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 64
    :goto_0
    return-void

    .line 50
    :pswitch_0
    iget-object v0, p0, Lcom/open/likehelper/ui/WelcomeActivity$1;->a:Lcom/open/likehelper/ui/WelcomeActivity;

    invoke-static {v0}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->a(Landroid/content/Context;)V

    .line 51
    iget-object v0, p0, Lcom/open/likehelper/ui/WelcomeActivity$1;->a:Lcom/open/likehelper/ui/WelcomeActivity;

    invoke-virtual {v0}, Lcom/open/likehelper/ui/WelcomeActivity;->finish()V

    goto :goto_0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/open/likehelper/ui/WelcomeActivity$1;->a:Lcom/open/likehelper/ui/WelcomeActivity;

    invoke-static {v0}, Lcom/open/likehelper/ui/WelcomeActivity;->a(Lcom/open/likehelper/ui/WelcomeActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
