.class Lcom/open/likehelper/ui/edit/EditMomentActivity$6;
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
    .line 323
    iput-object p1, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity$6;->a:Lcom/open/likehelper/ui/edit/EditMomentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 10
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "i"    # I
    .param p3, "z"    # Z

    .prologue
    .line 325
    const/4 v0, 0x0

    .line 326
    .local v0, "i2":I
    const-string v2, "Comment progress=%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ltimber/log/Timber;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    add-int/lit8 v2, p2, 0xa

    div-int/lit8 v1, v2, 0x14

    .line 328
    .local v1, "i3":I
    if-eqz v1, :cond_17

    .line 330
    move v0, v1

    .line 331
    :cond_17
    iget-object v2, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity$6;->a:Lcom/open/likehelper/ui/edit/EditMomentActivity;

    invoke-static {v2, v0}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->c(Lcom/open/likehelper/ui/edit/EditMomentActivity;I)I

    .line 332
    iget-object v2, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity$6;->a:Lcom/open/likehelper/ui/edit/EditMomentActivity;

    iget-object v2, v2, Lcom/open/likehelper/ui/edit/EditMomentActivity;->mCommentCountText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity$6;->a:Lcom/open/likehelper/ui/edit/EditMomentActivity;

    invoke-static {v3}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->e(Lcom/open/likehelper/ui/edit/EditMomentActivity;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 338
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 343
    return-void
.end method
