.class public Lcom/open/likehelper/ui/pic/PhotoDetailActivity;
.super Lcom/open/likehelper/base/BaseActivity;
.source "PhotoDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/open/likehelper/ui/pic/PhotoDetailActivity$SamplePagerAdapter;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "currentIndex"

.field private static final b:Ljava/lang/String; = "title"

.field private static final c:Ljava/lang/String; = "images"

.field private static final d:Ljava/lang/String; = "select_images"

.field private static final e:Ljava/lang/String; = "max_count"


# instance fields
.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/open/likehelper/ui/pic/Photo;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/open/likehelper/ui/pic/Photo;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private i:I

.field private j:Ljava/lang/String;

.field private k:I

.field topReturn:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0c008f
    .end annotation
.end field

.field topRightIcon:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0c0092
    .end annotation
.end field

.field topTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0c0090
    .end annotation
.end field

.field viewPager:Landroid/support/v4/view/ViewPager;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0c0070
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/open/likehelper/base/BaseActivity;-><init>()V

    .line 186
    return-void
.end method

.method static synthetic a(Lcom/open/likehelper/ui/pic/PhotoDetailActivity;I)I
    .locals 0

    .prologue
    .line 33
    iput p1, p0, Lcom/open/likehelper/ui/pic/PhotoDetailActivity;->i:I

    return p1
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;Ljava/util/List;I)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/open/likehelper/ui/pic/Photo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/open/likehelper/ui/pic/Photo;",
            ">;I)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/open/likehelper/ui/pic/PhotoDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    const-string v1, "currentIndex"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 61
    const-string v1, "title"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    const-string v1, "images"

    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 63
    const-string v1, "select_images"

    check-cast p4, Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 64
    const-string v1, "max_count"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 65
    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/open/likehelper/ui/pic/PhotoDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "currentIndex"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/open/likehelper/ui/pic/PhotoDetailActivity;->i:I

    .line 78
    invoke-virtual {p0}, Lcom/open/likehelper/ui/pic/PhotoDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "images"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoDetailActivity;->f:Ljava/util/List;

    .line 79
    invoke-virtual {p0}, Lcom/open/likehelper/ui/pic/PhotoDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoDetailActivity;->j:Ljava/lang/String;

    .line 80
    invoke-virtual {p0}, Lcom/open/likehelper/ui/pic/PhotoDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "select_images"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoDetailActivity;->g:Ljava/util/List;

    .line 81
    invoke-virtual {p0}, Lcom/open/likehelper/ui/pic/PhotoDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "max_count"

    iget-object v2, p0, Lcom/open/likehelper/ui/pic/PhotoDetailActivity;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/open/likehelper/ui/pic/PhotoDetailActivity;->k:I

    .line 82
    return-void
.end method

