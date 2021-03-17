.class public Lanet/channel/session/b;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/session/b$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lanet/channel/request/Request;Lanet/channel/RequestCb;)Lanet/channel/session/b$a;
    .locals 12

    .prologue
    const/4 v1, 0x0

    const/4 v10, 0x0

    .line 74
    new-instance v2, Lanet/channel/session/b$a;

    invoke-direct {v2}, Lanet/channel/session/b$a;-><init>()V

    .line 75
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lanet/channel/request/Request;->getUrl()Ljava/net/URL;

    move-result-object v0

    if-nez v0, :cond_2

    .line 76
    :cond_0
    if-eqz p1, :cond_1

    .line 77
    const/16 v0, -0x66

    const/16 v3, -0x66

    invoke-static {v3}, Lanet/channel/util/ErrorConstant;->getErrMsg(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lanet/channel/statist/RequestStatistic;

    invoke-direct {v4, v1, v1}, Lanet/channel/statist/RequestStatistic;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0, v3, v4}, Lanet/channel/RequestCb;->onFinish(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V

    :cond_1
    move-object v0, v2

    .line 203
    :goto_0
    return-object v0

    .line 85
    :cond_2
    iget-object v0, p0, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    iget-wide v6, v3, Lanet/channel/statist/RequestStatistic;->start:J

    sub-long/2addr v4, v6

    iput-wide v4, v0, Lanet/channel/statist/RequestStatistic;->sendBeforeTime:J

    move-object v0, v1

    .line 87
    :cond_3
    :goto_1
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->g()Z

    move-result v3

    if-nez v3, :cond_5

    .line 88
    const/16 v0, -0xc8

    invoke-static {p0, v2, p1, v0, v1}, Lanet/channel/session/b;->a(Lanet/channel/request/Request;Lanet/channel/session/b$a;Lanet/channel/RequestCb;ILjava/lang/Throwable;)V

    :cond_4
    :goto_2
    move-object v0, v2

    .line 203
    goto :goto_0

    .line 91
    :cond_5
    const/4 v3, 0x2

    :try_start_0
    invoke-static {v3}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 92
    const-string v3, "awcn.HttpConnector"

    const-string v4, ""

    invoke-virtual {p0}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "request URL"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {p0}, Lanet/channel/request/Request;->getUrl()Ljava/net/URL;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5, v6}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    const-string v3, "awcn.HttpConnector"

    const-string v4, ""

    invoke-virtual {p0}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "request Method"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {p0}, Lanet/channel/request/Request;->getMethod()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5, v6}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    const-string v3, "awcn.HttpConnector"

    const-string v4, ""

    invoke-virtual {p0}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "request headers"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {p0}, Lanet/channel/request/Request;->getHeaders()Ljava/util/Map;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5, v6}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    :cond_6
    invoke-static {p0}, Lanet/channel/session/b;->a(Lanet/channel/request/Request;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_e

    .line 99
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 100
    invoke-static {v0, p0}, Lanet/channel/session/b;->a(Ljava/net/HttpURLConnection;Lanet/channel/request/Request;)V

    .line 101
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    iput v3, v2, Lanet/channel/session/b$a;->a:I

    .line 102
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    invoke-static {v3}, Lanet/channel/util/a;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, v2, Lanet/channel/session/b$a;->c:Ljava/util/Map;

    .line 103
    const-string v3, "awcn.HttpConnector"

    const-string v4, ""

    invoke-virtual {p0}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "response code"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget v8, v2, Lanet/channel/session/b$a;->a:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5, v6}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    const-string v3, "awcn.HttpConnector"

    const-string v4, ""

    invoke-virtual {p0}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "response headers"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, v2, Lanet/channel/session/b$a;->c:Ljava/util/Map;

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5, v6}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    iget v3, v2, Lanet/channel/session/b$a;->a:I

    invoke-static {p0, v3}, Lanet/channel/util/a;->a(Lanet/channel/request/Request;I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 107
    iget-object v3, v2, Lanet/channel/session/b$a;->c:Ljava/util/Map;

    const-string v4, "Location"

    invoke-static {v3, v4}, Lanet/channel/util/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 108
    if-eqz v3, :cond_8

    .line 109
    invoke-static {v3}, Lanet/channel/util/c;->a(Ljava/lang/String;)Lanet/channel/util/c;

    move-result-object v4

    .line 110
    if-eqz v4, :cond_7

    .line 111
    invoke-virtual {p0}, Lanet/channel/request/Request;->newBuilder()Lanet/channel/request/Request$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lanet/channel/request/Request$Builder;->setUrl(Lanet/channel/util/c;)Lanet/channel/request/Request$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lanet/channel/request/Request;->getRedirectTimes()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Lanet/channel/request/Request$Builder;->setRedirectTimes(I)Lanet/channel/request/Request$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lanet/channel/request/Request$Builder;->build()Lanet/channel/request/Request;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_10
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object p0

    .line 195
    if-eqz v0, :cond_3

    .line 196
    :try_start_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 198
    :catch_0
    move-exception v3

    .line 199
    const-string v4, "awcn.HttpConnector"

    const-string v5, "http disconnect"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v4, v5, v1, v3, v6}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 117
    :cond_7
    :try_start_2
    const-string v4, "awcn.HttpConnector"

    const-string v5, "redirect url is invalid!"

    invoke-virtual {p0}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "redirect url"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v3, v7, v8

    invoke-static {v4, v5, v6, v7}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    :cond_8
    invoke-virtual {p0}, Lanet/channel/request/Request;->getMethod()Ljava/lang/String;

    move-result-object v3

    const-string v4, "HEAD"

    if-eq v3, v4, :cond_9

    iget v3, v2, Lanet/channel/session/b$a;->a:I

    const/16 v4, 0x130

    if-eq v3, v4, :cond_9

    iget v3, v2, Lanet/channel/session/b$a;->a:I

    const/16 v4, 0xcc

    if-eq v3, v4, :cond_9

    iget v3, v2, Lanet/channel/session/b$a;->a:I

    const/16 v4, 0x64

    if-lt v3, v4, :cond_c

    iget v3, v2, Lanet/channel/session/b$a;->a:I

    const/16 v4, 0xc8

    if-ge v3, v4, :cond_c

    .line 127
    :cond_9
    if-eqz p1, :cond_a

    .line 128
    iget v3, v2, Lanet/channel/session/b$a;->a:I

    iget-object v4, v2, Lanet/channel/session/b$a;->c:Ljava/util/Map;

    invoke-interface {p1, v3, v4}, Lanet/channel/RequestCb;->onResponseCode(ILjava/util/Map;)V

    .line 139
    :cond_a
    :goto_3
    iget-object v3, p0, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    iget-wide v6, v6, Lanet/channel/statist/RequestStatistic;->start:J

    sub-long/2addr v4, v6

    iput-wide v4, v3, Lanet/channel/statist/RequestStatistic;->oneWayTime:J

    .line 140
    iget-object v3, p0, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    iget v4, v2, Lanet/channel/session/b$a;->a:I

    iput v4, v3, Lanet/channel/statist/RequestStatistic;->statusCode:I

    .line 141
    iget-object v3, p0, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lanet/channel/statist/RequestStatistic;->ret:Z

    .line 143
    if-eqz p1, :cond_b

    .line 144
    iget v3, v2, Lanet/channel/session/b$a;->a:I

    const-string v4, "SUCCESS"

    iget-object v5, p0, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    invoke-interface {p1, v3, v4, v5}, Lanet/channel/RequestCb;->onFinish(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_10
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 195
    :cond_b
    :goto_4
    if-eqz v0, :cond_4

    .line 196
    :try_start_3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    .line 198
    :catch_1
    move-exception v0

    .line 199
    const-string v3, "awcn.HttpConnector"

    const-string v4, "http disconnect"

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {v3, v4, v1, v0, v5}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 131
    :cond_c
    :try_start_4
    iget-object v3, v2, Lanet/channel/session/b$a;->c:Ljava/util/Map;

    invoke-static {v3}, Lanet/channel/util/a;->b(Ljava/util/Map;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 132
    if-eqz p1, :cond_d

    .line 133
    iget v3, v2, Lanet/channel/session/b$a;->a:I

    iget-object v4, v2, Lanet/channel/session/b$a;->c:Ljava/util/Map;

    invoke-interface {p1, v3, v4}, Lanet/channel/RequestCb;->onResponseCode(ILjava/util/Map;)V

    .line 136
    :cond_d
    invoke-static {v0, p0, v2, p1}, Lanet/channel/session/b;->a(Ljava/net/HttpURLConnection;Lanet/channel/request/Request;Lanet/channel/session/b$a;Lanet/channel/RequestCb;)V
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/net/ConnectException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_10
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    .line 149
    :catch_2
    move-exception v3

    move-object v11, v3

    move-object v3, v0

    move-object v0, v11

    .line 150
    const/16 v4, -0x195

    :try_start_5
    invoke-static {p0, v2, p1, v4, v0}, Lanet/channel/session/b;->a(Lanet/channel/request/Request;Lanet/channel/session/b$a;Lanet/channel/RequestCb;ILjava/lang/Throwable;)V

    .line 151
    const-string v4, "awcn.HttpConnector"

    const-string v5, "Unknown Host Exception"

    invoke-virtual {p0}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "host"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {p0}, Lanet/channel/request/Request;->getHost()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    aput-object v0, v7, v8

    invoke-static {v4, v5, v6, v7}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->k()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 195
    if-eqz v3, :cond_4

    .line 196
    :try_start_6
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_2

    .line 198
    :catch_3
    move-exception v0

    .line 199
    const-string v3, "awcn.HttpConnector"

    const-string v4, "http disconnect"

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {v3, v4, v1, v0, v5}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 147
    :cond_e
    const/16 v3, -0x197

    const/4 v4, 0x0

    :try_start_7
    invoke-static {p0, v2, p1, v3, v4}, Lanet/channel/session/b;->a(Lanet/channel/request/Request;Lanet/channel/session/b$a;Lanet/channel/RequestCb;ILjava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/net/ConnectException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljavax/net/ssl/SSLException; {:try_start_7 .. :try_end_7} :catch_c
    .catch Ljava/util/concurrent/CancellationException; {:try_start_7 .. :try_end_7} :catch_e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_10
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_4

    .line 154
    :catch_4
    move-exception v3

    move-object v11, v3

    move-object v3, v0

    move-object v0, v11

    .line 155
    const/16 v4, -0x191

    :try_start_8
    invoke-static {p0, v2, p1, v4, v0}, Lanet/channel/session/b;->a(Lanet/channel/request/Request;Lanet/channel/session/b$a;Lanet/channel/RequestCb;ILjava/lang/Throwable;)V

    .line 156
    const-string v4, "awcn.HttpConnector"

    const-string v5, "HTTP Socket Timeout"

    invoke-virtual {p0}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v0, v7}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 157
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->k()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 195
    if-eqz v3, :cond_4

    .line 196
    :try_start_9
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_2

    .line 198
    :catch_5
    move-exception v0

    .line 199
    const-string v3, "awcn.HttpConnector"

    const-string v4, "http disconnect"

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {v3, v4, v1, v0, v5}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 159
    :catch_6
    move-exception v3

    move-object v11, v3

    move-object v3, v0

    move-object v0, v11

    .line 160
    const/16 v4, -0x190

    :try_start_a
    invoke-static {p0, v2, p1, v4, v0}, Lanet/channel/session/b;->a(Lanet/channel/request/Request;Lanet/channel/session/b$a;Lanet/channel/RequestCb;ILjava/lang/Throwable;)V

    .line 161
    const-string v4, "awcn.HttpConnector"

    const-string v5, "HTTP Connect Timeout"

    invoke-virtual {p0}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v0, v7}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 162
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->k()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 195
    if-eqz v3, :cond_4

    .line 196
    :try_start_b
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    goto/16 :goto_2

    .line 198
    :catch_7
    move-exception v0

    .line 199
    const-string v3, "awcn.HttpConnector"

    const-string v4, "http disconnect"

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {v3, v4, v1, v0, v5}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 164
    :catch_8
    move-exception v3

    move-object v11, v3

    move-object v3, v0

    move-object v0, v11

    .line 165
    const/16 v4, -0x196

    :try_start_c
    invoke-static {p0, v2, p1, v4, v0}, Lanet/channel/session/b;->a(Lanet/channel/request/Request;Lanet/channel/session/b$a;Lanet/channel/RequestCb;ILjava/lang/Throwable;)V

    .line 166
    const-string v4, "awcn.HttpConnector"

    const-string v5, "HTTP Connect Exception"

    invoke-virtual {p0}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v0, v7}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 167
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->k()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 195
    if-eqz v3, :cond_4

    .line 196
    :try_start_d
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    goto/16 :goto_2

    .line 198
    :catch_9
    move-exception v0

    .line 199
    const-string v3, "awcn.HttpConnector"

    const-string v4, "http disconnect"

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {v3, v4, v1, v0, v5}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 169
    :catch_a
    move-exception v3

    move-object v11, v3

    move-object v3, v0

    move-object v0, v11

    .line 170
    :try_start_e
    sget-object v4, Lanet/channel/strategy/c$a;->a:Lanet/channel/strategy/c;

    invoke-virtual {p0}, Lanet/channel/request/Request;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lanet/channel/strategy/c;->b(Ljava/lang/String;)V

    .line 171
    const/16 v4, -0x192

    invoke-static {p0, v2, p1, v4, v0}, Lanet/channel/session/b;->a(Lanet/channel/request/Request;Lanet/channel/session/b$a;Lanet/channel/RequestCb;ILjava/lang/Throwable;)V

    .line 172
    const-string v4, "awcn.HttpConnector"

    const-string v5, "HTTP Connect SSLHandshakeException"

    invoke-virtual {p0}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "host"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {p0}, Lanet/channel/request/Request;->getHost()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    aput-object v0, v7, v8

    invoke-static {v4, v5, v6, v7}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 195
    if-eqz v3, :cond_4

    .line 196
    :try_start_f
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_b

    goto/16 :goto_2

    .line 198
    :catch_b
    move-exception v0

    .line 199
    const-string v3, "awcn.HttpConnector"

    const-string v4, "http disconnect"

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {v3, v4, v1, v0, v5}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 174
    :catch_c
    move-exception v3

    move-object v11, v3

    move-object v3, v0

    move-object v0, v11

    .line 175
    :try_start_10
    sget-object v4, Lanet/channel/strategy/c$a;->a:Lanet/channel/strategy/c;

    invoke-virtual {p0}, Lanet/channel/request/Request;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lanet/channel/strategy/c;->b(Ljava/lang/String;)V

    .line 176
    const/16 v4, -0x192

    invoke-static {p0, v2, p1, v4, v0}, Lanet/channel/session/b;->a(Lanet/channel/request/Request;Lanet/channel/session/b$a;Lanet/channel/RequestCb;ILjava/lang/Throwable;)V

    .line 177
    const-string v4, "awcn.HttpConnector"

    const-string v5, "connect SSLException"

    invoke-virtual {p0}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "host"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {p0}, Lanet/channel/request/Request;->getHost()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    aput-object v0, v7, v8

    invoke-static {v4, v5, v6, v7}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 195
    if-eqz v3, :cond_4

    .line 196
    :try_start_11
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_d

    goto/16 :goto_2

    .line 198
    :catch_d
    move-exception v0

    .line 199
    const-string v3, "awcn.HttpConnector"

    const-string v4, "http disconnect"

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {v3, v4, v1, v0, v5}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 179
    :catch_e
    move-exception v3

    move-object v11, v3

    move-object v3, v0

    move-object v0, v11

    .line 180
    const/16 v4, -0xcc

    :try_start_12
    invoke-static {p0, v2, p1, v4, v0}, Lanet/channel/session/b;->a(Lanet/channel/request/Request;Lanet/channel/session/b$a;Lanet/channel/RequestCb;ILjava/lang/Throwable;)V

    .line 181
    const-string v4, "awcn.HttpConnector"

    const-string v5, "HTTP Request Cancel"

    invoke-virtual {p0}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v0, v7}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 195
    if-eqz v3, :cond_4

    .line 196
    :try_start_13
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_f

    goto/16 :goto_2

    .line 198
    :catch_f
    move-exception v0

    .line 199
    const-string v3, "awcn.HttpConnector"

    const-string v4, "http disconnect"

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {v3, v4, v1, v0, v5}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 183
    :catch_10
    move-exception v3

    move-object v11, v3

    move-object v3, v0

    move-object v0, v11

    .line 184
    :try_start_14
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 185
    if-eqz v4, :cond_f

    const-string v5, "not verified"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 186
    sget-object v4, Lanet/channel/strategy/c$a;->a:Lanet/channel/strategy/c;

    invoke-virtual {p0}, Lanet/channel/request/Request;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lanet/channel/strategy/c;->b(Ljava/lang/String;)V

    .line 187
    const/16 v4, -0x193

    invoke-static {p0, v2, p1, v4, v0}, Lanet/channel/session/b;->a(Lanet/channel/request/Request;Lanet/channel/session/b$a;Lanet/channel/RequestCb;ILjava/lang/Throwable;)V

    .line 191
    :goto_5
    const-string v4, "awcn.HttpConnector"

    const-string v5, "HTTP Connect Exception"

    invoke-virtual {p0}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v0, v7}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 195
    if-eqz v3, :cond_4

    .line 196
    :try_start_15
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_11

    goto/16 :goto_2

    .line 198
    :catch_11
    move-exception v0

    .line 199
    const-string v3, "awcn.HttpConnector"

    const-string v4, "http disconnect"

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {v3, v4, v1, v0, v5}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 189
    :cond_f
    const/16 v4, -0x65

    :try_start_16
    invoke-static {p0, v2, p1, v4, v0}, Lanet/channel/session/b;->a(Lanet/channel/request/Request;Lanet/channel/session/b$a;Lanet/channel/RequestCb;ILjava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto :goto_5

    .line 194
    :catchall_0
    move-exception v0

    .line 195
    :goto_6
    if-eqz v3, :cond_10

    .line 196
    :try_start_17
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_12

    .line 200
    :cond_10
    :goto_7
    throw v0

    .line 198
    :catch_12
    move-exception v2

    .line 199
    const-string v3, "awcn.HttpConnector"

    const-string v4, "http disconnect"

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {v3, v4, v1, v2, v5}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_7

    .line 194
    :catchall_1
    move-exception v2

    move-object v3, v0

    move-object v0, v2

    goto :goto_6
.end method

.method private static a(Lanet/channel/request/Request;)Ljava/net/HttpURLConnection;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 233
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->j()Landroid/util/Pair;

    move-result-object v1

    .line 235
    if-eqz v1, :cond_a

    .line 236
    new-instance v2, Ljava/net/Proxy;

    sget-object v4, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v5, Ljava/net/InetSocketAddress;

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v5, v0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v2, v4, v5}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    move-object v0, v2

    .line 240
    :goto_0
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->a()Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    move-result-object v1

    invoke-virtual {v1}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->isMobile()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->getProxySetting()Lanet/channel/util/d;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 242
    iget-object v0, v1, Lanet/channel/util/d;->a:Ljava/net/Proxy;

    move-object v2, v1

    .line 247
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lanet/channel/request/Request;->getUrl()Ljava/net/URL;

    move-result-object v4

    .line 248
    if-eqz v0, :cond_1

    .line 249
    invoke-virtual {v4, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v3, v0

    .line 254
    :goto_2
    :try_start_1
    invoke-virtual {p0}, Lanet/channel/request/Request;->getConnectTimeout()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 255
    invoke-virtual {p0}, Lanet/channel/request/Request;->getReadTimeout()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 256
    invoke-virtual {p0}, Lanet/channel/request/Request;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 257
    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0}, Lanet/channel/request/Request;->containsBody()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 262
    :cond_0
    invoke-virtual {p0}, Lanet/channel/request/Request;->getHeaders()Ljava/util/Map;

    move-result-object v5

    .line 265
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 266
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 295
    :catch_0
    move-exception v0

    move-object v0, v3

    .line 298
    :goto_4
    return-object v0

    .line 251
    :cond_1
    :try_start_2
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v3, v0

    goto :goto_2

    .line 270
    :cond_2
    :try_start_3
    const-string v0, "Host"

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 271
    if-nez v0, :cond_3

    .line 272
    invoke-virtual {p0}, Lanet/channel/request/Request;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 274
    :cond_3
    const-string v1, "Host"

    invoke-virtual {v3, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->c()Ljava/lang/String;

    move-result-object v1

    const-string v6, "cmwap"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 276
    const-string v1, "x-online-host"

    invoke-virtual {v3, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :cond_4
    const-string v1, "Accept-Encoding"

    invoke-interface {v5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 281
    const-string v1, "Accept-Encoding"

    const-string v5, "gzip"

    invoke-virtual {v3, v1, v5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    :cond_5
    if-eqz v2, :cond_6

    .line 286
    const-string v1, "Authorization"

    invoke-virtual {v2}, Lanet/channel/util/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    :cond_6
    invoke-virtual {v4}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 290
    invoke-static {v3, p0, v0}, Lanet/channel/session/b;->a(Ljava/net/HttpURLConnection;Lanet/channel/request/Request;Ljava/lang/String;)V

    .line 293
    :cond_7
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v0, v3

    .line 296
    goto :goto_4

    .line 295
    :catch_1
    move-exception v0

    move-object v0, v3

    goto :goto_4

    :cond_8
    move-object v2, v1

    goto/16 :goto_1

    :cond_9
    move-object v2, v3

    goto/16 :goto_1

    :cond_a
    move-object v0, v3

    goto/16 :goto_0
.end method

.method private static a(Lanet/channel/request/Request;Lanet/channel/session/b$a;Lanet/channel/RequestCb;ILjava/lang/Throwable;)V
    .locals 7

    .prologue
    .line 210
    invoke-static {p3}, Lanet/channel/util/ErrorConstant;->getErrMsg(I)Ljava/lang/String;

    move-result-object v0

    .line 211
    const-string v1, "awcn.HttpConnector"

    const-string v2, "onException"

    invoke-virtual {p0}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "errorCode"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "errMsg"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object v0, v4, v5

    const/4 v5, 0x4

    const-string v6, "url"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-virtual {p0}, Lanet/channel/request/Request;->getUrlString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "host"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    invoke-virtual {p0}, Lanet/channel/request/Request;->getHost()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    if-eqz p1, :cond_0

    .line 216
    iput p3, p1, Lanet/channel/session/b$a;->a:I

    .line 219
    :cond_0
    iget-object v1, p0, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    iput p3, v1, Lanet/channel/statist/RequestStatistic;->statusCode:I

    .line 220
    iget-object v1, p0, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    iget-wide v4, v4, Lanet/channel/statist/RequestStatistic;->start:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lanet/channel/statist/RequestStatistic;->oneWayTime:J

    .line 222
    if-eqz p2, :cond_1

    .line 223
    iget-object v1, p0, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    invoke-interface {p2, p3, v0, v1}, Lanet/channel/RequestCb;->onFinish(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V

    .line 226
    :cond_1
    const/16 v1, -0xcc

    if-eq p3, v1, :cond_2

    .line 227
    new-instance v1, Lanet/channel/statist/ExceptionStatistic;

    iget-object v2, p0, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    invoke-direct {v1, p3, v0, v2, p4}, Lanet/channel/statist/ExceptionStatistic;-><init>(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;Ljava/lang/Throwable;)V

    .line 228
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object v0

    invoke-interface {v0, v1}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V

    .line 230
    :cond_2
    return-void
.end method

.method private static a(Ljava/net/HttpURLConnection;Lanet/channel/request/Request;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 330
    invoke-virtual {p1}, Lanet/channel/request/Request;->containsBody()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 331
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 332
    const/4 v2, 0x0

    .line 335
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 336
    invoke-virtual {p1, v2}, Lanet/channel/request/Request;->postBody(Ljava/io/OutputStream;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 340
    if-eqz v2, :cond_0

    .line 342
    :try_start_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 343
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 349
    :cond_0
    :goto_0
    iget-object v1, p1, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    int-to-long v2, v0

    iput-wide v2, v1, Lanet/channel/statist/RequestStatistic;->sendDataSize:J

    .line 350
    iget-object v0, p1, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lanet/channel/statist/RequestStatistic;->sendDataTime:J

    .line 352
    :cond_1
    return-void

    .line 344
    :catch_0
    move-exception v2

    .line 345
    const-string v3, "awcn.HttpConnector"

    const-string v6, "postData"

    invoke-virtual {p1}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v7

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v6, v7, v2, v1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 337
    :catch_1
    move-exception v0

    .line 338
    :try_start_2
    const-string v3, "awcn.HttpConnector"

    const-string v6, "postData error"

    invoke-virtual {p1}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3, v6, v7, v0, v8}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 340
    if-eqz v2, :cond_3

    .line 342
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 343
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move v0, v1

    .line 346
    goto :goto_0

    .line 344
    :catch_2
    move-exception v0

    .line 345
    const-string v2, "awcn.HttpConnector"

    const-string v3, "postData"

    invoke-virtual {p1}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v6, v0, v7}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    move v0, v1

    .line 346
    goto :goto_0

    .line 340
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_2

    .line 342
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 343
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 346
    :cond_2
    :goto_1
    throw v0

    .line 344
    :catch_3
    move-exception v2

    .line 345
    const-string v3, "awcn.HttpConnector"

    const-string v4, "postData"

    invoke-virtual {p1}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v5

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v5, v2, v1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private static a(Ljava/net/HttpURLConnection;Lanet/channel/request/Request;Lanet/channel/session/b$a;Lanet/channel/RequestCb;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/CancellationException;
        }
    .end annotation

    .prologue
    .line 356
    const/4 v0, 0x0

    .line 358
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 368
    :goto_0
    if-nez v2, :cond_1

    .line 369
    const/16 v0, -0x194

    const/4 v1, 0x0

    invoke-static {p1, p2, p3, v0, v1}, Lanet/channel/session/b;->a(Lanet/channel/request/Request;Lanet/channel/session/b$a;Lanet/channel/RequestCb;ILjava/lang/Throwable;)V

    .line 443
    :cond_0
    :goto_1
    return-void

    .line 359
    :catch_0
    move-exception v1

    .line 361
    :try_start_1
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 365
    :goto_2
    const-string v2, "awcn.HttpConnector"

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v1, v5}, Lanet/channel/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    move-object v2, v0

    goto :goto_0

    .line 362
    :catch_1
    move-exception v2

    .line 363
    const-string v3, "awcn.HttpConnector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get error stream failed."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5, v2, v6}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_2

    .line 373
    :cond_1
    iget-object v0, p2, Lanet/channel/session/b$a;->c:Ljava/util/Map;

    invoke-static {v0}, Lanet/channel/util/a;->c(Ljava/util/Map;)I

    move-result v0

    .line 374
    iget-object v1, p2, Lanet/channel/session/b$a;->c:Ljava/util/Map;

    invoke-static {v1}, Lanet/channel/util/a;->b(Ljava/util/Map;)Z

    move-result v4

    .line 376
    if-eqz v4, :cond_2

    .line 377
    iget-object v1, p2, Lanet/channel/session/b$a;->c:Ljava/util/Map;

    const-string v3, "Content-Encoding"

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    :cond_2
    const/4 v1, 0x0

    .line 381
    if-eqz p3, :cond_3

    if-eqz v4, :cond_f

    const/high16 v3, 0x100000

    if-gt v0, v3, :cond_f

    .line 382
    :cond_3
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    if-gtz v0, :cond_4

    const/16 v0, 0x400

    :cond_4
    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move-object v3, v1

    .line 386
    :goto_3
    :try_start_2
    new-instance v1, Lanet/channel/strategy/utils/c;

    invoke-direct {v1, v2}, Lanet/channel/strategy/utils/c;-><init>(Ljava/io/InputStream;)V

    .line 387
    if-eqz v4, :cond_6

    .line 388
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 394
    :goto_4
    const/4 v2, 0x0

    .line 396
    :goto_5
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 397
    new-instance v1, Ljava/util/concurrent/CancellationException;

    const-string v2, "task cancelled"

    invoke-direct {v1, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 441
    :catchall_0
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_6
    if-eqz v1, :cond_5

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_5
    :goto_7
    throw v0

    :cond_6
    move-object v0, v1

    .line 390
    goto :goto_4

    .line 399
    :cond_7
    if-nez v2, :cond_8

    .line 400
    :try_start_5
    sget-object v2, Lanet/channel/bytes/a$a;->a:Lanet/channel/bytes/a;

    const/16 v5, 0x800

    invoke-virtual {v2, v5}, Lanet/channel/bytes/a;->a(I)Lanet/channel/bytes/ByteArray;

    move-result-object v2

    .line 402
    :cond_8
    invoke-virtual {v2, v0}, Lanet/channel/bytes/ByteArray;->readFrom(Ljava/io/InputStream;)I

    move-result v5

    .line 403
    const/4 v6, -0x1

    if-eq v5, v6, :cond_b

    .line 404
    iget-object v5, p1, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    iget-wide v6, v5, Lanet/channel/statist/RequestStatistic;->firstDataTime:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_9

    .line 405
    iget-object v5, p1, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, p1, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    iget-wide v8, v8, Lanet/channel/statist/RequestStatistic;->start:J

    sub-long/2addr v6, v8

    iput-wide v6, v5, Lanet/channel/statist/RequestStatistic;->firstDataTime:J

    .line 407
    :cond_9
    if-eqz v3, :cond_a

    .line 408
    invoke-virtual {v2, v3}, Lanet/channel/bytes/ByteArray;->writeTo(Ljava/io/OutputStream;)V

    goto :goto_5

    .line 410
    :cond_a
    const/4 v5, 0x0

    invoke-interface {p3, v2, v5}, Lanet/channel/RequestCb;->onDataReceive(Lanet/channel/bytes/ByteArray;Z)V

    .line 411
    const/4 v2, 0x0

    goto :goto_5

    .line 414
    :cond_b
    if-eqz v3, :cond_e

    .line 415
    invoke-virtual {v2}, Lanet/channel/bytes/ByteArray;->recycle()V

    .line 419
    :goto_8
    iget-object v2, p1, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v5, p1, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    iget-wide v8, v5, Lanet/channel/statist/RequestStatistic;->start:J

    sub-long/2addr v6, v8

    iget-object v5, p1, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    iget-wide v8, v5, Lanet/channel/statist/RequestStatistic;->firstDataTime:J

    sub-long/2addr v6, v8

    iput-wide v6, v2, Lanet/channel/statist/RequestStatistic;->recDataTime:J

    .line 424
    iget-object v2, p1, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    invoke-virtual {v1}, Lanet/channel/strategy/utils/c;->a()J

    move-result-wide v6

    iput-wide v6, v2, Lanet/channel/statist/RequestStatistic;->recDataSize:J

    .line 426
    if-eqz v3, :cond_d

    .line 427
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p2, Lanet/channel/session/b$a;->b:[B

    .line 429
    if-eqz v4, :cond_c

    .line 430
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 431
    iget-object v2, p2, Lanet/channel/session/b$a;->b:[B

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    iget-object v2, p2, Lanet/channel/session/b$a;->c:Ljava/util/Map;

    const-string v3, "Content-Length"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    :cond_c
    if-eqz p3, :cond_d

    .line 436
    iget v1, p2, Lanet/channel/session/b$a;->a:I

    iget-object v2, p2, Lanet/channel/session/b$a;->c:Ljava/util/Map;

    invoke-interface {p3, v1, v2}, Lanet/channel/RequestCb;->onResponseCode(ILjava/util/Map;)V

    .line 437
    iget-object v1, p2, Lanet/channel/session/b$a;->b:[B

    invoke-static {v1}, Lanet/channel/bytes/ByteArray;->wrap([B)Lanet/channel/bytes/ByteArray;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p3, v1, v2}, Lanet/channel/RequestCb;->onDataReceive(Lanet/channel/bytes/ByteArray;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 441
    :cond_d
    if-eqz v0, :cond_0

    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_1

    .line 442
    :catch_2
    move-exception v0

    goto/16 :goto_1

    .line 417
    :cond_e
    const/4 v5, 0x1

    :try_start_7
    invoke-interface {p3, v2, v5}, Lanet/channel/RequestCb;->onDataReceive(Lanet/channel/bytes/ByteArray;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_8

    :catch_3
    move-exception v1

    goto/16 :goto_7

    .line 441
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto/16 :goto_6

    :cond_f
    move-object v3, v1

    goto/16 :goto_3
.end method

.method private static a(Ljava/net/HttpURLConnection;Lanet/channel/request/Request;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 302
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 303
    const-string v0, "awcn.HttpConnector"

    const-string v1, "supportHttps"

    const-string v2, "[supportHttps]Froyo \u4ee5\u4e0b\u7248\u672c\u4e0d\u652f\u6301https"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    :goto_0
    return-void

    .line 306
    :cond_0
    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    .line 309
    invoke-virtual {p1}, Lanet/channel/request/Request;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 310
    invoke-virtual {p1}, Lanet/channel/request/Request;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 315
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lanet/channel/request/Request;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 316
    invoke-virtual {p1}, Lanet/channel/request/Request;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    goto :goto_0

    .line 311
    :cond_2
    invoke-static {}, Lanet/channel/util/b;->a()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 312
    invoke-static {}, Lanet/channel/util/b;->a()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    goto :goto_1

    .line 317
    :cond_3
    invoke-static {}, Lanet/channel/util/b;->b()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 318
    invoke-static {}, Lanet/channel/util/b;->b()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    goto :goto_0

    .line 320
    :cond_4
    new-instance v0, Lanet/channel/session/c;

    invoke-direct {v0, p2}, Lanet/channel/session/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    goto :goto_0
.end method
