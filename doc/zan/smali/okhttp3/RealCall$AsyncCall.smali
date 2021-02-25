.class final Lokhttp3/RealCall$AsyncCall;
.super Lokhttp3/internal/NamedRunnable;
.source "RealCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/RealCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AsyncCall"
.end annotation


# instance fields
.field final synthetic a:Lokhttp3/RealCall;

.field private final c:Lokhttp3/Callback;


# direct methods
.method private constructor <init>(Lokhttp3/RealCall;Lokhttp3/Callback;)V
    .locals 4

    .prologue
    .line 100
    iput-object p1, p0, Lokhttp3/RealCall$AsyncCall;->a:Lokhttp3/RealCall;

    .line 101
    const-string v0, "OkHttp %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lokhttp3/RealCall;->h()Lokhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    iput-object p2, p0, Lokhttp3/RealCall$AsyncCall;->c:Lokhttp3/Callback;

    .line 103
    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/RealCall;Lokhttp3/Callback;Lokhttp3/RealCall$1;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lokhttp3/RealCall$AsyncCall;-><init>(Lokhttp3/RealCall;Lokhttp3/Callback;)V

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lokhttp3/RealCall$AsyncCall;->a:Lokhttp3/RealCall;

    iget-object v0, v0, Lokhttp3/RealCall;->a:Lokhttp3/Request;

    invoke-virtual {v0}, Lokhttp3/Request;->a()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method b()Lokhttp3/Request;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lokhttp3/RealCall$AsyncCall;->a:Lokhttp3/RealCall;

    iget-object v0, v0, Lokhttp3/RealCall;->a:Lokhttp3/Request;

    return-object v0
.end method

.method c()Lokhttp3/RealCall;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lokhttp3/RealCall$AsyncCall;->a:Lokhttp3/RealCall;

    return-object v0
.end method

.method protected d()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 118
    const/4 v2, 0x0

    .line 120
    :try_start_0
    iget-object v0, p0, Lokhttp3/RealCall$AsyncCall;->a:Lokhttp3/RealCall;

    invoke-static {v0}, Lokhttp3/RealCall;->a(Lokhttp3/RealCall;)Lokhttp3/Response;

    move-result-object v0

    .line 121
    iget-object v3, p0, Lokhttp3/RealCall$AsyncCall;->a:Lokhttp3/RealCall;

    invoke-static {v3}, Lokhttp3/RealCall;->b(Lokhttp3/RealCall;)Lokhttp3/internal/http/RetryAndFollowUpInterceptor;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->b()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    :try_start_1
    iget-object v0, p0, Lokhttp3/RealCall$AsyncCall;->c:Lokhttp3/Callback;

    iget-object v2, p0, Lokhttp3/RealCall$AsyncCall;->a:Lokhttp3/RealCall;

    new-instance v3, Ljava/io/IOException;

    const-string v4, "Canceled"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2, v3}, Lokhttp3/Callback;->a(Lokhttp3/Call;Ljava/io/IOException;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    :goto_0
    iget-object v0, p0, Lokhttp3/RealCall$AsyncCall;->a:Lokhttp3/RealCall;

    invoke-static {v0}, Lokhttp3/RealCall;->d(Lokhttp3/RealCall;)Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->t()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lokhttp3/Dispatcher;->b(Lokhttp3/RealCall$AsyncCall;)V

    .line 138
    :goto_1
    return-void

    .line 126
    :cond_0
    :try_start_2
    iget-object v2, p0, Lokhttp3/RealCall$AsyncCall;->c:Lokhttp3/Callback;

    iget-object v3, p0, Lokhttp3/RealCall$AsyncCall;->a:Lokhttp3/RealCall;

    invoke-interface {v2, v3, v0}, Lokhttp3/Callback;->a(Lokhttp3/Call;Lokhttp3/Response;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    :goto_2
    if-eqz v1, :cond_1

    .line 131
    :try_start_3
    invoke-static {}, Lokhttp3/internal/platform/Platform;->b()Lokhttp3/internal/platform/Platform;

    move-result-object v1

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback failure for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lokhttp3/RealCall$AsyncCall;->a:Lokhttp3/RealCall;

    invoke-static {v4}, Lokhttp3/RealCall;->c(Lokhttp3/RealCall;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lokhttp3/internal/platform/Platform;->a(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 136
    :goto_3
    iget-object v0, p0, Lokhttp3/RealCall$AsyncCall;->a:Lokhttp3/RealCall;

    invoke-static {v0}, Lokhttp3/RealCall;->d(Lokhttp3/RealCall;)Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->t()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lokhttp3/Dispatcher;->b(Lokhttp3/RealCall$AsyncCall;)V

    goto :goto_1

    .line 133
    :cond_1
    :try_start_4
    iget-object v1, p0, Lokhttp3/RealCall$AsyncCall;->c:Lokhttp3/Callback;

    iget-object v2, p0, Lokhttp3/RealCall$AsyncCall;->a:Lokhttp3/RealCall;

    invoke-interface {v1, v2, v0}, Lokhttp3/Callback;->a(Lokhttp3/Call;Ljava/io/IOException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 136
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lokhttp3/RealCall$AsyncCall;->a:Lokhttp3/RealCall;

    invoke-static {v1}, Lokhttp3/RealCall;->d(Lokhttp3/RealCall;)Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->t()Lokhttp3/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lokhttp3/Dispatcher;->b(Lokhttp3/RealCall$AsyncCall;)V

    throw v0

    .line 128
    :catch_1
    move-exception v0

    move v1, v2

    goto :goto_2
.end method
