.class Lanet/channel/session/f;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lanet/channel/request/Request;

.field final synthetic b:Lanet/channel/statist/RequestStatistic;

.field final synthetic c:Lanet/channel/RequestCb;

.field final synthetic d:Lanet/channel/session/d;


# direct methods
.method constructor <init>(Lanet/channel/session/d;Lanet/channel/request/Request;Lanet/channel/statist/RequestStatistic;Lanet/channel/RequestCb;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lanet/channel/session/f;->d:Lanet/channel/session/d;

    iput-object p2, p0, Lanet/channel/session/f;->a:Lanet/channel/request/Request;

    iput-object p3, p0, Lanet/channel/session/f;->b:Lanet/channel/statist/RequestStatistic;

    iput-object p4, p0, Lanet/channel/session/f;->c:Lanet/channel/RequestCb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lanet/channel/session/f;->a:Lanet/channel/request/Request;

    new-instance v1, Lanet/channel/session/g;

    invoke-direct {v1, p0}, Lanet/channel/session/g;-><init>(Lanet/channel/session/f;)V

    invoke-static {v0, v1}, Lanet/channel/session/b;->a(Lanet/channel/request/Request;Lanet/channel/RequestCb;)Lanet/channel/session/b$a;

    .line 160
    return-void
.end method
