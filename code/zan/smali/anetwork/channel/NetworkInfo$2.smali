.class final Lanetwork/channel/NetworkInfo$2;
.super Ljava/lang/Thread;
.source "Taobao"


# instance fields
.field final synthetic a:Lanetwork/channel/NetworkInfo$NetworkInfoListener;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lanetwork/channel/NetworkInfo$NetworkInfoListener;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lanetwork/channel/NetworkInfo$2;->a:Lanetwork/channel/NetworkInfo$NetworkInfoListener;

    iput-object p2, p0, Lanetwork/channel/NetworkInfo$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lanetwork/channel/NetworkInfo$2;->a:Lanetwork/channel/NetworkInfo$NetworkInfoListener;

    iget-object v1, p0, Lanetwork/channel/NetworkInfo$2;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lanetwork/channel/NetworkInfo$NetworkInfoListener;->a(Ljava/lang/String;)V

    .line 158
    return-void
.end method
