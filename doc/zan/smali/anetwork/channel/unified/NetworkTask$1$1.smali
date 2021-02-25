.class Lanetwork/channel/unified/NetworkTask$1$1;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lanetwork/channel/unified/NetworkTask$1;


# direct methods
.method constructor <init>(Lanetwork/channel/unified/NetworkTask$1;)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lanetwork/channel/unified/NetworkTask$1$1;->a:Lanetwork/channel/unified/NetworkTask$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$1$1;->a:Lanetwork/channel/unified/NetworkTask$1;

    iget-object v0, v0, Lanetwork/channel/unified/NetworkTask$1;->b:Lanetwork/channel/unified/NetworkTask;

    iget-object v0, v0, Lanetwork/channel/unified/NetworkTask;->b:Lanetwork/channel/unified/RequestContext;

    iget-object v0, v0, Lanetwork/channel/unified/RequestContext;->f:Lanetwork/channel/unified/IUnifiedTask;

    invoke-static {v0}, Lanet/channel/a/c;->b(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 340
    return-void
.end method
