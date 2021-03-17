.class public Lcom/umeng/message/util/HttpRequest;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/message/util/HttpRequest$e;,
        Lcom/umeng/message/util/HttpRequest$c;,
        Lcom/umeng/message/util/HttpRequest$b;,
        Lcom/umeng/message/util/HttpRequest$d;,
        Lcom/umeng/message/util/HttpRequest$HttpRequestException;,
        Lcom/umeng/message/util/HttpRequest$a;,
        Lcom/umeng/message/util/HttpRequest$ConnectionFactory;
    }
.end annotation


# static fields
.field private static final BOUNDARY:Ljava/lang/String; = "00content0boundary00"

.field public static final CHARSET_UTF8:Ljava/lang/String; = "UTF-8"

.field private static CONNECTION_FACTORY:Lcom/umeng/message/util/HttpRequest$ConnectionFactory; = null

.field public static final CONTENT_TYPE_FORM:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field public static final CONTENT_TYPE_JSON:Ljava/lang/String; = "application/json"

.field private static final CONTENT_TYPE_MULTIPART:Ljava/lang/String; = "multipart/form-data; boundary=00content0boundary00"

.field public static final CONTENT_TYPE_THRIFT:Ljava/lang/String; = "application/thrift"

.field private static final CRLF:Ljava/lang/String; = "\r\n"

