.class public Lokhttp3/internal/framed/FramedConnection$Builder;
.super Ljava/lang/Object;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/framed/FramedConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/net/Socket;

.field private b:Ljava/lang/String;

.field private c:Lokio/BufferedSource;

.field private d:Lokio/BufferedSink;

.field private e:Lokhttp3/internal/framed/FramedConnection$Listener;

.field private f:Lokhttp3/Protocol;

.field private g:Lokhttp3/internal/framed/PushObserver;

.field private h:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .prologue
    .line 532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 523
    sget-object v0, Lokhttp3/internal/framed/FramedConnection$Listener;->j:Lokhttp3/internal/framed/FramedConnection$Listener;

    iput-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Builder;->e:Lokhttp3/internal/framed/FramedConnection$Listener;

    .line 524
    sget-object v0, Lokhttp3/Protocol;->SPDY_3:Lokhttp3/Protocol;

    iput-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Builder;->f:Lokhttp3/Protocol;

    .line 525
    sget-object v0, Lokhttp3/internal/framed/PushObserver;->a:Lokhttp3/internal/framed/PushObserver;

    iput-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Builder;->g:Lokhttp3/internal/framed/PushObserver;

    .line 533
    iput-boolean p1, p0, Lokhttp3/internal/framed/FramedConnection$Builder;->h:Z

    .line 534
    return-void
.end method

.method static synthetic a(Lokhttp3/internal/framed/FramedConnection$Builder;)Lokhttp3/Protocol;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Builder;->f:Lokhttp3/Protocol;

    return-object v0
.end method

.method static synthetic b(Lokhttp3/internal/framed/FramedConnection$Builder;)Lokhttp3/internal/framed/PushObserver;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Builder;->g:Lokhttp3/internal/framed/PushObserver;

    return-object v0
.end method

.method static synthetic c(Lokhttp3/internal/framed/FramedConnection$Builder;)Z
    .locals 1

    .prologue
    .line 518
    iget-boolean v0, p0, Lokhttp3/internal/framed/FramedConnection$Builder;->h:Z

    return v0
.end method

.method static synthetic d(Lokhttp3/internal/framed/FramedConnection$Builder;)Lokhttp3/internal/framed/FramedConnection$Listener;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Builder;->e:Lokhttp3/internal/framed/FramedConnection$Listener;

    return-object v0
.end method

.method static synthetic e(Lokhttp3/internal/framed/FramedConnection$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Builder;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lokhttp3/internal/framed/FramedConnection$Builder;)Ljava/net/Socket;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Builder;->a:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic g(Lokhttp3/internal/framed/FramedConnection$Builder;)Lokio/BufferedSink;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Builder;->d:Lokio/BufferedSink;

    return-object v0
.end method

.method static synthetic h(Lokhttp3/internal/framed/FramedConnection$Builder;)Lokio/BufferedSource;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Builder;->c:Lokio/BufferedSource;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/net/Socket;)Lokhttp3/internal/framed/FramedConnection$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 537
    invoke-virtual {p1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    .line 538
    invoke-static {p1}, Lokio/Okio;->b(Ljava/net/Socket;)Lokio/Source;

    move-result-object v1

    invoke-static {v1}, Lokio/Okio;->a(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v1

    invoke-static {p1}, Lokio/Okio;->a(Ljava/net/Socket;)Lokio/Sink;

    move-result-object v2

    invoke-static {v2}, Lokio/Okio;->a(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v2

    .line 537
    invoke-virtual {p0, p1, v0, v1, v2}, Lokhttp3/internal/framed/FramedConnection$Builder;->a(Ljava/net/Socket;Ljava/lang/String;Lokio/BufferedSource;Lokio/BufferedSink;)Lokhttp3/internal/framed/FramedConnection$Builder;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/net/Socket;Ljava/lang/String;Lokio/BufferedSource;Lokio/BufferedSink;)Lokhttp3/internal/framed/FramedConnection$Builder;
    .locals 0

    .prologue
    .line 543
    iput-object p1, p0, Lokhttp3/internal/framed/FramedConnection$Builder;->a:Ljava/net/Socket;

    .line 544
    iput-object p2, p0, Lokhttp3/internal/framed/FramedConnection$Builder;->b:Ljava/lang/String;

    .line 545
    iput-object p3, p0, Lokhttp3/internal/framed/FramedConnection$Builder;->c:Lokio/BufferedSource;

    .line 546
    iput-object p4, p0, Lokhttp3/internal/framed/FramedConnection$Builder;->d:Lokio/BufferedSink;

    .line 547
    return-object p0
.end method

.method public a(Lokhttp3/Protocol;)Lokhttp3/internal/framed/FramedConnection$Builder;
    .locals 0

    .prologue
    .line 556
    iput-object p1, p0, Lokhttp3/internal/framed/FramedConnection$Builder;->f:Lokhttp3/Protocol;

    .line 557
    return-object p0
.end method

.method public a(Lokhttp3/internal/framed/FramedConnection$Listener;)Lokhttp3/internal/framed/FramedConnection$Builder;
    .locals 0

    .prologue
    .line 551
    iput-object p1, p0, Lokhttp3/internal/framed/FramedConnection$Builder;->e:Lokhttp3/internal/framed/FramedConnection$Listener;

    .line 552
    return-object p0
.end method

.method public a(Lokhttp3/internal/framed/PushObserver;)Lokhttp3/internal/framed/FramedConnection$Builder;
    .locals 0

    .prologue
    .line 561
    iput-object p1, p0, Lokhttp3/internal/framed/FramedConnection$Builder;->g:Lokhttp3/internal/framed/PushObserver;

    .line 562
    return-object p0
.end method

.method public a()Lokhttp3/internal/framed/FramedConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 566
    new-instance v0, Lokhttp3/internal/framed/FramedConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lokhttp3/internal/framed/FramedConnection;-><init>(Lokhttp3/internal/framed/FramedConnection$Builder;Lokhttp3/internal/framed/FramedConnection$1;)V

    return-object v0
.end method
