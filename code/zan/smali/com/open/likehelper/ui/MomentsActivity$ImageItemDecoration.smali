.class Lcom/open/likehelper/ui/MomentsActivity$ImageItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "MomentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/open/likehelper/ui/MomentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageItemDecoration"
.end annotation


# static fields
.field private static final b:F = 1.5f


# instance fields
.field final synthetic a:Lcom/open/likehelper/ui/MomentsActivity;


# direct methods
.method private constructor <init>(Lcom/open/likehelper/ui/MomentsActivity;)V
    .locals 0

    .prologue
    .line 509
    iput-object p1, p0, Lcom/open/likehelper/ui/MomentsActivity$ImageItemDecoration;->a:Lcom/open/likehelper/ui/MomentsActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/open/likehelper/ui/MomentsActivity;Lcom/open/likehelper/ui/MomentsActivity$1;)V
    .locals 0

    .prologue
    .line 509
    invoke-direct {p0, p1}, Lcom/open/likehelper/ui/MomentsActivity$ImageItemDecoration;-><init>(Lcom/open/likehelper/ui/MomentsActivity;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 0

    .prologue
    .line 514
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 515
    return-void
.end method

.method public a(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 2

    .prologue
    const/high16 v1, 0x3fc00000    # 1.5f

    .line 519
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->a(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 520
    iget-object v0, p0, Lcom/open/likehelper/ui/MomentsActivity$ImageItemDecoration;->a:Lcom/open/likehelper/ui/MomentsActivity;

    invoke-static {v0}, Lcom/open/likehelper/ui/MomentsActivity;->a(Lcom/open/likehelper/ui/MomentsActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/open/likehelper/util/DeviceUtils;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 521
    iget-object v0, p0, Lcom/open/likehelper/ui/MomentsActivity$ImageItemDecoration;->a:Lcom/open/likehelper/ui/MomentsActivity;

    invoke-static {v0}, Lcom/open/likehelper/ui/MomentsActivity;->a(Lcom/open/likehelper/ui/MomentsActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/open/likehelper/util/DeviceUtils;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 522
    iget-object v0, p0, Lcom/open/likehelper/ui/MomentsActivity$ImageItemDecoration;->a:Lcom/open/likehelper/ui/MomentsActivity;

    invoke-static {v0}, Lcom/open/likehelper/ui/MomentsActivity;->a(Lcom/open/likehelper/ui/MomentsActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/open/likehelper/util/DeviceUtils;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 523
    iget-object v0, p0, Lcom/open/likehelper/ui/MomentsActivity$ImageItemDecoration;->a:Lcom/open/likehelper/ui/MomentsActivity;

    invoke-static {v0}, Lcom/open/likehelper/ui/MomentsActivity;->a(Lcom/open/likehelper/ui/MomentsActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/open/likehelper/util/DeviceUtils;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 524
    return-void
.end method
