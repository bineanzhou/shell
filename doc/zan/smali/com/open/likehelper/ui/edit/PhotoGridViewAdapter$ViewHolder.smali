.class Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "PhotoGridViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field final synthetic a:Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter;

.field deleteImageView:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0c008c
    .end annotation
.end field

.field imageView:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0c008b
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter$ViewHolder;->a:Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
