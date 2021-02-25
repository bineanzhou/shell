.class public Landroid/support/v7/widget/RecyclerView$RecycledViewPool;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecycledViewPool"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;
    }
.end annotation


# static fields
.field private static final b:I = 0x5


# instance fields
.field a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;",
            ">;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4944
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4967
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->a:Landroid/util/SparseArray;

    .line 4969
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->c:I

    return-void
.end method

.method private c(I)Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;
    .locals 2

    .prologue
    .line 5092
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    .line 5093
    if-nez v0, :cond_0

    .line 5094
    new-instance v0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;-><init>()V

    .line 5095
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5097
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(I)I
    .locals 1

    .prologue
    .line 4993
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->c(I)Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method a(JJ)J
    .locals 7

    .prologue
    const-wide/16 v4, 0x4

    .line 5030
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 5033
    :goto_0
    return-wide p3

    :cond_0
    div-long v0, p1, v4

    const-wide/16 v2, 0x3

    mul-long/2addr v0, v2

    div-long v2, p3, v4

    add-long p3, v0, v2

    goto :goto_0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 4972
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 4973
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    .line 4974
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4972
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 4976
    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 2

    .prologue
    .line 4979
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->c(I)Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object v0

    .line 4980
    iput p2, v0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->b:I

    .line 4981
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->a:Ljava/util/ArrayList;

    .line 4982
    if-eqz v0, :cond_0

    .line 4983
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, p2, :cond_0

    .line 4984
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 4987
    :cond_0
    return-void
.end method

.method a(IJ)V
    .locals 4

    .prologue
    .line 5037
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->c(I)Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object v0

    .line 5038
    iget-wide v2, v0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->c:J

    invoke-virtual {p0, v2, v3, p2, p3}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->a(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->c:J

    .line 5040
    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 1

    .prologue
    .line 5059
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->c:I

    .line 5060
    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView$Adapter;Z)V
    .locals 1

    .prologue
    .line 5080
    if-eqz p1, :cond_0

    .line 5081
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->c()V

    .line 5083
    :cond_0
    if-nez p3, :cond_1

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->c:I

    if-nez v0, :cond_1

    .line 5084
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->a()V

    .line 5086
    :cond_1
    if-eqz p2, :cond_2

    .line 5087
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->a(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 5089
    :cond_2
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 3

    .prologue
    .line 5017
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->i()I

    move-result v0

    .line 5018
    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->c(I)Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object v1

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->a:Ljava/util/ArrayList;

    .line 5019
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->b:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v0, v2, :cond_0

    .line 5027
    :goto_0
    return-void

    .line 5025
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->x()V

    .line 5026
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method a(IJJ)Z
    .locals 4

    .prologue
    .line 5049
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->c(I)Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object v0

    iget-wide v0, v0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->c:J

    .line 5050
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    add-long/2addr v0, p2

    cmp-long v0, v0, p4

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 5006
    move v1, v0

    move v2, v0

    .line 5007
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 5008
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->a:Ljava/util/ArrayList;

    .line 5009
    if-eqz v0, :cond_0

    .line 5010
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v2, v0

    .line 5007
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 5013
    :cond_1
    return v2
.end method

.method public b(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    .prologue
    .line 4997
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    .line 4998
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4999
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->a:Ljava/util/ArrayList;

    .line 5000
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 5002
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(IJ)V
    .locals 4

    .prologue
    .line 5043
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->c(I)Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object v0

    .line 5044
    iget-wide v2, v0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->d:J

    invoke-virtual {p0, v2, v3, p2, p3}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->a(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->d:J

    .line 5046
    return-void
.end method

.method b(IJJ)Z
    .locals 4

    .prologue
    .line 5054
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->c(I)Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object v0

    iget-wide v0, v0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->d:J

    .line 5055
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    add-long/2addr v0, p2

    cmp-long v0, v0, p4

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c()V
    .locals 1

    .prologue
    .line 5063
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->c:I

    .line 5064
    return-void
.end method
