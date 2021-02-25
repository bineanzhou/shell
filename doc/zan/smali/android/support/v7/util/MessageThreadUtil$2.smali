.class Landroid/support/v7/util/MessageThreadUtil$2;
.super Ljava/lang/Object;
.source "MessageThreadUtil.java"

# interfaces
.implements Landroid/support/v7/util/ThreadUtil$BackgroundCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/util/MessageThreadUtil;->a(Landroid/support/v7/util/ThreadUtil$BackgroundCallback;)Landroid/support/v7/util/ThreadUtil$BackgroundCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v7/util/ThreadUtil$BackgroundCallback",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final c:I = 0x1

.field static final d:I = 0x2

.field static final e:I = 0x3

.field static final f:I = 0x4


# instance fields
.field final a:Landroid/support/v7/util/MessageThreadUtil$MessageQueue;

.field b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic g:Landroid/support/v7/util/ThreadUtil$BackgroundCallback;

.field final synthetic h:Landroid/support/v7/util/MessageThreadUtil;

.field private final i:Ljava/util/concurrent/Executor;

.field private j:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/support/v7/util/MessageThreadUtil;Landroid/support/v7/util/ThreadUtil$BackgroundCallback;)V
    .locals 2

    .prologue
    .line 87
    iput-object p1, p0, Landroid/support/v7/util/MessageThreadUtil$2;->h:Landroid/support/v7/util/MessageThreadUtil;

    iput-object p2, p0, Landroid/support/v7/util/MessageThreadUtil$2;->g:Landroid/support/v7/util/ThreadUtil$BackgroundCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;

    invoke-direct {v0}, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;-><init>()V

    iput-object v0, p0, Landroid/support/v7/util/MessageThreadUtil$2;->a:Landroid/support/v7/util/MessageThreadUtil$MessageQueue;

    .line 89
    invoke-static {}, Landroid/support/v4/content/ParallelExecutorCompat;->getParallelExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/util/MessageThreadUtil$2;->i:Ljava/util/concurrent/Executor;

    .line 90
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/support/v7/util/MessageThreadUtil$2;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 135
    new-instance v0, Landroid/support/v7/util/MessageThreadUtil$2$1;

    invoke-direct {v0, p0}, Landroid/support/v7/util/MessageThreadUtil$2$1;-><init>(Landroid/support/v7/util/MessageThreadUtil$2;)V

    iput-object v0, p0, Landroid/support/v7/util/MessageThreadUtil$2;->j:Ljava/lang/Runnable;

    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Landroid/support/v7/util/MessageThreadUtil$2;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Landroid/support/v7/util/MessageThreadUtil$2;->i:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/support/v7/util/MessageThreadUtil$2;->j:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 133
    :cond_0
    return-void
.end method

.method private a(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Landroid/support/v7/util/MessageThreadUtil$2;->a:Landroid/support/v7/util/MessageThreadUtil$MessageQueue;

    invoke-virtual {v0, p1}, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->b(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)V

    .line 121
    invoke-direct {p0}, Landroid/support/v7/util/MessageThreadUtil$2;->a()V

    .line 122
    return-void
.end method

.method private b(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Landroid/support/v7/util/MessageThreadUtil$2;->a:Landroid/support/v7/util/MessageThreadUtil$MessageQueue;

    invoke-virtual {v0, p1}, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->a(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)V

    .line 126
    invoke-direct {p0}, Landroid/support/v7/util/MessageThreadUtil$2;->a()V

    .line 127
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 99
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->a(IILjava/lang/Object;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/util/MessageThreadUtil$2;->b(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)V

    .line 100
    return-void
.end method

.method public a(II)V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x3

    invoke-static {v0, p1, p2}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->a(III)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/util/MessageThreadUtil$2;->a(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)V

    .line 112
    return-void
.end method

.method public a(IIIII)V
    .locals 7

    .prologue
    .line 105
    const/4 v0, 0x2

    const/4 v6, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->a(IIIIIILjava/lang/Object;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/util/MessageThreadUtil$2;->b(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)V

    .line 107
    return-void
.end method

.method public a(Landroid/support/v7/util/TileList$Tile;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/util/TileList$Tile",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 116
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->a(IILjava/lang/Object;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/util/MessageThreadUtil$2;->a(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)V

    .line 117
    return-void
.end method
