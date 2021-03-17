.class Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "PhotoAdaptar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/open/likehelper/ui/pic/PhotoAdaptar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhotoViewHolder"
.end annotation


# instance fields
.field final synthetic B:Lcom/open/likehelper/ui/pic/PhotoAdaptar;

.field private final C:Lcom/open/likehelper/ui/pic/PhotoAdaptar$OnPhotoItemClickListener;

.field cover:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0c0082
    .end annotation
.end field

.field selectIcon:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0c008e
    .end annotation
.end field

.field shadow:Landroid/view/View;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0c008d
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/open/likehelper/ui/pic/PhotoAdaptar;Landroid/view/View;Lcom/open/likehelper/ui/pic/PhotoAdaptar$OnPhotoItemClickListener;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder;->B:Lcom/open/likehelper/ui/pic/PhotoAdaptar;

    .line 79
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 80
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 81
    iput-object p3, p0, Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder;->C:Lcom/open/likehelper/ui/pic/PhotoAdaptar$OnPhotoItemClickListener;

    .line 82
    return-void
.end method

.method static synthetic a(Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder;)Lcom/open/likehelper/ui/pic/PhotoAdaptar$OnPhotoItemClickListener;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder;->C:Lcom/open/likehelper/ui/pic/PhotoAdaptar$OnPhotoItemClickListener;

    return-object v0
.end method

.method private a(Landroid/widget/ImageView;)V
    .locals 4

    .prologue
    .line 139
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder;->B:Lcom/open/likehelper/ui/pic/PhotoAdaptar;

    invoke-static {v0}, Lcom/open/likehelper/ui/pic/PhotoAdaptar;->d(Lcom/open/likehelper/ui/pic/PhotoAdaptar;)I

    move-result v0

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 142
    iget-object v2, p0, Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder;->B:Lcom/open/likehelper/ui/pic/PhotoAdaptar;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v0, v3}, Lcom/open/likehelper/util/DeviceUtils;->a(Landroid/content/Context;F)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    const/high16 v3, 0x40c00000    # 6.0f

    .line 143
    invoke-static {v0, v3}, Lcom/open/likehelper/util/DeviceUtils;->a(Landroid/content/Context;F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v1, v0

    div-int/lit8 v0, v0, 0x3

    .line 142
    invoke-static {v2, v0}, Lcom/open/likehelper/ui/pic/PhotoAdaptar;->a(Lcom/open/likehelper/ui/pic/PhotoAdaptar;I)I

    .line 145
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder;->B:Lcom/open/likehelper/ui/pic/PhotoAdaptar;

    invoke-static {v1}, Lcom/open/likehelper/ui/pic/PhotoAdaptar;->d(Lcom/open/likehelper/ui/pic/PhotoAdaptar;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 147
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    return-void
.end method

.method private a(Lcom/open/likehelper/ui/pic/Photo;)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder;->B:Lcom/open/likehelper/ui/pic/PhotoAdaptar;

    invoke-static {v0}, Lcom/open/likehelper/ui/pic/PhotoAdaptar;->a(Lcom/open/likehelper/ui/pic/PhotoAdaptar;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-direct {p0, p1}, Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder;->b(Lcom/open/likehelper/ui/pic/Photo;)V

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-direct {p0, p1}, Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder;->c(Lcom/open/likehelper/ui/pic/Photo;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder;Lcom/open/likehelper/ui/pic/Photo;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder;->a(Lcom/open/likehelper/ui/pic/Photo;)V

    return-void
.end method

.method private b(Lcom/open/likehelper/ui/pic/Photo;)V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder;->cover:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder;->a(Landroid/widget/ImageView;)V

    .line 94
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->c(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 95
    invoke-virtual {p1}, Lcom/open/likehelper/ui/pic/Photo;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->d()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->f()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder;->cover:Landroid/widget/ImageView;

    .line 98
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 99
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder;->selectIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder;->a:Landroid/view/View;

    new-instance v1, Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder$1;-><init>(Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder;Lcom/open/likehelper/ui/pic/Photo;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    return-void
.end method

.method private c(Lcom/open/likehelper/ui/pic/Photo;)V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder;->cover:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder;->a(Landroid/widget/ImageView;)V

    .line 110
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->c(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 111
    invoke-virtual {p1}, Lcom/open/likehelper/ui/pic/Photo;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->d()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->f()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder;->cover:Landroid/widget/ImageView;

    .line 114
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 115
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder;->selectIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/open/likehelper/ui/pic/Photo;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 116
    iget-object v1, p0, Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder;->shadow:Landroid/view/View;

    invoke-virtual {p1}, Lcom/open/likehelper/ui/pic/Photo;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder;->selectIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder$2;

    invoke-direct {v1, p0, p1}, Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder$2;-><init>(Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder;Lcom/open/likehelper/ui/pic/Photo;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder;->a:Landroid/view/View;

    new-instance v1, Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder$3;

    invoke-direct {v1, p0, p1}, Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder$3;-><init>(Lcom/open/likehelper/ui/pic/PhotoAdaptar$PhotoViewHolder;Lcom/open/likehelper/ui/pic/Photo;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    return-void

    .line 116
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
