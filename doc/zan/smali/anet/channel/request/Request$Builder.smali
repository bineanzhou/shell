.class public Lanet/channel/request/Request$Builder;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/request/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


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

.field private rs:Lanet/channel/statist/RequestStatistic;

.field private seq:Ljava/lang/String;

.field private sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    const-string v0, "GET"

    iput-object v0, p0, Lanet/channel/request/Request$Builder;->method:Ljava/lang/String;

    .line 259
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lanet/channel/request/Request$Builder;->headers:Ljava/util/Map;

    .line 263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lanet/channel/request/Request$Builder;->isRedirectEnable:Z

    .line 264
    iput v1, p0, Lanet/channel/request/Request$Builder;->redirectTimes:I

    .line 269
    iput v1, p0, Lanet/channel/request/Request$Builder;->connectTimeout:I

    .line 270
    iput v1, p0, Lanet/channel/request/Request$Builder;->readTimeout:I

    .line 271
    const/4 v0, 0x0

    iput-object v0, p0, Lanet/channel/request/Request$Builder;->rs:Lanet/channel/statist/RequestStatistic;

    .line 274
    return-void
.end method

.method static synthetic access$000(Lanet/channel/request/Request$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lanet/channel/request/Request$Builder;->method:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lanet/channel/request/Request$Builder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->method:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lanet/channel/request/Request$Builder;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lanet/channel/request/Request$Builder;->headers:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1000(Lanet/channel/request/Request$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lanet/channel/request/Request$Builder;->seq:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lanet/channel/request/Request$Builder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->seq:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lanet/channel/request/Request$Builder;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->headers:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$1100(Lanet/channel/request/Request$Builder;)I
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lanet/channel/request/Request$Builder;->connectTimeout:I

    return v0
.end method

.method static synthetic access$1102(Lanet/channel/request/Request$Builder;I)I
    .locals 0

    .prologue
    .line 255
    iput p1, p0, Lanet/channel/request/Request$Builder;->connectTimeout:I

    return p1
.end method

.method static synthetic access$1200(Lanet/channel/request/Request$Builder;)I
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lanet/channel/request/Request$Builder;->readTimeout:I

    return v0
.end method

.method static synthetic access$1202(Lanet/channel/request/Request$Builder;I)I
    .locals 0

    .prologue
    .line 255
    iput p1, p0, Lanet/channel/request/Request$Builder;->readTimeout:I

    return p1
.end method

.method static synthetic access$1300(Lanet/channel/request/Request$Builder;)Lanet/channel/util/c;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lanet/channel/request/Request$Builder;->originUrl:Lanet/channel/util/c;

    return-object v0
.end method

.method static synthetic access$1302(Lanet/channel/request/Request$Builder;Lanet/channel/util/c;)Lanet/channel/util/c;
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->originUrl:Lanet/channel/util/c;

    return-object p1
.end method

.method static synthetic access$1400(Lanet/channel/request/Request$Builder;)Lanet/channel/util/c;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lanet/channel/request/Request$Builder;->formattedUrl:Lanet/channel/util/c;

    return-object v0
.end method

.method static synthetic access$1402(Lanet/channel/request/Request$Builder;Lanet/channel/util/c;)Lanet/channel/util/c;
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->formattedUrl:Lanet/channel/util/c;

    return-object p1
.end method

.method static synthetic access$1500(Lanet/channel/request/Request$Builder;)Lanet/channel/statist/RequestStatistic;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lanet/channel/request/Request$Builder;->rs:Lanet/channel/statist/RequestStatistic;

    return-object v0
.end method

.method static synthetic access$1502(Lanet/channel/request/Request$Builder;Lanet/channel/statist/RequestStatistic;)Lanet/channel/statist/RequestStatistic;
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->rs:Lanet/channel/statist/RequestStatistic;

    return-object p1
.end method

.method static synthetic access$200(Lanet/channel/request/Request$Builder;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lanet/channel/request/Request$Builder;->params:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$202(Lanet/channel/request/Request$Builder;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->params:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$300(Lanet/channel/request/Request$Builder;)Lanet/channel/request/BodyEntry;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lanet/channel/request/Request$Builder;->body:Lanet/channel/request/BodyEntry;

    return-object v0
.end method

.method static synthetic access$302(Lanet/channel/request/Request$Builder;Lanet/channel/request/BodyEntry;)Lanet/channel/request/BodyEntry;
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->body:Lanet/channel/request/BodyEntry;

    return-object p1
.end method

.method static synthetic access$400(Lanet/channel/request/Request$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lanet/channel/request/Request$Builder;->charset:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lanet/channel/request/Request$Builder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->charset:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lanet/channel/request/Request$Builder;)Z
    .locals 1

    .prologue
    .line 255
    iget-boolean v0, p0, Lanet/channel/request/Request$Builder;->isRedirectEnable:Z

    return v0
.end method

.method static synthetic access$502(Lanet/channel/request/Request$Builder;Z)Z
    .locals 0

    .prologue
    .line 255
    iput-boolean p1, p0, Lanet/channel/request/Request$Builder;->isRedirectEnable:Z

    return p1
.end method

.method static synthetic access$600(Lanet/channel/request/Request$Builder;)I
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lanet/channel/request/Request$Builder;->redirectTimes:I

    return v0
.end method

.method static synthetic access$602(Lanet/channel/request/Request$Builder;I)I
    .locals 0

    .prologue
    .line 255
    iput p1, p0, Lanet/channel/request/Request$Builder;->redirectTimes:I

    return p1
.end method

.method static synthetic access$700(Lanet/channel/request/Request$Builder;)Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lanet/channel/request/Request$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method static synthetic access$702(Lanet/channel/request/Request$Builder;Ljavax/net/ssl/HostnameVerifier;)Ljavax/net/ssl/HostnameVerifier;
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object p1
.end method

.method static synthetic access$800(Lanet/channel/request/Request$Builder;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lanet/channel/request/Request$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method static synthetic access$802(Lanet/channel/request/Request$Builder;Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object p1
.end method

.method static synthetic access$900(Lanet/channel/request/Request$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lanet/channel/request/Request$Builder;->bizId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lanet/channel/request/Request$Builder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->bizId:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lanet/channel/request/Request$Builder;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lanet/channel/request/Request$Builder;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    return-object p0
.end method

.method public addParam(Ljava/lang/String;Ljava/lang/String;)Lanet/channel/request/Request$Builder;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lanet/channel/request/Request$Builder;->params:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 336
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lanet/channel/request/Request$Builder;->params:Ljava/util/Map;

    .line 338
    :cond_0
    iget-object v0, p0, Lanet/channel/request/Request$Builder;->params:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    const/4 v0, 0x0

    iput-object v0, p0, Lanet/channel/request/Request$Builder;->formattedUrl:Lanet/channel/util/c;

    .line 340
    return-object p0
.end method

.method public build()Lanet/channel/request/Request;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 401
    iget-object v0, p0, Lanet/channel/request/Request$Builder;->body:Lanet/channel/request/BodyEntry;

    if-nez v0, :cond_0

    iget-object v0, p0, Lanet/channel/request/Request$Builder;->params:Ljava/util/Map;

    if-nez v0, :cond_0

    iget-object v0, p0, Lanet/channel/request/Request$Builder;->method:Ljava/lang/String;

    invoke-static {v0}, Lanet/channel/request/Request$Method;->requiresRequestBody(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    const-string v0, "awcn.Request"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lanet/channel/request/Request$Builder;->method:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must have a request body"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v3, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 406
    :cond_0
    iget-object v0, p0, Lanet/channel/request/Request$Builder;->body:Lanet/channel/request/BodyEntry;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lanet/channel/request/Request$Builder;->method:Ljava/lang/String;

    invoke-static {v0}, Lanet/channel/request/Request$Method;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 407
    const-string v0, "awcn.Request"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lanet/channel/request/Request$Builder;->method:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " should not have a request body"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v3, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 408
    iput-object v3, p0, Lanet/channel/request/Request$Builder;->body:Lanet/channel/request/BodyEntry;

    .line 411
    :cond_1
    iget-object v0, p0, Lanet/channel/request/Request$Builder;->body:Lanet/channel/request/BodyEntry;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lanet/channel/request/Request$Builder;->body:Lanet/channel/request/BodyEntry;

    invoke-interface {v0}, Lanet/channel/request/BodyEntry;->getContentType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 412
    const-string v0, "Content-Type"

    iget-object v1, p0, Lanet/channel/request/Request$Builder;->body:Lanet/channel/request/BodyEntry;

    invoke-interface {v1}, Lanet/channel/request/BodyEntry;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lanet/channel/request/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lanet/channel/request/Request$Builder;

    .line 415
    :cond_2
    new-instance v0, Lanet/channel/request/Request;

    invoke-direct {v0, p0, v3}, Lanet/channel/request/Request;-><init>(Lanet/channel/request/Request$Builder;Lanet/channel/request/Request$1;)V

    return-object v0
.end method

.method public setBizId(Ljava/lang/String;)Lanet/channel/request/Request$Builder;
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->bizId:Ljava/lang/String;

    .line 376
    return-object p0
.end method

.method public setBody(Lanet/channel/request/BodyEntry;)Lanet/channel/request/Request$Builder;
    .locals 0

    .prologue
    .line 350
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->body:Lanet/channel/request/BodyEntry;

    .line 351
    return-object p0
.end method

.method public setCharset(Ljava/lang/String;)Lanet/channel/request/Request$Builder;
    .locals 1

    .prologue
    .line 344
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->charset:Ljava/lang/String;

    .line 345
    const/4 v0, 0x0

    iput-object v0, p0, Lanet/channel/request/Request$Builder;->formattedUrl:Lanet/channel/util/c;

    .line 346
    return-object p0
.end method

.method public setConnectTimeout(I)Lanet/channel/request/Request$Builder;
    .locals 0

    .prologue
    .line 390
    iput p1, p0, Lanet/channel/request/Request$Builder;->connectTimeout:I

    .line 391
    return-object p0
.end method

.method public setHeaders(Ljava/util/Map;)Lanet/channel/request/Request$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lanet/channel/request/Request$Builder;"
        }
    .end annotation

    .prologue
    .line 316
    iget-object v0, p0, Lanet/channel/request/Request$Builder;->headers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 317
    if-eqz p1, :cond_0

    .line 318
    iget-object v0, p0, Lanet/channel/request/Request$Builder;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 320
    :cond_0
    return-object p0
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lanet/channel/request/Request$Builder;
    .locals 0

    .prologue
    .line 365
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 366
    return-object p0
.end method

.method public setMethod(Ljava/lang/String;)Lanet/channel/request/Request$Builder;
    .locals 2

    .prologue
    .line 292
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "method is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :cond_0
    const-string v0, "GET"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    const-string v0, "GET"

    iput-object v0, p0, Lanet/channel/request/Request$Builder;->method:Ljava/lang/String;

    .line 312
    :goto_0
    return-object p0

    .line 298
    :cond_1
    const-string v0, "POST"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 299
    const-string v0, "POST"

    iput-object v0, p0, Lanet/channel/request/Request$Builder;->method:Ljava/lang/String;

    goto :goto_0

    .line 300
    :cond_2
    const-string v0, "OPTIONS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 301
    const-string v0, "OPTIONS"

    iput-object v0, p0, Lanet/channel/request/Request$Builder;->method:Ljava/lang/String;

    goto :goto_0

    .line 302
    :cond_3
    const-string v0, "HEAD"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 303
    const-string v0, "HEAD"

    iput-object v0, p0, Lanet/channel/request/Request$Builder;->method:Ljava/lang/String;

    goto :goto_0

    .line 304
    :cond_4
    const-string v0, "PUT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 305
    const-string v0, "PUT"

    iput-object v0, p0, Lanet/channel/request/Request$Builder;->method:Ljava/lang/String;

    goto :goto_0

    .line 306
    :cond_5
    const-string v0, "DELETE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 307
    const-string v0, "DELETE"

    iput-object v0, p0, Lanet/channel/request/Request$Builder;->method:Ljava/lang/String;

    goto :goto_0

    .line 309
    :cond_6
    const-string v0, "GET"

    iput-object v0, p0, Lanet/channel/request/Request$Builder;->method:Ljava/lang/String;

    goto :goto_0
.end method

.method public setParams(Ljava/util/Map;)Lanet/channel/request/Request$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lanet/channel/request/Request$Builder;"
        }
    .end annotation

    .prologue
    .line 329
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->params:Ljava/util/Map;

    .line 330
    const/4 v0, 0x0

    iput-object v0, p0, Lanet/channel/request/Request$Builder;->formattedUrl:Lanet/channel/util/c;

    .line 331
    return-object p0
.end method

.method public setReadTimeout(I)Lanet/channel/request/Request$Builder;
    .locals 0

    .prologue
    .line 385
    iput p1, p0, Lanet/channel/request/Request$Builder;->readTimeout:I

    .line 386
    return-object p0
.end method

.method public setRedirectEnable(Z)Lanet/channel/request/Request$Builder;
    .locals 0

    .prologue
    .line 355
    iput-boolean p1, p0, Lanet/channel/request/Request$Builder;->isRedirectEnable:Z

    .line 356
    return-object p0
.end method

.method public setRedirectTimes(I)Lanet/channel/request/Request$Builder;
    .locals 0

    .prologue
    .line 360
    iput p1, p0, Lanet/channel/request/Request$Builder;->redirectTimes:I

    .line 361
    return-object p0
.end method

.method public setRequestStatistic(Lanet/channel/statist/RequestStatistic;)Lanet/channel/request/Request$Builder;
    .locals 0

    .prologue
    .line 395
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->rs:Lanet/channel/statist/RequestStatistic;

    .line 396
    return-object p0
.end method

.method public setSeq(Ljava/lang/String;)Lanet/channel/request/Request$Builder;
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->seq:Ljava/lang/String;

    .line 381
    return-object p0
.end method

.method public setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lanet/channel/request/Request$Builder;
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 371
    return-object p0
.end method

.method public setUrl(Lanet/channel/util/c;)Lanet/channel/request/Request$Builder;
    .locals 1

    .prologue
    .line 277
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->originUrl:Lanet/channel/util/c;

    .line 278
    const/4 v0, 0x0

    iput-object v0, p0, Lanet/channel/request/Request$Builder;->formattedUrl:Lanet/channel/util/c;

    .line 279
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lanet/channel/request/Request$Builder;
    .locals 3

    .prologue
    .line 283
    invoke-static {p1}, Lanet/channel/util/c;->a(Ljava/lang/String;)Lanet/channel/util/c;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/request/Request$Builder;->originUrl:Lanet/channel/util/c;

    .line 284
    const/4 v0, 0x0

    iput-object v0, p0, Lanet/channel/request/Request$Builder;->formattedUrl:Lanet/channel/util/c;

    .line 285
    iget-object v0, p0, Lanet/channel/request/Request$Builder;->originUrl:Lanet/channel/util/c;

    if-nez v0, :cond_0

    .line 286
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toURL is invalid! toURL = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_0
    return-object p0
.end method
