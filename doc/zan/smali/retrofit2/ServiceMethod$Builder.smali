.class final Lretrofit2/ServiceMethod$Builder;
.super Ljava/lang/Object;
.source "ServiceMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/ServiceMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Lretrofit2/Retrofit;

.field final b:Ljava/lang/reflect/Method;

.field final c:[Ljava/lang/annotation/Annotation;

.field final d:[[Ljava/lang/annotation/Annotation;

.field final e:[Ljava/lang/reflect/Type;

.field f:Ljava/lang/reflect/Type;

.field g:Z

.field h:Z

.field i:Z

.field j:Z

.field k:Z

.field l:Z

.field m:Ljava/lang/String;

.field n:Z

.field o:Z

.field p:Z

.field q:Ljava/lang/String;

.field r:Lokhttp3/Headers;

.field s:Lokhttp3/MediaType;

.field t:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field u:[Lretrofit2/ParameterHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lretrofit2/ParameterHandler",
            "<*>;"
        }
    .end annotation
.end field

.field v:Lretrofit2/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Converter",
            "<",
            "Lokhttp3/ResponseBody;",
            "TT;>;"
        }
    .end annotation
.end field

.field w:Lretrofit2/CallAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/CallAdapter",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lretrofit2/Retrofit;Ljava/lang/reflect/Method;)V
    .locals 1

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object p1, p0, Lretrofit2/ServiceMethod$Builder;->a:Lretrofit2/Retrofit;

    .line 153
    iput-object p2, p0, Lretrofit2/ServiceMethod$Builder;->b:Ljava/lang/reflect/Method;

    .line 154
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/ServiceMethod$Builder;->c:[Ljava/lang/annotation/Annotation;

    .line 155
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/ServiceMethod$Builder;->e:[Ljava/lang/reflect/Type;

    .line 156
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/ServiceMethod$Builder;->d:[[Ljava/lang/annotation/Annotation;

    .line 157
    return-void
.end method

.method private varargs a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .locals 2

    .prologue
    .line 729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (parameter #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lretrofit2/ServiceMethod$Builder;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method private varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .locals 1

    .prologue
    .line 711
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lretrofit2/ServiceMethod$Builder;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method private varargs a(Ljava/lang/Throwable;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .locals 2

    .prologue
    .line 725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (parameter #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p4}, Lretrofit2/ServiceMethod$Builder;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method private varargs a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .locals 3

    .prologue
    .line 715
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 716
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n    for method "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lretrofit2/ServiceMethod$Builder;->b:Ljava/lang/reflect/Method;

    .line 718
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lretrofit2/ServiceMethod$Builder;->b:Ljava/lang/reflect/Method;

    .line 720
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 716
    return-object v1
.end method

.method private a([Ljava/lang/String;)Lokhttp3/Headers;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 307
    new-instance v2, Lokhttp3/Headers$Builder;

    invoke-direct {v2}, Lokhttp3/Headers$Builder;-><init>()V

    .line 308
    array-length v3, p1

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_4

    aget-object v4, p1, v0

    .line 309
    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 310
    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_1

    .line 311
    :cond_0
    const-string v0, "@Headers value must be in the form \"Name: Value\". Found: \"%s\""

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v4, v2, v1

    invoke-direct {p0, v0, v2}, Lretrofit2/ServiceMethod$Builder;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 314
    :cond_1
    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 315
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 316
    const-string v5, "Content-Type"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 317
    invoke-static {v4}, Lokhttp3/MediaType;->a(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v5

    .line 318
    if-nez v5, :cond_2

    .line 319
    const-string v0, "Malformed content type: %s"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v4, v2, v1

    invoke-direct {p0, v0, v2}, Lretrofit2/ServiceMethod$Builder;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 321
    :cond_2
    iput-object v5, p0, Lretrofit2/ServiceMethod$Builder;->s:Lokhttp3/MediaType;

    .line 308
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 323
    :cond_3
    invoke-virtual {v2, v6, v4}, Lokhttp3/Headers$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    goto :goto_1

    .line 326
    :cond_4
    invoke-virtual {v2}, Lokhttp3/Headers$Builder;->a()Lokhttp3/Headers;

    move-result-object v0

    return-object v0
.end method

.method private a(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/ParameterHandler;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lretrofit2/ParameterHandler",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 331
    const/4 v0, 0x0

    .line 332
    array-length v4, p3

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v1, p3, v2

    .line 333
    invoke-direct {p0, p1, p2, p3, v1}, Lretrofit2/ServiceMethod$Builder;->a(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Lretrofit2/ParameterHandler;

    move-result-object v1

    .line 336
    if-nez v1, :cond_0

    .line 332
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 340
    :cond_0
    if-eqz v0, :cond_1

    .line 341
    const-string v0, "Multiple Retrofit annotations found, only one allowed."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lretrofit2/ServiceMethod$Builder;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_1
    move-object v0, v1

    .line 344
    goto :goto_1

    .line 347
    :cond_2
    if-nez v0, :cond_3

    .line 348
    const-string v0, "No Retrofit annotation found."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lretrofit2/ServiceMethod$Builder;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 351
    :cond_3
    return-object v0
.end method

.method private a(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Lretrofit2/ParameterHandler;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lretrofit2/ParameterHandler",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 356
    instance-of v0, p4, Lretrofit2/http/Url;

    if-eqz v0, :cond_6

    .line 357
    iget-boolean v0, p0, Lretrofit2/ServiceMethod$Builder;->l:Z

    if-eqz v0, :cond_0

    .line 358
    const-string v0, "Multiple @Url method annotations found."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lretrofit2/ServiceMethod$Builder;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 360
    :cond_0
    iget-boolean v0, p0, Lretrofit2/ServiceMethod$Builder;->j:Z

    if-eqz v0, :cond_1

    .line 361
    const-string v0, "@Path parameters may not be used with @Url."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lretrofit2/ServiceMethod$Builder;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 363
    :cond_1
    iget-boolean v0, p0, Lretrofit2/ServiceMethod$Builder;->k:Z

    if-eqz v0, :cond_2

    .line 364
    const-string v0, "A @Url parameter must not come after a @Query"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lretrofit2/ServiceMethod$Builder;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 366
    :cond_2
    iget-object v0, p0, Lretrofit2/ServiceMethod$Builder;->q:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 367
    const-string v0, "@Url cannot be used with @%s URL"

    new-array v1, v6, [Ljava/lang/Object;

    iget-object v2, p0, Lretrofit2/ServiceMethod$Builder;->m:Ljava/lang/String;

    aput-object v2, v1, v5

    invoke-direct {p0, p1, v0, v1}, Lretrofit2/ServiceMethod$Builder;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 370
    :cond_3
    iput-boolean v6, p0, Lretrofit2/ServiceMethod$Builder;->l:Z

    .line 372
    const-class v0, Lokhttp3/HttpUrl;

    if-eq p2, v0, :cond_4

    const-class v0, Ljava/lang/String;

    if-eq p2, v0, :cond_4

    const-class v0, Ljava/net/URI;

    if-eq p2, v0, :cond_4

    instance-of v0, p2, Ljava/lang/Class;

    if-eqz v0, :cond_5

    const-string v0, "android.net.Uri"

    check-cast p2, Ljava/lang/Class;

    .line 375
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 376
    :cond_4
    new-instance v0, Lretrofit2/ParameterHandler$RelativeUrl;

    invoke-direct {v0}, Lretrofit2/ParameterHandler$RelativeUrl;-><init>()V

    .line 687
    :goto_0
    return-object v0

    .line 378
    :cond_5
    const-string v0, "@Url must be okhttp3.HttpUrl, String, java.net.URI, or android.net.Uri type."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lretrofit2/ServiceMethod$Builder;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 382
    :cond_6
    instance-of v0, p4, Lretrofit2/http/Path;

    if-eqz v0, :cond_a

    .line 383
    iget-boolean v0, p0, Lretrofit2/ServiceMethod$Builder;->k:Z

    if-eqz v0, :cond_7

    .line 384
    const-string v0, "A @Path parameter must not come after a @Query."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lretrofit2/ServiceMethod$Builder;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 386
    :cond_7
    iget-boolean v0, p0, Lretrofit2/ServiceMethod$Builder;->l:Z

    if-eqz v0, :cond_8

    .line 387
    const-string v0, "@Path parameters may not be used with @Url."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lretrofit2/ServiceMethod$Builder;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 389
    :cond_8
    iget-object v0, p0, Lretrofit2/ServiceMethod$Builder;->q:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 390
    const-string v0, "@Path can only be used with relative url on @%s"

    new-array v1, v6, [Ljava/lang/Object;

    iget-object v2, p0, Lretrofit2/ServiceMethod$Builder;->m:Ljava/lang/String;

    aput-object v2, v1, v5

    invoke-direct {p0, p1, v0, v1}, Lretrofit2/ServiceMethod$Builder;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 392
    :cond_9
    iput-boolean v6, p0, Lretrofit2/ServiceMethod$Builder;->j:Z

    .line 394
    check-cast p4, Lretrofit2/http/Path;

    .line 395
    invoke-interface {p4}, Lretrofit2/http/Path;->a()Ljava/lang/String;

    move-result-object v1

    .line 396
    invoke-direct {p0, p1, v1}, Lretrofit2/ServiceMethod$Builder;->a(ILjava/lang/String;)V

    .line 398
    iget-object v0, p0, Lretrofit2/ServiceMethod$Builder;->a:Lretrofit2/Retrofit;

    invoke-virtual {v0, p2, p3}, Lretrofit2/Retrofit;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v2

    .line 399
    new-instance v0, Lretrofit2/ParameterHandler$Path;

    invoke-interface {p4}, Lretrofit2/http/Path;->b()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lretrofit2/ParameterHandler$Path;-><init>(Ljava/lang/String;Lretrofit2/Converter;Z)V

    goto :goto_0

    .line 401
    :cond_a
    instance-of v0, p4, Lretrofit2/http/Query;

    if-eqz v0, :cond_e

    .line 402
    check-cast p4, Lretrofit2/http/Query;

    .line 403
    invoke-interface {p4}, Lretrofit2/http/Query;->a()Ljava/lang/String;

    move-result-object v1

    .line 404
    invoke-interface {p4}, Lretrofit2/http/Query;->b()Z

    move-result v2

    .line 406
    invoke-static {p2}, Lretrofit2/Utils;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 407
    iput-boolean v6, p0, Lretrofit2/ServiceMethod$Builder;->k:Z

    .line 408
    const-class v3, Ljava/lang/Iterable;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 409
    instance-of v3, p2, Ljava/lang/reflect/ParameterizedType;

    if-nez v3, :cond_b

    .line 410
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must include generic type (e.g., "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 412
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<String>)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    .line 410
    invoke-direct {p0, p1, v0, v1}, Lretrofit2/ServiceMethod$Builder;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 415
    :cond_b
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 416
    invoke-static {v5, p2}, Lretrofit2/Utils;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 417
    iget-object v3, p0, Lretrofit2/ServiceMethod$Builder;->a:Lretrofit2/Retrofit;

    .line 418
    invoke-virtual {v3, v0, p3}, Lretrofit2/Retrofit;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v0

    .line 419
    new-instance v3, Lretrofit2/ParameterHandler$Query;

    invoke-direct {v3, v1, v0, v2}, Lretrofit2/ParameterHandler$Query;-><init>(Ljava/lang/String;Lretrofit2/Converter;Z)V

    invoke-virtual {v3}, Lretrofit2/ParameterHandler$Query;->a()Lretrofit2/ParameterHandler;

    move-result-object v0

    goto/16 :goto_0

    .line 420
    :cond_c
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 421
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lretrofit2/ServiceMethod;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 422
    iget-object v3, p0, Lretrofit2/ServiceMethod$Builder;->a:Lretrofit2/Retrofit;

    .line 423
    invoke-virtual {v3, v0, p3}, Lretrofit2/Retrofit;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v0

    .line 424
    new-instance v3, Lretrofit2/ParameterHandler$Query;

    invoke-direct {v3, v1, v0, v2}, Lretrofit2/ParameterHandler$Query;-><init>(Ljava/lang/String;Lretrofit2/Converter;Z)V

    invoke-virtual {v3}, Lretrofit2/ParameterHandler$Query;->b()Lretrofit2/ParameterHandler;

    move-result-object v0

    goto/16 :goto_0

    .line 426
    :cond_d
    iget-object v0, p0, Lretrofit2/ServiceMethod$Builder;->a:Lretrofit2/Retrofit;

    .line 427
    invoke-virtual {v0, p2, p3}, Lretrofit2/Retrofit;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v3

    .line 428
    new-instance v0, Lretrofit2/ParameterHandler$Query;

    invoke-direct {v0, v1, v3, v2}, Lretrofit2/ParameterHandler$Query;-><init>(Ljava/lang/String;Lretrofit2/Converter;Z)V

    goto/16 :goto_0

    .line 431
    :cond_e
    instance-of v0, p4, Lretrofit2/http/QueryMap;

    if-eqz v0, :cond_12

    .line 432
    invoke-static {p2}, Lretrofit2/Utils;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 433
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 434
    const-string v0, "@QueryMap parameter type must be Map."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lretrofit2/ServiceMethod$Builder;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 436
    :cond_f
    const-class v1, Ljava/util/Map;

    invoke-static {p2, v0, v1}, Lretrofit2/Utils;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 437
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-nez v1, :cond_10

    .line 438
    const-string v0, "Map must include generic types (e.g., Map<String, String>)"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lretrofit2/ServiceMethod$Builder;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 440
    :cond_10
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 441
    invoke-static {v5, v0}, Lretrofit2/Utils;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 442
    const-class v2, Ljava/lang/String;

    if-eq v2, v1, :cond_11

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@QueryMap keys must be of type String: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lretrofit2/ServiceMethod$Builder;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 445
    :cond_11
    invoke-static {v6, v0}, Lretrofit2/Utils;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 446
    iget-object v1, p0, Lretrofit2/ServiceMethod$Builder;->a:Lretrofit2/Retrofit;

    .line 447
    invoke-virtual {v1, v0, p3}, Lretrofit2/Retrofit;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v1

    .line 449
    new-instance v0, Lretrofit2/ParameterHandler$QueryMap;

    check-cast p4, Lretrofit2/http/QueryMap;

    invoke-interface {p4}, Lretrofit2/http/QueryMap;->a()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lretrofit2/ParameterHandler$QueryMap;-><init>(Lretrofit2/Converter;Z)V

    goto/16 :goto_0

    .line 451
    :cond_12
    instance-of v0, p4, Lretrofit2/http/Header;

    if-eqz v0, :cond_16

    .line 452
    check-cast p4, Lretrofit2/http/Header;

    .line 453
    invoke-interface {p4}, Lretrofit2/http/Header;->a()Ljava/lang/String;

    move-result-object v1

    .line 455
    invoke-static {p2}, Lretrofit2/Utils;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 456
    const-class v2, Ljava/lang/Iterable;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 457
    instance-of v2, p2, Ljava/lang/reflect/ParameterizedType;

    if-nez v2, :cond_13

    .line 458
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must include generic type (e.g., "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 460
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<String>)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    .line 458
    invoke-direct {p0, p1, v0, v1}, Lretrofit2/ServiceMethod$Builder;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 463
    :cond_13
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 464
    invoke-static {v5, p2}, Lretrofit2/Utils;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 465
    iget-object v2, p0, Lretrofit2/ServiceMethod$Builder;->a:Lretrofit2/Retrofit;

    .line 466
    invoke-virtual {v2, v0, p3}, Lretrofit2/Retrofit;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v0

    .line 467
    new-instance v2, Lretrofit2/ParameterHandler$Header;

    invoke-direct {v2, v1, v0}, Lretrofit2/ParameterHandler$Header;-><init>(Ljava/lang/String;Lretrofit2/Converter;)V

    invoke-virtual {v2}, Lretrofit2/ParameterHandler$Header;->a()Lretrofit2/ParameterHandler;

    move-result-object v0

    goto/16 :goto_0

    .line 468
    :cond_14
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 469
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lretrofit2/ServiceMethod;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 470
    iget-object v2, p0, Lretrofit2/ServiceMethod$Builder;->a:Lretrofit2/Retrofit;

    .line 471
    invoke-virtual {v2, v0, p3}, Lretrofit2/Retrofit;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v0

    .line 472
    new-instance v2, Lretrofit2/ParameterHandler$Header;

    invoke-direct {v2, v1, v0}, Lretrofit2/ParameterHandler$Header;-><init>(Ljava/lang/String;Lretrofit2/Converter;)V

    invoke-virtual {v2}, Lretrofit2/ParameterHandler$Header;->b()Lretrofit2/ParameterHandler;

    move-result-object v0

    goto/16 :goto_0

    .line 474
    :cond_15
    iget-object v0, p0, Lretrofit2/ServiceMethod$Builder;->a:Lretrofit2/Retrofit;

    .line 475
    invoke-virtual {v0, p2, p3}, Lretrofit2/Retrofit;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v2

    .line 476
    new-instance v0, Lretrofit2/ParameterHandler$Header;

    invoke-direct {v0, v1, v2}, Lretrofit2/ParameterHandler$Header;-><init>(Ljava/lang/String;Lretrofit2/Converter;)V

    goto/16 :goto_0

    .line 479
    :cond_16
    instance-of v0, p4, Lretrofit2/http/HeaderMap;

    if-eqz v0, :cond_1a

    .line 480
    invoke-static {p2}, Lretrofit2/Utils;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 481
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 482
    const-string v0, "@HeaderMap parameter type must be Map."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lretrofit2/ServiceMethod$Builder;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 484
    :cond_17
    const-class v1, Ljava/util/Map;

    invoke-static {p2, v0, v1}, Lretrofit2/Utils;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 485
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-nez v1, :cond_18

    .line 486
    const-string v0, "Map must include generic types (e.g., Map<String, String>)"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lretrofit2/ServiceMethod$Builder;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 488
    :cond_18
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 489
    invoke-static {v5, v0}, Lretrofit2/Utils;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 490
    const-class v2, Ljava/lang/String;

    if-eq v2, v1, :cond_19

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@HeaderMap keys must be of type String: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lretrofit2/ServiceMethod$Builder;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 493
    :cond_19
    invoke-static {v6, v0}, Lretrofit2/Utils;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 494
    iget-object v1, p0, Lretrofit2/ServiceMethod$Builder;->a:Lretrofit2/Retrofit;

    .line 495
    invoke-virtual {v1, v0, p3}, Lretrofit2/Retrofit;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v1

    .line 497
    new-instance v0, Lretrofit2/ParameterHandler$HeaderMap;

    invoke-direct {v0, v1}, Lretrofit2/ParameterHandler$HeaderMap;-><init>(Lretrofit2/Converter;)V

    goto/16 :goto_0

    .line 499
    :cond_1a
    instance-of v0, p4, Lretrofit2/http/Field;

    if-eqz v0, :cond_1f

    .line 500
    iget-boolean v0, p0, Lretrofit2/ServiceMethod$Builder;->o:Z

    if-nez v0, :cond_1b

    .line 501
    const-string v0, "@Field parameters can only be used with form encoding."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lretrofit2/ServiceMethod$Builder;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 503
    :cond_1b
    check-cast p4, Lretrofit2/http/Field;

    .line 504
    invoke-interface {p4}, Lretrofit2/http/Field;->a()Ljava/lang/String;

    move-result-object v1

    .line 505
    invoke-interface {p4}, Lretrofit2/http/Field;->b()Z

    move-result v2

    .line 507
    iput-boolean v6, p0, Lretrofit2/ServiceMethod$Builder;->g:Z

    .line 509
    invoke-static {p2}, Lretrofit2/Utils;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 510
    const-class v3, Ljava/lang/Iterable;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 511
    instance-of v3, p2, Ljava/lang/reflect/ParameterizedType;

    if-nez v3, :cond_1c

    .line 512
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must include generic type (e.g., "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 514
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<String>)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    .line 512
    invoke-direct {p0, p1, v0, v1}, Lretrofit2/ServiceMethod$Builder;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 517
    :cond_1c
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 518
    invoke-static {v5, p2}, Lretrofit2/Utils;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 519
    iget-object v3, p0, Lretrofit2/ServiceMethod$Builder;->a:Lretrofit2/Retrofit;

    .line 520
    invoke-virtual {v3, v0, p3}, Lretrofit2/Retrofit;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v0

    .line 521
    new-instance v3, Lretrofit2/ParameterHandler$Field;

    invoke-direct {v3, v1, v0, v2}, Lretrofit2/ParameterHandler$Field;-><init>(Ljava/lang/String;Lretrofit2/Converter;Z)V

    invoke-virtual {v3}, Lretrofit2/ParameterHandler$Field;->a()Lretrofit2/ParameterHandler;

    move-result-object v0

    goto/16 :goto_0

    .line 522
    :cond_1d
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 523
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lretrofit2/ServiceMethod;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 524
    iget-object v3, p0, Lretrofit2/ServiceMethod$Builder;->a:Lretrofit2/Retrofit;

    .line 525
    invoke-virtual {v3, v0, p3}, Lretrofit2/Retrofit;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v0

    .line 526
    new-instance v3, Lretrofit2/ParameterHandler$Field;

    invoke-direct {v3, v1, v0, v2}, Lretrofit2/ParameterHandler$Field;-><init>(Ljava/lang/String;Lretrofit2/Converter;Z)V

    invoke-virtual {v3}, Lretrofit2/ParameterHandler$Field;->b()Lretrofit2/ParameterHandler;

    move-result-object v0

    goto/16 :goto_0

    .line 528
    :cond_1e
    iget-object v0, p0, Lretrofit2/ServiceMethod$Builder;->a:Lretrofit2/Retrofit;

    .line 529
    invoke-virtual {v0, p2, p3}, Lretrofit2/Retrofit;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v3

    .line 530
    new-instance v0, Lretrofit2/ParameterHandler$Field;

    invoke-direct {v0, v1, v3, v2}, Lretrofit2/ParameterHandler$Field;-><init>(Ljava/lang/String;Lretrofit2/Converter;Z)V

    goto/16 :goto_0

    .line 533
    :cond_1f
    instance-of v0, p4, Lretrofit2/http/FieldMap;

    if-eqz v0, :cond_24

    .line 534
    iget-boolean v0, p0, Lretrofit2/ServiceMethod$Builder;->o:Z

    if-nez v0, :cond_20

    .line 535
    const-string v0, "@FieldMap parameters can only be used with form encoding."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lretrofit2/ServiceMethod$Builder;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 537
    :cond_20
    invoke-static {p2}, Lretrofit2/Utils;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 538
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 539
    const-string v0, "@FieldMap parameter type must be Map."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lretrofit2/ServiceMethod$Builder;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 541
    :cond_21
    const-class v1, Ljava/util/Map;

    invoke-static {p2, v0, v1}, Lretrofit2/Utils;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 542
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-nez v1, :cond_22

    .line 543
    const-string v0, "Map must include generic types (e.g., Map<String, String>)"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lretrofit2/ServiceMethod$Builder;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 546
    :cond_22
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 547
    invoke-static {v5, v0}, Lretrofit2/Utils;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 548
    const-class v2, Ljava/lang/String;

    if-eq v2, v1, :cond_23

    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@FieldMap keys must be of type String: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lretrofit2/ServiceMethod$Builder;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 551
    :cond_23
    invoke-static {v6, v0}, Lretrofit2/Utils;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 552
    iget-object v1, p0, Lretrofit2/ServiceMethod$Builder;->a:Lretrofit2/Retrofit;

    .line 553
    invoke-virtual {v1, v0, p3}, Lretrofit2/Retrofit;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v1

    .line 555
    iput-boolean v6, p0, Lretrofit2/ServiceMethod$Builder;->g:Z

    .line 556
    new-instance v0, Lretrofit2/ParameterHandler$FieldMap;

    check-cast p4, Lretrofit2/http/FieldMap;

    invoke-interface {p4}, Lretrofit2/http/FieldMap;->a()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lretrofit2/ParameterHandler$FieldMap;-><init>(Lretrofit2/Converter;Z)V

    goto/16 :goto_0

    .line 558
    :cond_24
    instance-of v0, p4, Lretrofit2/http/Part;

    if-eqz v0, :cond_33

    .line 559
    iget-boolean v0, p0, Lretrofit2/ServiceMethod$Builder;->p:Z

    if-nez v0, :cond_25

    .line 560
    const-string v0, "@Part parameters can only be used with multipart encoding."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lretrofit2/ServiceMethod$Builder;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 562
    :cond_25
    check-cast p4, Lretrofit2/http/Part;

    .line 563
    iput-boolean v6, p0, Lretrofit2/ServiceMethod$Builder;->h:Z

    .line 565
    invoke-interface {p4}, Lretrofit2/http/Part;->a()Ljava/lang/String;

    move-result-object v0

    .line 566
    invoke-static {p2}, Lretrofit2/Utils;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    .line 567
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 568
    const-class v0, Ljava/lang/Iterable;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 569
    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    if-nez v0, :cond_26

    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " must include generic type (e.g., "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 572
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<String>)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    .line 570
    invoke-direct {p0, p1, v0, v1}, Lretrofit2/ServiceMethod$Builder;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 575
    :cond_26
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 576
    invoke-static {v5, p2}, Lretrofit2/Utils;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 577
    const-class v1, Lokhttp3/MultipartBody$Part;

    invoke-static {v0}, Lretrofit2/Utils;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 578
    const-string v0, "@Part annotation must supply a name or use MultipartBody.Part parameter type."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lretrofit2/ServiceMethod$Builder;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 581
    :cond_27
    sget-object v0, Lretrofit2/ParameterHandler$RawPart;->a:Lretrofit2/ParameterHandler$RawPart;

    invoke-virtual {v0}, Lretrofit2/ParameterHandler$RawPart;->a()Lretrofit2/ParameterHandler;

    move-result-object v0

    goto/16 :goto_0

    .line 582
    :cond_28
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 583
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 584
    const-class v1, Lokhttp3/MultipartBody$Part;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 585
    const-string v0, "@Part annotation must supply a name or use MultipartBody.Part parameter type."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lretrofit2/ServiceMethod$Builder;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 588
    :cond_29
    sget-object v0, Lretrofit2/ParameterHandler$RawPart;->a:Lretrofit2/ParameterHandler$RawPart;

    invoke-virtual {v0}, Lretrofit2/ParameterHandler$RawPart;->b()Lretrofit2/ParameterHandler;

    move-result-object v0

    goto/16 :goto_0

    .line 589
    :cond_2a
    const-class v0, Lokhttp3/MultipartBody$Part;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 590
    sget-object v0, Lretrofit2/ParameterHandler$RawPart;->a:Lretrofit2/ParameterHandler$RawPart;

    goto/16 :goto_0

    .line 592
    :cond_2b
    const-string v0, "@Part annotation must supply a name or use MultipartBody.Part parameter type."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lretrofit2/ServiceMethod$Builder;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 596
    :cond_2c
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Content-Disposition"

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "form-data; name=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    const/4 v0, 0x2

    const-string v3, "Content-Transfer-Encoding"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    .line 598
    invoke-interface {p4}, Lretrofit2/http/Part;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 597
    invoke-static {v2}, Lokhttp3/Headers;->a([Ljava/lang/String;)Lokhttp3/Headers;

    move-result-object v2

    .line 600
    const-class v0, Ljava/lang/Iterable;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 601
    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    if-nez v0, :cond_2d

    .line 602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " must include generic type (e.g., "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 604
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<String>)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    .line 602
    invoke-direct {p0, p1, v0, v1}, Lretrofit2/ServiceMethod$Builder;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 607
    :cond_2d
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 608
    invoke-static {v5, p2}, Lretrofit2/Utils;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 609
    const-class v1, Lokhttp3/MultipartBody$Part;

    invoke-static {v0}, Lretrofit2/Utils;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 610
    const-string v0, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lretrofit2/ServiceMethod$Builder;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 613
    :cond_2e
    iget-object v1, p0, Lretrofit2/ServiceMethod$Builder;->a:Lretrofit2/Retrofit;

    iget-object v3, p0, Lretrofit2/ServiceMethod$Builder;->c:[Ljava/lang/annotation/Annotation;

    .line 614
    invoke-virtual {v1, v0, p3, v3}, Lretrofit2/Retrofit;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v0

    .line 615
    new-instance v1, Lretrofit2/ParameterHandler$Part;

    invoke-direct {v1, v2, v0}, Lretrofit2/ParameterHandler$Part;-><init>(Lokhttp3/Headers;Lretrofit2/Converter;)V

    invoke-virtual {v1}, Lretrofit2/ParameterHandler$Part;->a()Lretrofit2/ParameterHandler;

    move-result-object v0

    goto/16 :goto_0

    .line 616
    :cond_2f
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 617
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lretrofit2/ServiceMethod;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 618
    const-class v1, Lokhttp3/MultipartBody$Part;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 619
    const-string v0, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lretrofit2/ServiceMethod$Builder;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 622
    :cond_30
    iget-object v1, p0, Lretrofit2/ServiceMethod$Builder;->a:Lretrofit2/Retrofit;

    iget-object v3, p0, Lretrofit2/ServiceMethod$Builder;->c:[Ljava/lang/annotation/Annotation;

    .line 623
    invoke-virtual {v1, v0, p3, v3}, Lretrofit2/Retrofit;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v0

    .line 624
    new-instance v1, Lretrofit2/ParameterHandler$Part;

    invoke-direct {v1, v2, v0}, Lretrofit2/ParameterHandler$Part;-><init>(Lokhttp3/Headers;Lretrofit2/Converter;)V

    invoke-virtual {v1}, Lretrofit2/ParameterHandler$Part;->b()Lretrofit2/ParameterHandler;

    move-result-object v0

    goto/16 :goto_0

    .line 625
    :cond_31
    const-class v0, Lokhttp3/MultipartBody$Part;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 626
    const-string v0, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lretrofit2/ServiceMethod$Builder;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 629
    :cond_32
    iget-object v0, p0, Lretrofit2/ServiceMethod$Builder;->a:Lretrofit2/Retrofit;

    iget-object v1, p0, Lretrofit2/ServiceMethod$Builder;->c:[Ljava/lang/annotation/Annotation;

    .line 630
    invoke-virtual {v0, p2, p3, v1}, Lretrofit2/Retrofit;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v1

    .line 631
    new-instance v0, Lretrofit2/ParameterHandler$Part;

    invoke-direct {v0, v2, v1}, Lretrofit2/ParameterHandler$Part;-><init>(Lokhttp3/Headers;Lretrofit2/Converter;)V

    goto/16 :goto_0

    .line 635
    :cond_33
    instance-of v0, p4, Lretrofit2/http/PartMap;

    if-eqz v0, :cond_39

    .line 636
    iget-boolean v0, p0, Lretrofit2/ServiceMethod$Builder;->p:Z

    if-nez v0, :cond_34

    .line 637
    const-string v0, "@PartMap parameters can only be used with multipart encoding."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lretrofit2/ServiceMethod$Builder;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 639
    :cond_34
    iput-boolean v6, p0, Lretrofit2/ServiceMethod$Builder;->h:Z

    .line 640
    invoke-static {p2}, Lretrofit2/Utils;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 641
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 642
    const-string v0, "@PartMap parameter type must be Map."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lretrofit2/ServiceMethod$Builder;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 644
    :cond_35
    const-class v1, Ljava/util/Map;

    invoke-static {p2, v0, v1}, Lretrofit2/Utils;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 645
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-nez v1, :cond_36

    .line 646
    const-string v0, "Map must include generic types (e.g., Map<String, String>)"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lretrofit2/ServiceMethod$Builder;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 648
    :cond_36
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 650
    invoke-static {v5, v0}, Lretrofit2/Utils;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 651
    const-class v2, Ljava/lang/String;

    if-eq v2, v1, :cond_37

    .line 652
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@PartMap keys must be of type String: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lretrofit2/ServiceMethod$Builder;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 655
    :cond_37
    invoke-static {v6, v0}, Lretrofit2/Utils;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 656
    const-class v1, Lokhttp3/MultipartBody$Part;

    invoke-static {v0}, Lretrofit2/Utils;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 657
    const-string v0, "@PartMap values cannot be MultipartBody.Part. Use @Part List<Part> or a different value type instead."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lretrofit2/ServiceMethod$Builder;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 661
    :cond_38
    iget-object v1, p0, Lretrofit2/ServiceMethod$Builder;->a:Lretrofit2/Retrofit;

    iget-object v2, p0, Lretrofit2/ServiceMethod$Builder;->c:[Ljava/lang/annotation/Annotation;

    .line 662
    invoke-virtual {v1, v0, p3, v2}, Lretrofit2/Retrofit;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v1

    .line 664
    check-cast p4, Lretrofit2/http/PartMap;

    .line 665
    new-instance v0, Lretrofit2/ParameterHandler$PartMap;

    invoke-interface {p4}, Lretrofit2/http/PartMap;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lretrofit2/ParameterHandler$PartMap;-><init>(Lretrofit2/Converter;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 667
    :cond_39
    instance-of v0, p4, Lretrofit2/http/Body;

    if-eqz v0, :cond_3d

    .line 668
    iget-boolean v0, p0, Lretrofit2/ServiceMethod$Builder;->o:Z

    if-nez v0, :cond_3a

    iget-boolean v0, p0, Lretrofit2/ServiceMethod$Builder;->p:Z

    if-eqz v0, :cond_3b

    .line 669
    :cond_3a
    const-string v0, "@Body parameters cannot be used with form or multi-part encoding."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lretrofit2/ServiceMethod$Builder;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 672
    :cond_3b
    iget-boolean v0, p0, Lretrofit2/ServiceMethod$Builder;->i:Z

    if-eqz v0, :cond_3c

    .line 673
    const-string v0, "Multiple @Body method annotations found."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lretrofit2/ServiceMethod$Builder;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 678
    :cond_3c
    :try_start_0
    iget-object v0, p0, Lretrofit2/ServiceMethod$Builder;->a:Lretrofit2/Retrofit;

    iget-object v1, p0, Lretrofit2/ServiceMethod$Builder;->c:[Ljava/lang/annotation/Annotation;

    invoke-virtual {v0, p2, p3, v1}, Lretrofit2/Retrofit;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 683
    iput-boolean v6, p0, Lretrofit2/ServiceMethod$Builder;->i:Z

    .line 684
    new-instance v0, Lretrofit2/ParameterHandler$Body;

    invoke-direct {v0, v1}, Lretrofit2/ParameterHandler$Body;-><init>(Lretrofit2/Converter;)V

    goto/16 :goto_0

    .line 679
    :catch_0
    move-exception v0

    .line 681
    const-string v1, "Unable to create @Body converter for %s"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p2, v2, v5

    invoke-direct {p0, v0, p1, v1, v2}, Lretrofit2/ServiceMethod$Builder;->a(Ljava/lang/Throwable;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 687
    :cond_3d
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private a(ILjava/lang/String;)V
    .locals 5

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 691
    sget-object v0, Lretrofit2/ServiceMethod;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    .line 692
    const-string v0, "@Path parameter name must match %s. Found: %s"

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lretrofit2/ServiceMethod;->b:Ljava/util/regex/Pattern;

    .line 693
    invoke-virtual {v2}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    aput-object p2, v1, v4

    .line 692
    invoke-direct {p0, p1, v0, v1}, Lretrofit2/ServiceMethod$Builder;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 696
    :cond_0
    iget-object v0, p0, Lretrofit2/ServiceMethod$Builder;->t:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 697
    const-string v0, "URL \"%s\" does not contain \"{%s}\"."

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lretrofit2/ServiceMethod$Builder;->q:Ljava/lang/String;

    aput-object v2, v1, v3

    aput-object p2, v1, v4

    invoke-direct {p0, p1, v0, v1}, Lretrofit2/ServiceMethod$Builder;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 699
    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 279
    iget-object v0, p0, Lretrofit2/ServiceMethod$Builder;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 280
    const-string v0, "Only one HTTP method is allowed. Found: %s and %s."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lretrofit2/ServiceMethod$Builder;->m:Ljava/lang/String;

    aput-object v2, v1, v3

    aput-object p1, v1, v4

    invoke-direct {p0, v0, v1}, Lretrofit2/ServiceMethod$Builder;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 283
    :cond_0
    iput-object p1, p0, Lretrofit2/ServiceMethod$Builder;->m:Ljava/lang/String;

    .line 284
    iput-boolean p3, p0, Lretrofit2/ServiceMethod$Builder;->n:Z

    .line 286
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    :goto_0
    return-void

    .line 291
    :cond_1
    const/16 v0, 0x3f

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 292
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    .line 294
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 295
    sget-object v1, Lretrofit2/ServiceMethod;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 296
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 297
    const-string v1, "URL query string \"%s\" must not have replace block. For dynamic query parameters use @Query."

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-direct {p0, v1, v2}, Lretrofit2/ServiceMethod$Builder;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 302
    :cond_2
    iput-object p2, p0, Lretrofit2/ServiceMethod$Builder;->q:Ljava/lang/String;

    .line 303
    invoke-static {p2}, Lretrofit2/ServiceMethod;->a(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/ServiceMethod$Builder;->t:Ljava/util/Set;

    goto :goto_0
.end method

.method private a(Ljava/lang/annotation/Annotation;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 239
    instance-of v0, p1, Lretrofit2/http/DELETE;

    if-eqz v0, :cond_1

    .line 240
    const-string v0, "DELETE"

    check-cast p1, Lretrofit2/http/DELETE;

    invoke-interface {p1}, Lretrofit2/http/DELETE;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v2}, Lretrofit2/ServiceMethod$Builder;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    instance-of v0, p1, Lretrofit2/http/GET;

    if-eqz v0, :cond_2

    .line 242
    const-string v0, "GET"

    check-cast p1, Lretrofit2/http/GET;

    invoke-interface {p1}, Lretrofit2/http/GET;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v2}, Lretrofit2/ServiceMethod$Builder;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 243
    :cond_2
    instance-of v0, p1, Lretrofit2/http/HEAD;

    if-eqz v0, :cond_3

    .line 244
    const-string v0, "HEAD"

    check-cast p1, Lretrofit2/http/HEAD;

    invoke-interface {p1}, Lretrofit2/http/HEAD;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v2}, Lretrofit2/ServiceMethod$Builder;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 245
    const-class v0, Ljava/lang/Void;

    iget-object v1, p0, Lretrofit2/ServiceMethod$Builder;->f:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    const-string v0, "HEAD method must use Void as response type."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lretrofit2/ServiceMethod$Builder;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 248
    :cond_3
    instance-of v0, p1, Lretrofit2/http/PATCH;

    if-eqz v0, :cond_4

    .line 249
    const-string v0, "PATCH"

    check-cast p1, Lretrofit2/http/PATCH;

    invoke-interface {p1}, Lretrofit2/http/PATCH;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v3}, Lretrofit2/ServiceMethod$Builder;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 250
    :cond_4
    instance-of v0, p1, Lretrofit2/http/POST;

    if-eqz v0, :cond_5

    .line 251
    const-string v0, "POST"

    check-cast p1, Lretrofit2/http/POST;

    invoke-interface {p1}, Lretrofit2/http/POST;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v3}, Lretrofit2/ServiceMethod$Builder;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 252
    :cond_5
    instance-of v0, p1, Lretrofit2/http/PUT;

    if-eqz v0, :cond_6

    .line 253
    const-string v0, "PUT"

    check-cast p1, Lretrofit2/http/PUT;

    invoke-interface {p1}, Lretrofit2/http/PUT;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v3}, Lretrofit2/ServiceMethod$Builder;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 254
    :cond_6
    instance-of v0, p1, Lretrofit2/http/OPTIONS;

    if-eqz v0, :cond_7

    .line 255
    const-string v0, "OPTIONS"

    check-cast p1, Lretrofit2/http/OPTIONS;

    invoke-interface {p1}, Lretrofit2/http/OPTIONS;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v2}, Lretrofit2/ServiceMethod$Builder;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 256
    :cond_7
    instance-of v0, p1, Lretrofit2/http/HTTP;

    if-eqz v0, :cond_8

    .line 257
    check-cast p1, Lretrofit2/http/HTTP;

    .line 258
    invoke-interface {p1}, Lretrofit2/http/HTTP;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lretrofit2/http/HTTP;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lretrofit2/http/HTTP;->c()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lretrofit2/ServiceMethod$Builder;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 259
    :cond_8
    instance-of v0, p1, Lretrofit2/http/Headers;

    if-eqz v0, :cond_a

    .line 260
    check-cast p1, Lretrofit2/http/Headers;

    invoke-interface {p1}, Lretrofit2/http/Headers;->a()[Ljava/lang/String;

    move-result-object v0

    .line 261
    array-length v1, v0

    if-nez v1, :cond_9

    .line 262
    const-string v0, "@Headers annotation is empty."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lretrofit2/ServiceMethod$Builder;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 264
    :cond_9
    invoke-direct {p0, v0}, Lretrofit2/ServiceMethod$Builder;->a([Ljava/lang/String;)Lokhttp3/Headers;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/ServiceMethod$Builder;->r:Lokhttp3/Headers;

    goto/16 :goto_0

    .line 265
    :cond_a
    instance-of v0, p1, Lretrofit2/http/Multipart;

    if-eqz v0, :cond_c

    .line 266
    iget-boolean v0, p0, Lretrofit2/ServiceMethod$Builder;->o:Z

    if-eqz v0, :cond_b

    .line 267
    const-string v0, "Only one encoding annotation is allowed."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lretrofit2/ServiceMethod$Builder;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 269
    :cond_b
    iput-boolean v3, p0, Lretrofit2/ServiceMethod$Builder;->p:Z

    goto/16 :goto_0

    .line 270
    :cond_c
    instance-of v0, p1, Lretrofit2/http/FormUrlEncoded;

    if-eqz v0, :cond_0

    .line 271
    iget-boolean v0, p0, Lretrofit2/ServiceMethod$Builder;->p:Z

    if-eqz v0, :cond_d

    .line 272
    const-string v0, "Only one encoding annotation is allowed."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lretrofit2/ServiceMethod$Builder;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 274
    :cond_d
    iput-boolean v3, p0, Lretrofit2/ServiceMethod$Builder;->o:Z

    goto/16 :goto_0
.end method

.method private b()Lretrofit2/CallAdapter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/CallAdapter",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 222
    iget-object v0, p0, Lretrofit2/ServiceMethod$Builder;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 223
    invoke-static {v1}, Lretrofit2/Utils;->d(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    const-string v0, "Method return type must not include a type variable or wildcard: %s"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v1, v2, v4

    invoke-direct {p0, v0, v2}, Lretrofit2/ServiceMethod$Builder;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 227
    :cond_0
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v1, v0, :cond_1

    .line 228
    const-string v0, "Service methods cannot return void."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lretrofit2/ServiceMethod$Builder;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 230
    :cond_1
    iget-object v0, p0, Lretrofit2/ServiceMethod$Builder;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 232
    :try_start_0
    iget-object v2, p0, Lretrofit2/ServiceMethod$Builder;->a:Lretrofit2/Retrofit;

    invoke-virtual {v2, v1, v0}, Lretrofit2/Retrofit;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/CallAdapter;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 233
    :catch_0
    move-exception v0

    .line 234
    const-string v2, "Unable to create call adapter for %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-direct {p0, v0, v2, v3}, Lretrofit2/ServiceMethod$Builder;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private c()Lretrofit2/Converter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Converter",
            "<",
            "Lokhttp3/ResponseBody;",
            "TT;>;"
        }
    .end annotation

    .prologue
    .line 702
    iget-object v0, p0, Lretrofit2/ServiceMethod$Builder;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 704
    :try_start_0
    iget-object v1, p0, Lretrofit2/ServiceMethod$Builder;->a:Lretrofit2/Retrofit;

    iget-object v2, p0, Lretrofit2/ServiceMethod$Builder;->f:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2, v0}, Lretrofit2/Retrofit;->b(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 705
    :catch_0
    move-exception v0

    .line 706
    const-string v1, "Unable to create converter for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lretrofit2/ServiceMethod$Builder;->f:Ljava/lang/reflect/Type;

    aput-object v4, v2, v3

    invoke-direct {p0, v0, v1, v2}, Lretrofit2/ServiceMethod$Builder;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public a()Lretrofit2/ServiceMethod;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 160
    invoke-direct {p0}, Lretrofit2/ServiceMethod$Builder;->b()Lretrofit2/CallAdapter;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/ServiceMethod$Builder;->w:Lretrofit2/CallAdapter;

    .line 161
    iget-object v0, p0, Lretrofit2/ServiceMethod$Builder;->w:Lretrofit2/CallAdapter;

    invoke-interface {v0}, Lretrofit2/CallAdapter;->a()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/ServiceMethod$Builder;->f:Ljava/lang/reflect/Type;

    .line 162
    iget-object v0, p0, Lretrofit2/ServiceMethod$Builder;->f:Ljava/lang/reflect/Type;

    const-class v2, Lretrofit2/Response;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lretrofit2/ServiceMethod$Builder;->f:Ljava/lang/reflect/Type;

    const-class v2, Lokhttp3/Response;

    if-ne v0, v2, :cond_1

    .line 163
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lretrofit2/ServiceMethod$Builder;->f:Ljava/lang/reflect/Type;

    .line 164
    invoke-static {v2}, Lretrofit2/Utils;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' is not a valid response body type. Did you mean ResponseBody?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 163
    invoke-direct {p0, v0, v1}, Lretrofit2/ServiceMethod$Builder;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 167
    :cond_1
    invoke-direct {p0}, Lretrofit2/ServiceMethod$Builder;->c()Lretrofit2/Converter;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/ServiceMethod$Builder;->v:Lretrofit2/Converter;

    .line 169
    iget-object v2, p0, Lretrofit2/ServiceMethod$Builder;->c:[Ljava/lang/annotation/Annotation;

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 170
    invoke-direct {p0, v4}, Lretrofit2/ServiceMethod$Builder;->a(Ljava/lang/annotation/Annotation;)V

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    :cond_2
    iget-object v0, p0, Lretrofit2/ServiceMethod$Builder;->m:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 174
    const-string v0, "HTTP method annotation is required (e.g., @GET, @POST, etc.)."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lretrofit2/ServiceMethod$Builder;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 177
    :cond_3
    iget-boolean v0, p0, Lretrofit2/ServiceMethod$Builder;->n:Z

    if-nez v0, :cond_5

    .line 178
    iget-boolean v0, p0, Lretrofit2/ServiceMethod$Builder;->p:Z

    if-eqz v0, :cond_4

    .line 179
    const-string v0, "Multipart can only be specified on HTTP methods with request body (e.g., @POST)."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lretrofit2/ServiceMethod$Builder;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 182
    :cond_4
    iget-boolean v0, p0, Lretrofit2/ServiceMethod$Builder;->o:Z

    if-eqz v0, :cond_5

    .line 183
    const-string v0, "FormUrlEncoded can only be specified on HTTP methods with request body (e.g., @POST)."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lretrofit2/ServiceMethod$Builder;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 188
    :cond_5
    iget-object v0, p0, Lretrofit2/ServiceMethod$Builder;->d:[[Ljava/lang/annotation/Annotation;

    array-length v2, v0

    .line 189
    new-array v0, v2, [Lretrofit2/ParameterHandler;

    iput-object v0, p0, Lretrofit2/ServiceMethod$Builder;->u:[Lretrofit2/ParameterHandler;

    move v0, v1

    .line 190
    :goto_1
    if-ge v0, v2, :cond_8

    .line 191
    iget-object v3, p0, Lretrofit2/ServiceMethod$Builder;->e:[Ljava/lang/reflect/Type;

    aget-object v3, v3, v0

    .line 192
    invoke-static {v3}, Lretrofit2/Utils;->d(Ljava/lang/reflect/Type;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 193
    const-string v2, "Parameter type must not include a type variable or wildcard: %s"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v3, v4, v1

    invoke-direct {p0, v0, v2, v4}, Lretrofit2/ServiceMethod$Builder;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 197
    :cond_6
    iget-object v4, p0, Lretrofit2/ServiceMethod$Builder;->d:[[Ljava/lang/annotation/Annotation;

    aget-object v4, v4, v0

    .line 198
    if-nez v4, :cond_7

    .line 199
    const-string v2, "No Retrofit annotation found."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v2, v1}, Lretrofit2/ServiceMethod$Builder;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 202
    :cond_7
    iget-object v5, p0, Lretrofit2/ServiceMethod$Builder;->u:[Lretrofit2/ParameterHandler;

    invoke-direct {p0, v0, v3, v4}, Lretrofit2/ServiceMethod$Builder;->a(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/ParameterHandler;

    move-result-object v3

    aput-object v3, v5, v0

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 205
    :cond_8
    iget-object v0, p0, Lretrofit2/ServiceMethod$Builder;->q:Ljava/lang/String;

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lretrofit2/ServiceMethod$Builder;->l:Z

    if-nez v0, :cond_9

    .line 206
    const-string v0, "Missing either @%s URL or @Url parameter."

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lretrofit2/ServiceMethod$Builder;->m:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-direct {p0, v0, v2}, Lretrofit2/ServiceMethod$Builder;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 208
    :cond_9
    iget-boolean v0, p0, Lretrofit2/ServiceMethod$Builder;->o:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lretrofit2/ServiceMethod$Builder;->p:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lretrofit2/ServiceMethod$Builder;->n:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lretrofit2/ServiceMethod$Builder;->i:Z

    if-eqz v0, :cond_a

    .line 209
    const-string v0, "Non-body HTTP method cannot contain @Body."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lretrofit2/ServiceMethod$Builder;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 211
    :cond_a
    iget-boolean v0, p0, Lretrofit2/ServiceMethod$Builder;->o:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lretrofit2/ServiceMethod$Builder;->g:Z

    if-nez v0, :cond_b

    .line 212
    const-string v0, "Form-encoded method must contain at least one @Field."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lretrofit2/ServiceMethod$Builder;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 214
    :cond_b
    iget-boolean v0, p0, Lretrofit2/ServiceMethod$Builder;->p:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lretrofit2/ServiceMethod$Builder;->h:Z

    if-nez v0, :cond_c

    .line 215
    const-string v0, "Multipart method must contain at least one @Part."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lretrofit2/ServiceMethod$Builder;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 218
    :cond_c
    new-instance v0, Lretrofit2/ServiceMethod;

    invoke-direct {v0, p0}, Lretrofit2/ServiceMethod;-><init>(Lretrofit2/ServiceMethod$Builder;)V

    return-object v0
.end method
