.class public Landroid/support/v7/widget/LinearLayoutManager;
.super Landroid/support/v7/widget/RecyclerView$LayoutManager;
.source "LinearLayoutManager.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;
.implements Landroid/support/v7/widget/helper/ItemTouchHelper$ViewDropHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;,
        Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;,
        Landroid/support/v7/widget/LinearLayoutManager$SavedState;,
        Landroid/support/v7/widget/LinearLayoutManager$LayoutState;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "LinearLayoutManager"

.field private static final b:F = 0.33333334f

.field static final j:Z = false

.field public static final k:I = 0x0

.field public static final l:I = 0x1

.field public static final m:I = -0x80000000


# instance fields
.field private C:I

.field private c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private final i:Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;

.field n:I

.field o:Landroid/support/v7/widget/OrientationHelper;

.field p:Z

.field q:I

.field r:I

.field s:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

.field final t:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 157
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 158
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 166
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;-><init>()V

    .line 97
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Z

    .line 104
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Z

    .line 111
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->f:Z

    .line 117
    iput-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->g:Z

    .line 123
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->q:I

    .line 129
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->r:I

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    .line 139
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;-><init>(Landroid/support/v7/widget/LinearLayoutManager;)V

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->t:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    .line 144
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;

    invoke-direct {v0}, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;

    .line 149
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->C:I

    .line 167
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->b(I)V

    .line 168
    invoke-virtual {p0, p3}, Landroid/support/v7/widget/LinearLayoutManager;->c(Z)V

    .line 169
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->e(Z)V

    .line 170
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 181
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;-><init>()V

    .line 97
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Z

    .line 104
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Z

    .line 111
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->f:Z

    .line 117
    iput-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->g:Z

    .line 123
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->q:I

    .line 129
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->r:I

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    .line 139
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;-><init>(Landroid/support/v7/widget/LinearLayoutManager;)V

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->t:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    .line 144
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;

    invoke-direct {v0}, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;

    .line 149
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->C:I

    .line 182
    invoke-static {p1, p2, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;

    move-result-object v0

    .line 183
    iget v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;->a:I

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->b(I)V

    .line 184
    iget-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;->c:Z

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->c(Z)V

    .line 185
    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;->d:Z

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Z)V

    .line 186
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->e(Z)V

    .line 187
    return-void
.end method

.method private a(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)I
    .locals 3

    .prologue
    .line 888
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->d()I

    move-result v0

    sub-int/2addr v0, p1

    .line 890
    if-lez v0, :cond_1

    .line 891
    neg-int v0, v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->c(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    neg-int v0, v0

    .line 896
    add-int v1, p1, v0

    .line 897
    if-eqz p4, :cond_0

    .line 899
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2}, Landroid/support/v7/widget/OrientationHelper;->d()I

    move-result v2

    sub-int v1, v2, v1

    .line 900
    if-lez v1, :cond_0

    .line 901
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/OrientationHelper;->a(I)V

    .line 902
    add-int/2addr v0, v1

    .line 905
    :cond_0
    :goto_0
    return v0

    .line 893
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(ZZ)Landroid/view/View;
    .locals 2

    .prologue
    .line 1689
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Z

    if-eqz v0, :cond_0

    .line 1690
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->G()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1693
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->G()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private a(II)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 938
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2}, Landroid/support/v7/widget/OrientationHelper;->d()I

    move-result v2

    sub-int/2addr v2, p2

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->j:I

    .line 939
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, v2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->l:I

    .line 941
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iput p1, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->k:I

    .line 942
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->m:I

    .line 943
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iput p2, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->i:I

    .line 944
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    const/high16 v1, -0x80000000

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->n:I

    .line 945
    return-void

    :cond_0
    move v0, v1

    .line 939
    goto :goto_0
.end method

