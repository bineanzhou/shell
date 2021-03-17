.class public final Lokhttp3/OkHttpClient$Builder;
.super Ljava/lang/Object;
.source "OkHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/OkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field a:Lokhttp3/Dispatcher;

.field b:Ljava/net/Proxy;

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/net/ProxySelector;

.field h:Lokhttp3/CookieJar;

.field i:Lokhttp3/Cache;

.field j:Lokhttp3/internal/cache/InternalCache;

.field k:Ljavax/net/SocketFactory;

.field l:Ljavax/net/ssl/SSLSocketFactory;

.field m:Lokhttp3/internal/tls/CertificateChainCleaner;

.field n:Ljavax/net/ssl/HostnameVerifier;

.field o:Lokhttp3/CertificatePinner;

.field p:Lokhttp3/Authenticator;

.field q:Lokhttp3/Authenticator;

.field r:Lokhttp3/ConnectionPool;

.field s:Lokhttp3/Dns;

.field t:Z

.field u:Z

.field v:Z

.field w:I

.field x:I

.field y:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x2710

    const/4 v1, 0x1

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 399
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->e:Ljava/util/List;

    .line 400
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->f:Ljava/util/List;

    .line 422
    new-instance v0, Lokhttp3/Dispatcher;

    invoke-direct {v0}, Lokhttp3/Dispatcher;-><init>()V

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->a:Lokhttp3/Dispatcher;

    .line 423
    invoke-static {}, Lokhttp3/OkHttpClient;->z()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->c:Ljava/util/List;

    .line 424
    invoke-static {}, Lokhttp3/OkHttpClient;->A()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->d:Ljava/util/List;

    .line 425
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->g:Ljava/net/ProxySelector;

    .line 426
    sget-object v0, Lokhttp3/CookieJar;->a:Lokhttp3/CookieJar;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->h:Lokhttp3/CookieJar;

    .line 427
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->k:Ljavax/net/SocketFactory;

    .line 428
    sget-object v0, Lokhttp3/internal/tls/OkHostnameVerifier;->a:Lokhttp3/internal/tls/OkHostnameVerifier;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->n:Ljavax/net/ssl/HostnameVerifier;

    .line 429
    sget-object v0, Lokhttp3/CertificatePinner;->a:Lokhttp3/CertificatePinner;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->o:Lokhttp3/CertificatePinner;

    .line 430
    sget-object v0, Lokhttp3/Authenticator;->a:Lokhttp3/Authenticator;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->p:Lokhttp3/Authenticator;

    .line 431
    sget-object v0, Lokhttp3/Authenticator;->a:Lokhttp3/Authenticator;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->q:Lokhttp3/Authenticator;

    .line 432
    new-instance v0, Lokhttp3/ConnectionPool;

    invoke-direct {v0}, Lokhttp3/ConnectionPool;-><init>()V

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->r:Lokhttp3/ConnectionPool;

    .line 433
    sget-object v0, Lokhttp3/Dns;->a:Lokhttp3/Dns;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->s:Lokhttp3/Dns;

    .line 434
    iput-boolean v1, p0, Lokhttp3/OkHttpClient$Builder;->t:Z

    .line 435
    iput-boolean v1, p0, Lokhttp3/OkHttpClient$Builder;->u:Z

    .line 436
    iput-boolean v1, p0, Lokhttp3/OkHttpClient$Builder;->v:Z

    .line 437
    iput v2, p0, Lokhttp3/OkHttpClient$Builder;->w:I

    .line 438
    iput v2, p0, Lokhttp3/OkHttpClient$Builder;->x:I

    .line 439
    iput v2, p0, Lokhttp3/OkHttpClient$Builder;->y:I

    .line 440
    return-void
.end method

