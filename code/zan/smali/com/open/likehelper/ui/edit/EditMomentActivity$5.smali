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
    .registers 8
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "i"    # I
    .param p3, "z"    # Z

    .prologue
    .line 304
    const-string v0, "Like progress=%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ltimber/log/Timber;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    if-nez p2, :cond_12

    .line 307
    const/4 p2, 0x0

    .line 308
    :cond_12
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
