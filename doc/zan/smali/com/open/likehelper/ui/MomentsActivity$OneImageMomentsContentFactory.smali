.class Lcom/open/likehelper/ui/MomentsActivity$OneImageMomentsContentFactory;
.super Lcom/open/likehelper/ui/MomentsActivity$ImageMomentsContentFactory;
.source "MomentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/open/likehelper/ui/MomentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OneImageMomentsContentFactory"
.end annotation


# static fields
.field private static final d:I = 0x96

.field private static final e:I = 0x96


# instance fields
.field final synthetic a:Lcom/open/likehelper/ui/MomentsActivity;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/open/likehelper/ui/MomentsActivity;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 433
    iput-object p1, p0, Lcom/open/likehelper/ui/MomentsActivity$OneImageMomentsContentFactory;->a:Lcom/open/likehelper/ui/MomentsActivity;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/open/likehelper/ui/MomentsActivity$ImageMomentsContentFactory;-><init>(Lcom/open/likehelper/ui/MomentsActivity;Lcom/open/likehelper/ui/MomentsActivity$1;)V

    .line 434
    iput-object p2, p0, Lcom/open/likehelper/ui/MomentsActivity$OneImageMomentsContentFactory;->f:Ljava/lang/String;

    .line 435
    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 3

    .prologue
    .line 439
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/open/likehelper/ui/MomentsActivity$OneImageMomentsContentFactory;->a:Lcom/open/likehelper/ui/MomentsActivity;

    invoke-static {v1}, Lcom/open/likehelper/ui/MomentsActivity;->a(Lcom/open/likehelper/ui/MomentsActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 440
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 441
    iget-object v1, p0, Lcom/open/likehelper/ui/MomentsActivity$OneImageMomentsContentFactory;->a:Lcom/open/likehelper/ui/MomentsActivity;

    invoke-virtual {v1}, Lcom/open/likehelper/ui/MomentsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->c(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    iget-object v2, p0, Lcom/open/likehelper/ui/MomentsActivity$OneImageMomentsContentFactory;->f:Ljava/lang/String;

    .line 442
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    .line 443
    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableTypeRequest;->f()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    .line 444
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 445
    return-object v0
.end method

.method protected c()I
    .locals 1

    .prologue
    .line 450
    const/16 v0, 0x96

    return v0
.end method

.method protected d()I
    .locals 1

    .prologue
    .line 455
    const/16 v0, 0x96

    return v0
.end method