.method constructor <init>(Lokhttp3/OkHttpClient;)V
    .locals 2

    .prologue
    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 399
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->e:Ljava/util/List;

    .line 400
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->f:Ljava/util/List;

    .line 443
    iget-object v0, p1, Lokhttp3/OkHttpClient;->a:Lokhttp3/Dispatcher;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->a:Lokhttp3/Dispatcher;

    .line 444
    iget-object v0, p1, Lokhttp3/OkHttpClient;->b:Ljava/net/Proxy;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->b:Ljava/net/Proxy;

    .line 445
    iget-object v0, p1, Lokhttp3/OkHttpClient;->c:Ljava/util/List;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->c:Ljava/util/List;

    .line 446
    iget-object v0, p1, Lokhttp3/OkHttpClient;->d:Ljava/util/List;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->d:Ljava/util/List;

    .line 447
    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->e:Ljava/util/List;

    iget-object v1, p1, Lokhttp3/OkHttpClient;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 448
    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->f:Ljava/util/List;

    iget-object v1, p1, Lokhttp3/OkHttpClient;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 449
    iget-object v0, p1, Lokhttp3/OkHttpClient;->g:Ljava/net/ProxySelector;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->g:Ljava/net/ProxySelector;

    .line 450
    iget-object v0, p1, Lokhttp3/OkHttpClient;->h:Lokhttp3/CookieJar;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->h:Lokhttp3/CookieJar;

    .line 451
    iget-object v0, p1, Lokhttp3/OkHttpClient;->j:Lokhttp3/internal/cache/InternalCache;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->j:Lokhttp3/internal/cache/InternalCache;

    .line 452
    iget-object v0, p1, Lokhttp3/OkHttpClient;->i:Lokhttp3/Cache;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->i:Lokhttp3/Cache;

    .line 453
    iget-object v0, p1, Lokhttp3/OkHttpClient;->k:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->k:Ljavax/net/SocketFactory;

    .line 454
    iget-object v0, p1, Lokhttp3/OkHttpClient;->l:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->l:Ljavax/net/ssl/SSLSocketFactory;

    .line 455
    iget-object v0, p1, Lokhttp3/OkHttpClient;->m:Lokhttp3/internal/tls/CertificateChainCleaner;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->m:Lokhttp3/internal/tls/CertificateChainCleaner;

    .line 456
    iget-object v0, p1, Lokhttp3/OkHttpClient;->n:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->n:Ljavax/net/ssl/HostnameVerifier;

    .line 457
    iget-object v0, p1, Lokhttp3/OkHttpClient;->o:Lokhttp3/CertificatePinner;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->o:Lokhttp3/CertificatePinner;

    .line 458
    iget-object v0, p1, Lokhttp3/OkHttpClient;->p:Lokhttp3/Authenticator;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->p:Lokhttp3/Authenticator;

    .line 459
    iget-object v0, p1, Lokhttp3/OkHttpClient;->q:Lokhttp3/Authenticator;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->q:Lokhttp3/Authenticator;

    .line 460
    iget-object v0, p1, Lokhttp3/OkHttpClient;->r:Lokhttp3/ConnectionPool;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->r:Lokhttp3/ConnectionPool;

    .line 461
    iget-object v0, p1, Lokhttp3/OkHttpClient;->s:Lokhttp3/Dns;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->s:Lokhttp3/Dns;

    .line 462
    iget-boolean v0, p1, Lokhttp3/OkHttpClient;->t:Z

    iput-boolean v0, p0, Lokhttp3/OkHttpClient$Builder;->t:Z

    .line 463
    iget-boolean v0, p1, Lokhttp3/OkHttpClient;->u:Z

    iput-boolean v0, p0, Lokhttp3/OkHttpClient$Builder;->u:Z

    .line 464
    iget-boolean v0, p1, Lokhttp3/OkHttpClient;->v:Z

    iput-boolean v0, p0, Lokhttp3/OkHttpClient$Builder;->v:Z

    .line 465
    iget v0, p1, Lokhttp3/OkHttpClient;->w:I

    iput v0, p0, Lokhttp3/OkHttpClient$Builder;->w:I

    .line 466
    iget v0, p1, Lokhttp3/OkHttpClient;->x:I

    iput v0, p0, Lokhttp3/OkHttpClient$Builder;->x:I

    .line 467
    iget v0, p1, Lokhttp3/OkHttpClient;->y:I

    iput v0, p0, Lokhttp3/OkHttpClient$Builder;->y:I

    .line 468
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 807
    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->e:Ljava/util/List;

    return-object v0
.end method

