.class public Lcom/taobao/accs/net/k$a;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanet/channel/IAuth;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/accs/net/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Lcom/taobao/accs/net/b;


# direct methods
.method public constructor <init>(Lcom/taobao/accs/net/b;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 463
    invoke-virtual {p1}, Lcom/taobao/accs/net/b;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/net/k$a;->c:Ljava/lang/String;

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/accs/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/taobao/accs/net/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/net/k$a;->a:Ljava/lang/String;

    .line 465
    iget v0, p1, Lcom/taobao/accs/net/b;->c:I

    iput v0, p0, Lcom/taobao/accs/net/k$a;->b:I

    .line 466
    iput-object p1, p0, Lcom/taobao/accs/net/k$a;->d:Lcom/taobao/accs/net/b;

    .line 467
    return-void
.end method

.method static synthetic a(Lcom/taobao/accs/net/k$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/taobao/accs/net/k$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/taobao/accs/net/k$a;)Lcom/taobao/accs/net/b;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/taobao/accs/net/k$a;->d:Lcom/taobao/accs/net/b;

    return-object v0
.end method


# virtual methods
.method public auth(Lanet/channel/Session;Lanet/channel/IAuth$AuthCallback;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 471
    .line 473
    iget-object v0, p0, Lcom/taobao/accs/net/k$a;->c:Ljava/lang/String;

    const-string v1, "auth begin"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "seq"

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget-object v4, p1, Lanet/channel/Session;->mSeq:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 475
    iget-object v0, p0, Lcom/taobao/accs/net/k$a;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/taobao/accs/net/k$a;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " auth URL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/accs/net/k$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 476
    new-instance v0, Lanet/channel/request/Request$Builder;

    invoke-direct {v0}, Lanet/channel/request/Request$Builder;-><init>()V

    iget-object v1, p0, Lcom/taobao/accs/net/k$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lanet/channel/request/Request$Builder;->setUrl(Ljava/lang/String;)Lanet/channel/request/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lanet/channel/request/Request$Builder;->build()Lanet/channel/request/Request;

    move-result-object v0

    .line 478
    new-instance v1, Lcom/taobao/accs/net/p;

    invoke-direct {v1, p0, p1, p2}, Lcom/taobao/accs/net/p;-><init>(Lcom/taobao/accs/net/k$a;Lanet/channel/Session;Lanet/channel/IAuth$AuthCallback;)V

    invoke-virtual {p1, v0, v1}, Lanet/channel/Session;->request(Lanet/channel/request/Request;Lanet/channel/RequestCb;)Lanet/channel/request/Cancelable;

    .line 508
    return-void
.end method
