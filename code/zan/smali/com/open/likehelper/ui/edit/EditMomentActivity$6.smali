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
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 326
    const-string v1, "Comment progress=%d"

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ltimber/log/Timber;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    add-int/lit8 v1, p2, 0xa

    div-int/lit8 v1, v1, 0x14

    .line 328
    if-nez v1, :cond_0

    .line 331
    :goto_0
    iget-object v1, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity$6;->a:Lcom/open/likehelper/ui/edit/EditMomentActivity;

    invoke-static {v1, v0}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->c(Lcom/open/likehelper/ui/edit/EditMomentActivity;I)I

    .line 332
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity$6;->a:Lcom/open/likehelper/ui/edit/EditMomentActivity;

    iget-object v0, v0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->mCommentCountText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity$6;->a:Lcom/open/likehelper/ui/edit/EditMomentActivity;

    invoke-static {v1}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->e(Lcom/open/likehelper/ui/edit/EditMomentActivity;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    return-void

    :cond_0
    move v0, v1

    goto :goto_0
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
