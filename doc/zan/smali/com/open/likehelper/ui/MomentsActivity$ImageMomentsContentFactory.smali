.class abstract Lcom/open/likehelper/ui/MomentsActivity$ImageMomentsContentFactory;
.super Lcom/open/likehelper/ui/MomentsActivity$MomentsContentFactory;
.source "MomentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/open/likehelper/ui/MomentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ImageMomentsContentFactory"
.end annotation


# instance fields
.field final synthetic b:Lcom/open/likehelper/ui/MomentsActivity;


# direct methods
.method private constructor <init>(Lcom/open/likehelper/ui/MomentsActivity;)V
    .locals 1

    .prologue
    .line 411
    iput-object p1, p0, Lcom/open/likehelper/ui/MomentsActivity$ImageMomentsContentFactory;->b:Lcom/open/likehelper/ui/MomentsActivity;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/open/likehelper/ui/MomentsActivity$MomentsContentFactory;-><init>(Lcom/open/likehelper/ui/MomentsActivity;Lcom/open/likehelper/ui/MomentsActivity$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/open/likehelper/ui/MomentsActivity;Lcom/open/likehelper/ui/MomentsActivity$1;)V
    .locals 0

    .prologue
    .line 411
    invoke-direct {p0, p1}, Lcom/open/likehelper/ui/MomentsActivity$ImageMomentsContentFactory;-><init>(Lcom/open/likehelper/ui/MomentsActivity;)V

    return-void
.end method


# virtual methods
.method abstract a()Landroid/view/View;
.end method

.method public b()Landroid/view/View;
    .locals 5

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/open/likehelper/ui/MomentsActivity$ImageMomentsContentFactory;->a()Landroid/view/View;

    move-result-object v0

    .line 414
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/open/likehelper/ui/MomentsActivity$ImageMomentsContentFactory;->b:Lcom/open/likehelper/ui/MomentsActivity;

    invoke-static {v2}, Lcom/open/likehelper/ui/MomentsActivity;->a(Lcom/open/likehelper/ui/MomentsActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/open/likehelper/ui/MomentsActivity$ImageMomentsContentFactory;->c()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/open/likehelper/util/DeviceUtils;->a(Landroid/content/Context;F)I

    move-result v2

    iget-object v3, p0, Lcom/open/likehelper/ui/MomentsActivity$ImageMomentsContentFactory;->b:Lcom/open/likehelper/ui/MomentsActivity;

    invoke-static {v3}, Lcom/open/likehelper/ui/MomentsActivity;->a(Lcom/open/likehelper/ui/MomentsActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/open/likehelper/ui/MomentsActivity$ImageMomentsContentFactory;->d()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4}, Lcom/open/likehelper/util/DeviceUtils;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 415
    return-object v0
.end method

.method protected c()I
    .locals 1

    .prologue
    .line 419
    const/4 v0, -0x2

    return v0
.end method

.method protected d()I
    .locals 1

    .prologue
    .line 423
    const/4 v0, -0x2

    return v0
.end method
