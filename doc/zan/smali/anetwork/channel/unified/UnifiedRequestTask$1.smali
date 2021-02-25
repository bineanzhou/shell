.class Lanetwork/channel/unified/UnifiedRequestTask$1;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lanetwork/channel/unified/UnifiedRequestTask;


# direct methods
.method constructor <init>(Lanetwork/channel/unified/UnifiedRequestTask;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lanetwork/channel/unified/UnifiedRequestTask$1;->a:Lanetwork/channel/unified/UnifiedRequestTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 97
    new-instance v0, Lanetwork/channel/unified/UnifiedRequestTask$UnifiedRequestChain;

    iget-object v1, p0, Lanetwork/channel/unified/UnifiedRequestTask$1;->a:Lanetwork/channel/unified/UnifiedRequestTask;

    const/4 v2, 0x0

    iget-object v3, p0, Lanetwork/channel/unified/UnifiedRequestTask$1;->a:Lanetwork/channel/unified/UnifiedRequestTask;

    invoke-static {v3}, Lanetwork/channel/unified/UnifiedRequestTask;->a(Lanetwork/channel/unified/UnifiedRequestTask;)Lanetwork/channel/unified/RequestContext;

    move-result-object v3

    iget-object v3, v3, Lanetwork/channel/unified/RequestContext;->a:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v3}, Lanetwork/channel/entity/RequestConfig;->a()Lanet/channel/request/Request;

    move-result-object v3

    iget-object v4, p0, Lanetwork/channel/unified/UnifiedRequestTask$1;->a:Lanetwork/channel/unified/UnifiedRequestTask;

    invoke-static {v4}, Lanetwork/channel/unified/UnifiedRequestTask;->a(Lanetwork/channel/unified/UnifiedRequestTask;)Lanetwork/channel/unified/RequestContext;

    move-result-object v4

    iget-object v4, v4, Lanetwork/channel/unified/RequestContext;->b:Lanetwork/channel/interceptor/Callback;

    invoke-direct {v0, v1, v2, v3, v4}, Lanetwork/channel/unified/UnifiedRequestTask$UnifiedRequestChain;-><init>(Lanetwork/channel/unified/UnifiedRequestTask;ILanet/channel/request/Request;Lanetwork/channel/interceptor/Callback;)V

    iget-object v1, p0, Lanetwork/channel/unified/UnifiedRequestTask$1;->a:Lanetwork/channel/unified/UnifiedRequestTask;

    invoke-static {v1}, Lanetwork/channel/unified/UnifiedRequestTask;->a(Lanetwork/channel/unified/UnifiedRequestTask;)Lanetwork/channel/unified/RequestContext;

    move-result-object v1

    iget-object v1, v1, Lanetwork/channel/unified/RequestContext;->a:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v1}, Lanetwork/channel/entity/RequestConfig;->a()Lanet/channel/request/Request;

    move-result-object v1

    iget-object v2, p0, Lanetwork/channel/unified/UnifiedRequestTask$1;->a:Lanetwork/channel/unified/UnifiedRequestTask;

    invoke-static {v2}, Lanetwork/channel/unified/UnifiedRequestTask;->a(Lanetwork/channel/unified/UnifiedRequestTask;)Lanetwork/channel/unified/RequestContext;

    move-result-object v2

    iget-object v2, v2, Lanetwork/channel/unified/RequestContext;->b:Lanetwork/channel/interceptor/Callback;

    invoke-virtual {v0, v1, v2}, Lanetwork/channel/unified/UnifiedRequestTask$UnifiedRequestChain;->a(Lanet/channel/request/Request;Lanetwork/channel/interceptor/Callback;)Ljava/util/concurrent/Future;

    .line 99
    return-void
.end method
