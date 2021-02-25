.class public Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$CenterAlignImageSpan;
.super Landroid/text/style/ImageSpan;
.source "MomentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CenterAlignImageSpan"
.end annotation


# instance fields
.field final synthetic a:Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter;


# direct methods
.method public constructor <init>(Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$CenterAlignImageSpan;->a:Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter;

    .line 359
    invoke-direct {p0, p2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 360
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 3
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Landroid/graphics/Paint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$CenterAlignImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 365
    invoke-virtual {p9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    .line 367
    iget v2, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr v2, p7

    add-int/2addr v2, p7

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 368
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 370
    int-to-float v1, v1

    invoke-virtual {p1, p5, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 371
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 372
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 373
    return-void
.end method
