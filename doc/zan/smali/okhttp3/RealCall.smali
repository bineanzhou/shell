.class final Lokhttp3/RealCall;
.super Ljava/lang/Object;
.source "RealCall.java"

# interfaces
.implements Lokhttp3/Call;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/RealCall$AsyncCall;
    }
.end annotation


# instance fields
.field a:Lokhttp3/Request;

.field private final b:Lokhttp3/OkHttpClient;

.field private final c:Lokhttp3/internal/http/RetryAndFollowUpInterceptor;

.field private d:Z


# direct methods
.method protected constructor <init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lokhttp3/RealCall;->b:Lokhttp3/OkHttpClient;

    .line 45
    iput-object p2, p0, Lokhttp3/RealCall;->a:Lokhttp3/Request;

    .line 46
    new-instance v0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-direct {v0, p1}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;-><init>(Lokhttp3/OkHttpClient;)V

    iput-object v0, p0, Lokhttp3/RealCall;->c:Lokhttp3/internal/http/RetryAndFollowUpInterceptor;

    .line 47
    return-void
.end method

.method static synthetic a(Lokhttp3/RealCall;)Lokhttp3/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Lokhttp3/RealCall;->j()Lokhttp3/Response;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lokhttp3/RealCall;)Lokhttp3/internal/http/RetryAndFollowUpInterceptor;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lokhttp3/RealCall;->c:Lokhttp3/internal/http/RetryAndFollowUpInterceptor;

    return-object v0
.end method

.method static synthetic c(Lokhttp3/RealCall;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lokhttp3/RealCall;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lokhttp3/RealCall;)Lokhttp3/OkHttpClient;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lokhttp3/RealCall;->b:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method private i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lokhttp3/RealCall;->c:Lokhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-virtual {v0}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "canceled call"

    .line 147
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lokhttp3/RealCall;->h()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 146
    :cond_0
    const-string v0, "call"

    goto :goto_0
.end method

