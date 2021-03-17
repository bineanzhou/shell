.class public Lokhttp3/OkHttpClient;
.super Ljava/lang/Object;
.source "OkHttpClient.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lokhttp3/Call$Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/OkHttpClient$Builder;
    }
.end annotation


# static fields
.field private static final A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field private static final z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Lokhttp3/Dispatcher;

.field final b:Ljava/net/Proxy;

.field final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/util/List;
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

.field final g:Ljava/net/ProxySelector;

.field final h:Lokhttp3/CookieJar;

.field final i:Lokhttp3/Cache;

.field final j:Lokhttp3/internal/cache/InternalCache;

.field final k:Ljavax/net/SocketFactory;

.field final l:Ljavax/net/ssl/SSLSocketFactory;

.field final m:Lokhttp3/internal/tls/CertificateChainCleaner;

.field final n:Ljavax/net/ssl/HostnameVerifier;

.field final o:Lokhttp3/CertificatePinner;

.field final p:Lokhttp3/Authenticator;

.field final q:Lokhttp3/Authenticator;

.field final r:Lokhttp3/ConnectionPool;

.field final s:Lokhttp3/Dns;

.field final t:Z

.field final u:Z

.field final v:Z

.field final w:I

.field final x:I

.field final y:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 118
    new-array v0, v5, [Lokhttp3/Protocol;

    sget-object v1, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    aput-object v1, v0, v2

    sget-object v1, Lokhttp3/Protocol;->SPDY_3:Lokhttp3/Protocol;

    aput-object v1, v0, v3

    sget-object v1, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    aput-object v1, v0, v4

    invoke-static {v0}, Lokhttp3/internal/Util;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/OkHttpClient;->z:Ljava/util/List;

    .line 121
    new-array v0, v5, [Lokhttp3/ConnectionSpec;

    sget-object v1, Lokhttp3/ConnectionSpec;->a:Lokhttp3/ConnectionSpec;

    aput-object v1, v0, v2

    sget-object v1, Lokhttp3/ConnectionSpec;->b:Lokhttp3/ConnectionSpec;

    aput-object v1, v0, v3

    sget-object v1, Lokhttp3/ConnectionSpec;->c:Lokhttp3/ConnectionSpec;

    aput-object v1, v0, v4

    invoke-static {v0}, Lokhttp3/internal/Util;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/OkHttpClient;->A:Ljava/util/List;

    .line 125
    new-instance v0, Lokhttp3/OkHttpClient$1;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$1;-><init>()V

    sput-object v0, Lokhttp3/internal/Internal;->a:Lokhttp3/internal/Internal;

    .line 174
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 203
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    invoke-direct {p0, v0}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$Builder;)V

    .line 204
    return-void
.end method

.method private constructor <init>(Lokhttp3/OkHttpClient$Builder;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->a:Lokhttp3/Dispatcher;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->a:Lokhttp3/Dispatcher;

    .line 208
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->b:Ljava/net/Proxy;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->b:Ljava/net/Proxy;

    .line 209
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->c:Ljava/util/List;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->c:Ljava/util/List;

    .line 210
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->d:Ljava/util/List;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->d:Ljava/util/List;

    .line 211
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->e:Ljava/util/List;

    invoke-static {v0}, Lokhttp3/internal/Util;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient;->e:Ljava/util/List;

    .line 212
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->f:Ljava/util/List;

    invoke-static {v0}, Lokhttp3/internal/Util;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient;->f:Ljava/util/List;

    .line 213
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->g:Ljava/net/ProxySelector;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->g:Ljava/net/ProxySelector;

    .line 214
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->h:Lokhttp3/CookieJar;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->h:Lokhttp3/CookieJar;

    .line 215
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->i:Lokhttp3/Cache;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->i:Lokhttp3/Cache;

    .line 216
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->j:Lokhttp3/internal/cache/InternalCache;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->j:Lokhttp3/internal/cache/InternalCache;

    .line 217
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->k:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->k:Ljavax/net/SocketFactory;

    .line 220
    iget-object v0, p0, Lokhttp3/OkHttpClient;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/ConnectionSpec;

    .line 221
    if-nez v1, :cond_0

    invoke-virtual {v0}, Lokhttp3/ConnectionSpec;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 222
    goto :goto_0

    :cond_1
    move v0, v2

    .line 221
    goto :goto_1

    .line 224
    :cond_2
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->l:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_3

    if-nez v1, :cond_4

    .line 225
    :cond_3
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->l:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->l:Ljavax/net/ssl/SSLSocketFactory;

    .line 226
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->m:Lokhttp3/internal/tls/CertificateChainCleaner;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->m:Lokhttp3/internal/tls/CertificateChainCleaner;

    .line 233
    :goto_2
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->n:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->n:Ljavax/net/ssl/HostnameVerifier;

    .line 234
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->o:Lokhttp3/CertificatePinner;

    iget-object v1, p0, Lokhttp3/OkHttpClient;->m:Lokhttp3/internal/tls/CertificateChainCleaner;

    invoke-virtual {v0, v1}, Lokhttp3/CertificatePinner;->a(Lokhttp3/internal/tls/CertificateChainCleaner;)Lokhttp3/CertificatePinner;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient;->o:Lokhttp3/CertificatePinner;

    .line 236
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->p:Lokhttp3/Authenticator;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->p:Lokhttp3/Authenticator;

    .line 237
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->q:Lokhttp3/Authenticator;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->q:Lokhttp3/Authenticator;

    .line 238
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->r:Lokhttp3/ConnectionPool;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->r:Lokhttp3/ConnectionPool;

    .line 239
    iget-object v0, p1, Lokhttp3/OkHttpClient$Builder;->s:Lokhttp3/Dns;

    iput-object v0, p0, Lokhttp3/OkHttpClient;->s:Lokhttp3/Dns;

    .line 240
    iget-boolean v0, p1, Lokhttp3/OkHttpClient$Builder;->t:Z

    iput-boolean v0, p0, Lokhttp3/OkHttpClient;->t:Z

    .line 241
    iget-boolean v0, p1, Lokhttp3/OkHttpClient$Builder;->u:Z

    iput-boolean v0, p0, Lokhttp3/OkHttpClient;->u:Z

    .line 242
    iget-boolean v0, p1, Lokhttp3/OkHttpClient$Builder;->v:Z

    iput-boolean v0, p0, Lokhttp3/OkHttpClient;->v:Z

    .line 243
    iget v0, p1, Lokhttp3/OkHttpClient$Builder;->w:I

    iput v0, p0, Lokhttp3/OkHttpClient;->w:I

    .line 244
    iget v0, p1, Lokhttp3/OkHttpClient$Builder;->x:I

    iput v0, p0, Lokhttp3/OkHttpClient;->x:I

    .line 245
    iget v0, p1, Lokhttp3/OkHttpClient$Builder;->y:I

    iput v0, p0, Lokhttp3/OkHttpClient;->y:I

    .line 246
    return-void

    .line 228
    :cond_4
    invoke-direct {p0}, Lokhttp3/OkHttpClient;->B()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    .line 229
    invoke-direct {p0, v0}, Lokhttp3/OkHttpClient;->a(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/OkHttpClient;->l:Ljavax/net/ssl/SSLSocketFactory;

    .line 230
    invoke-static {v0}, Lokhttp3/internal/tls/CertificateChainCleaner;->a(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/CertificateChainCleaner;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient;->m:Lokhttp3/internal/tls/CertificateChainCleaner;

    goto :goto_2
.end method

.method synthetic constructor <init>(Lokhttp3/OkHttpClient$Builder;Lokhttp3/OkHttpClient$1;)V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$Builder;)V

    return-void
.end method

.method static synthetic A()Ljava/util/List;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lokhttp3/OkHttpClient;->A:Ljava/util/List;

    return-object v0
.end method

.method private B()Ljavax/net/ssl/X509TrustManager;
    .locals 4

    .prologue
    .line 251
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 250
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    .line 252
    const/4 v0, 0x0

    check-cast v0, Ljava/security/KeyStore;

    invoke-virtual {v1, v0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 253
    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    .line 254
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    instance-of v1, v1, Ljavax/net/ssl/X509TrustManager;

    if-nez v1, :cond_1

    .line 255
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected default trust managers:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 256
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :catch_0
    move-exception v0

    .line 260
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 258
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    aget-object v0, v0, v1

    check-cast v0, Ljavax/net/ssl/X509TrustManager;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0
.end method

.method private a(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 4

    .prologue
    .line 266
    :try_start_0
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 267
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 268
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 269
    :catch_0
    move-exception v0

    .line 270
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method static synthetic z()Ljava/util/List;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lokhttp3/OkHttpClient;->z:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lokhttp3/OkHttpClient;->w:I

    return v0
.end method

.method public a(Lokhttp3/Request;)Lokhttp3/Call;
    .locals 1

    .prologue
    .line 387
    new-instance v0, Lokhttp3/RealCall;

    invoke-direct {v0, p0, p1}, Lokhttp3/RealCall;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;)V

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 281
    iget v0, p0, Lokhttp3/OkHttpClient;->x:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 286
    iget v0, p0, Lokhttp3/OkHttpClient;->y:I

    return v0
.end method

.method public d()Ljava/net/Proxy;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lokhttp3/OkHttpClient;->b:Ljava/net/Proxy;

    return-object v0
.end method

.method public e()Ljava/net/ProxySelector;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lokhttp3/OkHttpClient;->g:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public f()Lokhttp3/CookieJar;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lokhttp3/OkHttpClient;->h:Lokhttp3/CookieJar;

    return-object v0
.end method

.method public g()Lokhttp3/Cache;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lokhttp3/OkHttpClient;->i:Lokhttp3/Cache;

    return-object v0
.end method

.method h()Lokhttp3/internal/cache/InternalCache;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lokhttp3/OkHttpClient;->i:Lokhttp3/Cache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/OkHttpClient;->i:Lokhttp3/Cache;

    iget-object v0, v0, Lokhttp3/Cache;->a:Lokhttp3/internal/cache/InternalCache;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lokhttp3/OkHttpClient;->j:Lokhttp3/internal/cache/InternalCache;

    goto :goto_0
.end method

.method public i()Lokhttp3/Dns;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lokhttp3/OkHttpClient;->s:Lokhttp3/Dns;

    return-object v0
.end method

.method public j()Ljavax/net/SocketFactory;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lokhttp3/OkHttpClient;->k:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public k()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lokhttp3/OkHttpClient;->l:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public l()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lokhttp3/OkHttpClient;->n:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public m()Lokhttp3/CertificatePinner;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lokhttp3/OkHttpClient;->o:Lokhttp3/CertificatePinner;

    return-object v0
.end method

.method public n()Lokhttp3/Authenticator;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lokhttp3/OkHttpClient;->q:Lokhttp3/Authenticator;

    return-object v0
.end method

.method public o()Lokhttp3/Authenticator;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lokhttp3/OkHttpClient;->p:Lokhttp3/Authenticator;

    return-object v0
.end method

.method public p()Lokhttp3/ConnectionPool;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lokhttp3/OkHttpClient;->r:Lokhttp3/ConnectionPool;

    return-object v0
.end method

.method public q()Z
    .locals 1

    .prologue
    .line 342
    iget-boolean v0, p0, Lokhttp3/OkHttpClient;->t:Z

    return v0
.end method

.method public r()Z
    .locals 1

    .prologue
    .line 346
    iget-boolean v0, p0, Lokhttp3/OkHttpClient;->u:Z

    return v0
.end method

.method public s()Z
    .locals 1

    .prologue
    .line 350
    iget-boolean v0, p0, Lokhttp3/OkHttpClient;->v:Z

    return v0
.end method

.method public t()Lokhttp3/Dispatcher;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lokhttp3/OkHttpClient;->a:Lokhttp3/Dispatcher;

    return-object v0
.end method

.method public u()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation

    .prologue
    .line 358
    iget-object v0, p0, Lokhttp3/OkHttpClient;->c:Ljava/util/List;

    return-object v0
.end method

.method public v()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation

    .prologue
    .line 362
    iget-object v0, p0, Lokhttp3/OkHttpClient;->d:Ljava/util/List;

    return-object v0
.end method

.method public w()Ljava/util/List;
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
    .line 371
    iget-object v0, p0, Lokhttp3/OkHttpClient;->e:Ljava/util/List;

    return-object v0
.end method

.method public x()Ljava/util/List;
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
    .line 380
    iget-object v0, p0, Lokhttp3/OkHttpClient;->f:Ljava/util/List;

    return-object v0
.end method

.method public y()Lokhttp3/OkHttpClient$Builder;
    .locals 1

    .prologue
    .line 391
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0, p0}, Lokhttp3/OkHttpClient$Builder;-><init>(Lokhttp3/OkHttpClient;)V

    return-object v0
.end method
