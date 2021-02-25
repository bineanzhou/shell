.class public Lokio/ForwardingTimeout;
.super Lokio/Timeout;
.source "ForwardingTimeout.java"


# instance fields
.field private a:Lokio/Timeout;


# direct methods
.method public constructor <init>(Lokio/Timeout;)V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Lokio/Timeout;-><init>()V

    .line 26
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "delegate == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_0
    iput-object p1, p0, Lokio/ForwardingTimeout;->a:Lokio/Timeout;

    .line 28
    return-void
.end method


# virtual methods
.method public final a(Lokio/Timeout;)Lokio/ForwardingTimeout;
    .locals 2

    .prologue
    .line 36
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "delegate == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    iput-object p1, p0, Lokio/ForwardingTimeout;->a:Lokio/Timeout;

    .line 38
    return-object p0
.end method

.method public final a()Lokio/Timeout;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lokio/ForwardingTimeout;->a:Lokio/Timeout;

    return-object v0
.end method

.method public a(J)Lokio/Timeout;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lokio/ForwardingTimeout;->a:Lokio/Timeout;

    invoke-virtual {v0, p1, p2}, Lokio/Timeout;->a(J)Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public a(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lokio/ForwardingTimeout;->a:Lokio/Timeout;

    invoke-virtual {v0, p1, p2, p3}, Lokio/Timeout;->a(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public c_()J
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lokio/ForwardingTimeout;->a:Lokio/Timeout;

    invoke-virtual {v0}, Lokio/Timeout;->c_()J

    move-result-wide v0

    return-wide v0
.end method

.method public d()J
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lokio/ForwardingTimeout;->a:Lokio/Timeout;

    invoke-virtual {v0}, Lokio/Timeout;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public d_()Z
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lokio/ForwardingTimeout;->a:Lokio/Timeout;

    invoke-virtual {v0}, Lokio/Timeout;->d_()Z

    move-result v0

    return v0
.end method

.method public e_()Lokio/Timeout;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lokio/ForwardingTimeout;->a:Lokio/Timeout;

    invoke-virtual {v0}, Lokio/Timeout;->e_()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public f()Lokio/Timeout;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lokio/ForwardingTimeout;->a:Lokio/Timeout;

    invoke-virtual {v0}, Lokio/Timeout;->f()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lokio/ForwardingTimeout;->a:Lokio/Timeout;

    invoke-virtual {v0}, Lokio/Timeout;->g()V

    .line 71
    return-void
.end method