.method public a(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    .line 476
    cmp-long v0, p1, v4

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 477
    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "unit == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 479
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout too large."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 480
    :cond_2
    cmp-long v2, v0, v4

    if-nez v2, :cond_3

    cmp-long v2, p1, v4

    if-lez v2, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout too small."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 481
    :cond_3
    long-to-int v0, v0

    iput v0, p0, Lokhttp3/OkHttpClient$Builder;->w:I

    .line 482
    return-object p0
.end method

.method public a(Ljava/net/Proxy;)Lokhttp3/OkHttpClient$Builder;
    .locals 0

    .prologue
    .line 519
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->b:Ljava/net/Proxy;

    .line 520
    return-object p0
.end method

.method public a(Ljava/net/ProxySelector;)Lokhttp3/OkHttpClient$Builder;
    .locals 0

    .prologue
    .line 532
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->g:Ljava/net/ProxySelector;

    .line 533
    return-object p0
.end method

.method public a(Ljava/util/List;)Lokhttp3/OkHttpClient$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;)",
            "Lokhttp3/OkHttpClient$Builder;"
        }
    .end annotation

    .prologue
    .line 782
    invoke-static {p1}, Lokhttp3/internal/Util;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 783
    sget-object v1, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 784
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "protocols doesn\'t contain http/1.1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 786
    :cond_0
    sget-object v1, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 787
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "protocols must not contain http/1.0: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 789
    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 790
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "protocols must not contain null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 792
    :cond_2
    invoke-static {v0}, Lokhttp3/internal/Util;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->c:Ljava/util/List;

    .line 793
    return-object p0
.end method

.method public a(Ljavax/net/SocketFactory;)Lokhttp3/OkHttpClient$Builder;
    .locals 2

    .prologue
    .line 580
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "socketFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 581
    :cond_0
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->k:Ljavax/net/SocketFactory;

    .line 582
    return-object p0
.end method

