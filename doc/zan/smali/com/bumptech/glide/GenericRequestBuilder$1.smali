.class Lcom/bumptech/glide/GenericRequestBuilder$1;
.super Ljava/lang/Object;
.source "GenericRequestBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/GenericRequestBuilder;->f(II)Lcom/bumptech/glide/request/FutureTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/request/RequestFutureTarget;

.field final synthetic b:Lcom/bumptech/glide/GenericRequestBuilder;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/GenericRequestBuilder;Lcom/bumptech/glide/request/RequestFutureTarget;)V
    .locals 0

    .prologue
    .line 718
    iput-object p1, p0, Lcom/bumptech/glide/GenericRequestBuilder$1;->b:Lcom/bumptech/glide/GenericRequestBuilder;

    iput-object p2, p0, Lcom/bumptech/glide/GenericRequestBuilder$1;->a:Lcom/bumptech/glide/request/RequestFutureTarget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 721
    iget-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder$1;->a:Lcom/bumptech/glide/request/RequestFutureTarget;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestFutureTarget;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder$1;->b:Lcom/bumptech/glide/GenericRequestBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/GenericRequestBuilder$1;->a:Lcom/bumptech/glide/request/RequestFutureTarget;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/GenericRequestBuilder;->b(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    .line 724
    :cond_0
    return-void
.end method
