.class Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;
.super Ljava/lang/Object;
.source "LinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/LinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnchorInfo"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:Z

.field d:Z

.field final synthetic e:Landroid/support/v7/widget/LinearLayoutManager;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/LinearLayoutManager;)V
    .locals 0

    .prologue
    .line 2297
    iput-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->e:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2298
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->a()V

    .line 2299
    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2302
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->a:I

    .line 2303
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->b:I

    .line 2304
    iput-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->c:Z

    .line 2305
    iput-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->d:Z

    .line 2306
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2335
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->e:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->b()I

    move-result v0

    .line 2336
    if-ltz v0, :cond_1

    .line 2337
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->b(Landroid/view/View;)V

    .line 2379
    :cond_0
    :goto_0
    return-void

    .line 2340
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->e:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/LinearLayoutManager;->e(Landroid/view/View;)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->a:I

    .line 2341
    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->c:Z

    if-eqz v1, :cond_2

    .line 2342
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->e:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/OrientationHelper;->d()I

    move-result v1

    sub-int v0, v1, v0

    .line 2343
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->e:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/OrientationHelper;->b(Landroid/view/View;)I

    move-result v1

    .line 2344
    sub-int/2addr v0, v1

    .line 2345
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->e:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/OrientationHelper;->d()I

    move-result v1

    sub-int/2addr v1, v0

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->b:I

    .line 2347
    if-lez v0, :cond_0

    .line 2348
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->e:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/OrientationHelper;->e(Landroid/view/View;)I

    move-result v1

    .line 2349
    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->b:I

    sub-int v1, v2, v1

    .line 2350
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->e:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2}, Landroid/support/v7/widget/OrientationHelper;->c()I

    move-result v2

    .line 2351
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->e:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/OrientationHelper;->a(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v3, v2

    .line 2353
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 2354
    sub-int/2addr v1, v2

    .line 2355
    if-gez v1, :cond_0

    .line 2357
    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->b:I

    neg-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->b:I

    goto :goto_0

    .line 2361
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->e:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/OrientationHelper;->a(Landroid/view/View;)I

    move-result v1

    .line 2362
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->e:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2}, Landroid/support/v7/widget/OrientationHelper;->c()I

    move-result v2

    sub-int v2, v1, v2

    .line 2363
    iput v1, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->b:I

    .line 2364
    if-lez v2, :cond_0

    .line 2365
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->e:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    .line 2366
    invoke-virtual {v3, p1}, Landroid/support/v7/widget/OrientationHelper;->e(Landroid/view/View;)I

    move-result v3

    add-int/2addr v1, v3

    .line 2367
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->e:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3}, Landroid/support/v7/widget/OrientationHelper;->d()I

    move-result v3

    sub-int v0, v3, v0

    .line 2369
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->e:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    .line 2370
    invoke-virtual {v3, p1}, Landroid/support/v7/widget/OrientationHelper;->b(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v0, v3

    .line 2371
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->e:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3}, Landroid/support/v7/widget/OrientationHelper;->d()I

    move-result v3

    .line 2372
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int v0, v3, v0

    .line 2373
    sub-int/2addr v0, v1

    .line 2374
    if-gez v0, :cond_0

    .line 2375
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->b:I

    neg-int v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int v0, v1, v0

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->b:I

    goto/16 :goto_0
.end method

.method a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$State;)Z
    .locals 2

    .prologue
    .line 2329
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 2330
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->e()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->h()I

    move-result v1

    if-ltz v1, :cond_0

    .line 2331
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->h()I

    move-result v0

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->i()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()V
    .locals 1

    .prologue
    .line 2313
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->e:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    .line 2314
    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->d()I

    move-result v0

    .line 2315
    :goto_0
    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->b:I

    .line 2316
    return-void

    .line 2314
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->e:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    .line 2315
    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->c()I

    move-result v0

    goto :goto_0
.end method

.method public b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 2382
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->c:Z

    if-eqz v0, :cond_0

    .line 2383
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->e:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/OrientationHelper;->b(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->e:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    .line 2384
    invoke-virtual {v1}, Landroid/support/v7/widget/OrientationHelper;->b()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->b:I

    .line 2389
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->e:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->e(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->a:I

    .line 2390
    return-void

    .line 2386
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->e:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->o:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/OrientationHelper;->a(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->b:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnchorInfo{mPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCoordinate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLayoutFromEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