.method public a(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;
    .locals 2

    .prologue
    .line 652
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "hostnameVerifier == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 653
    :cond_0
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->n:Ljavax/net/ssl/HostnameVerifier;

    .line 654
    return-object p0
.end method

.method public a(Ljavax/net/ssl/SSLSocketFactory;)Lokhttp3/OkHttpClient$Builder;
    .locals 3

    .prologue
    .line 595
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sslSocketFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 596
    :cond_0
    invoke-static {}, Lokhttp3/internal/platform/Platform;->b()Lokhttp3/internal/platform/Platform;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/internal/platform/Platform;->a(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    .line 597
    if-nez v0, :cond_1

    .line 598
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to extract the trust manager on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lokhttp3/internal/platform/Platform;->b()Lokhttp3/internal/platform/Platform;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sslSocketFactory is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 599
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 601
    :cond_1
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->l:Ljavax/net/ssl/SSLSocketFactory;

    .line 602
    invoke-static {v0}, Lokhttp3/internal/tls/CertificateChainCleaner;->a(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/CertificateChainCleaner;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->m:Lokhttp3/internal/tls/CertificateChainCleaner;

    .line 603
    return-object p0
.end method

.method public a(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;
    .locals 2

    .prologue
    .line 638
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sslSocketFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 639
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "trustManager == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 640
    :cond_1
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->l:Ljavax/net/ssl/SSLSocketFactory;

    .line 641
    invoke-static {p2}, Lokhttp3/internal/tls/CertificateChainCleaner;->a(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/CertificateChainCleaner;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->m:Lokhttp3/internal/tls/CertificateChainCleaner;

    .line 642
    return-object p0
.end method

.method public a(Lokhttp3/Authenticator;)Lokhttp3/OkHttpClient$Builder;
    .locals 2

    .prologue
    .line 675
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "authenticator == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 676
    :cond_0
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->q:Lokhttp3/Authenticator;

    .line 677
    return-object p0
.end method

.method public a(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;
    .locals 1

    .prologue
    .line 555
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->i:Lokhttp3/Cache;

    .line 556
    const/4 v0, 0x0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->j:Lokhttp3/internal/cache/InternalCache;

    .line 557
    return-object p0
.end method

.method public a(Lokhttp3/CertificatePinner;)Lokhttp3/OkHttpClient$Builder;
    .locals 2

    .prologue
    .line 663
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "certificatePinner == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 664
    :cond_0
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->o:Lokhttp3/CertificatePinner;

    .line 665
    return-object p0
.end method

.method public a(Lokhttp3/ConnectionPool;)Lokhttp3/OkHttpClient$Builder;
    .locals 2

    .prologue
    .line 698
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "connectionPool == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 699
    :cond_0
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->r:Lokhttp3/ConnectionPool;

    .line 700
    return-object p0
.end method

.method public a(Lokhttp3/CookieJar;)Lokhttp3/OkHttpClient$Builder;
    .locals 2

    .prologue
    .line 543
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cookieJar == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 544
    :cond_0
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->h:Lokhttp3/CookieJar;

    .line 545
    return-object p0
.end method

.method public a(Lokhttp3/Dispatcher;)Lokhttp3/OkHttpClient$Builder;
    .locals 2

    .prologue
    .line 747
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dispatcher == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 748
    :cond_0
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->a:Lokhttp3/Dispatcher;

    .line 749
    return-object p0
.end method

.method public a(Lokhttp3/Dns;)Lokhttp3/OkHttpClient$Builder;
    .locals 2

    .prologue
    .line 566
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dns == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 567
    :cond_0
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->s:Lokhttp3/Dns;

    .line 568
    return-object p0
.end method

.method public a(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 812
    return-object p0
.end method

.method public a(Z)Lokhttp3/OkHttpClient$Builder;
    .locals 0

    .prologue
    .line 710
    iput-boolean p1, p0, Lokhttp3/OkHttpClient$Builder;->t:Z

    .line 711
    return-object p0
.end method

.method a(Lokhttp3/internal/cache/InternalCache;)V
    .locals 1

    .prologue
    .line 550
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->j:Lokhttp3/internal/cache/InternalCache;

    .line 551
    const/4 v0, 0x0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->i:Lokhttp3/Cache;

    .line 552
    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 821
    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->f:Ljava/util/List;

    return-object v0
.end method

.method public b(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    .line 490
    cmp-long v0, p1, v4

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 491
    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "unit == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 492
    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 493
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout too large."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 494
    :cond_2
    cmp-long v2, v0, v4

    if-nez v2, :cond_3

    cmp-long v2, p1, v4

    if-lez v2, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout too small."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 495
    :cond_3
    long-to-int v0, v0

    iput v0, p0, Lokhttp3/OkHttpClient$Builder;->x:I

    .line 496
    return-object p0
.end method

.method public b(Ljava/util/List;)Lokhttp3/OkHttpClient$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/ConnectionSpec;",
            ">;)",
            "Lokhttp3/OkHttpClient$Builder;"
        }
    .end annotation

    .prologue
    .line 797
    invoke-static {p1}, Lokhttp3/internal/Util;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->d:Ljava/util/List;

    .line 798
    return-object p0
.end method

.method public b(Lokhttp3/Authenticator;)Lokhttp3/OkHttpClient$Builder;
    .locals 2

    .prologue
    .line 687
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "proxyAuthenticator == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 688
    :cond_0
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->p:Lokhttp3/Authenticator;

    .line 689
    return-object p0
.end method

.method public b(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;
    .locals 1

    .prologue
    .line 825
    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 826
    return-object p0
.end method

.method public b(Z)Lokhttp3/OkHttpClient$Builder;
    .locals 0

    .prologue
    .line 716
    iput-boolean p1, p0, Lokhttp3/OkHttpClient$Builder;->u:Z

    .line 717
    return-object p0
.end method

.method public c(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    .line 504
    cmp-long v0, p1, v4

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 505
    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "unit == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 506
    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 507
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout too large."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 508
    :cond_2
    cmp-long v2, v0, v4

    if-nez v2, :cond_3

    cmp-long v2, p1, v4

    if-lez v2, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout too small."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 509
    :cond_3
    long-to-int v0, v0

    iput v0, p0, Lokhttp3/OkHttpClient$Builder;->y:I

    .line 510
    return-object p0
.end method

.method public c(Z)Lokhttp3/OkHttpClient$Builder;
    .locals 0

    .prologue
    .line 739
    iput-boolean p1, p0, Lokhttp3/OkHttpClient$Builder;->v:Z

    .line 740
    return-object p0
.end method

.method public c()Lokhttp3/OkHttpClient;
    .locals 2

    .prologue
    .line 830
    new-instance v0, Lokhttp3/OkHttpClient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$Builder;Lokhttp3/OkHttpClient$1;)V

    return-object v0
.end method
