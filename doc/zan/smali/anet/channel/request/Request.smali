.class public Lanet/channel/request/Request;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/request/Request$1;,
        Lanet/channel/request/Request$Builder;,
        Lanet/channel/request/Request$Method;
    }
.end annotation


# static fields
.field public static final DEFAULT_CHARSET:Ljava/lang/String; = "UTF-8"


# instance fields
.field private bizId:Ljava/lang/String;

.field private body:Lanet/channel/request/BodyEntry;

.field private charset:Ljava/lang/String;

.field private connectTimeout:I

.field private formattedUrl:Lanet/channel/util/c;

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private isRedirectEnable:Z

.field private method:Ljava/lang/String;

.field private originUrl:Lanet/channel/util/c;

.field private params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private readTimeout:I

.field private redirectTimes:I

.field public final rs:Lanet/channel/statist/RequestStatistic;

.field private sendUrl:Lanet/channel/util/c;

.field private seq:Ljava/lang/String;

.field private sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private url:Ljava/net/URL;


# direct methods
.method private constructor <init>(Lanet/channel/request/Request$Builder;)V
    .locals 3

    .prologue
    const/16 v1, 0x2710

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, "GET"

    iput-object v0, p0, Lanet/channel/request/Request;->method:Ljava/lang/String;

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lanet/channel/request/Request;->isRedirectEnable:Z

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lanet/channel/request/Request;->redirectTimes:I

    .line 65
    iput v1, p0, Lanet/channel/request/Request;->connectTimeout:I

    .line 66
    iput v1, p0, Lanet/channel/request/Request;->readTimeout:I

    .line 72
    invoke-static {p1}, Lanet/channel/request/Request$Builder;->access$000(Lanet/channel/request/Request$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/request/Request;->method:Ljava/lang/String;

    .line 73
    invoke-static {p1}, Lanet/channel/request/Request$Builder;->access$100(Lanet/channel/request/Request$Builder;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/request/Request;->headers:Ljava/util/Map;

    .line 74
    invoke-static {p1}, Lanet/channel/request/Request$Builder;->access$200(Lanet/channel/request/Request$Builder;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/request/Request;->params:Ljava/util/Map;

    .line 75
    invoke-static {p1}, Lanet/channel/request/Request$Builder;->access$300(Lanet/channel/request/Request$Builder;)Lanet/channel/request/BodyEntry;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/request/Request;->body:Lanet/channel/request/BodyEntry;

    .line 76
    invoke-static {p1}, Lanet/channel/request/Request$Builder;->access$400(Lanet/channel/request/Request$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/request/Request;->charset:Ljava/lang/String;

    .line 77
    invoke-static {p1}, Lanet/channel/request/Request$Builder;->access$500(Lanet/channel/request/Request$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lanet/channel/request/Request;->isRedirectEnable:Z

    .line 78
    invoke-static {p1}, Lanet/channel/request/Request$Builder;->access$600(Lanet/channel/request/Request$Builder;)I

    move-result v0

    iput v0, p0, Lanet/channel/request/Request;->redirectTimes:I

    .line 79
    invoke-static {p1}, Lanet/channel/request/Request$Builder;->access$700(Lanet/channel/request/Request$Builder;)Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/request/Request;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 80
    invoke-static {p1}, Lanet/channel/request/Request$Builder;->access$800(Lanet/channel/request/Request$Builder;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/request/Request;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 81
    invoke-static {p1}, Lanet/channel/request/Request$Builder;->access$900(Lanet/channel/request/Request$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/request/Request;->bizId:Ljava/lang/String;

    .line 82
    invoke-static {p1}, Lanet/channel/request/Request$Builder;->access$1000(Lanet/channel/request/Request$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/request/Request;->seq:Ljava/lang/String;

    .line 83
    invoke-static {p1}, Lanet/channel/request/Request$Builder;->access$1100(Lanet/channel/request/Request$Builder;)I

    move-result v0

    iput v0, p0, Lanet/channel/request/Request;->connectTimeout:I

    .line 84
    invoke-static {p1}, Lanet/channel/request/Request$Builder;->access$1200(Lanet/channel/request/Request$Builder;)I

    move-result v0

    iput v0, p0, Lanet/channel/request/Request;->readTimeout:I

    .line 85
    invoke-static {p1}, Lanet/channel/request/Request$Builder;->access$1300(Lanet/channel/request/Request$Builder;)Lanet/channel/util/c;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/request/Request;->originUrl:Lanet/channel/util/c;

    .line 86
    invoke-static {p1}, Lanet/channel/request/Request$Builder;->access$1400(Lanet/channel/request/Request$Builder;)Lanet/channel/util/c;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/request/Request;->formattedUrl:Lanet/channel/util/c;

    .line 87
    iget-object v0, p0, Lanet/channel/request/Request;->formattedUrl:Lanet/channel/util/c;

    if-nez v0, :cond_0

    .line 88
    invoke-direct {p0}, Lanet/channel/request/Request;->formatUrl()V

    .line 90
    :cond_0
    invoke-static {p1}, Lanet/channel/request/Request$Builder;->access$1500(Lanet/channel/request/Request$Builder;)Lanet/channel/statist/RequestStatistic;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lanet/channel/request/Request$Builder;->access$1500(Lanet/channel/request/Request$Builder;)Lanet/channel/statist/RequestStatistic;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    .line 91
    return-void

    .line 90
    :cond_1
    new-instance v0, Lanet/channel/statist/RequestStatistic;

    invoke-virtual {p0}, Lanet/channel/request/Request;->getHost()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lanet/channel/request/Request;->bizId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lanet/channel/statist/RequestStatistic;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method synthetic constructor <init>(Lanet/channel/request/Request$Builder;Lanet/channel/request/Request$1;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lanet/channel/request/Request;-><init>(Lanet/channel/request/Request$Builder;)V

    return-void
.end method

.method private formatUrl()V
    .locals 6

    .prologue
    const/16 v5, 0x26

    .line 227
    iget-object v0, p0, Lanet/channel/request/Request;->params:Ljava/util/Map;

    invoke-virtual {p0}, Lanet/channel/request/Request;->getContentEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lanet/channel/strategy/utils/d;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 229
    iget-object v1, p0, Lanet/channel/request/Request;->method:Ljava/lang/String;

    invoke-static {v1}, Lanet/channel/request/Request$Method;->requiresRequestBody(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lanet/channel/request/Request;->body:Lanet/channel/request/BodyEntry;

    if-eqz v1, :cond_5

    .line 230
    :cond_0
    iget-object v1, p0, Lanet/channel/request/Request;->originUrl:Lanet/channel/util/c;

    invoke-virtual {v1}, Lanet/channel/util/c;->e()Ljava/lang/String;

    move-result-object v1

    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 232
    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_4

    .line 233
    const/16 v1, 0x3f

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 237
    :cond_1
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lanet/channel/util/c;->a(Ljava/lang/String;)Lanet/channel/util/c;

    move-result-object v0

    .line 239
    if-eqz v0, :cond_2

    .line 240
    iput-object v0, p0, Lanet/channel/request/Request;->formattedUrl:Lanet/channel/util/c;

    .line 250
    :cond_2
    :goto_1
    iget-object v0, p0, Lanet/channel/request/Request;->formattedUrl:Lanet/channel/util/c;

    if-nez v0, :cond_3

    .line 251
    iget-object v0, p0, Lanet/channel/request/Request;->originUrl:Lanet/channel/util/c;

    iput-object v0, p0, Lanet/channel/request/Request;->formattedUrl:Lanet/channel/util/c;

    .line 253
    :cond_3
    return-void

    .line 234
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v5, :cond_1

    .line 235
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 244
    :cond_5
    :try_start_0
    new-instance v1, Lanet/channel/request/ByteArrayEntry;

    invoke-virtual {p0}, Lanet/channel/request/Request;->getContentEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v1, v0}, Lanet/channel/request/ByteArrayEntry;-><init>([B)V

    iput-object v1, p0, Lanet/channel/request/Request;->body:Lanet/channel/request/BodyEntry;

    .line 245
    iget-object v0, p0, Lanet/channel/request/Request;->headers:Ljava/util/Map;

    const-string v1, "Content-Type"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "application/x-www-form-urlencoded; charset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lanet/channel/request/Request;->getContentEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public containsBody()Z
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lanet/channel/request/Request;->body:Lanet/channel/request/BodyEntry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBizId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lanet/channel/request/Request;->bizId:Ljava/lang/String;

    return-object v0
.end method

.method public getBodyBytes()[B
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lanet/channel/request/Request;->body:Lanet/channel/request/BodyEntry;

    if-eqz v0, :cond_0

    .line 196
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 198
    :try_start_0
    invoke-virtual {p0, v0}, Lanet/channel/request/Request;->postBody(Ljava/io/OutputStream;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 203
    :goto_1
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getConnectTimeout()I
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lanet/channel/request/Request;->connectTimeout:I

    return v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lanet/channel/request/Request;->charset:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lanet/channel/request/Request;->charset:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "UTF-8"

    goto :goto_0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lanet/channel/request/Request;->headers:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lanet/channel/request/Request;->formattedUrl:Lanet/channel/util/c;

    invoke-virtual {v0}, Lanet/channel/util/c;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lanet/channel/request/Request;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public getHttpUrl()Lanet/channel/util/c;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lanet/channel/request/Request;->formattedUrl:Lanet/channel/util/c;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lanet/channel/request/Request;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lanet/channel/request/Request;->readTimeout:I

    return v0
.end method

.method public getRedirectTimes()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lanet/channel/request/Request;->redirectTimes:I

    return v0
.end method

.method public getSeq()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lanet/channel/request/Request;->seq:Ljava/lang/String;

    return-object v0
.end method

.method public getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lanet/channel/request/Request;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public getUrl()Ljava/net/URL;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lanet/channel/request/Request;->url:Ljava/net/URL;

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lanet/channel/request/Request;->sendUrl:Lanet/channel/util/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lanet/channel/request/Request;->sendUrl:Lanet/channel/util/c;

    invoke-virtual {v0}, Lanet/channel/util/c;->f()Ljava/net/URL;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lanet/channel/request/Request;->url:Ljava/net/URL;

    .line 126
    :cond_0
    iget-object v0, p0, Lanet/channel/request/Request;->url:Ljava/net/URL;

    return-object v0

    .line 124
    :cond_1
    iget-object v0, p0, Lanet/channel/request/Request;->formattedUrl:Lanet/channel/util/c;

    invoke-virtual {v0}, Lanet/channel/util/c;->f()Ljava/net/URL;

    move-result-object v0

    goto :goto_0
.end method

.method public getUrlString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lanet/channel/request/Request;->formattedUrl:Lanet/channel/util/c;

    invoke-virtual {v0}, Lanet/channel/util/c;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isRedirectEnable()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lanet/channel/request/Request;->isRedirectEnable:Z

    return v0
.end method

.method public newBuilder()Lanet/channel/request/Request$Builder;
    .locals 2

    .prologue
    .line 94
    new-instance v0, Lanet/channel/request/Request$Builder;

    invoke-direct {v0}, Lanet/channel/request/Request$Builder;-><init>()V

    .line 95
    iget-object v1, p0, Lanet/channel/request/Request;->method:Ljava/lang/String;

    invoke-static {v0, v1}, Lanet/channel/request/Request$Builder;->access$002(Lanet/channel/request/Request$Builder;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    iget-object v1, p0, Lanet/channel/request/Request;->headers:Ljava/util/Map;

    invoke-static {v0, v1}, Lanet/channel/request/Request$Builder;->access$102(Lanet/channel/request/Request$Builder;Ljava/util/Map;)Ljava/util/Map;

    .line 97
    iget-object v1, p0, Lanet/channel/request/Request;->params:Ljava/util/Map;

    invoke-static {v0, v1}, Lanet/channel/request/Request$Builder;->access$202(Lanet/channel/request/Request$Builder;Ljava/util/Map;)Ljava/util/Map;

    .line 98
    iget-object v1, p0, Lanet/channel/request/Request;->body:Lanet/channel/request/BodyEntry;

    invoke-static {v0, v1}, Lanet/channel/request/Request$Builder;->access$302(Lanet/channel/request/Request$Builder;Lanet/channel/request/BodyEntry;)Lanet/channel/request/BodyEntry;

    .line 99
    iget-object v1, p0, Lanet/channel/request/Request;->charset:Ljava/lang/String;

    invoke-static {v0, v1}, Lanet/channel/request/Request$Builder;->access$402(Lanet/channel/request/Request$Builder;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    iget-boolean v1, p0, Lanet/channel/request/Request;->isRedirectEnable:Z

    invoke-static {v0, v1}, Lanet/channel/request/Request$Builder;->access$502(Lanet/channel/request/Request$Builder;Z)Z

    .line 101
    iget v1, p0, Lanet/channel/request/Request;->redirectTimes:I

    invoke-static {v0, v1}, Lanet/channel/request/Request$Builder;->access$602(Lanet/channel/request/Request$Builder;I)I

    .line 102
    iget-object v1, p0, Lanet/channel/request/Request;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-static {v0, v1}, Lanet/channel/request/Request$Builder;->access$702(Lanet/channel/request/Request$Builder;Ljavax/net/ssl/HostnameVerifier;)Ljavax/net/ssl/HostnameVerifier;

    .line 103
    iget-object v1, p0, Lanet/channel/request/Request;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v0, v1}, Lanet/channel/request/Request$Builder;->access$802(Lanet/channel/request/Request$Builder;Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/SSLSocketFactory;

    .line 104
    iget-object v1, p0, Lanet/channel/request/Request;->originUrl:Lanet/channel/util/c;

    invoke-static {v0, v1}, Lanet/channel/request/Request$Builder;->access$1302(Lanet/channel/request/Request$Builder;Lanet/channel/util/c;)Lanet/channel/util/c;

    .line 105
    iget-object v1, p0, Lanet/channel/request/Request;->formattedUrl:Lanet/channel/util/c;

    invoke-static {v0, v1}, Lanet/channel/request/Request$Builder;->access$1402(Lanet/channel/request/Request$Builder;Lanet/channel/util/c;)Lanet/channel/util/c;

    .line 106
    iget-object v1, p0, Lanet/channel/request/Request;->bizId:Ljava/lang/String;

    invoke-static {v0, v1}, Lanet/channel/request/Request$Builder;->access$902(Lanet/channel/request/Request$Builder;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    iget-object v1, p0, Lanet/channel/request/Request;->seq:Ljava/lang/String;

    invoke-static {v0, v1}, Lanet/channel/request/Request$Builder;->access$1002(Lanet/channel/request/Request$Builder;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    iget v1, p0, Lanet/channel/request/Request;->connectTimeout:I

    invoke-static {v0, v1}, Lanet/channel/request/Request$Builder;->access$1102(Lanet/channel/request/Request$Builder;I)I

    .line 109
    iget v1, p0, Lanet/channel/request/Request;->readTimeout:I

    invoke-static {v0, v1}, Lanet/channel/request/Request$Builder;->access$1202(Lanet/channel/request/Request$Builder;I)I

    .line 110
    iget-object v1, p0, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    invoke-static {v0, v1}, Lanet/channel/request/Request$Builder;->access$1502(Lanet/channel/request/Request$Builder;Lanet/channel/statist/RequestStatistic;)Lanet/channel/statist/RequestStatistic;

    .line 111
    return-object v0
.end method

.method public postBody(Ljava/io/OutputStream;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    const/4 v0, 0x0

    .line 188
    iget-object v1, p0, Lanet/channel/request/Request;->body:Lanet/channel/request/BodyEntry;

    if-eqz v1, :cond_0

    .line 189
    iget-object v0, p0, Lanet/channel/request/Request;->body:Lanet/channel/request/BodyEntry;

    invoke-interface {v0, p1}, Lanet/channel/request/BodyEntry;->writeTo(Ljava/io/OutputStream;)I

    move-result v0

    .line 191
    :cond_0
    return v0
.end method

.method public setDnsOptimize(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 133
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 134
    iget-object v0, p0, Lanet/channel/request/Request;->sendUrl:Lanet/channel/util/c;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Lanet/channel/util/c;

    iget-object v1, p0, Lanet/channel/request/Request;->formattedUrl:Lanet/channel/util/c;

    invoke-direct {v0, v1}, Lanet/channel/util/c;-><init>(Lanet/channel/util/c;)V

    iput-object v0, p0, Lanet/channel/request/Request;->sendUrl:Lanet/channel/util/c;

    .line 137
    :cond_0
    iget-object v0, p0, Lanet/channel/request/Request;->sendUrl:Lanet/channel/util/c;

    invoke-virtual {v0, p1, p2}, Lanet/channel/util/c;->a(Ljava/lang/String;I)V

    .line 138
    iget-object v0, p0, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    invoke-virtual {v0, p1, p2}, Lanet/channel/statist/RequestStatistic;->setIPAndPort(Ljava/lang/String;I)V

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lanet/channel/request/Request;->url:Ljava/net/URL;

    .line 141
    :cond_1
    return-void
.end method

.method public setUrlScheme(Z)V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lanet/channel/request/Request;->sendUrl:Lanet/channel/util/c;

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Lanet/channel/util/c;

    iget-object v1, p0, Lanet/channel/request/Request;->formattedUrl:Lanet/channel/util/c;

    invoke-direct {v0, v1}, Lanet/channel/util/c;-><init>(Lanet/channel/util/c;)V

    iput-object v0, p0, Lanet/channel/request/Request;->sendUrl:Lanet/channel/util/c;

    .line 150
    :cond_0
    iget-object v1, p0, Lanet/channel/request/Request;->sendUrl:Lanet/channel/util/c;

    if-eqz p1, :cond_1

    const-string v0, "https"

    :goto_0
    invoke-virtual {v1, v0}, Lanet/channel/util/c;->b(Ljava/lang/String;)V

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lanet/channel/request/Request;->url:Ljava/net/URL;

    .line 152
    return-void

    .line 150
    :cond_1
    const-string v0, "http"

    goto :goto_0
.end method
