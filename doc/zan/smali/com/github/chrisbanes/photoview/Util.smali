.class Lcom/github/chrisbanes/photoview/Util;
.super Ljava/lang/Object;
.source "Util.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(I)I
    .locals 1

    .prologue
    .line 35
    const v0, 0xff00

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method static a(FFF)V
    .locals 2

    .prologue
    .line 10
    cmpl-float v0, p0, p1

    if-ltz v0, :cond_0

    .line 11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Minimum zoom has to be less than Medium zoom. Call setMinimumZoom() with a more appropriate value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_0
    cmpl-float v0, p1, p2

    if-ltz v0, :cond_1

    .line 14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Medium zoom has to be less than Maximum zoom. Call setMaximumZoom() with a more appropriate value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_1
    return-void
.end method

.method static a(Landroid/widget/ImageView$ScaleType;)Z
    .locals 2

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return v0

    .line 27
    :cond_0
    sget-object v0, Lcom/github/chrisbanes/photoview/Util$1;->a:[I

    invoke-virtual {p0}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 31
    const/4 v0, 0x1

    goto :goto_0

    .line 29
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Matrix scale type is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static a(Landroid/widget/ImageView;)Z
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