.method private a(IIZLandroid/support/v7/widget/RecyclerView$State;)V
    .locals 6

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 1159
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->p()Z

    move-result v3

    iput-boolean v3, v2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->s:Z

    .line 1160
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p4}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v3

    iput v3, v2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->o:I

    .line 1161
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iput p1, v2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->m:I

    .line 1163
    if-ne p1, v1, :cond_2

    .line 1164
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v3, v2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->o:I

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v4}, Landroid/support/v7/widget/OrientationHelper;->g()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->o:I

    .line 1166
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->ab()Landroid/view/View;

    move-result-object v2

    .line 1168
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget-boolean v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Z

    if-eqz v4, :cond_1

    :goto_0
    iput v0, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->l:I

    .line 1170
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->e(Landroid/view/View;)I

    move-result v1

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->l:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->k:I

    .line 1171
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/OrientationHelper;->b(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->i:I

    .line 1173
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/OrientationHelper;->b(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    .line 1174
    invoke-virtual {v1}, Landroid/support/v7/widget/OrientationHelper;->d()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1186
    :goto_1
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iput p2, v1, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->j:I

    .line 1187
    if-eqz p3, :cond_0

    .line 1188
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v2, v1, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->j:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->j:I

    .line 1190
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->n:I

    .line 1191
    return-void

    :cond_1
    move v0, v1

    .line 1168
    goto :goto_0

    .line 1177
    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->c()Landroid/view/View;

    move-result-object v2

    .line 1178
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v4, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->o:I

    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v5}, Landroid/support/v7/widget/OrientationHelper;->c()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->o:I

    .line 1179
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget-boolean v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Z

    if-eqz v4, :cond_3

    :goto_2
    iput v1, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->l:I

    .line 1181
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->e(Landroid/view/View;)I

    move-result v1

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->l:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->k:I

    .line 1182
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/OrientationHelper;->a(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->i:I

    .line 1183
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/OrientationHelper;->a(Landroid/view/View;)I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    .line 1184
    invoke-virtual {v1}, Landroid/support/v7/widget/OrientationHelper;->c()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_3
    move v1, v0

    .line 1179
    goto :goto_2
.end method

.method private a(Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)V
    .locals 2

    .prologue
    .line 934
    iget v0, p1, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->a:I

    iget v1, p1, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->b:I

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(II)V

    .line 935
    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$Recycler;I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1371
    if-gez p2, :cond_1

    .line 1402
    :cond_0
    :goto_0
    return-void

    .line 1380
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->G()I

    move-result v2

    .line 1381
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Z

    if-eqz v0, :cond_4

    .line 1382
    add-int/lit8 v0, v2, -0x1

    :goto_1
    if-ltz v0, :cond_0

    .line 1383
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->j(I)Landroid/view/View;

    move-result-object v1

    .line 1384
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/OrientationHelper;->b(Landroid/view/View;)I

    move-result v3

    if-gt v3, p2, :cond_2

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    .line 1385
    invoke-virtual {v3, v1}, Landroid/support/v7/widget/OrientationHelper;->c(Landroid/view/View;)I

    move-result v1

    if-le v1, p2, :cond_3

    .line 1387
    :cond_2
    add-int/lit8 v1, v2, -0x1

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;II)V

    goto :goto_0

    .line 1382
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    move v0, v1

    .line 1392
    :goto_2
    if-ge v0, v2, :cond_0

    .line 1393
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->j(I)Landroid/view/View;

    move-result-object v3

    .line 1394
    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/OrientationHelper;->b(Landroid/view/View;)I

    move-result v4

    if-gt v4, p2, :cond_5

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    .line 1395
    invoke-virtual {v4, v3}, Landroid/support/v7/widget/OrientationHelper;->c(Landroid/view/View;)I

    move-result v3

    if-le v3, p2, :cond_6

    .line 1397
    :cond_5
    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;II)V

    goto :goto_0

    .line 1392
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$Recycler;II)V
    .locals 1

    .prologue
    .line 1343
    if-ne p2, p3, :cond_1

    .line 1358
    :cond_0
    return-void

    .line 1349
    :cond_1
    if-le p3, p2, :cond_2

    .line 1350
    add-int/lit8 v0, p3, -0x1

    :goto_0
    if-lt v0, p2, :cond_0

    .line 1351
    invoke-virtual {p0, v0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->b(ILandroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 1350
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1354
    :cond_2
    :goto_1
    if-le p2, p3, :cond_0

    .line 1355
    invoke-virtual {p0, p2, p1}, Landroid/support/v7/widget/LinearLayoutManager;->b(ILandroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 1354
    add-int/lit8 p2, p2, -0x1

    goto :goto_1
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;)V
    .locals 2

    .prologue
    .line 1460
    iget-boolean v0, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->s:Z

    if-eqz v0, :cond_1

    .line 1468
    :cond_0
    :goto_0
    return-void

    .line 1463
    :cond_1
    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->m:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 1464
    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->n:I

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$Recycler;I)V

    goto :goto_0

    .line 1466
    :cond_2
    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->n:I

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;I)V

    goto :goto_0
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)V
    .locals 1

    .prologue
    .line 733
    invoke-direct {p0, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 751
    :cond_0
    :goto_0
    return-void

    .line 740
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 749
    invoke-virtual {p3}, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->b()V

    .line 750
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->f:Z

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->i()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    iput v0, p3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->a:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)Z
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/high16 v4, -0x80000000

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 802
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->q:I

    if-ne v0, v5, :cond_1

    :cond_0
    move v1, v2

    .line 880
    :goto_0
    return v1

    .line 806
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->q:I

    if-ltz v0, :cond_2

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->q:I

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->i()I

    move-result v3

    if-lt v0, v3, :cond_3

    .line 807
    :cond_2
    iput v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->q:I

    .line 808
    iput v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->r:I

    move v1, v2

    .line 812
    goto :goto_0

    .line 817
    :cond_3
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->q:I

    iput v0, p2, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->a:I

    .line 818
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 821
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget-boolean v0, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->c:Z

    iput-boolean v0, p2, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->c:Z

    .line 822
    iget-boolean v0, p2, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->c:Z

    if-eqz v0, :cond_4

    .line 823
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->d()I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget v2, v2, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->b:I

    sub-int/2addr v0, v2

    iput v0, p2, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->b:I

    goto :goto_0

    .line 826
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->c()I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget v2, v2, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->b:I

    add-int/2addr v0, v2

    iput v0, p2, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->b:I

    goto :goto_0

    .line 832
    :cond_5
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->r:I

    if-ne v0, v4, :cond_e

    .line 833
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->q:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    .line 834
    if-eqz v0, :cond_a

    .line 835
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/OrientationHelper;->e(Landroid/view/View;)I

    move-result v3

    .line 836
    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v4}, Landroid/support/v7/widget/OrientationHelper;->f()I

    move-result v4

    if-le v3, v4, :cond_6

    .line 838
    invoke-virtual {p2}, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->b()V

    goto :goto_0

    .line 841
    :cond_6
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/OrientationHelper;->a(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    .line 842
    invoke-virtual {v4}, Landroid/support/v7/widget/OrientationHelper;->c()I

    move-result v4

    sub-int/2addr v3, v4

    .line 843
    if-gez v3, :cond_7

    .line 844
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->c()I

    move-result v0

    iput v0, p2, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->b:I

    .line 845
    iput-boolean v2, p2, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->c:Z

    goto :goto_0

    .line 848
    :cond_7
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2}, Landroid/support/v7/widget/OrientationHelper;->d()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    .line 849
    invoke-virtual {v3, v0}, Landroid/support/v7/widget/OrientationHelper;->b(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 850
    if-gez v2, :cond_8

    .line 851
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->d()I

    move-result v0

    iput v0, p2, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->b:I

    .line 852
    iput-boolean v1, p2, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->c:Z

    goto/16 :goto_0

    .line 855
    :cond_8
    iget-boolean v2, p2, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->c:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    .line 856
    invoke-virtual {v2, v0}, Landroid/support/v7/widget/OrientationHelper;->b(Landroid/view/View;)I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    .line 857
    invoke-virtual {v2}, Landroid/support/v7/widget/OrientationHelper;->b()I

    move-result v2

    add-int/2addr v0, v2

    .line 858
    :goto_1
    iput v0, p2, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->b:I

    goto/16 :goto_0

    .line 857
    :cond_9
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    .line 858
    invoke-virtual {v2, v0}, Landroid/support/v7/widget/OrientationHelper;->a(Landroid/view/View;)I

    move-result v0

    goto :goto_1

    .line 860
    :cond_a
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->G()I

    move-result v0

    if-lez v0, :cond_c

    .line 862
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->j(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->e(Landroid/view/View;)I

    move-result v0

    .line 863
    iget v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->q:I

    if-ge v3, v0, :cond_d

    move v0, v1

    :goto_2
    iget-boolean v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Z

    if-ne v0, v3, :cond_b

    move v2, v1

    :cond_b
    iput-boolean v2, p2, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->c:Z

    .line 866
    :cond_c
    invoke-virtual {p2}, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->b()V

    goto/16 :goto_0

    :cond_d
    move v0, v2

    .line 863
    goto :goto_2

    .line 871
    :cond_e
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Z

    iput-boolean v0, p2, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->c:Z

    .line 873
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Z

    if-eqz v0, :cond_f

    .line 874
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->d()I

    move-result v0

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->r:I

    sub-int/2addr v0, v2

    iput v0, p2, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->b:I

    goto/16 :goto_0

    .line 877
    :cond_f
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->c()I

    move-result v0

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->r:I

    add-int/2addr v0, v2

    iput v0, p2, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->b:I

    goto/16 :goto_0
.end method

.method private ab()Landroid/view/View;
    .locals 1

    .prologue
    .line 1677
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->j(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->G()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private ac()V
    .locals 5

    .prologue
    .line 1943
    const-string v0, "LinearLayoutManager"

    const-string v1, "internal representation of views on the screen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->G()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1945
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->j(I)Landroid/view/View;

    move-result-object v1

    .line 1946
    const-string v2, "LinearLayoutManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "item "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->e(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", coord:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    .line 1947
    invoke-virtual {v4, v1}, Landroid/support/v7/widget/OrientationHelper;->a(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1946
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1949
    :cond_0
    const-string v0, "LinearLayoutManager"

    const-string v1, "=============="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1950
    return-void
.end method

.method private b(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)I
    .locals 4

    .prologue
    .line 913
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->c()I

    move-result v0

    sub-int v0, p1, v0

    .line 915
    if-lez v0, :cond_1

    .line 917
    invoke-virtual {p0, v0, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->c(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    neg-int v0, v0

    .line 921
    add-int v1, p1, v0

    .line 922
    if-eqz p4, :cond_0

    .line 924
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2}, Landroid/support/v7/widget/OrientationHelper;->c()I

    move-result v2

    sub-int/2addr v1, v2

    .line 925
    if-lez v1, :cond_0

    .line 926
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    neg-int v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/OrientationHelper;->a(I)V

    .line 927
    sub-int/2addr v0, v1

    .line 930
    :cond_0
    :goto_0
    return v0

    .line 919
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(ZZ)Landroid/view/View;
    .locals 2

    .prologue
    .line 1707
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Z

    if-eqz v0, :cond_0

    .line 1708
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->G()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1711
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->G()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private b()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 354
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:I

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()Z

    move-result v1

    if-nez v1, :cond_1

    .line 355
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Z

    .line 359
    :goto_0
    return-void

    .line 357
    :cond_1
    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Z

    if-nez v1, :cond_2

    :goto_1
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private b(Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)V
    .locals 2

    .prologue
    .line 948
    iget v0, p1, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->a:I

    iget v1, p1, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->b:I

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->g(II)V

    .line 949
    return-void
.end method

.method private b(Landroid/support/v7/widget/RecyclerView$Recycler;I)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1416
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->G()I

    move-result v2

    .line 1417
    if-gez p2, :cond_1

    .line 1446
    :cond_0
    :goto_0
    return-void

    .line 1424
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->e()I

    move-result v0

    sub-int v3, v0, p2

    .line 1425
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Z

    if-eqz v0, :cond_4

    move v0, v1

    .line 1426
    :goto_1
    if-ge v0, v2, :cond_0

    .line 1427
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->j(I)Landroid/view/View;

    move-result-object v4

    .line 1428
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v5, v4}, Landroid/support/v7/widget/OrientationHelper;->a(Landroid/view/View;)I

    move-result v5

    if-lt v5, v3, :cond_2

    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    .line 1429
    invoke-virtual {v5, v4}, Landroid/support/v7/widget/OrientationHelper;->d(Landroid/view/View;)I

    move-result v4

    if-ge v4, v3, :cond_3

    .line 1431
    :cond_2
    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;II)V

    goto :goto_0

    .line 1426
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1436
    :cond_4
    add-int/lit8 v0, v2, -0x1

    :goto_2
    if-ltz v0, :cond_0

    .line 1437
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->j(I)Landroid/view/View;

    move-result-object v1

    .line 1438
    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v4, v1}, Landroid/support/v7/widget/OrientationHelper;->a(Landroid/view/View;)I

    move-result v4

    if-lt v4, v3, :cond_5

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    .line 1439
    invoke-virtual {v4, v1}, Landroid/support/v7/widget/OrientationHelper;->d(Landroid/view/View;)I

    move-result v1

    if-ge v1, v3, :cond_6

    .line 1441
    :cond_5
    add-int/lit8 v1, v2, -0x1

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;II)V

    goto :goto_0

    .line 1436
    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method private b(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V
    .locals 9

    .prologue
    .line 682
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->G()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 683
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 729
    :cond_0
    :goto_0
    return-void

    .line 687
    :cond_1
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 688
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->c()Ljava/util/List;

    move-result-object v5

    .line 689
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 690
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->j(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->e(Landroid/view/View;)I

    move-result v7

    .line 691
    const/4 v0, 0x0

    move v4, v0

    :goto_1
    if-ge v4, v6, :cond_6

    .line 692
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 693
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->s()Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v2

    move v1, v3

    .line 691
    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v3, v1

    move v2, v0

    goto :goto_1

    .line 696
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->e()I

    move-result v1

    .line 697
    if-ge v1, v7, :cond_3

    const/4 v1, 0x1

    :goto_3
    iget-boolean v8, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Z

    if-eq v1, v8, :cond_4

    const/4 v1, -0x1

    .line 699
    :goto_4
    const/4 v8, -0x1

    if-ne v1, v8, :cond_5

    .line 700
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/OrientationHelper;->e(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v3

    move v1, v0

    move v0, v2

    goto :goto_2

    .line 697
    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    :cond_4
    const/4 v1, 0x1

    goto :goto_4

    .line 702
    :cond_5
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/OrientationHelper;->e(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v2

    move v1, v3

    goto :goto_2

    .line 710
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iput-object v5, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->r:Ljava/util/List;

    .line 711
    if-lez v3, :cond_7

    .line 712
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->c()Landroid/view/View;

    move-result-object v0

    .line 713
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->e(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/support/v7/widget/LinearLayoutManager;->g(II)V

    .line 714
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iput v3, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->o:I

    .line 715
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->j:I

    .line 716
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->a()V

    .line 717
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$State;Z)I

    .line 720
    :cond_7
    if-lez v2, :cond_8

    .line 721
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->ab()Landroid/view/View;

    move-result-object v0

    .line 722
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->e(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0, p4}, Landroid/support/v7/widget/LinearLayoutManager;->a(II)V

    .line 723
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->o:I

    .line 724
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->j:I

    .line 725
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->a()V

    .line 726
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$State;Z)I

    .line 728
    :cond_8
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->r:Ljava/util/List;

    goto/16 :goto_0
.end method

.method private b(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 761
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->G()I

    move-result v2

    if-nez v2, :cond_1

    .line 794
    :cond_0
    :goto_0
    return v0

    .line 764
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->T()Landroid/view/View;

    move-result-object v2

    .line 765
    if-eqz v2, :cond_2

    invoke-virtual {p3, v2, p2}, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 766
    invoke-virtual {p3, v2}, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->a(Landroid/view/View;)V

    move v0, v1

    .line 767
    goto :goto_0

    .line 769
    :cond_2
    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Z

    iget-boolean v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->f:Z

    if-ne v2, v3, :cond_0

    .line 772
    iget-boolean v2, p3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->c:Z

    if-eqz v2, :cond_6

    .line 773
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->f(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v2

    .line 775
    :goto_1
    if-eqz v2, :cond_0

    .line 776
    invoke-virtual {p3, v2}, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->b(Landroid/view/View;)V

    .line 779
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->c()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->d()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 781
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    .line 782
    invoke-virtual {v3, v2}, Landroid/support/v7/widget/OrientationHelper;->a(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    .line 783
    invoke-virtual {v4}, Landroid/support/v7/widget/OrientationHelper;->d()I

    move-result v4

    if-ge v3, v4, :cond_3

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    .line 784
    invoke-virtual {v3, v2}, Landroid/support/v7/widget/OrientationHelper;->b(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    .line 785
    invoke-virtual {v3}, Landroid/support/v7/widget/OrientationHelper;->c()I

    move-result v3

    if-ge v2, v3, :cond_4

    :cond_3
    move v0, v1

    .line 786
    :cond_4
    if-eqz v0, :cond_5

    .line 787
    iget-boolean v0, p3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->c:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    .line 788
    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->d()I

    move-result v0

    .line 789
    :goto_2
    iput v0, p3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->b:I

    :cond_5
    move v0, v1

    .line 792
    goto :goto_0

    .line 774
    :cond_6
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->g(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v2

    goto :goto_1

    .line 788
    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    .line 789
    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->c()I

    move-result v0

    goto :goto_2
.end method

.method private c()Landroid/view/View;
    .locals 1

    .prologue
    .line 1667
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->G()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->j(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1729
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->h(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v0

    .line 1730
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->i(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private g(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1746
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->i(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v0

    .line 1747
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->h(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private g(II)V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 952
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2}, Landroid/support/v7/widget/OrientationHelper;->c()I

    move-result v2

    sub-int v2, p2, v2

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->j:I

    .line 953
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iput p1, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->k:I

    .line 954
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, v2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->l:I

    .line 956
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->m:I

    .line 957
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iput p2, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->i:I

    .line 958
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    const/high16 v1, -0x80000000

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->n:I

    .line 960
    return-void

    :cond_0
    move v0, v1

    .line 954
    goto :goto_0
.end method

.method private h(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .locals 6

    .prologue
    .line 1751
    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->G()I

    move-result v4

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->i()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;III)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private i(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1092
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->G()I

    move-result v0

    if-nez v0, :cond_0

    .line 1096
    :goto_0
    return v4

    .line 1095
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->m()V

    .line 1096
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->g:Z

    if-nez v0, :cond_2

    move v0, v3

    .line 1097
    :goto_1
    invoke-direct {p0, v0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->a(ZZ)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->g:Z

    if-nez v0, :cond_1

    move v4, v3

    .line 1098
    :cond_1
    invoke-direct {p0, v4, v3}, Landroid/support/v7/widget/LinearLayoutManager;->b(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->g:Z

    iget-boolean v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Z

    move-object v0, p1

    move-object v4, p0

    .line 1096
    invoke-static/range {v0 .. v6}, Landroid/support/v7/widget/ScrollbarHelper;->a(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$LayoutManager;ZZ)I

    move-result v4

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method private i(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .locals 6

    .prologue
    .line 1755
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->G()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    const/4 v4, -0x1

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->i()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;III)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private j(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1103
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->G()I

    move-result v0

    if-nez v0, :cond_0

    .line 1107
    :goto_0
    return v4

    .line 1106
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->m()V

    .line 1107
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->g:Z

    if-nez v0, :cond_2

    move v0, v3

    .line 1108
    :goto_1
    invoke-direct {p0, v0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->a(ZZ)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->g:Z

    if-nez v0, :cond_1

    move v4, v3

    .line 1109
    :cond_1
    invoke-direct {p0, v4, v3}, Landroid/support/v7/widget/LinearLayoutManager;->b(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->g:Z

    move-object v0, p1

    move-object v4, p0

    .line 1107
    invoke-static/range {v0 .. v5}, Landroid/support/v7/widget/ScrollbarHelper;->a(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$LayoutManager;Z)I

    move-result v4

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method private k(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1114
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->G()I

    move-result v0

    if-nez v0, :cond_0

    .line 1118
    :goto_0
    return v4

    .line 1117
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->m()V

    .line 1118
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->g:Z

    if-nez v0, :cond_2

    move v0, v3

    .line 1119
    :goto_1
    invoke-direct {p0, v0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->a(ZZ)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->g:Z

    if-nez v0, :cond_1

    move v4, v3

    .line 1120
    :cond_1
    invoke-direct {p0, v4, v3}, Landroid/support/v7/widget/LinearLayoutManager;->b(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->g:Z

    move-object v0, p1

    move-object v4, p0

    .line 1118
    invoke-static/range {v0 .. v5}, Landroid/support/v7/widget/ScrollbarHelper;->b(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$LayoutManager;Z)I

    move-result v4

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1
.end method


# virtual methods
.method public a(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 2

    .prologue
    .line 1043
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1044
    const/4 v0, 0x0

    .line 1046
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->c(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_0
.end method

.method a(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$State;Z)I
    .locals 7

    .prologue
    const/high16 v6, -0x80000000

    .line 1484
    iget v1, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->j:I

    .line 1485
    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->n:I

    if-eq v0, v6, :cond_1

    .line 1487
    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->j:I

    if-gez v0, :cond_0

    .line 1488
    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->n:I

    iget v2, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->j:I

    add-int/2addr v0, v2

    iput v0, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->n:I

    .line 1490
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;)V

    .line 1492
    :cond_1
    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->j:I

    iget v2, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->o:I

    add-int/2addr v0, v2

    .line 1493
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;

    .line 1494
    :cond_2
    iget-boolean v3, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->s:Z

    if-nez v3, :cond_3

    if-lez v0, :cond_4

    :cond_3
    invoke-virtual {p2, p3}, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->a(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1495
    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->a()V

    .line 1496
    invoke-virtual {p0, p1, p3, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;)V

    .line 1497
    iget-boolean v3, v2, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->b:Z

    if-eqz v3, :cond_5

    .line 1528
    :cond_4
    :goto_0
    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->j:I

    sub-int v0, v1, v0

    return v0

    .line 1500
    :cond_5
    iget v3, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->i:I

    iget v4, v2, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->a:I

    iget v5, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->m:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->i:I

    .line 1507
    iget-boolean v3, v2, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->c:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->r:Ljava/util/List;

    if-nez v3, :cond_6

    .line 1508
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$State;->c()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1509
    :cond_6
    iget v3, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->j:I

    iget v4, v2, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->a:I

    sub-int/2addr v3, v4

    iput v3, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->j:I

    .line 1511
    iget v3, v2, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->a:I

    sub-int/2addr v0, v3

    .line 1514
    :cond_7
    iget v3, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->n:I

    if-eq v3, v6, :cond_9

    .line 1515
    iget v3, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->n:I

    iget v4, v2, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->a:I

    add-int/2addr v3, v4

    iput v3, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->n:I

    .line 1516
    iget v3, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->j:I

    if-gez v3, :cond_8

    .line 1517
    iget v3, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->n:I

    iget v4, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->j:I

    add-int/2addr v3, v4

    iput v3, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->n:I

    .line 1519
    :cond_8
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;)V

    .line 1521
    :cond_9
    if-eqz p4, :cond_2

    iget-boolean v3, v2, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->d:Z

    if-eqz v3, :cond_2

    goto :goto_0
.end method

.method public a()Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 194
    new-instance v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method a(IIZZ)Landroid/view/View;
    .locals 7

    .prologue
    .line 1870
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->m()V

    .line 1871
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->c()I

    move-result v3

    .line 1872
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->d()I

    move-result v4

    .line 1873
    if-le p2, p1, :cond_1

    const/4 v0, 0x1

    .line 1874
    :goto_0
    const/4 v2, 0x0

    .line 1875
    :goto_1
    if-eq p1, p2, :cond_3

    .line 1876
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->j(I)Landroid/view/View;

    move-result-object v1

    .line 1877
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v5, v1}, Landroid/support/v7/widget/OrientationHelper;->a(Landroid/view/View;)I

    move-result v5

    .line 1878
    iget-object v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v6, v1}, Landroid/support/v7/widget/OrientationHelper;->b(Landroid/view/View;)I

    move-result v6

    .line 1879
    if-ge v5, v4, :cond_4

    if-le v6, v3, :cond_4

    .line 1880
    if-eqz p3, :cond_0

    .line 1881
    if-lt v5, v3, :cond_2

    if-gt v6, v4, :cond_2

    .line 1891
    :cond_0
    :goto_2
    return-object v1

    .line 1873
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 1883
    :cond_2
    if-eqz p4, :cond_4

    if-nez v2, :cond_4

    .line 1875
    :goto_3
    add-int/2addr p1, v0

    move-object v2, v1

    goto :goto_1

    :cond_3
    move-object v1, v2

    .line 1891
    goto :goto_2

    :cond_4
    move-object v1, v2

    goto :goto_3
.end method

.method a(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;III)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1761
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->m()V

    .line 1764
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->c()I

    move-result v5

    .line 1765
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->d()I

    move-result v6

    .line 1766
    if-le p4, p3, :cond_0

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    move-object v4, v2

    .line 1767
    :goto_1
    if-eq p3, p4, :cond_3

    .line 1768
    invoke-virtual {p0, p3}, Landroid/support/v7/widget/LinearLayoutManager;->j(I)Landroid/view/View;

    move-result-object v3

    .line 1769
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->e(Landroid/view/View;)I

    move-result v0

    .line 1770
    if-ltz v0, :cond_6

    if-ge v0, p5, :cond_6

    .line 1771
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1772
    if-nez v4, :cond_6

    move-object v0, v2

    .line 1767
    :goto_2
    add-int/2addr p3, v1

    move-object v2, v0

    move-object v4, v3

    goto :goto_1

    .line 1766
    :cond_0
    const/4 v0, -0x1

    move v1, v0

    goto :goto_0

    .line 1775
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/OrientationHelper;->a(Landroid/view/View;)I

    move-result v0

    if-ge v0, v6, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    .line 1776
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/OrientationHelper;->b(Landroid/view/View;)I

    move-result v0

    if-ge v0, v5, :cond_4

    .line 1777
    :cond_2
    if-nez v2, :cond_6

    move-object v0, v3

    move-object v3, v4

    .line 1778
    goto :goto_2

    .line 1785
    :cond_3
    if-eqz v2, :cond_5

    :goto_3
    move-object v3, v2

    :cond_4
    return-object v3

    :cond_5
    move-object v2, v4

    goto :goto_3

    :cond_6
    move-object v0, v2

    move-object v3, v4

    goto :goto_2
.end method

.method public a(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/high16 v5, -0x80000000

    const/4 v0, 0x0

    .line 1897
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->b()V

    .line 1898
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->G()I

    move-result v1

    if-nez v1, :cond_1

    .line 1935
    :cond_0
    :goto_0
    return-object v0

    .line 1902
    :cond_1
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->g(I)I

    move-result v3

    .line 1903
    if-eq v3, v5, :cond_0

    .line 1906
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->m()V

    .line 1908
    if-ne v3, v6, :cond_2

    .line 1909
    invoke-direct {p0, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;->g(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    .line 1913
    :goto_1
    if-eqz v2, :cond_0

    .line 1920
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->m()V

    .line 1921
    const v1, 0x3eaaaaab

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v4}, Landroid/support/v7/widget/OrientationHelper;->f()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v1, v4

    float-to-int v1, v1

    .line 1922
    invoke-direct {p0, v3, v1, v7, p4}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZLandroid/support/v7/widget/RecyclerView$State;)V

    .line 1923
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iput v5, v1, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->n:I

    .line 1924
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iput-boolean v7, v1, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->h:Z

    .line 1925
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    const/4 v4, 0x1

    invoke-virtual {p0, p3, v1, p4, v4}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$State;Z)I

    .line 1927
    if-ne v3, v6, :cond_3

    .line 1928
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->c()Landroid/view/View;

    move-result-object v1

    .line 1932
    :goto_2
    if-eq v1, v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 1935
    goto :goto_0

    .line 1911
    :cond_2
    invoke-direct {p0, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;->f(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    goto :goto_1

    .line 1930
    :cond_3
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->ab()Landroid/view/View;

    move-result-object v1

    goto :goto_2
.end method

.method public a(IILandroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1291
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:I

    if-nez v0, :cond_1

    .line 1292
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->G()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    .line 1301
    :cond_0
    :goto_1
    return-void

    :cond_1
    move p1, p2

    .line 1291
    goto :goto_0

    .line 1297
    :cond_2
    if-lez p1, :cond_3

    move v0, v1

    .line 1298
    :goto_2
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 1299
    invoke-direct {p0, v0, v2, v1, p3}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZLandroid/support/v7/widget/RecyclerView$State;)V

    .line 1300
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p3, v0, p4}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V

    goto :goto_1

    .line 1297
    :cond_3
    const/4 v0, -0x1

    goto :goto_2
.end method

.method public a(ILandroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 5

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 1211
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1213
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget-boolean v0, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->c:Z

    .line 1214
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->a:I

    .line 1225
    :goto_0
    if-eqz v0, :cond_3

    move v0, v2

    :goto_1
    move v2, v1

    .line 1229
    :goto_2
    iget v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->C:I

    if-ge v2, v4, :cond_4

    .line 1230
    if-ltz v3, :cond_4

    if-ge v3, p1, :cond_4

    .line 1231
    invoke-interface {p2, v3, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->b(II)V

    .line 1235
    add-int/2addr v3, v0

    .line 1229
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1216
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->b()V

    .line 1217
    iget-boolean v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Z

    .line 1218
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->q:I

    if-ne v0, v2, :cond_2

    .line 1219
    if-eqz v4, :cond_1

    add-int/lit8 v0, p1, -0x1

    :goto_3
    move v3, v0

    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_3

    .line 1221
    :cond_2
    iget v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->q:I

    move v0, v4

    goto :goto_0

    .line 1225
    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    .line 1237
    :cond_4
    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 275
    instance-of v0, p1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 276
    check-cast p1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iput-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    .line 277
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->x()V

    .line 284
    :cond_0
    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;I)V
    .locals 0

    .prologue
    .line 671
    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;)V
    .locals 8

    .prologue
    const/4 v4, -0x1

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 1533
    invoke-virtual {p3, p1}, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->a(Landroid/support/v7/widget/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object v1

    .line 1534
    if-nez v1, :cond_0

    .line 1540
    iput-boolean v7, p4, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->b:Z

    .line 1602
    :goto_0
    return-void

    .line 1543
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 1544
    iget-object v0, p3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->r:Ljava/util/List;

    if-nez v0, :cond_5

    .line 1545
    iget-boolean v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Z

    iget v0, p3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->m:I

    if-ne v0, v4, :cond_3

    move v0, v7

    :goto_1
    if-ne v3, v0, :cond_4

    .line 1547
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->c(Landroid/view/View;)V

    .line 1559
    :goto_2
    invoke-virtual {p0, v1, v2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/view/View;II)V

    .line 1560
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/OrientationHelper;->e(Landroid/view/View;)I

    move-result v0

    iput v0, p4, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->a:I

    .line 1562
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:I

    if-ne v0, v7, :cond_a

    .line 1563
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1564
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->J()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->N()I

    move-result v2

    sub-int/2addr v0, v2

    .line 1565
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/OrientationHelper;->f(Landroid/view/View;)I

    move-result v2

    sub-int v2, v0, v2

    .line 1570
    :goto_3
    iget v3, p3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->m:I

    if-ne v3, v4, :cond_9

    .line 1571
    iget v5, p3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->i:I

    .line 1572
    iget v3, p3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->i:I

    iget v4, p4, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->a:I

    sub-int/2addr v3, v4

    move v4, v0

    :goto_4
    move-object v0, p0

    .line 1591
    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/view/View;IIII)V

    .line 1598
    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->e()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1599
    :cond_1
    iput-boolean v7, p4, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->c:Z

    .line 1601
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->isFocusable()Z

    move-result v0

    iput-boolean v0, p4, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->d:Z

    goto :goto_0

    :cond_3
    move v0, v2

    .line 1545
    goto :goto_1

    .line 1549
    :cond_4
    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/view/View;I)V

    goto :goto_2

    .line 1552
    :cond_5
    iget-boolean v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Z

    iget v0, p3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->m:I

    if-ne v0, v4, :cond_6

    move v0, v7

    :goto_5
    if-ne v3, v0, :cond_7

    .line 1554
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/view/View;)V

    goto :goto_2

    :cond_6
    move v0, v2

    .line 1552
    goto :goto_5

    .line 1556
    :cond_7
    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;I)V

    goto :goto_2

    .line 1567
    :cond_8
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->L()I

    move-result v2

    .line 1568
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/OrientationHelper;->f(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_3

    .line 1574
    :cond_9
    iget v3, p3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->i:I

    .line 1575
    iget v4, p3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->i:I

    iget v5, p4, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->a:I

    add-int/2addr v5, v4

    move v4, v0

    goto :goto_4

    .line 1578
    :cond_a
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->M()I

    move-result v3

    .line 1579
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/OrientationHelper;->f(Landroid/view/View;)I

    move-result v0

    add-int v5, v3, v0

    .line 1581
    iget v0, p3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->m:I

    if-ne v0, v4, :cond_b

    .line 1582
    iget v0, p3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->i:I

    .line 1583
    iget v2, p3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->i:I

    iget v4, p4, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->a:I

    sub-int/2addr v2, v4

    move v4, v0

    goto :goto_4

    .line 1585
    :cond_b
    iget v2, p3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->i:I

    .line 1586
    iget v0, p3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->i:I

    iget v4, p4, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->a:I

    add-int/2addr v0, v4

    move v4, v0

    goto :goto_4
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 1

    .prologue
    .line 653
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/support/v7/widget/RecyclerView$State;)V

    .line 654
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    .line 655
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->q:I

    .line 656
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->r:I

    .line 657
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->t:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->a()V

    .line 658
    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 2

    .prologue
    .line 1200
    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->k:I

    .line 1201
    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->i()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1202
    iget v1, p2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->n:I

    invoke-interface {p3, v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->b(II)V

    .line 1204
    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$Recycler;)V
    .locals 1

    .prologue
    .line 228
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 229
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:Z

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->c(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 231
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$Recycler;->a()V

    .line 233
    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V
    .locals 2

    .prologue
    .line 446
    new-instance v0, Landroid/support/v7/widget/LinearSmoothScroller;

    .line 447
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    .line 448
    invoke-virtual {v0, p3}, Landroid/support/v7/widget/LinearSmoothScroller;->d(I)V

    .line 449
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    .line 450
    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/View;II)V
    .locals 5
    .annotation build Landroid/support/annotation/RestrictTo;
        a = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, -0x1

    .line 2013
    const-string v0, "Cannot drop a view during a scroll or layout calculation"

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Ljava/lang/String;)V

    .line 2014
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->m()V

    .line 2015
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->b()V

    .line 2016
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->e(Landroid/view/View;)I

    move-result v0

    .line 2017
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->e(Landroid/view/View;)I

    move-result v3

    .line 2018
    if-ge v0, v3, :cond_0

    move v0, v1

    .line 2020
    :goto_0
    iget-boolean v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Z

    if-eqz v4, :cond_2

    .line 2021
    if-ne v0, v1, :cond_1

    .line 2022
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    .line 2023
    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->d()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    .line 2024
    invoke-virtual {v1, p2}, Landroid/support/v7/widget/OrientationHelper;->a(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    .line 2025
    invoke-virtual {v2, p1}, Landroid/support/v7/widget/OrientationHelper;->e(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 2022
    invoke-virtual {p0, v3, v0}, Landroid/support/v7/widget/LinearLayoutManager;->b(II)V

    .line 2040
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 2018
    goto :goto_0

    .line 2027
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    .line 2028
    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->d()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    .line 2029
    invoke-virtual {v1, p2}, Landroid/support/v7/widget/OrientationHelper;->b(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 2027
    invoke-virtual {p0, v3, v0}, Landroid/support/v7/widget/LinearLayoutManager;->b(II)V

    goto :goto_1

    .line 2032
    :cond_2
    if-ne v0, v2, :cond_3

    .line 2033
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/OrientationHelper;->a(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v3, v0}, Landroid/support/v7/widget/LinearLayoutManager;->b(II)V

    goto :goto_1

    .line 2035
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    .line 2036
    invoke-virtual {v0, p2}, Landroid/support/v7/widget/OrientationHelper;->b(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    .line 2037
    invoke-virtual {v1, p1}, Landroid/support/v7/widget/OrientationHelper;->e(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 2035
    invoke-virtual {p0, v3, v0}, Landroid/support/v7/widget/LinearLayoutManager;->b(II)V

    goto :goto_1
.end method

.method public a(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .prologue
    .line 237
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 238
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->G()I

    move-result v0

    if-lez v0, :cond_0

    .line 240
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->asRecord(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    move-result-object v0

    .line 241
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->s()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setFromIndex(I)V

    .line 242
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->u()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setToIndex(I)V

    .line 244
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1331
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    .line 1332
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(Ljava/lang/String;)V

    .line 1334
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Ljava/lang/String;)V

    .line 307
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->f:Z

    if-ne v0, p1, :cond_0

    .line 312
    :goto_0
    return-void

    .line 310
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->f:Z

    .line 311
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->x()V

    goto :goto_0
.end method

.method public b(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1

    .prologue
    .line 1055
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:I

    if-nez v0, :cond_0

    .line 1056
    const/4 v0, 0x0

    .line 1058
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->c(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_0
.end method

.method protected b(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1

    .prologue
    .line 436
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->f()I

    move-result v0

    .line 439
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 335
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 336
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid orientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 338
    :cond_0
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Ljava/lang/String;)V

    .line 339
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:I

    if-ne p1, v0, :cond_1

    .line 345
    :goto_0
    return-void

    .line 342
    :cond_1
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:I

    .line 343
    iput-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    .line 344
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->x()V

    goto :goto_0
.end method

.method public b(II)V
    .locals 1

    .prologue
    .line 1028
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->q:I

    .line 1029
    iput p2, p0, Landroid/support/v7/widget/LinearLayoutManager;->r:I

    .line 1030
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 1031
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->b()V

    .line 1033
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->x()V

    .line 1034
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 223
    iput-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:Z

    .line 224
    return-void
.end method

.method c(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1304
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->G()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move p1, v2

    .line 1326
    :goto_0
    return p1

    .line 1307
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iput-boolean v1, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->h:Z

    .line 1308
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->m()V

    .line 1309
    if-lez p1, :cond_2

    move v0, v1

    .line 1310
    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1311
    invoke-direct {p0, v0, v3, v1, p3}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZLandroid/support/v7/widget/RecyclerView$State;)V

    .line 1312
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->n:I

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    .line 1313
    invoke-virtual {p0, p2, v4, p3, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$State;Z)I

    move-result v4

    add-int/2addr v1, v4

    .line 1314
    if-gez v1, :cond_3

    move p1, v2

    .line 1318
    goto :goto_0

    .line 1309
    :cond_2
    const/4 v0, -0x1

    goto :goto_1

    .line 1320
    :cond_3
    if-le v3, v1, :cond_4

    mul-int p1, v0, v1

    .line 1321
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/OrientationHelper;->a(I)V

    .line 1325
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iput p1, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->q:I

    goto :goto_0
.end method

.method public c(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1

    .prologue
    .line 1063
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->i(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public c(I)Landroid/view/View;
    .locals 2

    .prologue
    .line 399
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->G()I

    move-result v0

    .line 400
    if-nez v0, :cond_1

    .line 401
    const/4 v0, 0x0

    .line 412
    :cond_0
    :goto_0
    return-object v0

    .line 403
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->j(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->e(Landroid/view/View;)I

    move-result v1

    .line 404
    sub-int v1, p1, v1

    .line 405
    if-ltz v1, :cond_2

    if-ge v1, v0, :cond_2

    .line 406
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->j(I)Landroid/view/View;

    move-result-object v0

    .line 407
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->e(Landroid/view/View;)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 412
    :cond_2
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public c(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 481
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->q:I

    if-eq v0, v3, :cond_1

    .line 482
    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->i()I

    move-result v0

    if-nez v0, :cond_1

    .line 483
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->c(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 649
    :goto_0
    return-void

    .line 487
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 488
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->a:I

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->q:I

    .line 491
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->m()V

    .line 492
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iput-boolean v1, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->h:Z

    .line 494
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->b()V

    .line 496
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->t:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    iget-boolean v0, v0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->d:Z

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->q:I

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_4

    .line 498
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->t:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->a()V

    .line 499
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->t:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Z

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->f:Z

    xor-int/2addr v2, v5

    iput-boolean v2, v0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->c:Z

    .line 501
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->t:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)V

    .line 502
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->t:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    iput-boolean v4, v0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->d:Z

    .line 512
    :cond_4
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    .line 515
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v2, v2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->q:I

    if-ltz v2, :cond_a

    move v2, v1

    .line 522
    :goto_1
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v5}, Landroid/support/v7/widget/OrientationHelper;->c()I

    move-result v5

    add-int/2addr v2, v5

    .line 523
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v5}, Landroid/support/v7/widget/OrientationHelper;->g()I

    move-result v5

    add-int/2addr v0, v5

    .line 524
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->c()Z

    move-result v5

    if-eqz v5, :cond_5

    iget v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->q:I

    if-eq v5, v3, :cond_5

    iget v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->r:I

    const/high16 v6, -0x80000000

    if-eq v5, v6, :cond_5

    .line 529
    iget v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->q:I

    invoke-virtual {p0, v5}, Landroid/support/v7/widget/LinearLayoutManager;->c(I)Landroid/view/View;

    move-result-object v5

    .line 530
    if-eqz v5, :cond_5

    .line 533
    iget-boolean v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Z

    if-eqz v6, :cond_b

    .line 534
    iget-object v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v6}, Landroid/support/v7/widget/OrientationHelper;->d()I

    move-result v6

    iget-object v7, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    .line 535
    invoke-virtual {v7, v5}, Landroid/support/v7/widget/OrientationHelper;->b(Landroid/view/View;)I

    move-result v5

    sub-int v5, v6, v5

    .line 536
    iget v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->r:I

    sub-int/2addr v5, v6

    .line 542
    :goto_2
    if-lez v5, :cond_c

    .line 543
    add-int/2addr v2, v5

    .line 552
    :cond_5
    :goto_3
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->t:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    iget-boolean v5, v5, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->c:Z

    if-eqz v5, :cond_d

    .line 553
    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Z

    if-eqz v5, :cond_6

    move v3, v4

    .line 560
    :cond_6
    :goto_4
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->t:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    invoke-virtual {p0, p1, p2, v5, v3}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;I)V

    .line 561
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 562
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->p()Z

    move-result v5

    iput-boolean v5, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->s:Z

    .line 563
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->c()Z

    move-result v5

    iput-boolean v5, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->p:Z

    .line 564
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->t:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    iget-boolean v3, v3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->c:Z

    if-eqz v3, :cond_e

    .line 566
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->t:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {p0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)V

    .line 567
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iput v2, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->o:I

    .line 568
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p1, v2, p2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$State;Z)I

    .line 569
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v2, v2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->i:I

    .line 570
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v5, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->k:I

    .line 571
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->j:I

    if-lez v3, :cond_7

    .line 572
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->j:I

    add-int/2addr v0, v3

    .line 575
    :cond_7
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->t:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {p0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)V

    .line 576
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iput v0, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->o:I

    .line 577
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->k:I

    iget-object v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v6, v6, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->l:I

    add-int/2addr v3, v6

    iput v3, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->k:I

    .line 578
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$State;Z)I

    .line 579
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->i:I

    .line 581
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->j:I

    if-lez v0, :cond_12

    .line 583
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->j:I

    .line 584
    invoke-direct {p0, v5, v2}, Landroid/support/v7/widget/LinearLayoutManager;->g(II)V

    .line 585
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iput v0, v2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->o:I

    .line 586
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$State;Z)I

    .line 587
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->i:I

    :goto_5
    move v2, v0

    move v0, v3

    .line 619
    :cond_8
    :goto_6
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->G()I

    move-result v3

    if-lez v3, :cond_9

    .line 623
    iget-boolean v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Z

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->f:Z

    xor-int/2addr v3, v5

    if-eqz v3, :cond_10

    .line 624
    invoke-direct {p0, v0, p1, p2, v4}, Landroid/support/v7/widget/LinearLayoutManager;->a(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)I

    move-result v3

    .line 625
    add-int/2addr v2, v3

    .line 626
    add-int/2addr v0, v3

    .line 627
    invoke-direct {p0, v2, p1, p2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->b(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)I

    move-result v1

    .line 628
    add-int/2addr v2, v1

    .line 629
    add-int/2addr v0, v1

    .line 639
    :cond_9
    :goto_7
    invoke-direct {p0, p1, p2, v2, v0}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V

    .line 640
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->c()Z

    move-result v0

    if-nez v0, :cond_11

    .line 641
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->a()V

    .line 645
    :goto_8
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->f:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Z

    goto/16 :goto_0

    :cond_a
    move v2, v0

    move v0, v1

    .line 520
    goto/16 :goto_1

    .line 538
    :cond_b
    iget-object v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v6, v5}, Landroid/support/v7/widget/OrientationHelper;->a(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    .line 539
    invoke-virtual {v6}, Landroid/support/v7/widget/OrientationHelper;->c()I

    move-result v6

    sub-int/2addr v5, v6

    .line 540
    iget v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->r:I

    sub-int v5, v6, v5

    goto/16 :goto_2

    .line 545
    :cond_c
    sub-int/2addr v0, v5

    goto/16 :goto_3

    .line 556
    :cond_d
    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Z

    if-nez v5, :cond_6

    move v3, v4

    goto/16 :goto_4

    .line 591
    :cond_e
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->t:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {p0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)V

    .line 592
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iput v0, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->o:I

    .line 593
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$State;Z)I

    .line 594
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->i:I

    .line 595
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->k:I

    .line 596
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v5, v5, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->j:I

    if-lez v5, :cond_f

    .line 597
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v5, v5, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->j:I

    add-int/2addr v2, v5

    .line 600
    :cond_f
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->t:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {p0, v5}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;)V

    .line 601
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iput v2, v5, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->o:I

    .line 602
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v5, v2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->k:I

    iget-object v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v6, v6, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->l:I

    add-int/2addr v5, v6

    iput v5, v2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->k:I

    .line 603
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p1, v2, p2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$State;Z)I

    .line 604
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v2, v2, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->i:I

    .line 606
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v5, v5, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->j:I

    if-lez v5, :cond_8

    .line 607
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v5, v5, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->j:I

    .line 609
    invoke-direct {p0, v3, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(II)V

    .line 610
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iput v5, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->o:I

    .line 611
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$State;Z)I

    .line 612
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->i:I

    goto/16 :goto_6

    .line 631
    :cond_10
    invoke-direct {p0, v2, p1, p2, v4}, Landroid/support/v7/widget/LinearLayoutManager;->b(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)I

    move-result v3

    .line 632
    add-int/2addr v2, v3

    .line 633
    add-int/2addr v0, v3

    .line 634
    invoke-direct {p0, v0, p1, p2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)I

    move-result v1

    .line 635
    add-int/2addr v2, v1

    .line 636
    add-int/2addr v0, v1

    goto/16 :goto_7

    .line 643
    :cond_11
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->t:Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->a()V

    goto/16 :goto_8

    :cond_12
    move v0, v2

    goto/16 :goto_5
.end method

.method public c(Z)V
    .locals 1

    .prologue
    .line 386
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Ljava/lang/String;)V

    .line 387
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Z

    if-ne p1, v0, :cond_0

    .line 392
    :goto_0
    return-void

    .line 390
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Z

    .line 391
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->x()V

    goto :goto_0
.end method

.method public d(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1

    .prologue
    .line 1068
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->i(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public d(I)Landroid/graphics/PointF;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 454
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->G()I

    move-result v2

    if-nez v2, :cond_0

    .line 455
    const/4 v0, 0x0

    .line 462
    :goto_0
    return-object v0

    .line 457
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->j(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->e(Landroid/view/View;)I

    move-result v2

    .line 458
    if-ge p1, v2, :cond_1

    move v0, v1

    :cond_1
    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Z

    if-eq v0, v2, :cond_2

    const/4 v1, -0x1

    .line 459
    :cond_2
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:I

    if-nez v0, :cond_3

    .line 460
    new-instance v0, Landroid/graphics/PointF;

    int-to-float v1, v1

    invoke-direct {v0, v1, v3}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0

    .line 462
    :cond_3
    new-instance v0, Landroid/graphics/PointF;

    int-to-float v1, v1

    invoke-direct {v0, v3, v1}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0
.end method

.method public d(Z)V
    .locals 0

    .prologue
    .line 1142
    iput-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->g:Z

    .line 1143
    return-void
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 2004
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Z

    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->f:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1

    .prologue
    .line 1073
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->j(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public e(I)V
    .locals 1

    .prologue
    .line 1000
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->q:I

    .line 1001
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->r:I

    .line 1002
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 1003
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->b()V

    .line 1005
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->x()V

    .line 1006
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 206
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:Z

    return v0
.end method

.method public f(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1

    .prologue
    .line 1078
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->j(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public f()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 248
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 249
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;-><init>(Landroid/support/v7/widget/LinearLayoutManager$SavedState;)V

    .line 270
    :goto_0
    return-object v0

    .line 251
    :cond_0
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-direct {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;-><init>()V

    .line 252
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->G()I

    move-result v1

    if-lez v1, :cond_2

    .line 253
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->m()V

    .line 254
    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:Z

    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Z

    xor-int/2addr v1, v2

    .line 255
    iput-boolean v1, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->c:Z

    .line 256
    if-eqz v1, :cond_1

    .line 257
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->ab()Landroid/view/View;

    move-result-object v1

    .line 258
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2}, Landroid/support/v7/widget/OrientationHelper;->d()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    .line 259
    invoke-virtual {v3, v1}, Landroid/support/v7/widget/OrientationHelper;->b(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->b:I

    .line 260
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->e(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->a:I

    goto :goto_0

    .line 262
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->c()Landroid/view/View;

    move-result-object v1

    .line 263
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->e(Landroid/view/View;)I

    move-result v2

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->a:I

    .line 264
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/OrientationHelper;->a(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    .line 265
    invoke-virtual {v2}, Landroid/support/v7/widget/OrientationHelper;->c()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->b:I

    goto :goto_0

    .line 268
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->b()V

    goto :goto_0
.end method

.method public f(I)V
    .locals 0

    .prologue
    .line 1269
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->C:I

    .line 1270
    return-void
.end method

.method g(I)I
    .locals 4

    .prologue
    const/4 v0, -0x1

    const/high16 v1, -0x80000000

    const/4 v2, 0x1

    .line 1622
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 1655
    :cond_0
    :goto_0
    return v0

    .line 1624
    :sswitch_0
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:I

    if-eq v1, v2, :cond_0

    .line 1626
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    .line 1627
    goto :goto_0

    .line 1632
    :sswitch_1
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:I

    if-ne v1, v2, :cond_1

    move v0, v2

    .line 1633
    goto :goto_0

    .line 1634
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 1637
    goto :goto_0

    .line 1640
    :sswitch_2
    iget v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:I

    if-eq v3, v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1643
    :sswitch_3
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:I

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    move v0, v1

    goto :goto_0

    .line 1646
    :sswitch_4
    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:I

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1649
    :sswitch_5
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:I

    if-nez v0, :cond_3

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_1

    .line 1622
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x11 -> :sswitch_4
        0x21 -> :sswitch_2
        0x42 -> :sswitch_5
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method public g(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1

    .prologue
    .line 1083
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->k(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1

    .prologue
    .line 1088
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->k(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 299
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 315
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->f:Z

    return v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 325
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:I

    return v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 368
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Z

    return v0
.end method

.method protected l()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 963
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->D()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method m()V
    .locals 1

    .prologue
    .line 967
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    if-nez v0, :cond_0

    .line 968
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->n()Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    .line 970
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    if-nez v0, :cond_1

    .line 971
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:I

    invoke-static {p0, v0}, Landroid/support/v7/widget/OrientationHelper;->a(Landroid/support/v7/widget/RecyclerView$LayoutManager;I)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    .line 973
    :cond_1
    return-void
.end method

.method n()Landroid/support/v7/widget/LinearLayoutManager$LayoutState;
    .locals 1

    .prologue
    .line 981
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-direct {v0}, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;-><init>()V

    return-object v0
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 1153
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->g:Z

    return v0
.end method

.method p()Z
    .locals 1

    .prologue
    .line 1194
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->h()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    .line 1195
    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->e()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public q()I
    .locals 1

    .prologue
    .line 1285
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->C:I

    return v0
.end method

.method r()Z
    .locals 2

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 1606
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->I()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 1607
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->H()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 1608
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->aa()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public s()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1807
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->G()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v2, v0, v2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1808
    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->e(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method public t()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1824
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->G()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v2, v0, v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1825
    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->e(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method public u()I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 1847
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->G()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object v1

    .line 1848
    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->e(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method public v()I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 1864
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->G()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object v1

    .line 1865
    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->e(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method w()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1963
    const-string v0, "LinearLayoutManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "validating child count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->G()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1964
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->G()I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 2000
    :cond_0
    return-void

    .line 1967
    :cond_1
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->j(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->e(Landroid/view/View;)I

    move-result v3

    .line 1968
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->j(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/OrientationHelper;->a(Landroid/view/View;)I

    move-result v4

    .line 1969
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Z

    if-eqz v0, :cond_5

    move v0, v1

    .line 1970
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->G()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 1971
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->j(I)Landroid/view/View;

    move-result-object v5

    .line 1972
    invoke-virtual {p0, v5}, Landroid/support/v7/widget/LinearLayoutManager;->e(Landroid/view/View;)I

    move-result v6

    .line 1973
    iget-object v7, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v7, v5}, Landroid/support/v7/widget/OrientationHelper;->a(Landroid/view/View;)I

    move-result v5

    .line 1974
    if-ge v6, v3, :cond_3

    .line 1975
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->ac()V

    .line 1976
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "detected invalid position. loc invalid? "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-ge v5, v4, :cond_2

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v1, v2

    goto :goto_1

    .line 1979
    :cond_3
    if-le v5, v4, :cond_4

    .line 1980
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->ac()V

    .line 1981
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "detected invalid location"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1970
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 1985
    :goto_2
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->G()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 1986
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->j(I)Landroid/view/View;

    move-result-object v5

    .line 1987
    invoke-virtual {p0, v5}, Landroid/support/v7/widget/LinearLayoutManager;->e(Landroid/view/View;)I

    move-result v6

    .line 1988
    iget-object v7, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v7, v5}, Landroid/support/v7/widget/OrientationHelper;->a(Landroid/view/View;)I

    move-result v5

    .line 1989
    if-ge v6, v3, :cond_7

    .line 1990
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->ac()V

    .line 1991
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "detected invalid position. loc invalid? "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-ge v5, v4, :cond_6

    :goto_3
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move v1, v2

    goto :goto_3

    .line 1994
    :cond_7
    if-ge v5, v4, :cond_8

    .line 1995
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->ac()V

    .line 1996
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "detected invalid location"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1985
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