.method private j()Lokhttp3/Response;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 156
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 157
    iget-object v0, p0, Lokhttp3/RealCall;->b:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->w()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 158
    iget-object v0, p0, Lokhttp3/RealCall;->c:Lokhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    new-instance v0, Lokhttp3/internal/http/BridgeInterceptor;

    iget-object v3, p0, Lokhttp3/RealCall;->b:Lokhttp3/OkHttpClient;

    invoke-virtual {v3}, Lokhttp3/OkHttpClient;->f()Lokhttp3/CookieJar;

    move-result-object v3

    invoke-direct {v0, v3}, Lokhttp3/internal/http/BridgeInterceptor;-><init>(Lokhttp3/CookieJar;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    new-instance v0, Lokhttp3/internal/cache/CacheInterceptor;

    iget-object v3, p0, Lokhttp3/RealCall;->b:Lokhttp3/OkHttpClient;

    invoke-virtual {v3}, Lokhttp3/OkHttpClient;->h()Lokhttp3/internal/cache/InternalCache;

    move-result-object v3

    invoke-direct {v0, v3}, Lokhttp3/internal/cache/CacheInterceptor;-><init>(Lokhttp3/internal/cache/InternalCache;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    new-instance v0, Lokhttp3/internal/connection/ConnectInterceptor;

    iget-object v3, p0, Lokhttp3/RealCall;->b:Lokhttp3/OkHttpClient;

    invoke-direct {v0, v3}, Lokhttp3/internal/connection/ConnectInterceptor;-><init>(Lokhttp3/OkHttpClient;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v0, p0, Lokhttp3/RealCall;->c:Lokhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-virtual {v0}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lokhttp3/RealCall;->b:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->x()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 165
    :cond_0
    new-instance v0, Lokhttp3/internal/http/CallServerInterceptor;

    iget-object v3, p0, Lokhttp3/RealCall;->c:Lokhttp3/internal/http/RetryAndFollowUpInterceptor;

    .line 166
    invoke-virtual {v3}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->d()Z

    move-result v3

    invoke-direct {v0, v3}, Lokhttp3/internal/http/CallServerInterceptor;-><init>(Z)V

    .line 165
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    new-instance v0, Lokhttp3/internal/http/RealInterceptorChain;

    const/4 v5, 0x0

    iget-object v6, p0, Lokhttp3/RealCall;->a:Lokhttp3/Request;

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v6}, Lokhttp3/internal/http/RealInterceptorChain;-><init>(Ljava/util/List;Lokhttp3/internal/connection/StreamAllocation;Lokhttp3/internal/http/HttpStream;Lokhttp3/Connection;ILokhttp3/Request;)V

    .line 170
    iget-object v1, p0, Lokhttp3/RealCall;->a:Lokhttp3/Request;

    invoke-interface {v0, v1}, Lokhttp3/Interceptor$Chain;->a(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lokhttp3/Request;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lokhttp3/RealCall;->a:Lokhttp3/Request;

    return-object v0
.end method

.method public a(Lokhttp3/Callback;)V
    .locals 3

    .prologue
    .line 74
    monitor-enter p0

    .line 75
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/RealCall;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 76
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lokhttp3/RealCall;->d:Z

    .line 77
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    iget-object v0, p0, Lokhttp3/RealCall;->b:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->t()Lokhttp3/Dispatcher;

    move-result-object v0

    new-instance v1, Lokhttp3/RealCall$AsyncCall;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lokhttp3/RealCall$AsyncCall;-><init>(Lokhttp3/RealCall;Lokhttp3/Callback;Lokhttp3/RealCall$1;)V

    invoke-virtual {v0, v1}, Lokhttp3/Dispatcher;->a(Lokhttp3/RealCall$AsyncCall;)V

    .line 79
    return-void
.end method

.method public b()Lokhttp3/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    monitor-enter p0

    .line 55
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/RealCall;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 56
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lokhttp3/RealCall;->d:Z

    .line 57
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    :try_start_2
    iget-object v0, p0, Lokhttp3/RealCall;->b:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->t()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lokhttp3/Dispatcher;->a(Lokhttp3/RealCall;)V

    .line 60
    invoke-direct {p0}, Lokhttp3/RealCall;->j()Lokhttp3/Response;

    move-result-object v0

    .line 61
    if-nez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 64
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lokhttp3/RealCall;->b:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->t()Lokhttp3/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lokhttp3/Dispatcher;->b(Lokhttp3/RealCall;)V

    throw v0

    :cond_1
    iget-object v1, p0, Lokhttp3/RealCall;->b:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->t()Lokhttp3/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lokhttp3/Dispatcher;->b(Lokhttp3/RealCall;)V

    .line 62
    return-object v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lokhttp3/RealCall;->c:Lokhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-virtual {v0}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->a()V

    .line 83
    return-void
.end method

.method public declared-synchronized d()Z
    .locals 1

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lokhttp3/RealCall;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lokhttp3/RealCall;->c:Lokhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-virtual {v0}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->b()Z

    move-result v0

    return v0
.end method

.method declared-synchronized f()V
    .locals 2

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lokhttp3/RealCall;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 70
    :cond_0
    :try_start_1
    iget-object v0, p0, Lokhttp3/RealCall;->c:Lokhttp3/internal/http/RetryAndFollowUpInterceptor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    monitor-exit p0

    return-void
.end method

.method g()Lokhttp3/internal/connection/StreamAllocation;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lokhttp3/RealCall;->c:Lokhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-virtual {v0}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->e()Lokhttp3/internal/connection/StreamAllocation;

    move-result-object v0

    return-object v0
.end method

.method h()Lokhttp3/HttpUrl;
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lokhttp3/RealCall;->a:Lokhttp3/Request;

    invoke-virtual {v0}, Lokhttp3/Request;->a()Lokhttp3/HttpUrl;

    move-result-object v0

    const-string v1, "/..."

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl;->e(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    return-object v0
.end method