.field private static final EMPTY_STRINGS:[Ljava/lang/String;

.field public static final ENCODING_GZIP:Ljava/lang/String; = "gzip"

.field public static final HEADER_ACCEPT:Ljava/lang/String; = "Accept"

.field public static final HEADER_ACCEPT_CHARSET:Ljava/lang/String; = "Accept-Charset"

.field public static final HEADER_ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field public static final HEADER_AUTHORIZATION:Ljava/lang/String; = "Authorization"

.field public static final HEADER_CACHE_CONTROL:Ljava/lang/String; = "Cache-Control"

.field public static final HEADER_CONTENT_ENCODING:Ljava/lang/String; = "Content-Encoding"

.field public static final HEADER_CONTENT_LENGTH:Ljava/lang/String; = "Content-Length"

.field public static final HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final HEADER_DATE:Ljava/lang/String; = "Date"

.field public static final HEADER_ETAG:Ljava/lang/String; = "ETag"

.field public static final HEADER_EXPIRES:Ljava/lang/String; = "Expires"

.field public static final HEADER_IF_NONE_MATCH:Ljava/lang/String; = "If-None-Match"

.field public static final HEADER_LAST_MODIFIED:Ljava/lang/String; = "Last-Modified"

.field public static final HEADER_LOCATION:Ljava/lang/String; = "Location"

.field public static final HEADER_PROXY_AUTHORIZATION:Ljava/lang/String; = "Proxy-Authorization"

.field public static final HEADER_REFERER:Ljava/lang/String; = "Referer"

.field public static final HEADER_SERVER:Ljava/lang/String; = "Server"

.field public static final HEADER_USER_AGENT:Ljava/lang/String; = "User-Agent"

.field public static final METHOD_DELETE:Ljava/lang/String; = "DELETE"

.field public static final METHOD_GET:Ljava/lang/String; = "GET"

.field public static final METHOD_HEAD:Ljava/lang/String; = "HEAD"

.field public static final METHOD_OPTIONS:Ljava/lang/String; = "OPTIONS"

.field public static final METHOD_POST:Ljava/lang/String; = "POST"

.field public static final METHOD_PUT:Ljava/lang/String; = "PUT"

.field public static final METHOD_TRACE:Ljava/lang/String; = "TRACE"

.field public static final PARAM_CHARSET:Ljava/lang/String; = "charset"

.field private static TRUSTED_FACTORY:Ljavax/net/ssl/SSLSocketFactory;

.field private static TRUSTED_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

.field private static connectTimeout:I

.field private static readTimeOut:I


# instance fields
.field private bufferSize:I

.field private connection:Ljava/net/HttpURLConnection;

.field private form:Z

.field private httpProxyHost:Ljava/lang/String;

.field private httpProxyPort:I

.field private ignoreCloseExceptions:Z

.field private multipart:Z

.field private output:Lcom/umeng/message/util/HttpRequest$e;

.field private final requestMethod:Ljava/lang/String;

.field private uncompress:Z

.field private final url:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const v1, 0xea60

    .line 253
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/umeng/message/util/HttpRequest;->EMPTY_STRINGS:[Ljava/lang/String;

    .line 259
    sput v1, Lcom/umeng/message/util/HttpRequest;->readTimeOut:I

    .line 261
    sput v1, Lcom/umeng/message/util/HttpRequest;->connectTimeout:I

    .line 388
    sget-object v0, Lcom/umeng/message/util/HttpRequest$ConnectionFactory;->DEFAULT:Lcom/umeng/message/util/HttpRequest$ConnectionFactory;

    sput-object v0, Lcom/umeng/message/util/HttpRequest;->CONNECTION_FACTORY:Lcom/umeng/message/util/HttpRequest$ConnectionFactory;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1335
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/message/util/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    .line 1347
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/message/util/HttpRequest;->ignoreCloseExceptions:Z

    .line 1349
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/message/util/HttpRequest;->uncompress:Z

    .line 1351
    const/16 v0, 0x2000

    iput v0, p0, Lcom/umeng/message/util/HttpRequest;->bufferSize:I

    .line 1367
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/umeng/message/util/HttpRequest;->url:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1371
    iput-object p2, p0, Lcom/umeng/message/util/HttpRequest;->requestMethod:Ljava/lang/String;

    .line 1372
    return-void

    .line 1368
    :catch_0
    move-exception v0

    .line 1369
    new-instance v1, Lcom/umeng/message/util/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/umeng/message/util/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1335
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/message/util/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    .line 1347
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/message/util/HttpRequest;->ignoreCloseExceptions:Z

    .line 1349
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/message/util/HttpRequest;->uncompress:Z

    .line 1351
    const/16 v0, 0x2000

    iput v0, p0, Lcom/umeng/message/util/HttpRequest;->bufferSize:I

    .line 1383
    iput-object p1, p0, Lcom/umeng/message/util/HttpRequest;->url:Ljava/net/URL;

    .line 1384
    iput-object p2, p0, Lcom/umeng/message/util/HttpRequest;->requestMethod:Ljava/lang/String;

    .line 1385
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    invoke-static {p0}, Lcom/umeng/message/util/HttpRequest;->getValidCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/umeng/message/util/HttpRequest;)I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/umeng/message/util/HttpRequest;->bufferSize:I

    return v0
.end method

.method private static addParamPrefix(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 5

    .prologue
    const/16 v4, 0x3f

    const/16 v3, 0x26

    .line 344
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 345
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 346
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 347
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 350
    :cond_0
    :goto_0
    return-object p1

    .line 348
    :cond_1
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v3, :cond_0

    .line 349
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static addPathSeparator(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 3

    .prologue
    const/16 v2, 0x2f

    .line 336
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 337
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 338
    :cond_0
    return-object p1
.end method

.method public static append(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map",
            "<**>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/16 v4, 0x3d

    .line 841
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 842
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 870
    :cond_0
    :goto_0
    return-object v0

    .line 845
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 847
    invoke-static {v0, v1}, Lcom/umeng/message/util/HttpRequest;->addPathSeparator(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 848
    invoke-static {v0, v1}, Lcom/umeng/message/util/HttpRequest;->addParamPrefix(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 852
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 853
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 854
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 856
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 857
    if-eqz v0, :cond_2

    .line 858
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 860
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 861
    const/16 v0, 0x26

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 862
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 863
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 864
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 865
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 866
    if-eqz v0, :cond_2

    .line 867
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 870
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static varargs append(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x3d

    .line 884
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 885
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 913
    :cond_0
    :goto_0
    return-object v0

    .line 888
    :cond_1
    array-length v1, p1

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 889
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify an even number of parameter names/values"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 892
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 894
    invoke-static {v0, v1}, Lcom/umeng/message/util/HttpRequest;->addPathSeparator(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 895
    invoke-static {v0, v1}, Lcom/umeng/message/util/HttpRequest;->addParamPrefix(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 898
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 899
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 900
    const/4 v0, 0x1

    aget-object v0, p1, v0

    .line 901
    if-eqz v0, :cond_3

    .line 902
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 904
    :cond_3
    const/4 v0, 0x2

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_5

    .line 905
    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 906
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 907
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 908
    add-int/lit8 v2, v0, 0x1

    aget-object v2, p1, v2

    .line 909
    if-eqz v2, :cond_4

    .line 910
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 904
    :cond_4
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 913
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private createConnection()Ljava/net/HttpURLConnection;
    .locals 3

    .prologue
    .line 1394
    :try_start_0
    iget-object v0, p0, Lcom/umeng/message/util/HttpRequest;->httpProxyHost:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1395
    sget-object v0, Lcom/umeng/message/util/HttpRequest;->CONNECTION_FACTORY:Lcom/umeng/message/util/HttpRequest$ConnectionFactory;

    iget-object v1, p0, Lcom/umeng/message/util/HttpRequest;->url:Ljava/net/URL;

    invoke-direct {p0}, Lcom/umeng/message/util/HttpRequest;->createProxy()Ljava/net/Proxy;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/umeng/message/util/HttpRequest$ConnectionFactory;->create(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 1398
    :goto_0
    iget-object v1, p0, Lcom/umeng/message/util/HttpRequest;->requestMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1399
    return-object v0

    .line 1397
    :cond_0
    sget-object v0, Lcom/umeng/message/util/HttpRequest;->CONNECTION_FACTORY:Lcom/umeng/message/util/HttpRequest$ConnectionFactory;

    iget-object v1, p0, Lcom/umeng/message/util/HttpRequest;->url:Ljava/net/URL;

    invoke-interface {v0, v1}, Lcom/umeng/message/util/HttpRequest$ConnectionFactory;->create(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1400
    :catch_0
    move-exception v0

    .line 1401
    new-instance v1, Lcom/umeng/message/util/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/umeng/message/util/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method private createProxy()Ljava/net/Proxy;
    .locals 5

    .prologue
    .line 1388
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lcom/umeng/message/util/HttpRequest;->httpProxyHost:Ljava/lang/String;

    iget v4, p0, Lcom/umeng/message/util/HttpRequest;->httpProxyPort:I

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    return-object v0
.end method

.method public static delete(Ljava/lang/CharSequence;)Lcom/umeng/message/util/HttpRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1099
    new-instance v0, Lcom/umeng/message/util/HttpRequest;

    const-string v1, "DELETE"

    invoke-direct {v0, p0, v1}, Lcom/umeng/message/util/HttpRequest;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static delete(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lcom/umeng/message/util/HttpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map",
            "<**>;Z)",
            "Lcom/umeng/message/util/HttpRequest;"
        }
    .end annotation

    .prologue
    .line 1125
    invoke-static {p0, p1}, Lcom/umeng/message/util/HttpRequest;->append(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 1126
    if-eqz p2, :cond_0

    invoke-static {v0}, Lcom/umeng/message/util/HttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lcom/umeng/message/util/HttpRequest;->delete(Ljava/lang/CharSequence;)Lcom/umeng/message/util/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public static varargs delete(Ljava/lang/CharSequence;Z[Ljava/lang/Object;)Lcom/umeng/message/util/HttpRequest;
    .locals 1

    .prologue
    .line 1142
    invoke-static {p0, p2}, Lcom/umeng/message/util/HttpRequest;->append(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1143
    if-eqz p1, :cond_0

    invoke-static {v0}, Lcom/umeng/message/util/HttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lcom/umeng/message/util/HttpRequest;->delete(Ljava/lang/CharSequence;)Lcom/umeng/message/util/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public static delete(Ljava/net/URL;)Lcom/umeng/message/util/HttpRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1110
    new-instance v0, Lcom/umeng/message/util/HttpRequest;

    const-string v1, "DELETE"

    invoke-direct {v0, p0, v1}, Lcom/umeng/message/util/HttpRequest;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method public static encode(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 805
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 810
    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 811
    invoke-virtual {v4}, Ljava/net/URL;->getPort()I

    move-result v0

    .line 812
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 813
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 816
    :cond_0
    :try_start_1
    new-instance v0, Ljava/net/URI;

    invoke-virtual {v4}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 817
    invoke-virtual {v4}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    .line 818
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 819
    if-lez v1, :cond_1

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 820
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    .line 821
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "+"

    const-string v3, "%2B"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 822
    :cond_1
    return-object v0

    .line 806
    :catch_0
    move-exception v0

    .line 807
    new-instance v1, Lcom/umeng/message/util/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/umeng/message/util/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 823
    :catch_1
    move-exception v0

    .line 824
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Parsing URI failed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 825
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 826
    new-instance v0, Lcom/umeng/message/util/HttpRequest$HttpRequestException;

    invoke-direct {v0, v1}, Lcom/umeng/message/util/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public static get(Ljava/lang/CharSequence;)Lcom/umeng/message/util/HttpRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 925
    new-instance v0, Lcom/umeng/message/util/HttpRequest;

    const-string v1, "GET"

    invoke-direct {v0, p0, v1}, Lcom/umeng/message/util/HttpRequest;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static get(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lcom/umeng/message/util/HttpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map",
            "<**>;Z)",
            "Lcom/umeng/message/util/HttpRequest;"
        }
    .end annotation

    .prologue
    .line 951
    invoke-static {p0, p1}, Lcom/umeng/message/util/HttpRequest;->append(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 952
    if-eqz p2, :cond_0

    invoke-static {v0}, Lcom/umeng/message/util/HttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lcom/umeng/message/util/HttpRequest;->get(Ljava/lang/CharSequence;)Lcom/umeng/message/util/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public static varargs get(Ljava/lang/CharSequence;Z[Ljava/lang/Object;)Lcom/umeng/message/util/HttpRequest;
    .locals 1

    .prologue
    .line 968
    invoke-static {p0, p2}, Lcom/umeng/message/util/HttpRequest;->append(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 969
    if-eqz p1, :cond_0

    invoke-static {v0}, Lcom/umeng/message/util/HttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lcom/umeng/message/util/HttpRequest;->get(Ljava/lang/CharSequence;)Lcom/umeng/message/util/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/net/URL;)Lcom/umeng/message/util/HttpRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 936
    new-instance v0, Lcom/umeng/message/util/HttpRequest;

    const-string v1, "GET"

    invoke-direct {v0, p0, v1}, Lcom/umeng/message/util/HttpRequest;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getTrustedVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .prologue
    .line 303
    sget-object v0, Lcom/umeng/message/util/HttpRequest;->TRUSTED_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    if-nez v0, :cond_0

    .line 304
    new-instance v0, Lcom/umeng/message/util/HttpRequest$1;

    invoke-direct {v0}, Lcom/umeng/message/util/HttpRequest$1;-><init>()V

    sput-object v0, Lcom/umeng/message/util/HttpRequest;->TRUSTED_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    .line 311
    :cond_0
    sget-object v0, Lcom/umeng/message/util/HttpRequest;->TRUSTED_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method private static getTrustedVerifier(Ljavax/net/ssl/HttpsURLConnection;)Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .prologue
    .line 315
    sget-object v0, Lcom/umeng/message/util/HttpRequest;->TRUSTED_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    if-nez v0, :cond_0

    .line 316
    new-instance v0, Lcom/umeng/message/util/HttpRequest$3;

    invoke-direct {v0, p0}, Lcom/umeng/message/util/HttpRequest$3;-><init>(Ljavax/net/ssl/HttpsURLConnection;)V

    sput-object v0, Lcom/umeng/message/util/HttpRequest;->TRUSTED_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    .line 327
    :cond_0
    sget-object v0, Lcom/umeng/message/util/HttpRequest;->TRUSTED_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method private static getValidCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 267
    :goto_0
    return-object p0

    :cond_0
    const-string p0, "UTF-8"

    goto :goto_0
.end method

.method public static head(Ljava/lang/CharSequence;)Lcom/umeng/message/util/HttpRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1155
    new-instance v0, Lcom/umeng/message/util/HttpRequest;

    const-string v1, "HEAD"

    invoke-direct {v0, p0, v1}, Lcom/umeng/message/util/HttpRequest;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static head(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lcom/umeng/message/util/HttpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map",
            "<**>;Z)",
            "Lcom/umeng/message/util/HttpRequest;"
        }
    .end annotation

    .prologue
    .line 1181
    invoke-static {p0, p1}, Lcom/umeng/message/util/HttpRequest;->append(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 1182
    if-eqz p2, :cond_0

    invoke-static {v0}, Lcom/umeng/message/util/HttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lcom/umeng/message/util/HttpRequest;->head(Ljava/lang/CharSequence;)Lcom/umeng/message/util/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public static varargs head(Ljava/lang/CharSequence;Z[Ljava/lang/Object;)Lcom/umeng/message/util/HttpRequest;
    .locals 1

    .prologue
    .line 1198
    invoke-static {p0, p2}, Lcom/umeng/message/util/HttpRequest;->append(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1199
    if-eqz p1, :cond_0

    invoke-static {v0}, Lcom/umeng/message/util/HttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lcom/umeng/message/util/HttpRequest;->head(Ljava/lang/CharSequence;)Lcom/umeng/message/util/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public static head(Ljava/net/URL;)Lcom/umeng/message/util/HttpRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1166
    new-instance v0, Lcom/umeng/message/util/HttpRequest;

    const-string v1, "HEAD"

    invoke-direct {v0, p0, v1}, Lcom/umeng/message/util/HttpRequest;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method public static keepAlive(Z)V
    .locals 2

    .prologue
    .line 1256
    const-string v0, "http.keepAlive"

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/util/HttpRequest;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1257
    return-void
.end method

.method public static varargs nonProxyHosts([Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 1296
    if-eqz p0, :cond_1

    array-length v0, p0

    if-lez v0, :cond_1

    .line 1297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1298
    array-length v0, p0

    add-int/lit8 v2, v0, -0x1

    .line 1299
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 1300
    aget-object v3, p0, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x7c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1299
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1301
    :cond_0
    aget-object v0, p0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1302
    const-string v0, "http.nonProxyHosts"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/util/HttpRequest;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1305
    :goto_1
    return-void

    .line 1304
    :cond_1
    const-string v0, "http.nonProxyHosts"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/message/util/HttpRequest;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1
.end method

.method public static options(Ljava/lang/CharSequence;)Lcom/umeng/message/util/HttpRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1211
    new-instance v0, Lcom/umeng/message/util/HttpRequest;

    const-string v1, "OPTIONS"

    invoke-direct {v0, p0, v1}, Lcom/umeng/message/util/HttpRequest;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static options(Ljava/net/URL;)Lcom/umeng/message/util/HttpRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1222
    new-instance v0, Lcom/umeng/message/util/HttpRequest;

    const-string v1, "OPTIONS"

    invoke-direct {v0, p0, v1}, Lcom/umeng/message/util/HttpRequest;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method public static post(Ljava/lang/CharSequence;)Lcom/umeng/message/util/HttpRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 981
    new-instance v0, Lcom/umeng/message/util/HttpRequest;

    const-string v1, "POST"

    invoke-direct {v0, p0, v1}, Lcom/umeng/message/util/HttpRequest;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 982
    invoke-virtual {v0}, Lcom/umeng/message/util/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v1

    sget v2, Lcom/umeng/message/util/HttpRequest;->connectTimeout:I

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 983
    invoke-virtual {v0}, Lcom/umeng/message/util/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v1

    sget v2, Lcom/umeng/message/util/HttpRequest;->readTimeOut:I

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 984
    return-object v0
.end method

.method public static post(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lcom/umeng/message/util/HttpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map",
            "<**>;Z)",
            "Lcom/umeng/message/util/HttpRequest;"
        }
    .end annotation

    .prologue
    .line 1013
    invoke-static {p0, p1}, Lcom/umeng/message/util/HttpRequest;->append(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 1014
    if-eqz p2, :cond_0

    invoke-static {v0}, Lcom/umeng/message/util/HttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lcom/umeng/message/util/HttpRequest;->post(Ljava/lang/CharSequence;)Lcom/umeng/message/util/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public static varargs post(Ljava/lang/CharSequence;Z[Ljava/lang/Object;)Lcom/umeng/message/util/HttpRequest;
    .locals 1

    .prologue
    .line 1030
    invoke-static {p0, p2}, Lcom/umeng/message/util/HttpRequest;->append(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1031
    if-eqz p1, :cond_0

    invoke-static {v0}, Lcom/umeng/message/util/HttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lcom/umeng/message/util/HttpRequest;->post(Ljava/lang/CharSequence;)Lcom/umeng/message/util/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public static post(Ljava/net/URL;)Lcom/umeng/message/util/HttpRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 995
    new-instance v0, Lcom/umeng/message/util/HttpRequest;

    const-string v1, "POST"

    invoke-direct {v0, p0, v1}, Lcom/umeng/message/util/HttpRequest;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 996
    invoke-virtual {v0}, Lcom/umeng/message/util/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v1

    sget v2, Lcom/umeng/message/util/HttpRequest;->connectTimeout:I

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 997
    invoke-virtual {v0}, Lcom/umeng/message/util/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v1

    sget v2, Lcom/umeng/message/util/HttpRequest;->readTimeOut:I

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 998
    return-object v0
.end method

.method public static proxyHost(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1268
    const-string v0, "http.proxyHost"

    invoke-static {v0, p0}, Lcom/umeng/message/util/HttpRequest;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1269
    const-string v0, "https.proxyHost"

    invoke-static {v0, p0}, Lcom/umeng/message/util/HttpRequest;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1270
    return-void
.end method

.method public static proxyPort(I)V
    .locals 2

    .prologue
    .line 1281
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1282
    const-string v1, "http.proxyPort"

    invoke-static {v1, v0}, Lcom/umeng/message/util/HttpRequest;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1283
    const-string v1, "https.proxyPort"

    invoke-static {v1, v0}, Lcom/umeng/message/util/HttpRequest;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1284
    return-void
.end method

.method public static put(Ljava/lang/CharSequence;)Lcom/umeng/message/util/HttpRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1043
    new-instance v0, Lcom/umeng/message/util/HttpRequest;

    const-string v1, "PUT"

    invoke-direct {v0, p0, v1}, Lcom/umeng/message/util/HttpRequest;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static put(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lcom/umeng/message/util/HttpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map",
            "<**>;Z)",
            "Lcom/umeng/message/util/HttpRequest;"
        }
    .end annotation

    .prologue
    .line 1069
    invoke-static {p0, p1}, Lcom/umeng/message/util/HttpRequest;->append(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 1070
    if-eqz p2, :cond_0

    invoke-static {v0}, Lcom/umeng/message/util/HttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lcom/umeng/message/util/HttpRequest;->put(Ljava/lang/CharSequence;)Lcom/umeng/message/util/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public static varargs put(Ljava/lang/CharSequence;Z[Ljava/lang/Object;)Lcom/umeng/message/util/HttpRequest;
    .locals 1

    .prologue
    .line 1086
    invoke-static {p0, p2}, Lcom/umeng/message/util/HttpRequest;->append(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1087
    if-eqz p1, :cond_0

    invoke-static {v0}, Lcom/umeng/message/util/HttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lcom/umeng/message/util/HttpRequest;->put(Ljava/lang/CharSequence;)Lcom/umeng/message/util/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public static put(Ljava/net/URL;)Lcom/umeng/message/util/HttpRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1054
    new-instance v0, Lcom/umeng/message/util/HttpRequest;

    const-string v1, "PUT"

    invoke-direct {v0, p0, v1}, Lcom/umeng/message/util/HttpRequest;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method public static setConnectionFactory(Lcom/umeng/message/util/HttpRequest$ConnectionFactory;)V
    .locals 1

    .prologue
    .line 394
    if-nez p0, :cond_0

    .line 395
    sget-object v0, Lcom/umeng/message/util/HttpRequest$ConnectionFactory;->DEFAULT:Lcom/umeng/message/util/HttpRequest$ConnectionFactory;

    sput-object v0, Lcom/umeng/message/util/HttpRequest;->CONNECTION_FACTORY:Lcom/umeng/message/util/HttpRequest$ConnectionFactory;

    .line 398
    :goto_0
    return-void

    .line 397
    :cond_0
    sput-object p0, Lcom/umeng/message/util/HttpRequest;->CONNECTION_FACTORY:Lcom/umeng/message/util/HttpRequest$ConnectionFactory;

    goto :goto_0
.end method

.method private static setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1318
    if-eqz p1, :cond_0

    .line 1319
    new-instance v0, Lcom/umeng/message/util/HttpRequest$4;

    invoke-direct {v0, p0, p1}, Lcom/umeng/message/util/HttpRequest$4;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1332
    :goto_0
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1326
    :cond_0
    new-instance v0, Lcom/umeng/message/util/HttpRequest$5;

    invoke-direct {v0, p0}, Lcom/umeng/message/util/HttpRequest$5;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static trace(Ljava/lang/CharSequence;)Lcom/umeng/message/util/HttpRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1234
    new-instance v0, Lcom/umeng/message/util/HttpRequest;

    const-string v1, "TRACE"

    invoke-direct {v0, p0, v1}, Lcom/umeng/message/util/HttpRequest;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static trace(Ljava/net/URL;)Lcom/umeng/message/util/HttpRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1245
    new-instance v0, Lcom/umeng/message/util/HttpRequest;

    const-string v1, "TRACE"

    invoke-direct {v0, p0, v1}, Lcom/umeng/message/util/HttpRequest;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/String;)Lcom/umeng/message/util/HttpRequest;
    .locals 1

    .prologue
    .line 2471
    const-string v0, "Accept"

    invoke-virtual {p0, v0, p1}, Lcom/umeng/message/util/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/util/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public acceptCharset(Ljava/lang/String;)Lcom/umeng/message/util/HttpRequest;
    .locals 1

    .prologue
    .line 2260
    const-string v0, "Accept-Charset"

    invoke-virtual {p0, v0, p1}, Lcom/umeng/message/util/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/util/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public acceptEncoding(Ljava/lang/String;)Lcom/umeng/message/util/HttpRequest;
    .locals 1

    .prologue
    .line 2240
    const-string v0, "Accept-Encoding"

    invoke-virtual {p0, v0, p1}, Lcom/umeng/message/util/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/util/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public acceptGzipEncoding()Lcom/umeng/message/util/HttpRequest;
    .locals 1

    .prologue
    .line 2250
    const-string v0, "gzip"

    invoke-virtual {p0, v0}, Lcom/umeng/message/util/HttpRequest;->acceptEncoding(Ljava/lang/String;)Lcom/umeng/message/util/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public acceptJson()Lcom/umeng/message/util/HttpRequest;
    .locals 1

    .prologue
    .line 2480
    const-string v0, "application/json"

    invoke-virtual {p0, v0}, Lcom/umeng/message/util/HttpRequest;->accept(Ljava/lang/String;)Lcom/umeng/message/util/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public authorization(Ljava/lang/String;)Lcom/umeng/message/util/HttpRequest;
    .locals 1

    .prologue
    .line 2342
    const-string v0, "Authorization"

    invoke-virtual {p0, v0, p1}, Lcom/umeng/message/util/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/util/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public badRequest()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1511
    const/16 v0, 0x190

    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest;->code()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public basic(Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/util/HttpRequest;
    .locals 3

    .prologue
    .line 2364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Basic "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/message/util/HttpRequest$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/umeng/message/util/HttpRequest;->authorization(Ljava/lang/String;)Lcom/umeng/message/util/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public body(Ljava/util/concurrent/atomic/AtomicReference;)Lcom/umeng/message/util/HttpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/umeng/message/util/HttpRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1675
    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest;->body()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1676
    return-object p0
.end method

.method public body(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;)Lcom/umeng/message/util/HttpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/umeng/message/util/HttpRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1689
    invoke-virtual {p0, p2}, Lcom/umeng/message/util/HttpRequest;->body(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1690
    return-object p0
.end method

.method public body()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1663
    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest;->charset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/umeng/message/util/HttpRequest;->body(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public body(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1646
    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest;->byteStream()Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 1648
    :try_start_0
    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest;->buffer()Ljava/io/BufferedInputStream;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/umeng/message/util/HttpRequest;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/umeng/message/util/HttpRequest;

    .line 1649
    invoke-static {p1}, Lcom/umeng/message/util/HttpRequest;->getValidCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 1650
    :catch_0
    move-exception v0

    .line 1651
    new-instance v1, Lcom/umeng/message/util/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/umeng/message/util/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public buffer()Ljava/io/BufferedInputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1728
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest;->stream()Ljava/io/InputStream;

    move-result-object v1

    iget v2, p0, Lcom/umeng/message/util/HttpRequest;->bufferSize:I

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    return-object v0
.end method

.method public bufferSize()I
    .locals 1

    .prologue
    .line 1596
    iget v0, p0, Lcom/umeng/message/util/HttpRequest;->bufferSize:I

    return v0
.end method

.method public bufferSize(I)Lcom/umeng/message/util/HttpRequest;
    .locals 2

    .prologue
    .line 1582
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 1583
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Size must be greater than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1584
    :cond_0
    iput p1, p0, Lcom/umeng/message/util/HttpRequest;->bufferSize:I

    .line 1585
    return-object p0
.end method

.method public bufferedReader()Ljava/io/BufferedReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1818
    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest;->charset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/umeng/message/util/HttpRequest;->bufferedReader(Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object v0

    return-object v0
.end method

.method public bufferedReader(Ljava/lang/String;)Ljava/io/BufferedReader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1806
    new-instance v0, Ljava/io/BufferedReader;

    invoke-virtual {p0, p1}, Lcom/umeng/message/util/HttpRequest;->reader(Ljava/lang/String;)Ljava/io/InputStreamReader;

    move-result-object v1

    iget v2, p0, Lcom/umeng/message/util/HttpRequest;->bufferSize:I

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    return-object v0
.end method

.method protected byteStream()Ljava/io/ByteArrayOutputStream;
    .locals 2

    .prologue
    .line 1628
    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest;->contentLength()I

    move-result v1

    .line 1629
    if-lez v1, :cond_0

    .line 1630
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1632
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    goto :goto_0
.end method

.method public bytes()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1711
    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest;->byteStream()Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 1713
    :try_start_0
    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest;->buffer()Ljava/io/BufferedInputStream;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/umeng/message/util/HttpRequest;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/umeng/message/util/HttpRequest;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1717
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 1714
    :catch_0
    move-exception v0

    .line 1715
    new-instance v1, Lcom/umeng/message/util/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/umeng/message/util/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public cacheControl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2296
    const-string v0, "Cache-Control"

    invoke-virtual {p0, v0}, Lcom/umeng/message/util/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public charset()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2199
    const-string v0, "Content-Type"

    const-string v1, "charset"

    invoke-virtual {p0, v0, v1}, Lcom/umeng/message/util/HttpRequest;->parameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public chunk(I)Lcom/umeng/message/util/HttpRequest;
    .locals 1

    .prologue
    .line 1566
    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 1567
    return-object p0
.end method

.method protected closeOutput()Lcom/umeng/message/util/HttpRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2537
    iget-object v0, p0, Lcom/umeng/message/util/HttpRequest;->output:Lcom/umeng/message/util/HttpRequest$e;

    if-nez v0, :cond_0

    .line 2550
    :goto_0
    return-object p0

    .line 2539
    :cond_0
    iget-boolean v0, p0, Lcom/umeng/message/util/HttpRequest;->multipart:Z

    if-eqz v0, :cond_1

    .line 2540
    iget-object v0, p0, Lcom/umeng/message/util/HttpRequest;->output:Lcom/umeng/message/util/HttpRequest$e;

    const-string v1, "\r\n--00content0boundary00--\r\n"

    invoke-virtual {v0, v1}, Lcom/umeng/message/util/HttpRequest$e;->a(Ljava/lang/String;)Lcom/umeng/message/util/HttpRequest$e;

    .line 2541
    :cond_1
    iget-boolean v0, p0, Lcom/umeng/message/util/HttpRequest;->ignoreCloseExceptions:Z

    if-eqz v0, :cond_2

    .line 2543
    :try_start_0
    iget-object v0, p0, Lcom/umeng/message/util/HttpRequest;->output:Lcom/umeng/message/util/HttpRequest$e;

    invoke-virtual {v0}, Lcom/umeng/message/util/HttpRequest$e;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2549
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/message/util/HttpRequest;->output:Lcom/umeng/message/util/HttpRequest$e;

    goto :goto_0

    .line 2548
    :cond_2
    iget-object v0, p0, Lcom/umeng/message/util/HttpRequest;->output:Lcom/umeng/message/util/HttpRequest$e;

    invoke-virtual {v0}, Lcom/umeng/message/util/HttpRequest$e;->close()V

    goto :goto_1

    .line 2544
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected closeOutputQuietly()Lcom/umeng/message/util/HttpRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2562
    :try_start_0
    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest;->closeOutput()Lcom/umeng/message/util/HttpRequest;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 2563
    :catch_0
    move-exception v0

    .line 2564
    new-instance v1, Lcom/umeng/message/util/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/umeng/message/util/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public code()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1453
    :try_start_0
    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest;->closeOutput()Lcom/umeng/message/util/HttpRequest;

    .line 1454
    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 1455
    :catch_0
    move-exception v0

    .line 1456
    new-instance v1, Lcom/umeng/message/util/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/umeng/message/util/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public code(Ljava/util/concurrent/atomic/AtomicInteger;)Lcom/umeng/message/util/HttpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1470
    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest;->code()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1471
    return-object p0
.end method

.method public connectTimeout(I)Lcom/umeng/message/util/HttpRequest;
    .locals 1

    .prologue
    .line 1934
    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1935
    return-object p0
.end method

.method public contentEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2269
    const-string v0, "Content-Encoding"

    invoke-virtual {p0, v0}, Lcom/umeng/message/util/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public contentLength()I
    .locals 1

    .prologue
    .line 2440
    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Lcom/umeng/message/util/HttpRequest;->intHeader(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public contentLength(I)Lcom/umeng/message/util/HttpRequest;
    .locals 1

    .prologue
    .line 2460
    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 2461
    return-object p0
.end method

.method public contentLength(Ljava/lang/String;)Lcom/umeng/message/util/HttpRequest;
    .locals 1

    .prologue
    .line 2450
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/message/util/HttpRequest;->contentLength(I)Lcom/umeng/message/util/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public contentType(Ljava/lang/String;)Lcom/umeng/message/util/HttpRequest;
    .locals 1

    .prologue
    .line 2407
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/umeng/message/util/HttpRequest;->contentType(Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/util/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public contentType(Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/util/HttpRequest;
    .locals 3

    .prologue
    .line 2418
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2419
    const-string v0, "; charset="

    .line 2420
    const-string v0, "Content-Type"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; charset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/umeng/message/util/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/util/HttpRequest;

    move-result-object v0

    .line 2422
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Content-Type"

    invoke-virtual {p0, v0, p1}, Lcom/umeng/message/util/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/util/HttpRequest;

    move-result-object v0

    goto :goto_0
.end method

.method public contentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2431
    const-string v0, "Content-Type"

    invoke-virtual {p0, v0}, Lcom/umeng/message/util/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/umeng/message/util/HttpRequest;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2493
    new-instance v0, Lcom/umeng/message/util/HttpRequest$9;

    iget-boolean v3, p0, Lcom/umeng/message/util/HttpRequest;->ignoreCloseExceptions:Z

    move-object v1, p0

    move-object v2, p1

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/umeng/message/util/HttpRequest$9;-><init>(Lcom/umeng/message/util/HttpRequest;Ljava/io/Closeable;ZLjava/io/InputStream;Ljava/io/OutputStream;)V

    .line 2503
    invoke-virtual {v0}, Lcom/umeng/message/util/HttpRequest$9;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/util/HttpRequest;

    .line 2493
    return-object v0
.end method

.method protected copy(Ljava/io/Reader;Ljava/io/Writer;)Lcom/umeng/message/util/HttpRequest;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2516
    new-instance v0, Lcom/umeng/message/util/HttpRequest$10;

    iget-boolean v3, p0, Lcom/umeng/message/util/HttpRequest;->ignoreCloseExceptions:Z

    move-object v1, p0

    move-object v2, p1

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/umeng/message/util/HttpRequest$10;-><init>(Lcom/umeng/message/util/HttpRequest;Ljava/io/Closeable;ZLjava/io/Reader;Ljava/io/Writer;)V

    .line 2526
    invoke-virtual {v0}, Lcom/umeng/message/util/HttpRequest$10;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/util/HttpRequest;

    .line 2516
    return-object v0
.end method

.method public created()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1491
    const/16 v0, 0xc9

    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest;->code()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public date()J
    .locals 2

    .prologue
    .line 2287
    const-string v0, "Date"

    invoke-virtual {p0, v0}, Lcom/umeng/message/util/HttpRequest;->dateHeader(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public dateHeader(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2017
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/umeng/message/util/HttpRequest;->dateHeader(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public dateHeader(Ljava/lang/String;J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2031
    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest;->closeOutputQuietly()Lcom/umeng/message/util/HttpRequest;

    .line 2032
    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/HttpURLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public disconnect()Lcom/umeng/message/util/HttpRequest;
    .locals 1

    .prologue
    .line 1555
    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1556
    return-object p0
.end method

.method public eTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2305
    const-string v0, "ETag"

    invoke-virtual {p0, v0}, Lcom/umeng/message/util/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public expires()J
    .locals 2

    .prologue
    .line 2314
    const-string v0, "Expires"

    invoke-virtual {p0, v0}, Lcom/umeng/message/util/HttpRequest;->dateHeader(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public followRedirects(Z)Lcom/umeng/message/util/HttpRequest;
    .locals 0

    .prologue
    .line 3109
    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    invoke-static {p1}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 3110
    return-object p0
.end method

.method public form(Ljava/lang/Object;Ljava/lang/Object;)Lcom/umeng/message/util/HttpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2972
    const-string v0, "UTF-8"

    invoke-virtual {p0, p1, p2, v0}, Lcom/umeng/message/util/HttpRequest;->form(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lcom/umeng/message/util/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public form(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lcom/umeng/message/util/HttpRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 2989
    iget-boolean v0, p0, Lcom/umeng/message/util/HttpRequest;->form:Z

    if-nez v0, :cond_3

    move v0, v1

    .line 2990
    :goto_0
    if-eqz v0, :cond_0

    .line 2991
    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {p0, v2, p3}, Lcom/umeng/message/util/HttpRequest;->contentType(Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/util/HttpRequest;

    .line 2992
    iput-boolean v1, p0, Lcom/umeng/message/util/HttpRequest;->form:Z

    .line 2994
    :cond_0
    invoke-static {p3}, Lcom/umeng/message/util/HttpRequest;->getValidCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2996
    :try_start_0
    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest;->openOutput()Lcom/umeng/message/util/HttpRequest;

    .line 2997
    if-nez v0, :cond_1

    .line 2998
    iget-object v0, p0, Lcom/umeng/message/util/HttpRequest;->output:Lcom/umeng/message/util/HttpRequest$e;

    const/16 v2, 0x26

    invoke-virtual {v0, v2}, Lcom/umeng/message/util/HttpRequest$e;->write(I)V

    .line 2999
    :cond_1
    iget-object v0, p0, Lcom/umeng/message/util/HttpRequest;->output:Lcom/umeng/message/util/HttpRequest$e;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/umeng/message/util/HttpRequest$e;->a(Ljava/lang/String;)Lcom/umeng/message/util/HttpRequest$e;

    .line 3000
    iget-object v0, p0, Lcom/umeng/message/util/HttpRequest;->output:Lcom/umeng/message/util/HttpRequest$e;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Lcom/umeng/message/util/HttpRequest$e;->write(I)V

    .line 3001
    if-eqz p2, :cond_2

    .line 3002
    iget-object v0, p0, Lcom/umeng/message/util/HttpRequest;->output:Lcom/umeng/message/util/HttpRequest$e;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/message/util/HttpRequest$e;->a(Ljava/lang/String;)Lcom/umeng/message/util/HttpRequest$e;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3006
    :cond_2
    return-object p0

    .line 2989
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 3003
    :catch_0
    move-exception v0

    .line 3004
    new-instance v1, Lcom/umeng/message/util/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/umeng/message/util/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public form(Ljava/util/Map$Entry;)Lcom/umeng/message/util/HttpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<**>;)",
            "Lcom/umeng/message/util/HttpRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2940
    const-string v0, "UTF-8"

    invoke-virtual {p0, p1, v0}, Lcom/umeng/message/util/HttpRequest;->form(Ljava/util/Map$Entry;Ljava/lang/String;)Lcom/umeng/message/util/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public form(Ljava/util/Map$Entry;Ljava/lang/String;)Lcom/umeng/message/util/HttpRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<**>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/umeng/message/util/HttpRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2956
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/umeng/message/util/HttpRequest;->form(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lcom/umeng/message/util/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public form(Ljava/util/Map;)Lcom/umeng/message/util/HttpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)",
            "Lcom/umeng/message/util/HttpRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2926
    const-string v0, "UTF-8"

    invoke-virtual {p0, p1, v0}, Lcom/umeng/message/util/HttpRequest;->form(Ljava/util/Map;Ljava/lang/String;)Lcom/umeng/message/util/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public form(Ljava/util/Map;Ljava/lang/String;)Lcom/umeng/message/util/HttpRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/umeng/message/util/HttpRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 3019
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3020
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3021
    invoke-virtual {p0, v0, p2}, Lcom/umeng/message/util/HttpRequest;->form(Ljava/util/Map$Entry;Ljava/lang/String;)Lcom/umeng/message/util/HttpRequest;

    goto :goto_0

    .line 3022
    :cond_0
    return-object p0
.end method

.method public getConnection()Ljava/net/HttpURLConnection;
    .locals 1

    .prologue
    .line 1416
    iget-object v0, p0, Lcom/umeng/message/util/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    .line 1417
    invoke-direct {p0}, Lcom/umeng/message/util/HttpRequest;->createConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/util/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    .line 1418
    :cond_0
    iget-object v0, p0, Lcom/umeng/message/util/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method protected getParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v7, 0x22

    const/4 v2, 0x0

    const/16 v6, 0x3b

    const/4 v5, -0x1

    .line 2158
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move-object v0, v2

    .line 2190
    :cond_1
    :goto_0
    return-object v0

    .line 2161
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 2162
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    .line 2163
    if-eqz v3, :cond_3

    if-ne v3, v1, :cond_4

    :cond_3
    move-object v0, v2

    .line 2164
    goto :goto_0

    .line 2166
    :cond_4
    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 2167
    if-ne v0, v5, :cond_8

    move v0, v3

    move v3, v1

    .line 2170
    :goto_1
    if-ge v0, v3, :cond_7

    .line 2171
    const/16 v4, 0x3d

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 2172
    if-eq v4, v5, :cond_5

    if-ge v4, v3, :cond_5

    .line 2173
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2174
    add-int/lit8 v0, v4, 0x1

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2175
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    .line 2176
    if-eqz v4, :cond_5

    .line 2177
    const/4 v1, 0x2

    if-le v4, v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v7, v1, :cond_1

    add-int/lit8 v1, v4, -0x1

    .line 2178
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v7, v1, :cond_1

    .line 2179
    const/4 v1, 0x1

    add-int/lit8 v2, v4, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2184
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 2185
    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 2186
    if-ne v0, v5, :cond_6

    move v0, v1

    :cond_6
    move v8, v0

    move v0, v3

    move v3, v8

    .line 2188
    goto :goto_1

    :cond_7
    move-object v0, v2

    .line 2190
    goto :goto_0

    :cond_8
    move v8, v0

    move v0, v3

    move v3, v8

    goto :goto_1
.end method

.method protected getParams(Ljava/lang/String;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v9, 0x22

    const/16 v8, 0x3b

    const/4 v7, -0x1

    .line 2112
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 2113
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 2147
    :goto_0
    return-object v0

    .line 2115
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 2116
    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    .line 2117
    if-eqz v3, :cond_2

    if-ne v3, v1, :cond_3

    .line 2118
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 2120
    :cond_3
    invoke-virtual {p1, v8, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 2121
    if-ne v0, v7, :cond_4

    move v0, v1

    .line 2124
    :cond_4
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2125
    :cond_5
    :goto_1
    if-ge v3, v0, :cond_8

    .line 2126
    const/16 v4, 0x3d

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 2127
    if-eq v4, v7, :cond_6

    if-ge v4, v0, :cond_6

    .line 2128
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 2129
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_6

    .line 2130
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 2131
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .line 2132
    if-eqz v5, :cond_6

    .line 2133
    const/4 v6, 0x2

    if-le v5, v6, :cond_7

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v9, v6, :cond_7

    add-int/lit8 v6, v5, -0x1

    .line 2134
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v9, v6, :cond_7

    .line 2135
    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2141
    :cond_6
    :goto_2
    add-int/lit8 v3, v0, 0x1

    .line 2142
    invoke-virtual {p1, v8, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 2143
    if-ne v0, v7, :cond_5

    move v0, v1

    .line 2144
    goto :goto_1

    .line 2137
    :cond_7
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_8
    move-object v0, v2

    .line 2147
    goto :goto_0
.end method

.method public header(Ljava/lang/String;Ljava/lang/Number;)Lcom/umeng/message/util/HttpRequest;
    .locals 1

    .prologue
    .line 1958
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/umeng/message/util/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/util/HttpRequest;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/util/HttpRequest;
    .locals 1

    .prologue
    .line 1946
    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1947
    return-object p0
.end method

.method public header(Ljava/util/Map$Entry;)Lcom/umeng/message/util/HttpRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/umeng/message/util/HttpRequest;"
        }
    .end annotation

    .prologue
    .line 1982
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/umeng/message/util/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/util/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public header(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1993
    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest;->closeOutputQuietly()Lcom/umeng/message/util/HttpRequest;

    .line 1994
    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public headers(Ljava/util/Map;)Lcom/umeng/message/util/HttpRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/umeng/message/util/HttpRequest;"
        }
    .end annotation

    .prologue
    .line 1969
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1970
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1971
    invoke-virtual {p0, v0}, Lcom/umeng/message/util/HttpRequest;->header(Ljava/util/Map$Entry;)Lcom/umeng/message/util/HttpRequest;

    goto :goto_0

    .line 1972
    :cond_0
    return-object p0
.end method

.method public headers()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2004
    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest;->closeOutputQuietly()Lcom/umeng/message/util/HttpRequest;

    .line 2005
    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public headers(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .prologue
    .line 2070
    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest;->headers()Ljava/util/Map;

    move-result-object v0

    .line 2071
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2072
    :cond_0
    sget-object v0, Lcom/umeng/message/util/HttpRequest;->EMPTY_STRINGS:[Ljava/lang/String;

    .line 2078
    :goto_0
    return-object v0

    .line 2074
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2075
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2076
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0

    .line 2078
    :cond_2
    sget-object v0, Lcom/umeng/message/util/HttpRequest;->EMPTY_STRINGS:[Ljava/lang/String;

    goto :goto_0
.end method

.method public ifModifiedSince(J)Lcom/umeng/message/util/HttpRequest;
    .locals 1

    .prologue
    .line 2386
    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setIfModifiedSince(J)V

    .line 2387
    return-object p0
.end method

.method public ifNoneMatch(Ljava/lang/String;)Lcom/umeng/message/util/HttpRequest;
    .locals 1

    .prologue
    .line 2397
    const-string v0, "If-None-Match"

    invoke-virtual {p0, v0, p1}, Lcom/umeng/message/util/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/util/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public ignoreCloseExceptions(Z)Lcom/umeng/message/util/HttpRequest;
    .locals 0

    .prologue
    .line 1431
    iput-boolean p1, p0, Lcom/umeng/message/util/HttpRequest;->ignoreCloseExceptions:Z

    .line 1432
    return-object p0
.end method

.method public ignoreCloseExceptions()Z
    .locals 1

    .prologue
    .line 1442
    iget-boolean v0, p0, Lcom/umeng/message/util/HttpRequest;->ignoreCloseExceptions:Z

    return v0
.end method

.method public intHeader(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2044
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/umeng/message/util/HttpRequest;->intHeader(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public intHeader(Ljava/lang/String;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2059
    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest;->closeOutputQuietly()Lcom/umeng/message/util/HttpRequest;

    .line 2060
    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isBodyEmpty()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1701
    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest;->contentLength()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lastModified()J
    .locals 2

    .prologue
    .line 2323
    const-string v0, "Last-Modified"

    invoke-virtual {p0, v0}, Lcom/umeng/message/util/HttpRequest;->dateHeader(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public location()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2332
    const-string v0, "Location"

    invoke-virtual {p0, v0}, Lcom/umeng/message/util/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public message()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1542
    :try_start_0
    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest;->closeOutput()Lcom/umeng/message/util/HttpRequest;

    .line 1543
    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 1544
    :catch_0
    move-exception v0

    .line 1545
    new-instance v1, Lcom/umeng/message/util/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/umeng/message/util/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public method()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3081
    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public notFound()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1521
    const/16 v0, 0x194

    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest;->code()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notModified()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1531
    const/16 v0, 0x130

    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest;->code()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ok()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1481
    const/16 v0, 0xc8

    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest;->code()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected openOutput()Lcom/umeng/message/util/HttpRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2575
    iget-object v0, p0, Lcom/umeng/message/util/HttpRequest;->output:Lcom/umeng/message/util/HttpRequest$e;

    if-eqz v0, :cond_0

    .line 2582
    :goto_0
    return-object p0

    .line 2577
    :cond_0
    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 2579
    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "charset"

    .line 2578
    invoke-virtual {p0, v0, v1}, Lcom/umeng/message/util/HttpRequest;->getParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2580
    new-instance v1, Lcom/umeng/message/util/HttpRequest$e;

    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iget v3, p0, Lcom/umeng/message/util/HttpRequest;->bufferSize:I

    invoke-direct {v1, v2, v0, v3}, Lcom/umeng/message/util/HttpRequest$e;-><init>(Ljava/io/OutputStream;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/umeng/message/util/HttpRequest;->output:Lcom/umeng/message/util/HttpRequest$e;

    goto :goto_0
.end method

.method public parameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 2089
    invoke-virtual {p0, p1}, Lcom/umeng/message/util/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/umeng/message/util/HttpRequest;->getParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parameters(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2102
    invoke-virtual {p0, p1}, Lcom/umeng/message/util/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/umeng/message/util/HttpRequest;->getParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public part(Ljava/lang/String;Ljava/io/File;)Lcom/umeng/message/util/HttpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2720
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/umeng/message/util/HttpRequest;->part(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/umeng/message/util/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public part(Ljava/lang/String;Ljava/io/InputStream;)Lcom/umeng/message/util/HttpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2768
    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/umeng/message/util/HttpRequest;->part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lcom/umeng/message/util/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public part(Ljava/lang/String;Ljava/lang/Number;)Lcom/umeng/message/util/HttpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2693
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/umeng/message/util/HttpRequest;->part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)Lcom/umeng/message/util/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public part(Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/util/HttpRequest;
    .locals 1

    .prologue
    .line 2644
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/umeng/message/util/HttpRequest;->part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/util/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public part(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/umeng/message/util/HttpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2734
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/umeng/message/util/HttpRequest;->part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/umeng/message/util/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)Lcom/umeng/message/util/HttpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2707
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/umeng/message/util/HttpRequest;->part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/util/HttpRequest;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/util/HttpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2658
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/umeng/message/util/HttpRequest;->part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/util/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/umeng/message/util/HttpRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2751
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2755
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/umeng/message/util/HttpRequest;->part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lcom/umeng/message/util/HttpRequest;

    move-result-object v0

    return-object v0

    .line 2752
    :catch_0
    move-exception v0

    .line 2753
    new-instance v1, Lcom/umeng/message/util/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/umeng/message/util/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lcom/umeng/message/util/HttpRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2785
    :try_start_0
    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest;->startPart()Lcom/umeng/message/util/HttpRequest;

    .line 2786
    invoke-virtual {p0, p1, p2, p3}, Lcom/umeng/message/util/HttpRequest;->writePartHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/util/HttpRequest;

    .line 2787
    iget-object v0, p0, Lcom/umeng/message/util/HttpRequest;->output:Lcom/umeng/message/util/HttpRequest$e;

    invoke-virtual {p0, p4, v0}, Lcom/umeng/message/util/HttpRequest;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/umeng/message/util/HttpRequest;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2791
    return-object p0

    .line 2788
    :catch_0
    move-exception v0

    .line 2789
    new-instance v1, Lcom/umeng/message/util/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/umeng/message/util/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/util/HttpRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2674
    :try_start_0
    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest;->startPart()Lcom/umeng/message/util/HttpRequest;

    .line 2675
    invoke-virtual {p0, p1, p2, p3}, Lcom/umeng/message/util/HttpRequest;->writePartHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/util/HttpRequest;

    .line 2676
    iget-object v0, p0, Lcom/umeng/message/util/HttpRequest;->output:Lcom/umeng/message/util/HttpRequest$e;

    invoke-virtual {v0, p4}, Lcom/umeng/message/util/HttpRequest$e;->a(Ljava/lang/String;)Lcom/umeng/message/util/HttpRequest$e;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2680
    return-object p0

    .line 2677
    :catch_0
    move-exception v0

    .line 2678
    new-instance v1, Lcom/umeng/message/util/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/umeng/message/util/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public partHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/util/HttpRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2804
    invoke-virtual {p0, p1}, Lcom/umeng/message/util/HttpRequest;->send(Ljava/lang/CharSequence;)Lcom/umeng/message/util/HttpRequest;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Lcom/umeng/message/util/HttpRequest;->send(Ljava/lang/CharSequence;)Lcom/umeng/message/util/HttpRequest;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/umeng/message/util/HttpRequest;->send(Ljava/lang/CharSequence;)Lcom/umeng/message/util/HttpRequest;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Lcom/umeng/message/util/HttpRequest;->send(Ljava/lang/CharSequence;)Lcom/umeng/message/util/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public proxyAuthorization(Ljava/lang/String;)Lcom/umeng/message/util/HttpRequest;
    .locals 1

    .prologue
    .line 2352
    const-string v0, "Proxy-Authorization"

    invoke-virtual {p0, v0, p1}, Lcom/umeng/message/util/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/util/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public proxyBasic(Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/util/HttpRequest;
    .locals 3

    .prologue
    .line 2376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Basic "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/message/util/HttpRequest$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/umeng/message/util/HttpRequest;->proxyAuthorization(Ljava/lang/String;)Lcom/umeng/message/util/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public readTimeout(I)Lcom/umeng/message/util/HttpRequest;
    .locals 1

    .prologue
    .line 1923
    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1924
    return-object p0
.end method

.method public reader()Ljava/io/InputStreamReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1792
    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest;->charset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/umeng/message/util/HttpRequest;->reader(Ljava/lang/String;)Ljava/io/InputStreamReader;

    move-result-object v0

    return-object v0
.end method

.method public reader(Ljava/lang/String;)Ljava/io/InputStreamReader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1778
    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest;->stream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {p1}, Lcom/umeng/message/util/HttpRequest;->getValidCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1779
    :catch_0
    move-exception v0

    .line 1780
    new-instance v1, Lcom/umeng/message/util/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/umeng/message/util/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public receive(Ljava/io/File;)Lcom/umeng/message/util/HttpRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1831
    :try_start_0
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iget v2, p0, Lcom/umeng/message/util/HttpRequest;->bufferSize:I

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1835
    new-instance v1, Lcom/umeng/message/util/HttpRequest$6;

    iget-boolean v2, p0, Lcom/umeng/message/util/HttpRequest;->ignoreCloseExceptions:Z

    invoke-direct {v1, p0, v0, v2, v0}, Lcom/umeng/message/util/HttpRequest$6;-><init>(Lcom/umeng/message/util/HttpRequest;Ljava/io/Closeable;ZLjava/io/OutputStream;)V

    .line 1841
    invoke-virtual {v1}, Lcom/umeng/message/util/HttpRequest$6;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/util/HttpRequest;

    .line 1835
    return-object v0

    .line 1832
    :catch_0
    move-exception v0

    .line 1833
    new-instance v1, Lcom/umeng/message/util/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/umeng/message/util/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public receive(Ljava/io/OutputStream;)Lcom/umeng/message/util/HttpRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1854
    :try_start_0
    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest;->buffer()Ljava/io/BufferedInputStream;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/umeng/message/util/HttpRequest;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/umeng/message/util/HttpRequest;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 1855
    :catch_0
    move-exception v0

    .line 1856
    new-instance v1, Lcom/umeng/message/util/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/umeng/message/util/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public receive(Ljava/io/PrintStream;)Lcom/umeng/message/util/HttpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1869
    invoke-virtual {p0, p1}, Lcom/umeng/message/util/HttpRequest;->receive(Ljava/io/OutputStream;)Lcom/umeng/message/util/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public receive(Ljava/io/Writer;)Lcom/umeng/message/util/HttpRequest;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1906
    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest;->bufferedReader()Ljava/io/BufferedReader;

    move-result-object v2

    .line 1907
    new-instance v0, Lcom/umeng/message/util/HttpRequest$8;

    iget-boolean v3, p0, Lcom/umeng/message/util/HttpRequest;->ignoreCloseExceptions:Z

    move-object v1, p0

    move-object v4, v2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/umeng/message/util/HttpRequest$8;-><init>(Lcom/umeng/message/util/HttpRequest;Ljava/io/Closeable;ZLjava/io/BufferedReader;Ljava/io/Writer;)V

    .line 1913
    invoke-virtual {v0}, Lcom/umeng/message/util/HttpRequest$8;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/util/HttpRequest;

    .line 1907
    return-object v0
.end method

.method public receive(Ljava/lang/Appendable;)Lcom/umeng/message/util/HttpRequest;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1881
    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest;->bufferedReader()Ljava/io/BufferedReader;

    move-result-object v2

    .line 1882
    new-instance v0, Lcom/umeng/message/util/HttpRequest$7;

    iget-boolean v3, p0, Lcom/umeng/message/util/HttpRequest;->ignoreCloseExceptions:Z

    move-object v1, p0

    move-object v4, v2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/umeng/message/util/HttpRequest$7;-><init>(Lcom/umeng/message/util/HttpRequest;Ljava/io/Closeable;ZLjava/io/BufferedReader;Ljava/lang/Appendable;)V

    .line 1895
    invoke-virtual {v0}, Lcom/umeng/message/util/HttpRequest$7;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/util/HttpRequest;

    .line 1882
    return-object v0
.end method

.method public referer(Ljava/lang/String;)Lcom/umeng/message/util/HttpRequest;
    .locals 1

    .prologue
    .line 2219
    const-string v0, "Referer"

    invoke-virtual {p0, v0, p1}, Lcom/umeng/message/util/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/util/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public send(Ljava/io/File;)Lcom/umeng/message/util/HttpRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2817
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2821
    invoke-virtual {p0, v0}, Lcom/umeng/message/util/HttpRequest;->send(Ljava/io/InputStream;)Lcom/umeng/message/util/HttpRequest;

    move-result-object v0

    return-object v0

    .line 2818
    :catch_0
    move-exception v0

    .line 2819
    new-instance v1, Lcom/umeng/message/util/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/umeng/message/util/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public send(Ljava/io/InputStream;)Lcom/umeng/message/util/HttpRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2846
    :try_start_0
    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest;->openOutput()Lcom/umeng/message/util/HttpRequest;

    .line 2847
    iget-object v0, p0, Lcom/umeng/message/util/HttpRequest;->output:Lcom/umeng/message/util/HttpRequest$e;

    invoke-virtual {p0, p1, v0}, Lcom/umeng/message/util/HttpRequest;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/umeng/message/util/HttpRequest;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2851
    return-object p0

    .line 2848
    :catch_0
    move-exception v0

    .line 2849
    new-instance v1, Lcom/umeng/message/util/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/umeng/message/util/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public send(Ljava/io/Reader;)Lcom/umeng/message/util/HttpRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2865
    :try_start_0
    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest;->openOutput()Lcom/umeng/message/util/HttpRequest;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2869
    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lcom/umeng/message/util/HttpRequest;->output:Lcom/umeng/message/util/HttpRequest$e;

    iget-object v2, p0, Lcom/umeng/message/util/HttpRequest;->output:Lcom/umeng/message/util/HttpRequest$e;

    .line 2870
    invoke-static {v2}, Lcom/umeng/message/util/HttpRequest$e;->a(Lcom/umeng/message/util/HttpRequest$e;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 2871
    new-instance v1, Lcom/umeng/message/util/HttpRequest$2;

    invoke-direct {v1, p0, v0, p1, v0}, Lcom/umeng/message/util/HttpRequest$2;-><init>(Lcom/umeng/message/util/HttpRequest;Ljava/io/Flushable;Ljava/io/Reader;Ljava/io/Writer;)V

    .line 2877
    invoke-virtual {v1}, Lcom/umeng/message/util/HttpRequest$2;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/util/HttpRequest;

    .line 2871
    return-object v0

    .line 2866
    :catch_0
    move-exception v0

    .line 2867
    new-instance v1, Lcom/umeng/message/util/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/umeng/message/util/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public send(Ljava/lang/CharSequence;)Lcom/umeng/message/util/HttpRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2892
    :try_start_0
    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest;->openOutput()Lcom/umeng/message/util/HttpRequest;

    .line 2893
    iget-object v0, p0, Lcom/umeng/message/util/HttpRequest;->output:Lcom/umeng/message/util/HttpRequest$e;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/message/util/HttpRequest$e;->a(Ljava/lang/String;)Lcom/umeng/message/util/HttpRequest$e;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2897
    return-object p0

    .line 2894
    :catch_0
    move-exception v0

    .line 2895
    new-instance v1, Lcom/umeng/message/util/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/umeng/message/util/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public send([B)Lcom/umeng/message/util/HttpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2832
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0}, Lcom/umeng/message/util/HttpRequest;->send(Ljava/io/InputStream;)Lcom/umeng/message/util/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public server()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2278
    const-string v0, "Server"

    invoke-virtual {p0, v0}, Lcom/umeng/message/util/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public serverError()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1501
    const/16 v0, 0x1f4

    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest;->code()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected startPart()Lcom/umeng/message/util/HttpRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2592
    iget-boolean v0, p0, Lcom/umeng/message/util/HttpRequest;->multipart:Z

    if-nez v0, :cond_0

    .line 2593
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/message/util/HttpRequest;->multipart:Z

    .line 2594
    const-string v0, "multipart/form-data; boundary=00content0boundary00"

    invoke-virtual {p0, v0}, Lcom/umeng/message/util/HttpRequest;->contentType(Ljava/lang/String;)Lcom/umeng/message/util/HttpRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/util/HttpRequest;->openOutput()Lcom/umeng/message/util/HttpRequest;

    .line 2595
    iget-object v0, p0, Lcom/umeng/message/util/HttpRequest;->output:Lcom/umeng/message/util/HttpRequest$e;

    const-string v1, "--00content0boundary00\r\n"

    invoke-virtual {v0, v1}, Lcom/umeng/message/util/HttpRequest$e;->a(Ljava/lang/String;)Lcom/umeng/message/util/HttpRequest$e;

    .line 2598
    :goto_0
    return-object p0

    .line 2597
    :cond_0
    iget-object v0, p0, Lcom/umeng/message/util/HttpRequest;->output:Lcom/umeng/message/util/HttpRequest$e;

    const-string v1, "\r\n--00content0boundary00\r\n"

    invoke-virtual {v0, v1}, Lcom/umeng/message/util/HttpRequest$e;->a(Ljava/lang/String;)Lcom/umeng/message/util/HttpRequest$e;

    goto :goto_0
.end method

.method public stream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1739
    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest;->code()I

    move-result v0

    const/16 v1, 0x190

    if-ge v0, v1, :cond_2

    .line 1741
    :try_start_0
    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1755
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/umeng/message/util/HttpRequest;->uncompress:Z

    if-eqz v1, :cond_1

    const-string v1, "gzip"

    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest;->contentEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1759
    :cond_1
    :goto_1
    return-object v0

    .line 1742
    :catch_0
    move-exception v0

    .line 1743
    new-instance v1, Lcom/umeng/message/util/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/umeng/message/util/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 1746
    :cond_2
    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    .line 1747
    if-nez v0, :cond_0

    .line 1749
    :try_start_1
    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 1750
    :catch_1
    move-exception v0

    .line 1751
    new-instance v1, Lcom/umeng/message/util/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/umeng/message/util/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 1759
    :cond_3
    :try_start_2
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v1

    goto :goto_1

    .line 1760
    :catch_2
    move-exception v0

    .line 1761
    new-instance v1, Lcom/umeng/message/util/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/umeng/message/util/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest;->method()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest;->url()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trustAllHosts()Lcom/umeng/message/util/HttpRequest;
    .locals 2

    .prologue
    .line 3051
    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 3052
    instance-of v1, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_0

    .line 3053
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 3054
    invoke-static {}, Lcom/umeng/message/util/HttpRequest;->getTrustedVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 3055
    :cond_0
    return-object p0
.end method

.method public trustHosts()Lcom/umeng/message/util/HttpRequest;
    .locals 2

    .prologue
    .line 3059
    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 3060
    instance-of v0, v1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 3061
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    .line 3062
    invoke-static {v1}, Lcom/umeng/message/util/HttpRequest;->getTrustedVerifier(Ljavax/net/ssl/HttpsURLConnection;)Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 3063
    :cond_0
    return-object p0
.end method

.method public uncompress(Z)Lcom/umeng/message/util/HttpRequest;
    .locals 0

    .prologue
    .line 1618
    iput-boolean p1, p0, Lcom/umeng/message/util/HttpRequest;->uncompress:Z

    .line 1619
    return-object p0
.end method

.method public url()Ljava/net/URL;
    .locals 1

    .prologue
    .line 3072
    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public useCaches(Z)Lcom/umeng/message/util/HttpRequest;
    .locals 1

    .prologue
    .line 2229
    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 2230
    return-object p0
.end method

.method public useProxy(Ljava/lang/String;I)Lcom/umeng/message/util/HttpRequest;
    .locals 2

    .prologue
    .line 3093
    iget-object v0, p0, Lcom/umeng/message/util/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 3094
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The connection has already been created. This method must be called before reading or writing to the request."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3096
    :cond_0
    iput-object p1, p0, Lcom/umeng/message/util/HttpRequest;->httpProxyHost:Ljava/lang/String;

    .line 3097
    iput p2, p0, Lcom/umeng/message/util/HttpRequest;->httpProxyPort:I

    .line 3098
    return-object p0
.end method

.method public userAgent(Ljava/lang/String;)Lcom/umeng/message/util/HttpRequest;
    .locals 1

    .prologue
    .line 2209
    const-string v0, "User-Agent"

    invoke-virtual {p0, v0, p1}, Lcom/umeng/message/util/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/util/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method protected writePartHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/util/HttpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2611
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/umeng/message/util/HttpRequest;->writePartHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/util/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method protected writePartHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/util/HttpRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2626
    const-string v1, "form-data; name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2627
    if-eqz p2, :cond_0

    .line 2628
    const-string v1, "\"; filename=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2629
    :cond_0
    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2630
    const-string v1, "Content-Disposition"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/umeng/message/util/HttpRequest;->partHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/util/HttpRequest;

    .line 2631
    if-eqz p3, :cond_1

    .line 2632
    const-string v0, "Content-Type"

    invoke-virtual {p0, v0, p3}, Lcom/umeng/message/util/HttpRequest;->partHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/message/util/HttpRequest;

    .line 2633
    :cond_1
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Lcom/umeng/message/util/HttpRequest;->send(Ljava/lang/CharSequence;)Lcom/umeng/message/util/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public writer()Ljava/io/OutputStreamWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2908
    :try_start_0
    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest;->openOutput()Lcom/umeng/message/util/HttpRequest;

    .line 2909
    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lcom/umeng/message/util/HttpRequest;->output:Lcom/umeng/message/util/HttpRequest$e;

    iget-object v2, p0, Lcom/umeng/message/util/HttpRequest;->output:Lcom/umeng/message/util/HttpRequest$e;

    invoke-static {v2}, Lcom/umeng/message/util/HttpRequest$e;->a(Lcom/umeng/message/util/HttpRequest$e;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2910
    :catch_0
    move-exception v0

    .line 2911
    new-instance v1, Lcom/umeng/message/util/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/umeng/message/util/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method
