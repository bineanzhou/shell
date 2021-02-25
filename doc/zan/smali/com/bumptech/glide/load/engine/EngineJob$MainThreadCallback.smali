.class Lcom/bumptech/glide/load/engine/EngineJob$MainThreadCallback;
.super Ljava/lang/Object;
.source "EngineJob.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/EngineJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MainThreadCallback"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/load/engine/EngineJob$1;)V
    .locals 0

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/EngineJob$MainThreadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 199
    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v1, v0, :cond_0

    const/4 v0, 0x2

    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_2

    .line 200
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/bumptech/glide/load/engine/EngineJob;

    .line 201
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v1, v2, :cond_1

    .line 202
    invoke-static {v0}, Lcom/bumptech/glide/load/engine/EngineJob;->a(Lcom/bumptech/glide/load/engine/EngineJob;)V

    :goto_0
    move v0, v1

    .line 209
    :goto_1
    return v0

    .line 204
    :cond_1
    invoke-static {v0}, Lcom/bumptech/glide/load/engine/EngineJob;->b(Lcom/bumptech/glide/load/engine/EngineJob;)V

    goto :goto_0

    .line 209
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
