.class public Lcom/open/likehelper/ui/WelcomeActivity;
.super Lcom/open/likehelper/base/BaseActivity;
.source "WelcomeActivity.java"


# static fields
.field private static final a:I = 0x0

.field private static final b:I = 0x1


# instance fields
.field private c:J

.field private d:Landroid/os/Handler;

.field mImg:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0c0073
    .end annotation
.end field

.field mTimer:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0c0074
    .end annotation
.end field

.field mWelcomeNameText:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0c0071
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/open/likehelper/base/BaseActivity;-><init>()V

    .line 42
    new-instance v0, Lcom/open/likehelper/ui/WelcomeActivity$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/open/likehelper/ui/WelcomeActivity$1;-><init>(Lcom/open/likehelper/ui/WelcomeActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/open/likehelper/ui/WelcomeActivity;->d:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/open/likehelper/ui/WelcomeActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/open/likehelper/ui/WelcomeActivity;->d:Landroid/os/Handler;

    return-object v0
.end method

.method private a()V
    .locals 5

    .prologue
    .line 82
    iget-object v0, p0, Lcom/open/likehelper/ui/WelcomeActivity;->mWelcomeNameText:Landroid/widget/TextView;

    const v1, 0x7f07004a

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/open/likehelper/ui/WelcomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/open/likehelper/util/AppUtils;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/open/likehelper/ui/WelcomeActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    invoke-direct {p0}, Lcom/open/likehelper/ui/WelcomeActivity;->b()V

    .line 85
    invoke-direct {p0}, Lcom/open/likehelper/ui/WelcomeActivity;->c()V

    .line 86
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/open/likehelper/ui/WelcomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->c(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    const-string v1, "https://huatang-test-1256269266.cos.ap-guangzhou.myqcloud.com/x_wechat_moments/ad/img_main"

    .line 90
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->d()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->f()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/open/likehelper/ui/WelcomeActivity;->mImg:Landroid/widget/ImageView;

    .line 93
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 94
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/open/likehelper/ui/WelcomeActivity;->d:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 98
    return-void
.end method


# virtual methods
.method public clickTimer()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0c0074
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/open/likehelper/ui/WelcomeActivity;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 70
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/open/likehelper/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const v0, 0x7f040021

    invoke-virtual {p0, v0}, Lcom/open/likehelper/ui/WelcomeActivity;->setContentView(I)V

    .line 76
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 78
    invoke-direct {p0}, Lcom/open/likehelper/ui/WelcomeActivity;->a()V

    .line 79
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 102
    invoke-super {p0}, Lcom/open/likehelper/base/BaseActivity;->onDestroy()V

    .line 104
    iget-object v0, p0, Lcom/open/likehelper/ui/WelcomeActivity;->d:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/open/likehelper/ui/WelcomeActivity;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 106
    iget-object v0, p0, Lcom/open/likehelper/ui/WelcomeActivity;->d:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 108
    :cond_0
    return-void
.end method
