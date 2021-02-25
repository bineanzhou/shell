.class public abstract Landroid/support/v7/widget/RecyclerView$LayoutManager;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LayoutManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;,
        Landroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;
    }
.end annotation


# instance fields
.field A:I

.field B:Z

.field private a:Z

.field private b:Z

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field u:Landroid/support/v7/widget/ChildHelper;

.field v:Landroid/support/v7/widget/RecyclerView;

.field w:Landroid/support/v7/widget/RecyclerView$SmoothScroller;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field x:Z

.field y:Z

.field z:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 6813
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6820
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->x:Z

    .line 6822
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->y:Z

    .line 6824
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->z:Z

    .line 6830
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a:Z

    .line 6832
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->b:Z

    .line 9653
    return-void
.end method

.method public static a(III)I
    .locals 2

    .prologue
    .line 7019
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 7020
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 7021
    sparse-switch v1, :sswitch_data_0

    .line 7028
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    :sswitch_0
    return v0

    .line 7025
    :sswitch_1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 7021
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static a(IIIIZ)I
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, -0x2

    const/high16 v3, -0x80000000

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v0, 0x0

    .line 8547
    sub-int v1, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 8550
    if-eqz p4, :cond_3

    .line 8551
    if-ltz p3, :cond_1

    move v0, v2

    move v1, p3

    .line 8588
    :cond_0
    :goto_0
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0

    .line 8554
    :cond_1
    if-ne p3, v5, :cond_2

    .line 8555
    sparse-switch p1, :sswitch_data_0

    move p1, v0

    :goto_1
    move v1, v0

    move v0, p1

    .line 8564
    goto :goto_0

    :sswitch_0
    move v0, v1

    .line 8560
    goto :goto_1

    :sswitch_1
    move p1, v0

    .line 8563
    goto :goto_1

    .line 8566
    :cond_2
    if-ne p3, v4, :cond_7

    move v1, v0

    .line 8568
    goto :goto_0

    .line 8571
    :cond_3
    if-ltz p3, :cond_4

    move v0, v2

    move v1, p3

    .line 8573
    goto :goto_0

    .line 8574
    :cond_4
    if-ne p3, v5, :cond_5

    move v0, p1

    .line 8576
    goto :goto_0

    .line 8577
    :cond_5
    if-ne p3, v4, :cond_7

    .line 8579
    if-eq p1, v3, :cond_6

    if-ne p1, v2, :cond_0

    :cond_6
    move v0, v3

    .line 8580
    goto :goto_0

    :cond_7
    move v1, v0

    goto :goto_0

    .line 8555
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static a(IIIZ)I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/high16 v0, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 8504
    sub-int v2, p0, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 8507
    if-eqz p3, :cond_2

    .line 8508
    if-ltz p2, :cond_1

    .line 8530
    :cond_0
    :goto_0
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0

    :cond_1
    move v0, v1

    move p2, v1

    .line 8515
    goto :goto_0

    .line 8518
    :cond_2
    if-gez p2, :cond_0

    .line 8521
    const/4 v3, -0x1

    if-ne p2, v3, :cond_3

    move p2, v2

    .line 8524
    goto :goto_0

    .line 8525
    :cond_3
    const/4 v0, -0x2

    if-ne p2, v0, :cond_4

    .line 8527
    const/high16 v0, -0x80000000

    move p2, v2

    goto :goto_0

    :cond_4
    move v0, v1

    move p2, v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9606
    new-instance v0, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;

    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;-><init>()V

    .line 9607
    sget-object v1, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView:[I

    invoke-virtual {p0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 9609
    sget v2, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView_android_orientation:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v0, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;->a:I

    .line 9610
    sget v2, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView_spanCount:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v0, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;->b:I

    .line 9611
    sget v2, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView_reverseLayout:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v0, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;->c:Z

    .line 9612
    sget v2, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView_stackFromEnd:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v0, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;->d:Z

    .line 9613
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 9614
    return-object v0
.end method

.method private a(ILandroid/view/View;)V
    .locals 1

    .prologue
    .line 7915
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->u:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ChildHelper;->e(I)V

    .line 7916
    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V
    .locals 0

    .prologue
    .line 6813
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->b(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$Recycler;ILandroid/view/View;)V
    .locals 2

    .prologue
    .line 8301
    invoke-static {p3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 8302
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8317
    :goto_0
    return-void

    .line 8308
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->s()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 8309
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 8310
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->h(I)V

    .line 8311
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->b(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    .line 8313
    :cond_1
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->i(I)V

    .line 8314
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView$Recycler;->d(Landroid/view/View;)V

    .line 8315
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->w:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ViewInfoStore;->h(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;IZ)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 7688
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 7689
    if-nez p3, :cond_0

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->s()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7691
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->w:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ViewInfoStore;->e(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 7700
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 7701
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->l()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->j()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 7702
    :cond_1
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->j()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 7703
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->k()V

    .line 7707
    :goto_1
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->u:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, p1, p2, v3, v4}, Landroid/support/v7/widget/ChildHelper;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 7732
    :cond_2
    :goto_2
    iget-boolean v2, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->g:Z

    if-eqz v2, :cond_3

    .line 7736
    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 7737
    iput-boolean v4, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->g:Z

    .line 7739
    :cond_3
    return-void

    .line 7698
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->w:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ViewInfoStore;->f(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    .line 7705
    :cond_5
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->m()V

    goto :goto_1

    .line 7711
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    if-ne v2, v3, :cond_9

    .line 7713
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->u:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/ChildHelper;->b(Landroid/view/View;)I

    move-result v2

    .line 7714
    if-ne p2, v5, :cond_7

    .line 7715
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->u:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3}, Landroid/support/v7/widget/ChildHelper;->b()I

    move-result p2

    .line 7717
    :cond_7
    if-ne v2, v5, :cond_8

    .line 7718
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added View has RecyclerView as parent but view is not a real child. Unfiltered index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    .line 7720
    invoke-virtual {v2, p1}, Landroid/support/v7/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7722
    :cond_8
    if-eq v2, p2, :cond_2

    .line 7723
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->C:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3, v2, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->e(II)V

    goto :goto_2

    .line 7726
    :cond_9
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->u:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2, p1, p2, v4}, Landroid/support/v7/widget/ChildHelper;->a(Landroid/view/View;IZ)V

    .line 7727
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->f:Z

    .line 7728
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->w:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->w:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->h()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7729
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->w:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->b(Landroid/view/View;)V

    goto :goto_2
.end method

.method private b(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V
    .locals 1

    .prologue
    .line 9284
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->w:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    if-ne v0, p1, :cond_0

    .line 9285
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->w:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    .line 9287
    :cond_0
    return-void
.end method

.method private static b(III)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 8441
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 8442
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 8443
    if-lez p2, :cond_1

    if-eq p0, p2, :cond_1

    move v0, v1

    .line 8454
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 8446
    :cond_1
    sparse-switch v2, :sswitch_data_0

    move v0, v1

    .line 8454
    goto :goto_0

    .line 8450
    :sswitch_1
    if-ge v3, p0, :cond_0

    move v0, v1

    goto :goto_0

    .line 8452
    :sswitch_2
    if-eq v3, p0, :cond_0

    move v0, v1

    goto :goto_0

    .line 8446
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public A()Z
    .locals 1

    .prologue
    .line 7259
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->y:Z

    return v0
.end method

.method public B()Z
    .locals 1

    .prologue
    .line 7359
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView;->x:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public C()Z
    .locals 1

    .prologue
    .line 7601
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->w:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->w:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public D()I
    .locals 1

    .prologue
    .line 7614
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public E()V
    .locals 2

    .prologue
    .line 7774
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->G()I

    move-result v0

    .line 7775
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 7776
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->u:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ChildHelper;->a(I)V

    .line 7775
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 7778
    :cond_0
    return-void
.end method

.method public F()I
    .locals 1

    .prologue
    .line 7787
    const/4 v0, -0x1

    return v0
.end method

.method public G()I
    .locals 1

    .prologue
    .line 8047
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->u:Landroid/support/v7/widget/ChildHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->u:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->b()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public H()I
    .locals 1

    .prologue
    .line 8074
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->c:I

    return v0
.end method

.method public I()I
    .locals 1

    .prologue
    .line 8092
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->d:I

    return v0
.end method

.method public J()I
    .locals 1

    .prologue
    .line 8101
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->e:I

    return v0
.end method

.method public K()I
    .locals 1

    .prologue
    .line 8110
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->f:I

    return v0
.end method

.method public L()I
    .locals 1

    .prologue
    .line 8119
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public M()I
    .locals 1

    .prologue
    .line 8128
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public N()I
    .locals 1

    .prologue
    .line 8137
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public O()I
    .locals 1

    .prologue
    .line 8146
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public P()I
    .locals 1

    .prologue
    .line 8155
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Q()I
    .locals 1

    .prologue
    .line 8164
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public R()Z
    .locals 1

    .prologue
    .line 8174
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public S()Z
    .locals 1

    .prologue
    .line 8184
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public T()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 8193
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    if-nez v1, :cond_1

    .line 8200
    :cond_0
    :goto_0
    return-object v0

    .line 8196
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    .line 8197
    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->u:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ChildHelper;->c(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 8200
    goto :goto_0
.end method

.method public U()I
    .locals 1

    .prologue
    .line 8214
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 8215
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->a()I

    move-result v0

    :goto_1
    return v0

    .line 8214
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 8215
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public V()Z
    .locals 1

    .prologue
    .line 8425
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a:Z

    return v0
.end method

.method public W()I
    .locals 1

    .prologue
    .line 9249
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getMinimumWidth(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public X()I
    .locals 1

    .prologue
    .line 9256
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method Y()V
    .locals 1

    .prologue
    .line 9278
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->w:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    if-eqz v0, :cond_0

    .line 9279
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->w:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->f()V

    .line 9281
    :cond_0
    return-void
.end method

.method public Z()V
    .locals 1

    .prologue
    .line 9447
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->x:Z

    .line 9448
    return-void
.end method

.method public a(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1

    .prologue
    .line 7517
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 9482
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-nez v1, :cond_1

    .line 9485
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->a()I

    move-result v0

    goto :goto_0
.end method

.method public abstract a()Landroid/support/v7/widget/RecyclerView$LayoutParams;
.end method

.method public a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 1

    .prologue
    .line 7500
    new-instance v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 1

    .prologue
    .line 7476
    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    if-eqz v0, :cond_0

    .line 7477
    new-instance v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    check-cast p1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/support/v7/widget/RecyclerView$LayoutParams;)V

    .line 7481
    :goto_0
    return-object v0

    .line 7478
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 7479
    new-instance v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    .line 7481
    :cond_1
    new-instance v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 8895
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(IILandroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 0

    .prologue
    .line 7211
    return-void
.end method

.method public a(ILandroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 0

    .prologue
    .line 7239
    return-void
.end method

.method public a(ILandroid/support/v7/widget/RecyclerView$Recycler;)V
    .locals 1

    .prologue
    .line 8013
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->j(I)Landroid/view/View;

    move-result-object v0

    .line 8014
    invoke-direct {p0, p2, p1, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;ILandroid/view/View;)V

    .line 8015
    return-void
.end method

.method public a(Landroid/graphics/Rect;II)V
    .locals 3

    .prologue
    .line 6979
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->L()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->N()I

    move-result v1

    add-int/2addr v0, v1

    .line 6980
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->M()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->O()I

    move-result v2

    add-int/2addr v1, v2

    .line 6981
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->W()I

    move-result v2

    invoke-static {p2, v0, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(III)I

    move-result v0

    .line 6982
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->X()I

    move-result v2

    invoke-static {p3, v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(III)I

    move-result v1

    .line 6983
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->f(II)V

    .line 6984
    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 9275
    return-void
.end method

.method a(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2

    .prologue
    .line 9320
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->U:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {p0, v0, v1, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 9321
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 0

    .prologue
    .line 9021
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$Recycler;)V
    .locals 2

    .prologue
    .line 8293
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->G()I

    move-result v0

    .line 8294
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 8295
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->j(I)Landroid/view/View;

    move-result-object v1

    .line 8296
    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;ILandroid/view/View;)V

    .line 8294
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 8298
    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V
    .locals 1

    .prologue
    .line 9231
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p3, p4}, Landroid/support/v7/widget/RecyclerView;->defaultOnMeasure(II)V

    .line 9232
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 4

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 9350
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    .line 9351
    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9352
    :cond_0
    const/16 v0, 0x2000

    invoke-virtual {p3, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 9353
    invoke-virtual {p3, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 9355
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    .line 9356
    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9357
    :cond_2
    const/16 v0, 0x1000

    invoke-virtual {p3, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 9358
    invoke-virtual {p3, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 9362
    :cond_3
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    .line 9363
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->b(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v1

    .line 9364
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->e(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v2

    .line 9365
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->d(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v3

    .line 9362
    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->obtain(IIZI)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    move-result-object v0

    .line 9366
    invoke-virtual {p3, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionInfo(Ljava/lang/Object;)V

    .line 9367
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 9428
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->e(Landroid/view/View;)I

    move-result v0

    .line 9429
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, p3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->e(Landroid/view/View;)I

    move-result v2

    :goto_1
    move v3, v1

    move v5, v4

    .line 9431
    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v0

    .line 9433
    invoke-virtual {p4, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    .line 9434
    return-void

    :cond_0
    move v0, v4

    .line 9428
    goto :goto_0

    :cond_1
    move v2, v4

    .line 9429
    goto :goto_1
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v0, 0x1

    .line 9387
    .line 9388
    invoke-static {p3}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->asRecord(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    move-result-object v1

    .line 9389
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    .line 9400
    :cond_0
    :goto_0
    return-void

    .line 9392
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2, v0}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    .line 9393
    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    .line 9394
    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    .line 9395
    invoke-static {v2, v0}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9392
    :cond_2
    :goto_1
    invoke-virtual {v1, v0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setScrollable(Z)V

    .line 9397
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 9398
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->a()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setItemCount(I)V

    goto :goto_0

    .line 9395
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V
    .locals 2

    .prologue
    .line 7589
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->w:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->w:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->w:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    .line 7590
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7591
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->w:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->f()V

    .line 7593
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->w:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    .line 7594
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->w:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1, p0}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 7595
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 0

    .prologue
    .line 7429
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 9059
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .prologue
    .line 9071
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;III)V
    .locals 0

    .prologue
    .line 9123
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 9106
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->c(Landroid/support/v7/widget/RecyclerView;II)V

    .line 9107
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$Recycler;)V
    .locals 0
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 7350
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->e(Landroid/support/v7/widget/RecyclerView;)V

    .line 7351
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V
    .locals 2

    .prologue
    .line 7580
    const-string v0, "RecyclerView"

    const-string v1, "You must override smoothScrollToPosition to support smooth scrolling"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7581
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 7624
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->M:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    .line 7625
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->M:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->d(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 7627
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 7661
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/view/View;IZ)V

    .line 7662
    return-void
.end method

.method public a(Landroid/view/View;II)V
    .locals 7

    .prologue
    .line 8371
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 8373
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 8374
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    add-int/2addr v2, p2

    .line 8375
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v3

    add-int/2addr v1, p3

    .line 8376
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->J()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->H()I

    move-result v4

    .line 8377
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->L()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->N()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    iget v5, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->width:I

    .line 8378
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->g()Z

    move-result v6

    .line 8376
    invoke-static {v3, v4, v2, v5, v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(IIIIZ)I

    move-result v2

    .line 8379
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->K()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->I()I

    move-result v4

    .line 8380
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->M()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->O()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    iget v5, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->height:I

    .line 8381
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->h()Z

    move-result v6

    .line 8379
    invoke-static {v3, v4, v1, v5, v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(IIIIZ)I

    move-result v1

    .line 8382
    invoke-virtual {p0, p1, v2, v1, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->b(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8383
    invoke-virtual {p1, v2, v1}, Landroid/view/View;->measure(II)V

    .line 8385
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;IIII)V
    .locals 4

    .prologue
    .line 8650
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->e:Landroid/graphics/Rect;

    .line 8651
    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p3

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int v3, p4, v3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v0, p5, v0

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 8653
    return-void
.end method

.method public a(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$LayoutParams;)V
    .locals 2

    .prologue
    .line 7928
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 7929
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->s()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7930
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->w:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ViewInfoStore;->e(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 7934
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->u:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->s()Z

    move-result v0

    invoke-virtual {v1, p1, p2, p3, v0}, Landroid/support/v7/widget/ChildHelper;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 7938
    return-void

    .line 7932
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->w:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ViewInfoStore;->f(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 8738
    invoke-static {p1, p2}, Landroid/support/v7/widget/RecyclerView;->getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 8739
    return-void
.end method

.method a(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2

    .prologue
    .line 9404
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 9406
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->s()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->u:Landroid/support/v7/widget/ChildHelper;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ChildHelper;->c(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9407
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->U:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 9410
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$Recycler;)V
    .locals 1

    .prologue
    .line 7999
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->u:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ChildHelper;->b(Landroid/view/View;)I

    move-result v0

    .line 8000
    invoke-direct {p0, p2, v0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;ILandroid/view/View;)V

    .line 8001
    return-void
.end method

.method public a(Landroid/view/View;ZLandroid/graphics/Rect;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 8705
    if-eqz p2, :cond_1

    .line 8706
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->e:Landroid/graphics/Rect;

    .line 8707
    iget v1, v0, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    .line 8708
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v4

    .line 8707
    invoke-virtual {p3, v1, v2, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 8713
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 8714
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getMatrix(Landroid/view/View;)Landroid/graphics/Matrix;

    move-result-object v0

    .line 8715
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8716
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->A:Landroid/graphics/RectF;

    .line 8717
    invoke-virtual {v1, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 8718
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 8719
    iget v0, v1, Landroid/graphics/RectF;->left:F

    float-to-double v2, v0

    .line 8720
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    iget v2, v1, Landroid/graphics/RectF;->top:F

    float-to-double v2, v2

    .line 8721
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, v1, Landroid/graphics/RectF;->right:F

    float-to-double v4, v3

    .line 8722
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, v1

    .line 8723
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 8719
    invoke-virtual {p3, v0, v2, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 8727
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 8728
    return-void

    .line 8710
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p3, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public a(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .prologue
    .line 9371
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->U:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {p0, v0, v1, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 9372
    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 7273
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 7274
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 7276
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 7040
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 7041
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 7043
    :cond_0
    return-void
.end method

.method a(ILandroid/os/Bundle;)Z
    .locals 2

    .prologue
    .line 9523
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->U:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$LayoutParams;)Z
    .locals 1

    .prologue
    .line 7459
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;ILandroid/os/Bundle;)Z
    .locals 6

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 9539
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_1

    .line 9565
    :cond_0
    :goto_0
    return v1

    .line 9543
    :cond_1
    sparse-switch p3, :sswitch_data_0

    move v0, v1

    move v3, v1

    .line 9561
    :goto_1
    if-nez v3, :cond_2

    if-eqz v0, :cond_0

    .line 9564
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0, v3}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    move v1, v2

    .line 9565
    goto :goto_0

    .line 9545
    :sswitch_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, v4}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9546
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->K()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->M()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->O()I

    move-result v3

    sub-int/2addr v0, v3

    neg-int v0, v0

    .line 9548
    :goto_2
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 9549
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->J()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->L()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->N()I

    move-result v4

    sub-int/2addr v3, v4

    neg-int v3, v3

    move v5, v3

    move v3, v0

    move v0, v5

    goto :goto_1

    .line 9553
    :sswitch_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9554
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->K()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->M()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->O()I

    move-result v3

    sub-int/2addr v0, v3

    .line 9556
    :goto_3
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3, v2}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 9557
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->J()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->L()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->N()I

    move-result v4

    sub-int/2addr v3, v4

    move v5, v3

    move v3, v0

    move v0, v5

    goto :goto_1

    :cond_3
    move v3, v0

    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_2

    .line 9543
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 9591
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 9005
    invoke-virtual {p0, p1, p3, p4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 12

    .prologue
    .line 8935
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->L()I

    move-result v3

    .line 8936
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->M()I

    move-result v4

    .line 8937
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->J()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->N()I

    move-result v1

    sub-int v5, v0, v1

    .line 8938
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->K()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->O()I

    move-result v1

    sub-int v6, v0, v1

    .line 8939
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    invoke-virtual {p2}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int v7, v0, v1

    .line 8940
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    invoke-virtual {p2}, Landroid/view/View;->getScrollY()I

    move-result v1

    sub-int v8, v0, v1

    .line 8941
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int v9, v7, v0

    .line 8942
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int v10, v8, v0

    .line 8944
    const/4 v0, 0x0

    sub-int v1, v7, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 8945
    const/4 v0, 0x0

    sub-int v2, v8, v4

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 8946
    const/4 v0, 0x0

    sub-int v11, v9, v5

    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 8947
    const/4 v11, 0x0

    sub-int v6, v10, v6

    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 8953
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->D()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    .line 8954
    if-eqz v0, :cond_1

    :goto_0
    move v1, v0

    .line 8963
    :goto_1
    if-eqz v2, :cond_4

    move v0, v2

    .line 8966
    :goto_2
    if-nez v1, :cond_0

    if-eqz v0, :cond_6

    .line 8967
    :cond_0
    if-eqz p4, :cond_5

    .line 8968
    invoke-virtual {p1, v1, v0}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    .line 8972
    :goto_3
    const/4 v0, 0x1

    .line 8974
    :goto_4
    return v0

    .line 8954
    :cond_1
    sub-int v0, v9, v5

    .line 8955
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 8957
    :cond_2
    if-eqz v1, :cond_3

    move v0, v1

    :goto_5
    move v1, v0

    .line 8958
    goto :goto_1

    .line 8957
    :cond_3
    sub-int v1, v7, v3

    .line 8958
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_5

    .line 8963
    :cond_4
    sub-int v0, v8, v4

    .line 8964
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_2

    .line 8970
    :cond_5
    invoke-virtual {p1, v1, v0}, Landroid/support/v7/widget/RecyclerView;->smoothScrollBy(II)V

    goto :goto_3

    .line 8974
    :cond_6
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 8983
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->C()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Ljava/util/ArrayList;II)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)Z"
        }
    .end annotation

    .prologue
    .line 9049
    const/4 v0, 0x0

    return v0
.end method

.method a(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$LayoutParams;)Z
    .locals 2

    .prologue
    .line 8394
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a:Z

    if-eqz v0, :cond_0

    .line 8395
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p4, Landroid/support/v7/widget/RecyclerView$LayoutParams;->width:I

    invoke-static {v0, p2, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->b(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8396
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, p4, Landroid/support/v7/widget/RecyclerView$LayoutParams;->height:I

    invoke-static {v0, p3, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->b(III)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 6

    .prologue
    .line 9570
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->U:Landroid/support/v7/widget/RecyclerView$State;

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method aa()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 9639
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->G()I

    move-result v2

    move v1, v0

    .line 9640
    :goto_0
    if-ge v1, v2, :cond_0

    .line 9641
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->j(I)Landroid/view/View;

    move-result-object v3

    .line 9642
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 9643
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v4, :cond_1

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v3, :cond_1

    .line 9644
    const/4 v0, 0x1

    .line 9647
    :cond_0
    return v0

    .line 9640
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public b(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1

    .prologue
    .line 7534
    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 9501
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-nez v1, :cond_1

    .line 9504
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->a()I

    move-result v0

    goto :goto_0
.end method

.method public b(ILandroid/support/v7/widget/RecyclerView$Recycler;)V
    .locals 1

    .prologue
    .line 8035
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->j(I)Landroid/view/View;

    move-result-object v0

    .line 8036
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->h(I)V

    .line 8037
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->a(Landroid/view/View;)V

    .line 8038
    return-void
.end method

.method b(Landroid/support/v7/widget/RecyclerView$Recycler;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 8329
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->e()I

    move-result v1

    .line 8331
    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 8332
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->e(I)Landroid/view/View;

    move-result-object v2

    .line 8333
    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 8334
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->c()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 8331
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 8342
    :cond_0
    invoke-virtual {v3, v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a(Z)V

    .line 8343
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->t()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8344
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v2, v5}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 8346
    :cond_1
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->M:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v4, :cond_2

    .line 8347
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->M:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->d(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 8349
    :cond_2
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a(Z)V

    .line 8350
    invoke-virtual {p1, v2}, Landroid/support/v7/widget/RecyclerView$Recycler;->c(Landroid/view/View;)V

    goto :goto_1

    .line 8352
    :cond_3
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->f()V

    .line 8353
    if-lez v1, :cond_4

    .line 8354
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 8356
    :cond_4
    return-void
.end method

.method b(Landroid/support/v7/widget/RecyclerView;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v0, 0x0

    .line 6885
    if-nez p1, :cond_0

    .line 6886
    iput-object v2, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    .line 6887
    iput-object v2, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->u:Landroid/support/v7/widget/ChildHelper;

    .line 6888
    iput v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->e:I

    .line 6889
    iput v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->f:I

    .line 6896
    :goto_0
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->c:I

    .line 6897
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->d:I

    .line 6898
    return-void

    .line 6891
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    .line 6892
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView;->v:Landroid/support/v7/widget/ChildHelper;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->u:Landroid/support/v7/widget/ChildHelper;

    .line 6893
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->e:I

    .line 6894
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->f:I

    goto :goto_0
.end method

.method public b(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .prologue
    .line 9081
    return-void
.end method

.method b(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$Recycler;)V
    .locals 1

    .prologue
    .line 7247
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->y:Z

    .line 7248
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 7249
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 7643
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/view/View;I)V

    .line 7644
    return-void
.end method

.method public b(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 7684
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/view/View;IZ)V

    .line 7685
    return-void
.end method

.method public b(Landroid/view/View;II)V
    .locals 7

    .prologue
    .line 8470
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 8472
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 8473
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    add-int/2addr v2, p2

    .line 8474
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v3

    add-int/2addr v1, p3

    .line 8476
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->J()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->H()I

    move-result v4

    .line 8477
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->L()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->N()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v5, v6

    iget v6, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    iget v5, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->width:I

    .line 8479
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->g()Z

    move-result v6

    .line 8476
    invoke-static {v3, v4, v2, v5, v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(IIIIZ)I

    move-result v2

    .line 8480
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->K()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->I()I

    move-result v4

    .line 8481
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->M()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->O()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v5, v6

    iget v6, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    iget v5, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->height:I

    .line 8483
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->h()Z

    move-result v6

    .line 8480
    invoke-static {v3, v4, v1, v5, v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(IIIIZ)I

    move-result v1

    .line 8484
    invoke-virtual {p0, p1, v2, v1, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->b(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8485
    invoke-virtual {p1, v2, v1}, Landroid/view/View;->measure(II)V

    .line 8487
    :cond_0
    return-void
.end method

.method public b(Landroid/view/View;IIII)V
    .locals 6

    .prologue
    .line 8686
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 8687
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->e:Landroid/graphics/Rect;

    .line 8688
    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, p2

    iget v3, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, p3

    iget v4, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v1, Landroid/graphics/Rect;->right:I

    sub-int v4, p4, v4

    iget v5, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    sub-int/2addr v4, v5

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p5, v1

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    sub-int v0, v1, v0

    invoke-virtual {p1, v2, v3, v4, v0}, Landroid/view/View;->layout(IIII)V

    .line 8691
    return-void
.end method

.method public b(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8807
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    .line 8808
    invoke-virtual {p2, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 8813
    :goto_0
    return-void

    .line 8811
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 8812
    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public b(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$Recycler;)V
    .locals 0

    .prologue
    .line 8024
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->d(Landroid/view/View;)V

    .line 8025
    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->a(Landroid/view/View;)V

    .line 8026
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 7003
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 7004
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->assertInLayoutOrScroll(Ljava/lang/String;)V

    .line 7006
    :cond_0
    return-void
.end method

.method b(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$LayoutParams;)Z
    .locals 2

    .prologue
    .line 8408
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a:Z

    if-eqz v0, :cond_0

    .line 8410
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p4, Landroid/support/v7/widget/RecyclerView$LayoutParams;->width:I

    invoke-static {v0, p2, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->b(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8411
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p4, Landroid/support/v7/widget/RecyclerView$LayoutParams;->height:I

    invoke-static {v0, p3, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->b(III)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/Runnable;)Z
    .locals 1

    .prologue
    .line 7293
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 7294
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    .line 7296
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1

    .prologue
    .line 9153
    const/4 v0, 0x0

    return v0
.end method

.method public c(I)Landroid/view/View;
    .locals 5

    .prologue
    .line 7855
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->G()I

    move-result v2

    .line 7856
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_3

    .line 7857
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->j(I)Landroid/view/View;

    move-result-object v0

    .line 7858
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 7859
    if-nez v3, :cond_1

    .line 7856
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 7862
    :cond_1
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->e()I

    move-result v4

    if-ne v4, p1, :cond_0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->c()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->U:Landroid/support/v7/widget/RecyclerView$State;

    .line 7863
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$State;->c()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->s()Z

    move-result v3

    if-nez v3, :cond_0

    .line 7867
    :cond_2
    :goto_1
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method c(II)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6901
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->e:I

    .line 6902
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->c:I

    .line 6903
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->c:I

    if-nez v0, :cond_0

    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->d:Z

    if-nez v0, :cond_0

    .line 6904
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->e:I

    .line 6907
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->f:I

    .line 6908
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->d:I

    .line 6909
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->d:I

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->d:Z

    if-nez v0, :cond_1

    .line 6910
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->f:I

    .line 6912
    :cond_1
    return-void
.end method

.method public c(Landroid/support/v7/widget/RecyclerView$Recycler;)V
    .locals 2

    .prologue
    .line 9310
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->G()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 9311
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->j(I)Landroid/view/View;

    move-result-object v1

    .line 9312
    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 9313
    invoke-virtual {p0, v0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->b(ILandroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 9310
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 9316
    :cond_1
    return-void
.end method

.method public c(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 2

    .prologue
    .line 7414
    const-string v0, "RecyclerView"

    const-string v1, "You must override onLayoutChildren(Recycler recycler, State state) "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7415
    return-void
.end method

.method c(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 7242
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->y:Z

    .line 7243
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->d(Landroid/support/v7/widget/RecyclerView;)V

    .line 7244
    return-void
.end method

.method public c(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .prologue
    .line 9093
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 7672
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->b(Landroid/view/View;I)V

    .line 7673
    return-void
.end method

.method public c(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 7949
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$LayoutParams;)V

    .line 7950
    return-void
.end method

.method public d(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1

    .prologue
    .line 9466
    const/4 v0, 0x0

    return v0
.end method

.method public d(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1

    .prologue
    .line 9198
    const/4 v0, 0x0

    return v0
.end method

.method public d(Landroid/view/View;I)Landroid/view/View;
    .locals 1

    .prologue
    .line 8915
    const/4 v0, 0x0

    return-object v0
.end method

.method d(II)V
    .locals 8

    .prologue
    const v2, 0x7fffffff

    const/high16 v3, -0x80000000

    .line 6928
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->G()I

    move-result v5

    .line 6929
    if-nez v5, :cond_0

    .line 6930
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->defaultOnMeasure(II)V

    .line 6957
    :goto_0
    return-void

    .line 6938
    :cond_0
    const/4 v0, 0x0

    move v4, v0

    move v1, v3

    move v0, v2

    :goto_1
    if-ge v4, v5, :cond_5

    .line 6939
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->j(I)Landroid/view/View;

    move-result-object v6

    .line 6940
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->z:Landroid/graphics/Rect;

    .line 6941
    invoke-virtual {p0, v6, v7}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 6942
    iget v6, v7, Landroid/graphics/Rect;->left:I

    if-ge v6, v0, :cond_1

    .line 6943
    iget v0, v7, Landroid/graphics/Rect;->left:I

    .line 6945
    :cond_1
    iget v6, v7, Landroid/graphics/Rect;->right:I

    if-le v6, v1, :cond_2

    .line 6946
    iget v1, v7, Landroid/graphics/Rect;->right:I

    .line 6948
    :cond_2
    iget v6, v7, Landroid/graphics/Rect;->top:I

    if-ge v6, v2, :cond_3

    .line 6949
    iget v2, v7, Landroid/graphics/Rect;->top:I

    .line 6951
    :cond_3
    iget v6, v7, Landroid/graphics/Rect;->bottom:I

    if-le v6, v3, :cond_4

    .line 6952
    iget v3, v7, Landroid/graphics/Rect;->bottom:I

    .line 6938
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 6955
    :cond_5
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->z:Landroid/graphics/Rect;

    invoke-virtual {v4, v0, v2, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 6956
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->z:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/graphics/Rect;II)V

    goto :goto_0
.end method

.method public d(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 7314
    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 7750
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->u:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ChildHelper;->a(Landroid/view/View;)V

    .line 7751
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 7146
    const/4 v0, 0x0

    return v0
.end method

.method public e(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1

    .prologue
    .line 9138
    const/4 v0, 0x0

    return v0
.end method

.method public e(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 7798
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->h()I

    move-result v0

    return v0
.end method

.method public e(I)V
    .locals 0

    .prologue
    .line 7567
    return-void
.end method

.method public e(II)V
    .locals 3

    .prologue
    .line 7980
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->j(I)Landroid/view/View;

    move-result-object v0

    .line 7981
    if-nez v0, :cond_0

    .line 7982
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot move a child from non-existing index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7985
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->i(I)V

    .line 7986
    invoke-virtual {p0, v0, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->c(Landroid/view/View;I)V

    .line 7987
    return-void
.end method

.method public e(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7323
    return-void
.end method

.method public e(Z)V
    .locals 0

    .prologue
    .line 7110
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->z:Z

    .line 7111
    return-void
.end method

.method public e(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Z
    .locals 1

    .prologue
    .line 9518
    const/4 v0, 0x0

    return v0
.end method

.method public f(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1

    .prologue
    .line 9183
    const/4 v0, 0x0

    return v0
.end method

.method public f(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 7808
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->i()I

    move-result v0

    return v0
.end method

.method public f()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 9269
    const/4 v0, 0x0

    return-object v0
.end method

.method public f(II)V
    .locals 1

    .prologue
    .line 9242
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->access$1000(Landroid/support/v7/widget/RecyclerView;II)V

    .line 9243
    return-void
.end method

.method f(Landroid/support/v7/widget/RecyclerView;)V
    .locals 3

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 9618
    .line 9619
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 9620
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 9618
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->c(II)V

    .line 9622
    return-void
.end method

.method public final f(Z)V
    .locals 1

    .prologue
    .line 7169
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->b:Z

    if-eq p1, v0, :cond_0

    .line 7170
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->b:Z

    .line 7171
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->A:I

    .line 7172
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 7173
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->b()V

    .line 7176
    :cond_0
    return-void
.end method

.method public g(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1

    .prologue
    .line 9168
    const/4 v0, 0x0

    return v0
.end method

.method public g(Landroid/view/View;)Landroid/view/View;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 7828
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    if-nez v1, :cond_1

    .line 7838
    :cond_0
    :goto_0
    return-object v0

    .line 7831
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 7832
    if-eqz v1, :cond_0

    .line 7835
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->u:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ChildHelper;->c(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 7838
    goto :goto_0
.end method

.method public g(Z)V
    .locals 0

    .prologue
    .line 8437
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a:Z

    .line 8438
    return-void
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 7544
    const/4 v0, 0x0

    return v0
.end method

.method public h(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1

    .prologue
    .line 9213
    const/4 v0, 0x0

    return v0
.end method

.method public h(I)V
    .locals 1

    .prologue
    .line 7762
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->j(I)Landroid/view/View;

    move-result-object v0

    .line 7763
    if-eqz v0, :cond_0

    .line 7764
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->u:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ChildHelper;->a(I)V

    .line 7766
    :cond_0
    return-void
.end method

.method public h(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 7886
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->u:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ChildHelper;->b(Landroid/view/View;)I

    move-result v0

    .line 7887
    if-ltz v0, :cond_0

    .line 7888
    invoke-direct {p0, v0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(ILandroid/view/View;)V

    .line 7890
    :cond_0
    return-void
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 7554
    const/4 v0, 0x0

    return v0
.end method

.method public i(I)V
    .locals 1

    .prologue
    .line 7908
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->j(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(ILandroid/view/View;)V

    .line 7909
    return-void
.end method

.method public i(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 7960
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->c(Landroid/view/View;I)V

    .line 7961
    return-void
.end method

.method public j(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 8056
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->u:Landroid/support/v7/widget/ChildHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->u:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ChildHelper;->b(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 7970
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 7971
    return-void
.end method

.method public k(I)V
    .locals 1

    .prologue
    .line 8225
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 8226
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->offsetChildrenHorizontal(I)V

    .line 8228
    :cond_0
    return-void
.end method

.method public k(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 8259
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 8262
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "View should be fully attached to be ignored"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8264
    :cond_1
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 8265
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->b(I)V

    .line 8266
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->w:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ViewInfoStore;->g(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 8267
    return-void
.end method

.method public l(I)V
    .locals 1

    .prologue
    .line 8237
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 8238
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->offsetChildrenVertical(I)V

    .line 8240
    :cond_0
    return-void
.end method

.method public l(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 8279
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 8280
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->o()V

    .line 8281
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->x()V

    .line 8282
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->b(I)V

    .line 8283
    return-void
.end method

.method public m(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 8601
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->e:Landroid/graphics/Rect;

    .line 8602
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    return v0
.end method

.method public m(I)V
    .locals 0

    .prologue
    .line 9295
    return-void
.end method

.method public n(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 8615
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->e:Landroid/graphics/Rect;

    .line 8616
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    return v0
.end method

.method public o(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 8750
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->u(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public p(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 8762
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->s(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public q(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 8774
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public r(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 8786
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->t(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method r()Z
    .locals 1

    .prologue
    .line 9635
    const/4 v0, 0x0

    return v0
.end method

.method public s(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 8827
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->e:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public t(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 8842
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->e:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public u(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 8857
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->e:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public v(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 8872
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->e:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public x()V
    .locals 1

    .prologue
    .line 6990
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 6991
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->v:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 6993
    :cond_0
    return-void
.end method

.method public y()Z
    .locals 1

    .prologue
    .line 7122
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->z:Z

    return v0
.end method

.method public final z()Z
    .locals 1

    .prologue
    .line 7187
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->b:Z

    return v0
.end method