.method static synthetic a(Lcom/open/likehelper/ui/pic/PhotoDetailActivity;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/open/likehelper/ui/pic/PhotoDetailActivity;->g()V

    return-void
.end method

.method static synthetic b(Lcom/open/likehelper/ui/pic/PhotoDetailActivity;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/open/likehelper/ui/pic/PhotoDetailActivity;->i:I

    return v0
.end method

.method private b()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/open/likehelper/ui/pic/PhotoDetailActivity;->c()V

    .line 86
    invoke-direct {p0}, Lcom/open/likehelper/ui/pic/PhotoDetailActivity;->d()V

    .line 87
    invoke-direct {p0}, Lcom/open/likehelper/ui/pic/PhotoDetailActivity;->e()V

    .line 88
    return-void
.end method

.method static synthetic c(Lcom/open/likehelper/ui/pic/PhotoDetailActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoDetailActivity;->f:Ljava/util/List;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 91
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoDetailActivity;->topReturn:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoDetailActivity;->topTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/open/likehelper/ui/pic/PhotoDetailActivity;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoDetailActivity;->topRightIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoDetailActivity;->topRightIcon:Landroid/widget/ImageView;

    const v1, 0x7f02006d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 95
    return-void
.end method

.method private d()V
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoDetailActivity;->h:Ljava/util/List;

    .line 100
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoDetailActivity;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/open/likehelper/ui/pic/Photo;

    .line 101
    new-instance v2, Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-direct {v2, p0}, Lcom/github/chrisbanes/photoview/PhotoView;-><init>(Landroid/content/Context;)V

    .line 102
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    .line 103
    invoke-virtual {v0}, Lcom/open/likehelper/ui/pic/Photo;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->f()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    .line 105
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 107
    new-instance v0, Lcom/open/likehelper/ui/pic/PhotoDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/open/likehelper/ui/pic/PhotoDetailActivity$1;-><init>(Lcom/open/likehelper/ui/pic/PhotoDetailActivity;)V

    invoke-virtual {v2, v0}, Lcom/github/chrisbanes/photoview/PhotoView;->setOnPhotoTapListener(Lcom/github/chrisbanes/photoview/OnPhotoTapListener;)V

    .line 117
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoDetailActivity;->h:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 119
    :cond_0
    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoDetailActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/open/likehelper/ui/pic/PhotoDetailActivity$SamplePagerAdapter;

    iget-object v2, p0, Lcom/open/likehelper/ui/pic/PhotoDetailActivity;->h:Ljava/util/List;

    invoke-direct {v1, v2}, Lcom/open/likehelper/ui/pic/PhotoDetailActivity$SamplePagerAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 123
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoDetailActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcom/open/likehelper/ui/pic/PhotoDetailActivity;->i:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 124
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoDetailActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/open/likehelper/ui/pic/PhotoDetailActivity$2;

    invoke-direct {v1, p0}, Lcom/open/likehelper/ui/pic/PhotoDetailActivity$2;-><init>(Lcom/open/likehelper/ui/pic/PhotoDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 142
    return-void
.end method

.method private f()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 158
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoDetailActivity;->f:Ljava/util/List;

    iget v3, p0, Lcom/open/likehelper/ui/pic/PhotoDetailActivity;->i:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/open/likehelper/ui/pic/Photo;

    .line 159
    invoke-virtual {v0}, Lcom/open/likehelper/ui/pic/Photo;->b()Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, p0, Lcom/open/likehelper/ui/pic/PhotoDetailActivity;->k:I

    iget-object v4, p0, Lcom/open/likehelper/ui/pic/PhotoDetailActivity;->g:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v3, v4

    if-nez v3, :cond_0

    .line 160
    const v0, 0x7f070033

    new-array v1, v1, [Ljava/lang/Object;

    iget v3, p0, Lcom/open/likehelper/ui/pic/PhotoDetailActivity;->k:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/open/likehelper/ui/pic/PhotoDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/open/likehelper/util/ToastUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 170
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v3, p0, Lcom/open/likehelper/ui/pic/PhotoDetailActivity;->g:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 164
    iget-object v3, p0, Lcom/open/likehelper/ui/pic/PhotoDetailActivity;->g:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 168
    :goto_1
    invoke-virtual {v0}, Lcom/open/likehelper/ui/pic/Photo;->b()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Lcom/open/likehelper/ui/pic/Photo;->a(Z)V

    .line 169
    iget-object v1, p0, Lcom/open/likehelper/ui/pic/PhotoDetailActivity;->topRightIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/open/likehelper/ui/pic/Photo;->b()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 166
    :cond_1
    iget-object v3, p0, Lcom/open/likehelper/ui/pic/PhotoDetailActivity;->g:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move v1, v2

    .line 168
    goto :goto_2
.end method

.method private g()V
    .locals 3

    .prologue
    .line 179
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 180
    const-string v2, "select_images"

    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoDetailActivity;->g:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 181
    const-string v2, "images"

    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoDetailActivity;->f:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 183
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/open/likehelper/ui/pic/PhotoDetailActivity;->setResult(ILandroid/content/Intent;)V

    .line 184
    return-void
.end method


# virtual methods
.method protected a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 70
    const v0, 0x7f040020

    invoke-virtual {p0, v0}, Lcom/open/likehelper/ui/pic/PhotoDetailActivity;->setContentView(I)V

    .line 71
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 72
    invoke-direct {p0}, Lcom/open/likehelper/ui/pic/PhotoDetailActivity;->a()V

    .line 73
    invoke-direct {p0}, Lcom/open/likehelper/ui/pic/PhotoDetailActivity;->b()V

    .line 74
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/open/likehelper/ui/pic/PhotoDetailActivity;->g()V

    .line 175
    invoke-super {p0}, Lcom/open/likehelper/base/BaseActivity;->onBackPressed()V

    .line 176
    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0c008f,
            0x7f0c0092
        }
    .end annotation

    .prologue
    .line 146
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 155
    :goto_0
    :pswitch_0
    return-void

    .line 148
    :pswitch_1
    invoke-direct {p0}, Lcom/open/likehelper/ui/pic/PhotoDetailActivity;->g()V

    .line 149
    invoke-virtual {p0}, Lcom/open/likehelper/ui/pic/PhotoDetailActivity;->finish()V

    goto :goto_0

    .line 152
    :pswitch_2
    invoke-direct {p0}, Lcom/open/likehelper/ui/pic/PhotoDetailActivity;->f()V

    goto :goto_0

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c008f
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
