.class public abstract Landroid/support/v7/widget/RecyclerView$Adapter;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6230
    new-instance v0, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->a:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    .line 6231
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->b:Z

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public a(I)I
    .locals 1

    .prologue
    .line 6363
    const/4 v0, 0x0

    return v0
.end method

.method public abstract a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method public final a(II)V
    .locals 1

    .prologue
    .line 6650
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->a:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->a(II)V

    .line 6651
    return-void
.end method

.method public final a(IILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 6680
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->a:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->a(IILjava/lang/Object;)V

    .line 6681
    return-void
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 6632
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->a:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->a(IILjava/lang/Object;)V

    .line 6633
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V
    .locals 1

    .prologue
    .line 6521
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->a:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->registerObserver(Ljava/lang/Object;)V

    .line 6522
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .line 6430
    return-void
.end method

.method public abstract a(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6308
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 6309
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 6547
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 6375
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6376
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot change whether this adapter has stable IDs while the adapter has registered observers."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6379
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->b:Z

    .line 6380
    return-void
.end method

.method public b(I)J
    .locals 2

    .prologue
    .line 6391
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final b(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    .prologue
    .line 6318
    const-string v0, "RV CreateView"

    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 6319
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 6320
    iput p2, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->f:I

    .line 6321
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 6322
    return-object v0
.end method

.method public final b(II)V
    .locals 1

    .prologue
    .line 6712
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->a:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->d(II)V

    .line 6713
    return-void
.end method

.method public b(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V
    .locals 1

    .prologue
    .line 6535
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->a:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 6536
    return-void
.end method

.method public final b(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 6333
    iput p2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->c:I

    .line 6334
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6335
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->b(I)J

    move-result-wide v0

    iput-wide v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->e:J

    .line 6337
    :cond_0
    const/16 v0, 0x207

    invoke-virtual {p1, v2, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a(II)V

    .line 6340
    const-string v0, "RV OnBindView"

    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 6341
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->w()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    .line 6342
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->v()V

    .line 6343
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 6344
    instance-of v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    if-eqz v1, :cond_1

    .line 6345
    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iput-boolean v2, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->f:Z

    .line 6347
    :cond_1
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 6348
    return-void
.end method

.method public b(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 6556
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 6409
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->b:Z

    return v0
.end method

.method public b(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)Z"
        }
    .end annotation

    .prologue
    .line 6467
    const/4 v0, 0x0

    return v0
.end method

.method public final c(I)V
    .locals 2

    .prologue
    .line 6604
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->a:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->a(II)V

    .line 6605
    return-void
.end method

.method public final c(II)V
    .locals 1

    .prologue
    .line 6731
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->a:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->b(II)V

    .line 6732
    return-void
.end method

.method public c(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .line 6481
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 6501
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->a:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->a()Z

    move-result v0

    return v0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 6588
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->a:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->b()V

    .line 6589
    return-void
.end method

.method public final d(I)V
    .locals 2

    .prologue
    .line 6697
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->a:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->b(II)V

    .line 6698
    return-void
.end method

.method public final d(II)V
    .locals 1

    .prologue
    .line 6765
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->a:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->c(II)V

    .line 6766
    return-void
.end method

.method public d(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .line 6493
    return-void
.end method

.method public final e(I)V
    .locals 2

    .prologue
    .line 6748
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->a:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->c(II)V

    .line 6749
    return-void
.end method
