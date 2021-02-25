.class Landroid/support/v7/util/AsyncListUtil$1;
.super Ljava/lang/Object;
.source "AsyncListUtil.java"

# interfaces
.implements Landroid/support/v7/util/ThreadUtil$MainThreadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/util/AsyncListUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v7/util/ThreadUtil$MainThreadCallback",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/util/AsyncListUtil;


# direct methods
.method constructor <init>(Landroid/support/v7/util/AsyncListUtil;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Landroid/support/v7/util/AsyncListUtil$1;->a:Landroid/support/v7/util/AsyncListUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 278
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/support/v7/util/AsyncListUtil$1;->a:Landroid/support/v7/util/AsyncListUtil;

    iget-object v1, v1, Landroid/support/v7/util/AsyncListUtil;->g:Landroid/support/v7/util/TileList;

    invoke-virtual {v1}, Landroid/support/v7/util/TileList;->a()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 279
    iget-object v1, p0, Landroid/support/v7/util/AsyncListUtil$1;->a:Landroid/support/v7/util/AsyncListUtil;

    iget-object v1, v1, Landroid/support/v7/util/AsyncListUtil;->i:Landroid/support/v7/util/ThreadUtil$BackgroundCallback;

    iget-object v2, p0, Landroid/support/v7/util/AsyncListUtil$1;->a:Landroid/support/v7/util/AsyncListUtil;

    iget-object v2, v2, Landroid/support/v7/util/AsyncListUtil;->g:Landroid/support/v7/util/TileList;

    invoke-virtual {v2, v0}, Landroid/support/v7/util/TileList;->b(I)Landroid/support/v7/util/TileList$Tile;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/support/v7/util/ThreadUtil$BackgroundCallback;->a(Landroid/support/v7/util/TileList$Tile;)V

    .line 278
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 281
    :cond_0
    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil$1;->a:Landroid/support/v7/util/AsyncListUtil;

    iget-object v0, v0, Landroid/support/v7/util/AsyncListUtil;->g:Landroid/support/v7/util/TileList;

    invoke-virtual {v0}, Landroid/support/v7/util/TileList;->b()V

    .line 282
    return-void
.end method

.method private a(I)Z
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil$1;->a:Landroid/support/v7/util/AsyncListUtil;

    iget v0, v0, Landroid/support/v7/util/AsyncListUtil;->p:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(II)V
    .locals 2

    .prologue
    .line 214
    invoke-direct {p0, p1}, Landroid/support/v7/util/AsyncListUtil$1;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    :goto_0
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil$1;->a:Landroid/support/v7/util/AsyncListUtil;

    iput p2, v0, Landroid/support/v7/util/AsyncListUtil;->n:I

    .line 218
    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil$1;->a:Landroid/support/v7/util/AsyncListUtil;

    iget-object v0, v0, Landroid/support/v7/util/AsyncListUtil;->f:Landroid/support/v7/util/AsyncListUtil$ViewCallback;

    invoke-virtual {v0}, Landroid/support/v7/util/AsyncListUtil$ViewCallback;->a()V

    .line 219
    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil$1;->a:Landroid/support/v7/util/AsyncListUtil;

    iget-object v1, p0, Landroid/support/v7/util/AsyncListUtil$1;->a:Landroid/support/v7/util/AsyncListUtil;

    iget v1, v1, Landroid/support/v7/util/AsyncListUtil;->p:I

    iput v1, v0, Landroid/support/v7/util/AsyncListUtil;->o:I

    .line 220
    invoke-direct {p0}, Landroid/support/v7/util/AsyncListUtil$1;->a()V

    .line 222
    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil$1;->a:Landroid/support/v7/util/AsyncListUtil;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v7/util/AsyncListUtil;->m:Z

    .line 224
    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil$1;->a:Landroid/support/v7/util/AsyncListUtil;

    invoke-virtual {v0}, Landroid/support/v7/util/AsyncListUtil;->d()V

    goto :goto_0
.end method

.method public a(ILandroid/support/v7/util/TileList$Tile;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/support/v7/util/TileList$Tile",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 229
    invoke-direct {p0, p1}, Landroid/support/v7/util/AsyncListUtil$1;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 233
    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil$1;->a:Landroid/support/v7/util/AsyncListUtil;

    iget-object v0, v0, Landroid/support/v7/util/AsyncListUtil;->i:Landroid/support/v7/util/ThreadUtil$BackgroundCallback;

    invoke-interface {v0, p2}, Landroid/support/v7/util/ThreadUtil$BackgroundCallback;->a(Landroid/support/v7/util/TileList$Tile;)V

    .line 256
    :cond_0
    return-void

    .line 236
    :cond_1
    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil$1;->a:Landroid/support/v7/util/AsyncListUtil;

    iget-object v0, v0, Landroid/support/v7/util/AsyncListUtil;->g:Landroid/support/v7/util/TileList;

    invoke-virtual {v0, p2}, Landroid/support/v7/util/TileList;->a(Landroid/support/v7/util/TileList$Tile;)Landroid/support/v7/util/TileList$Tile;

    move-result-object v0

    .line 237
    if-eqz v0, :cond_2

    .line 238
    const-string v1, "AsyncListUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "duplicate tile @"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/support/v7/util/TileList$Tile;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v1, p0, Landroid/support/v7/util/AsyncListUtil$1;->a:Landroid/support/v7/util/AsyncListUtil;

    iget-object v1, v1, Landroid/support/v7/util/AsyncListUtil;->i:Landroid/support/v7/util/ThreadUtil$BackgroundCallback;

    invoke-interface {v1, v0}, Landroid/support/v7/util/ThreadUtil$BackgroundCallback;->a(Landroid/support/v7/util/TileList$Tile;)V

    .line 245
    :cond_2
    iget v0, p2, Landroid/support/v7/util/TileList$Tile;->b:I

    iget v1, p2, Landroid/support/v7/util/TileList$Tile;->c:I

    add-int/2addr v1, v0

    .line 246
    const/4 v0, 0x0

    .line 247
    :goto_0
    iget-object v2, p0, Landroid/support/v7/util/AsyncListUtil$1;->a:Landroid/support/v7/util/AsyncListUtil;

    iget-object v2, v2, Landroid/support/v7/util/AsyncListUtil;->q:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 248
    iget-object v2, p0, Landroid/support/v7/util/AsyncListUtil$1;->a:Landroid/support/v7/util/AsyncListUtil;

    iget-object v2, v2, Landroid/support/v7/util/AsyncListUtil;->q:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 249
    iget v3, p2, Landroid/support/v7/util/TileList$Tile;->b:I

    if-gt v3, v2, :cond_3

    if-ge v2, v1, :cond_3

    .line 250
    iget-object v3, p0, Landroid/support/v7/util/AsyncListUtil$1;->a:Landroid/support/v7/util/AsyncListUtil;

    iget-object v3, v3, Landroid/support/v7/util/AsyncListUtil;->q:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 251
    iget-object v3, p0, Landroid/support/v7/util/AsyncListUtil$1;->a:Landroid/support/v7/util/AsyncListUtil;

    iget-object v3, v3, Landroid/support/v7/util/AsyncListUtil;->f:Landroid/support/v7/util/AsyncListUtil$ViewCallback;

    invoke-virtual {v3, v2}, Landroid/support/v7/util/AsyncListUtil$ViewCallback;->a(I)V

    goto :goto_0

    .line 253
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public b(II)V
    .locals 3

    .prologue
    .line 260
    invoke-direct {p0, p1}, Landroid/support/v7/util/AsyncListUtil$1;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    :goto_0
    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Landroid/support/v7/util/AsyncListUtil$1;->a:Landroid/support/v7/util/AsyncListUtil;

    iget-object v0, v0, Landroid/support/v7/util/AsyncListUtil;->g:Landroid/support/v7/util/TileList;

    invoke-virtual {v0, p2}, Landroid/support/v7/util/TileList;->c(I)Landroid/support/v7/util/TileList$Tile;

    move-result-object v0

    .line 264
    if-nez v0, :cond_1

    .line 265
    const-string v0, "AsyncListUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tile not found @"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 271
    :cond_1
    iget-object v1, p0, Landroid/support/v7/util/AsyncListUtil$1;->a:Landroid/support/v7/util/AsyncListUtil;

    iget-object v1, v1, Landroid/support/v7/util/AsyncListUtil;->i:Landroid/support/v7/util/ThreadUtil$BackgroundCallback;

    invoke-interface {v1, v0}, Landroid/support/v7/util/ThreadUtil$BackgroundCallback;->a(Landroid/support/v7/util/TileList$Tile;)V

    goto :goto_0
.end method
