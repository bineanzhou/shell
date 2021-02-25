.class public Landroid/support/v7/widget/RecyclerView$State;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# static fields
.field static final a:I = 0x1

.field static final b:I = 0x2

.field static final c:I = 0x4


# instance fields
.field d:I

.field e:I

.field f:I

.field g:I

.field h:Z

.field i:Z

.field j:Z

.field k:Z

.field l:Z

.field m:Z

.field n:I

.field o:J

.field p:I

.field private q:I

.field private r:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11217
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$State;->q:I

    .line 11228
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$State;->d:I

    .line 11234
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$State;->e:I

    .line 11246
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$State;->f:I

    .line 11252
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$State;->g:I

    .line 11254
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->h:Z

    .line 11256
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->i:Z

    .line 11258
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->j:Z

    .line 11260
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->k:Z

    .line 11266
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->l:Z

    .line 11268
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->m:Z

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView$State;I)I
    .locals 0

    .prologue
    .line 11202
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$State;->q:I

    return p1
.end method


# virtual methods
.method a()Landroid/support/v7/widget/RecyclerView$State;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11284
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$State;->q:I

    .line 11285
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$State;->r:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 11286
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$State;->r:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 11288
    :cond_0
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$State;->g:I

    .line 11289
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->h:Z

    .line 11290
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->k:Z

    .line 11291
    return-object p0
.end method

.method a(I)V
    .locals 3

    .prologue
    .line 11208
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$State;->f:I

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    .line 11209
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layout state should be one of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 11210
    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but it is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$State;->f:I

    .line 11211
    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11213
    :cond_0
    return-void
.end method

.method public a(ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 11394
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$State;->r:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 11395
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$State;->r:Landroid/util/SparseArray;

    .line 11397
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$State;->r:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 11398
    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11302
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$State;->f:I

    .line 11303
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->a()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$State;->g:I

    .line 11304
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->h:Z

    .line 11305
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->i:Z

    .line 11306
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->j:Z

    .line 11307
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->k:Z

    .line 11308
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 11364
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$State;->r:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 11368
    :goto_0
    return-void

    .line 11367
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$State;->r:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 11325
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$State;->k:Z

    return v0
.end method

.method public c(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 11379
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$State;->r:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 11380
    const/4 v0, 0x0

    .line 11382
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$State;->r:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 11333
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$State;->i:Z

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 11344
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$State;->m:Z

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 11355
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$State;->l:Z

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 11408
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$State;->q:I

    return v0
.end method

.method public g()Z
    .locals 2

    .prologue
    .line 11417
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$State;->q:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 11425
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$State;->h:Z

    return v0
.end method

.method public i()I
    .locals 2

    .prologue
    .line 11453
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$State;->i:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$State;->d:I

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$State;->e:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$State;->g:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 11460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State{mTargetPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$State;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$State;->r:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$State;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPreviousLayoutItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$State;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDeletedInvisibleItemCountSincePreviousLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$State;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStructureChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mInPreLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRunSimpleAnimations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->l:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRunPredictiveAnimations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->m:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
