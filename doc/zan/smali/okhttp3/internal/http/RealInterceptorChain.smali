.class public final Lokhttp3/internal/http/RealInterceptorChain;
.super Ljava/lang/Object;
.source "RealInterceptorChain.java"

# interfaces
.implements Lokhttp3/Interceptor$Chain;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lokhttp3/internal/connection/StreamAllocation;

.field private final c:Lokhttp3/internal/http/HttpStream;

.field private final d:Lokhttp3/Connection;

.field private final e:I

.field private final f:Lokhttp3/Request;

.field private g:I


# direct methods
.method public constructor <init>(Ljava/util/List;Lokhttp3/internal/connection/StreamAllocation;Lokhttp3/internal/http/HttpStream;Lokhttp3/Connection;ILokhttp3/Request;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Interceptor;",
            ">;",
            "Lokhttp3/internal/connection/StreamAllocation;",
            "Lokhttp3/internal/http/HttpStream;",
            "Lokhttp3/Connection;",
            "I",
            "Lokhttp3/Request;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lokhttp3/internal/http/RealInterceptorChain;->a:Ljava/util/List;

    .line 43
    iput-object p4, p0, Lokhttp3/internal/http/RealInterceptorChain;->d:Lokhttp3/Connection;

    .line 44
    iput-object p2, p0, Lokhttp3/internal/http/RealInterceptorChain;->b:Lokhttp3/internal/connection/StreamAllocation;

    .line 45
    iput-object p3, p0, Lokhttp3/internal/http/RealInterceptorChain;->c:Lokhttp3/internal/http/HttpStream;

    .line 46
    iput p5, p0, Lokhttp3/internal/http/RealInterceptorChain;->e:I

    .line 47
    iput-object p6, p0, Lokhttp3/internal/http/RealInterceptorChain;->f:Lokhttp3/Request;

    .line 48
    return-void
.end method

.method private a(Lokhttp3/HttpUrl;)Z
    .locals 2

    .prologue
    .line 109
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->i()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/http/RealInterceptorChain;->d:Lokhttp3/Connection;

    invoke-interface {v1}, Lokhttp3/Connection;->a()Lokhttp3/Route;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Route;->a()Lokhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Address;->a()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->j()I

    move-result v0

    iget-object v1, p0, Lokhttp3/internal/http/RealInterceptorChain;->d:Lokhttp3/Connection;

    invoke-interface {v1}, Lokhttp3/Connection;->a()Lokhttp3/Route;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Route;->a()Lokhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Address;->a()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->j()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 109
    :goto_0
    return v0

    .line 110
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Lokhttp3/Request;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lokhttp3/internal/http/RealInterceptorChain;->f:Lokhttp3/Request;

    return-object v0
.end method

.method public a(Lokhttp3/Request;)Lokhttp3/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lokhttp3/internal/http/RealInterceptorChain;->b:Lokhttp3/internal/connection/StreamAllocation;

    iget-object v1, p0, Lokhttp3/internal/http/RealInterceptorChain;->c:Lokhttp3/internal/http/HttpStream;

    iget-object v2, p0, Lokhttp3/internal/http/RealInterceptorChain;->d:Lokhttp3/Connection;

    invoke-virtual {p0, p1, v0, v1, v2}, Lokhttp3/internal/http/RealInterceptorChain;->a(Lokhttp3/Request;Lokhttp3/internal/connection/StreamAllocation;Lokhttp3/internal/http/HttpStream;Lokhttp3/Connection;)Lokhttp3/Response;

    move-result-object v0

    return-object v0
.end method

.method public a(Lokhttp3/Request;Lokhttp3/internal/connection/StreamAllocation;Lokhttp3/internal/http/HttpStream;Lokhttp3/Connection;)Lokhttp3/Response;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 72
    iget v0, p0, Lokhttp3/internal/http/RealInterceptorChain;->e:I

    iget-object v1, p0, Lokhttp3/internal/http/RealInterceptorChain;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 74
    :cond_0
    iget v0, p0, Lokhttp3/internal/http/RealInterceptorChain;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/http/RealInterceptorChain;->g:I

    .line 77
    iget-object v0, p0, Lokhttp3/internal/http/RealInterceptorChain;->c:Lokhttp3/internal/http/HttpStream;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lokhttp3/Request;->a()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-direct {p0, v0}, Lokhttp3/internal/http/RealInterceptorChain;->a(Lokhttp3/HttpUrl;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 78
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "network interceptor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/http/RealInterceptorChain;->a:Ljava/util/List;

    iget v3, p0, Lokhttp3/internal/http/RealInterceptorChain;->e:I

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must retain the same host and port"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/http/RealInterceptorChain;->c:Lokhttp3/internal/http/HttpStream;

    if-eqz v0, :cond_2

    iget v0, p0, Lokhttp3/internal/http/RealInterceptorChain;->g:I

    if-le v0, v7, :cond_2

    .line 84
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "network interceptor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/http/RealInterceptorChain;->a:Ljava/util/List;

    iget v3, p0, Lokhttp3/internal/http/RealInterceptorChain;->e:I

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must call proceed() exactly once"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_2
    new-instance v0, Lokhttp3/internal/http/RealInterceptorChain;

    iget-object v1, p0, Lokhttp3/internal/http/RealInterceptorChain;->a:Ljava/util/List;

    iget v2, p0, Lokhttp3/internal/http/RealInterceptorChain;->e:I

    add-int/lit8 v5, v2, 0x1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lokhttp3/internal/http/RealInterceptorChain;-><init>(Ljava/util/List;Lokhttp3/internal/connection/StreamAllocation;Lokhttp3/internal/http/HttpStream;Lokhttp3/Connection;ILokhttp3/Request;)V

    .line 91
    iget-object v1, p0, Lokhttp3/internal/http/RealInterceptorChain;->a:Ljava/util/List;

    iget v2, p0, Lokhttp3/internal/http/RealInterceptorChain;->e:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Interceptor;

    .line 92
    invoke-interface {v1, v0}, Lokhttp3/Interceptor;->a(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;

    move-result-object v2

    .line 95
    if-eqz p3, :cond_3

    iget v3, p0, Lokhttp3/internal/http/RealInterceptorChain;->e:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lokhttp3/internal/http/RealInterceptorChain;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    iget v0, v0, Lokhttp3/internal/http/RealInterceptorChain;->g:I

    if-eq v0, v7, :cond_3

    .line 96
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "network interceptor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must call proceed() exactly once"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_3
    if-nez v2, :cond_4

    .line 102
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "interceptor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returned null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_4
    return-object v2
.end method

.method public b()Lokhttp3/Connection;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lokhttp3/internal/http/RealInterceptorChain;->d:Lokhttp3/Connection;

    return-object v0
.end method

.method public c()Lokhttp3/internal/connection/StreamAllocation;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lokhttp3/internal/http/RealInterceptorChain;->b:Lokhttp3/internal/connection/StreamAllocation;

    return-object v0
.end method

.method public d()Lokhttp3/internal/http/HttpStream;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lokhttp3/internal/http/RealInterceptorChain;->c:Lokhttp3/internal/http/HttpStream;

    return-object v0
.end method
