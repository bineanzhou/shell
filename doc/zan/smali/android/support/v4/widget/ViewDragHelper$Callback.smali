.class public abstract Landroid/support/v4/widget/ViewDragHelper$Callback;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/ViewDragHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x0

    return v0
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 1

    .prologue
    .line 320
    const/4 v0, 0x0

    return v0
.end method

.method public getOrderedChildIndex(I)I
    .locals 0

    .prologue
    .line 250
    return p1
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x0

    return v0
.end method

.method public onEdgeDragStarted(II)V
    .locals 0

    .prologue
    .line 241
    return-void
.end method

.method public onEdgeLock(I)Z
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public onEdgeTouched(II)V
    .locals 0

    .prologue
    .line 215
    return-void
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 182
    return-void
.end method

.method public onViewDragStateChanged(I)V
    .locals 0

    .prologue
    .line 160
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 0

    .prologue
    .line 171
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 0

    .prologue
    .line 202
    return-void
.end method

.method public abstract tryCaptureView(Landroid/view/View;I)Z
.end method
