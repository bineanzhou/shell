.class Lcom/open/likehelper/ui/edit/EditMomentActivity$5;
.super Ljava/lang/Object;
.source "EditMomentActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/open/likehelper/ui/edit/EditMomentActivity;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/open/likehelper/ui/edit/EditMomentActivity;


# direct methods
.method constructor <init>(Lcom/open/likehelper/ui/edit/EditMomentActivity;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity$5;->a:Lcom/open/likehelper/ui/edit/EditMomentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 304
    const-string v1, "Like progress=%d"

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ltimber/log/Timber;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    if-nez p2, :cond_0

    move p2, v0

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity$5;->a:Lcom/open/likehelper/ui/edit/EditMomentActivity;

    invoke-static {v0, p2}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->b(Lcom/open/likehelper/ui/edit/EditMomentActivity;I)I

    .line 309
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity$5;->a:Lcom/open/likehelper/ui/edit/EditMomentActivity;

    iget-object v0, v0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->mLikeCountText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity$5;->a:Lcom/open/likehelper/ui/edit/EditMomentActivity;

    invoke-static {v1}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->d(Lcom/open/likehelper/ui/edit/EditMomentActivity;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 315
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 320
    return-void
.end method
