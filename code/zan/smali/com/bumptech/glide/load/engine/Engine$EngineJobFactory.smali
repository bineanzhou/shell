.class Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;
.super Ljava/lang/Object;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EngineJobFactory"
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/ExecutorService;

.field private final b:Ljava/util/concurrent/ExecutorService;

.field private final c:Lcom/bumptech/glide/load/engine/EngineJobListener;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Lcom/bumptech/glide/load/engine/EngineJobListener;)V
    .locals 0

    .prologue
    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->a:Ljava/util/concurrent/ExecutorService;

    .line 375
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->b:Ljava/util/concurrent/ExecutorService;

    .line 376
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->c:Lcom/bumptech/glide/load/engine/EngineJobListener;

    .line 377
    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/Key;Z)Lcom/bumptech/glide/load/engine/EngineJob;
    .locals 6

    .prologue
    .line 380
    new-instance v0, Lcom/bumptech/glide/load/engine/EngineJob;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->b:Ljava/util/concurrent/ExecutorService;

    iget-object v5, p0, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->c:Lcom/bumptech/glide/load/engine/EngineJobListener;

    move-object v1, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/EngineJob;-><init>(Lcom/bumptech/glide/load/Key;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;ZLcom/bumptech/glide/load/engine/EngineJobListener;)V

    return-object v0
.end method
