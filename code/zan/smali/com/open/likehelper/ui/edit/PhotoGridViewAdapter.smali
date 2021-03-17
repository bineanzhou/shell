.class public Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "PhotoGridViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/open/likehelper/ui/edit/PhotoItemBean;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/view/View$OnClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/open/likehelper/ui/edit/PhotoItemBean;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter;->a:Ljava/util/HashMap;

    .line 33
    iput-object p1, p0, Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter;->b:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter;->c:Ljava/util/ArrayList;

    .line 35
    iput-object p3, p0, Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter;->d:Landroid/view/View$OnClickListener;

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter;->d:Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/open/likehelper/ui/edit/PhotoItemBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 50
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/high16 v4, 0x42960000    # 75.0f

    .line 58
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040029

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 60
    new-instance v0, Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter$ViewHolder;-><init>(Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter;)V

    .line 61
    invoke-static {v0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 62
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v0

    .line 67
    :goto_0
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/open/likehelper/ui/edit/PhotoItemBean;

    iget-object v0, v0, Lcom/open/likehelper/ui/edit/PhotoItemBean;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 68
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/open/likehelper/ui/edit/PhotoItemBean;

    iget-object v0, v0, Lcom/open/likehelper/ui/edit/PhotoItemBean;->a:Ljava/lang/String;

    .line 69
    iget-object v2, p0, Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 70
    iget-object v2, p0, Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter;->b:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/open/likehelper/util/DeviceUtils;->a(Landroid/content/Context;F)I

    move-result v2

    iget-object v3, p0, Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter;->b:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/open/likehelper/util/DeviceUtils;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/open/likehelper/util/ImageUtils;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 71
    iget-object v3, v1, Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 72
    iget-object v3, p0, Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :goto_1
    iget-object v0, v1, Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 78
    iget-object v0, v1, Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter$ViewHolder;->deleteImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 79
    iget-object v0, v1, Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter$ViewHolder;->deleteImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 80
    iget-object v0, v1, Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter$ViewHolder;->deleteImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter$1;-><init>(Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    :goto_2
    return-object p2

    .line 64
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter$ViewHolder;

    move-object v1, v0

    goto :goto_0

    .line 74
    :cond_2
    iget-object v2, v1, Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 89
    :cond_3
    iget-object v0, v1, Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter$ViewHolder;->deleteImageView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 90
    iget-object v0, v1, Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    const v2, 0x7f020063

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 91
    iget-object v0, v1, Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_2
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 99
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 100
    return-void
.end method
