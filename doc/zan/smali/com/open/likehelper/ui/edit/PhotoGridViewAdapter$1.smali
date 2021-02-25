.class Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter$1;
.super Ljava/lang/Object;
.source "PhotoGridViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter;


# direct methods
.method constructor <init>(Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter;I)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter$1;->b:Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter;

    iput p2, p0, Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter$1;->b:Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter;

    invoke-static {v0}, Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter;->a(Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter$1;->a:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter$1;->b:Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter;

    invoke-static {v0}, Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter;->b(Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 85
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter$1;->b:Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter;

    invoke-virtual {v0}, Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter;->notifyDataSetChanged()V

    .line 86
    return-void
.end method
