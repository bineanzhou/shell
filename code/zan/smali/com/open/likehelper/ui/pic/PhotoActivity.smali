.class public Lcom/open/likehelper/ui/pic/PhotoActivity;
.super Lcom/open/likehelper/base/BaseActivity;
.source "PhotoActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/open/likehelper/ui/pic/PhotoActivity$MyOnPhotoItemClickListener;
    }
.end annotation


# static fields
.field private static final a:I = 0x3e8

.field private static final b:I = 0x3e9


# instance fields
.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/open/likehelper/ui/pic/Album;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/open/likehelper/ui/pic/Photo;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/open/likehelper/ui/pic/Photo;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/open/likehelper/ui/pic/PhotoAdaptar;

.field private g:I

.field picGrid:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0c006c
    .end annotation
.end field

.field sendBtn:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0c006e
    .end annotation
.end field

.field sendLayout:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0c006d
    .end annotation
.end field

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


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/open/likehelper/base/BaseActivity;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoActivity;->c:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoActivity;->d:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoActivity;->e:Ljava/util/List;

    .line 180
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/open/likehelper/ui/pic/PhotoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    return-object v0
.end method

.method public static a(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 59
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/open/likehelper/ui/pic/PhotoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    const-string v1, "maxPhotoCount"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 61
    return-object v0
.end method

.method static synthetic a(Lcom/open/likehelper/ui/pic/PhotoActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoActivity;->c:Ljava/util/List;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/open/likehelper/ui/pic/PhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "maxPhotoCount"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/open/likehelper/ui/pic/PhotoActivity;->g:I

    .line 75
    return-void
.end method

.method static synthetic b(Lcom/open/likehelper/ui/pic/PhotoActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoActivity;->e:Ljava/util/List;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 78
    invoke-static {p0}, Lcom/open/likehelper/ui/pic/PhotoManager;->a(Landroid/content/Context;)Lcom/open/likehelper/ui/pic/PhotoManager;

    move-result-object v0

    new-instance v1, Lcom/open/likehelper/ui/pic/PhotoActivity$1;

    invoke-direct {v1, p0}, Lcom/open/likehelper/ui/pic/PhotoActivity$1;-><init>(Lcom/open/likehelper/ui/pic/PhotoActivity;)V

    invoke-virtual {v0, v1}, Lcom/open/likehelper/ui/pic/PhotoManager;->a(Lcom/open/likehelper/ui/pic/PhotoManager$OnAlbumListGetListener;)V

    .line 91
    return-void
.end method

.method static synthetic c(Lcom/open/likehelper/ui/pic/PhotoActivity;)Lcom/open/likehelper/ui/pic/PhotoAdaptar;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoActivity;->f:Lcom/open/likehelper/ui/pic/PhotoAdaptar;

    return-object v0
.end method

.method private c()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/open/likehelper/ui/pic/PhotoActivity;->d()V

    .line 95
    invoke-direct {p0}, Lcom/open/likehelper/ui/pic/PhotoActivity;->e()V

    .line 96
    invoke-direct {p0}, Lcom/open/likehelper/ui/pic/PhotoActivity;->f()V

    .line 97
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 100
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoActivity;->topReturn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoActivity;->topRightIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoActivity;->topRightIcon:Landroid/widget/ImageView;

    const v1, 0x7f020065

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 103
    return-void
.end method

.method static synthetic d(Lcom/open/likehelper/ui/pic/PhotoActivity;)Z
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/open/likehelper/ui/pic/PhotoActivity;->g()Z

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/open/likehelper/ui/pic/PhotoActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoActivity;->d:Ljava/util/List;

    return-object v0
.end method

.method private e()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoActivity;->e:Ljava/util/List;

    .line 107
    new-instance v0, Lcom/open/likehelper/ui/pic/PhotoAdaptar;

    iget-object v1, p0, Lcom/open/likehelper/ui/pic/PhotoActivity;->e:Ljava/util/List;

    iget v2, p0, Lcom/open/likehelper/ui/pic/PhotoActivity;->g:I

    new-instance v3, Lcom/open/likehelper/ui/pic/PhotoActivity$MyOnPhotoItemClickListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/open/likehelper/ui/pic/PhotoActivity$MyOnPhotoItemClickListener;-><init>(Lcom/open/likehelper/ui/pic/PhotoActivity;Lcom/open/likehelper/ui/pic/PhotoActivity$1;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/open/likehelper/ui/pic/PhotoAdaptar;-><init>(Ljava/util/List;ILcom/open/likehelper/ui/pic/PhotoAdaptar$OnPhotoItemClickListener;)V

    iput-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoActivity;->f:Lcom/open/likehelper/ui/pic/PhotoAdaptar;

    .line 108
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoActivity;->picGrid:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/GridLayoutManager;

    invoke-direct {v1, p0, v5}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 109
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoActivity;->picGrid:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/open/likehelper/widget/GridSpacingItemDecoration;

    const/high16 v2, 0x40c00000    # 6.0f

    .line 110
    invoke-static {p0, v2}, Lcom/open/likehelper/util/DeviceUtils;->a(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x41200000    # 10.0f

    .line 111
    invoke-static {p0, v3}, Lcom/open/likehelper/util/DeviceUtils;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v2, v3, v5}, Lcom/open/likehelper/widget/GridSpacingItemDecoration;-><init>(III)V

    .line 109
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 112
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoActivity;->picGrid:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/open/likehelper/ui/pic/PhotoActivity;->f:Lcom/open/likehelper/ui/pic/PhotoAdaptar;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 113
    return-void
.end method

.method private f()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 117
    invoke-direct {p0}, Lcom/open/likehelper/ui/pic/PhotoActivity;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoActivity;->sendLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoActivity;->sendBtn:Landroid/widget/TextView;

    const v1, 0x7f07003b

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget v4, p0, Lcom/open/likehelper/ui/pic/PhotoActivity;->g:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/open/likehelper/ui/pic/PhotoActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoActivity;->sendLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/open/likehelper/ui/pic/PhotoActivity;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/open/likehelper/ui/pic/PhotoActivity;->i()V

    return-void
.end method

.method static synthetic g(Lcom/open/likehelper/ui/pic/PhotoActivity;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/open/likehelper/ui/pic/PhotoActivity;->g:I

    return v0
.end method

.method private g()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 126
    iget v1, p0, Lcom/open/likehelper/ui/pic/PhotoActivity;->g:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoActivity;->c:Ljava/util/List;

    invoke-static {p0, v0}, Lcom/open/likehelper/ui/pic/PhotoAlbumActivity;->a(Landroid/content/Context;Ljava/util/List;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/open/likehelper/ui/pic/PhotoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 171
    return-void
.end method

.method private i()V
    .locals 3

    .prologue
    .line 174
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 175
    const-string v2, "photoList"

    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoActivity;->d:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 176
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/open/likehelper/ui/pic/PhotoActivity;->setResult(ILandroid/content/Intent;)V

    .line 177
    invoke-virtual {p0}, Lcom/open/likehelper/ui/pic/PhotoActivity;->finish()V

    .line 178
    return-void
.end method


# virtual methods
.method protected a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 66
    const v0, 0x7f04001e

    invoke-virtual {p0, v0}, Lcom/open/likehelper/ui/pic/PhotoActivity;->setContentView(I)V

    .line 67
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 68
    invoke-direct {p0}, Lcom/open/likehelper/ui/pic/PhotoActivity;->a()V

    .line 69
    invoke-direct {p0}, Lcom/open/likehelper/ui/pic/PhotoActivity;->c()V

    .line 70
    invoke-direct {p0}, Lcom/open/likehelper/ui/pic/PhotoActivity;->b()V

    .line 71
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .prologue
    const/16 v0, 0x3e8

    .line 131
    invoke-super {p0, p1, p2, p3}, Lcom/open/likehelper/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 132
    if-ne p1, v0, :cond_0

    .line 133
    if-ne p2, v0, :cond_0

    .line 134
    const-string v0, "album"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/open/likehelper/ui/pic/Album;

    .line 135
    iget-object v1, p0, Lcom/open/likehelper/ui/pic/PhotoActivity;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 136
    iget-object v1, p0, Lcom/open/likehelper/ui/pic/PhotoActivity;->e:Ljava/util/List;

    invoke-virtual {v0}, Lcom/open/likehelper/ui/pic/Album;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 137
    iget-object v1, p0, Lcom/open/likehelper/ui/pic/PhotoActivity;->topTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/open/likehelper/ui/pic/Album;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoActivity;->f:Lcom/open/likehelper/ui/pic/PhotoAdaptar;

    invoke-virtual {v0}, Lcom/open/likehelper/ui/pic/PhotoAdaptar;->d()V

    .line 141
    :cond_0
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_1

    .line 142
    const-string v0, "select_images"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/open/likehelper/ui/pic/PhotoActivity;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 144
    iget-object v1, p0, Lcom/open/likehelper/ui/pic/PhotoActivity;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 145
    const-string v0, "images"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/open/likehelper/ui/pic/PhotoActivity;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 147
    iget-object v1, p0, Lcom/open/likehelper/ui/pic/PhotoActivity;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 148
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoActivity;->f:Lcom/open/likehelper/ui/pic/PhotoAdaptar;

    iget v1, p0, Lcom/open/likehelper/ui/pic/PhotoActivity;->g:I

    iget-object v2, p0, Lcom/open/likehelper/ui/pic/PhotoActivity;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/open/likehelper/ui/pic/PhotoAdaptar;->f(I)V

    .line 149
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoActivity;->sendBtn:Landroid/widget/TextView;

    const v1, 0x7f07003b

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/open/likehelper/ui/pic/PhotoActivity;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/open/likehelper/ui/pic/PhotoActivity;->g:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/open/likehelper/ui/pic/PhotoActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoActivity;->f:Lcom/open/likehelper/ui/pic/PhotoAdaptar;

    invoke-virtual {v0}, Lcom/open/likehelper/ui/pic/PhotoAdaptar;->d()V

    .line 152
    :cond_1
    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0c008f,
            0x7f0c0092,
            0x7f0c006e
        }
    .end annotation

    .prologue
    .line 156
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 167
    :goto_0
    return-void

    .line 158
    :sswitch_0
    invoke-direct {p0}, Lcom/open/likehelper/ui/pic/PhotoActivity;->h()V

    goto :goto_0

    .line 161
    :sswitch_1
    invoke-virtual {p0}, Lcom/open/likehelper/ui/pic/PhotoActivity;->finish()V

    goto :goto_0

    .line 164
    :sswitch_2
    invoke-direct {p0}, Lcom/open/likehelper/ui/pic/PhotoActivity;->i()V

    goto :goto_0

    .line 156
    :sswitch_data_0
    .sparse-switch
        0x7f0c006e -> :sswitch_2
        0x7f0c008f -> :sswitch_0
        0x7f0c0092 -> :sswitch_1
    .end sparse-switch
.end method
