.class public Lanetwork/channel/entity/RequestConfig;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static final a:Ljava/lang/String; = "anet.RequestConfig"

.field private static final b:I = 0x3

.field private static final c:I = 0x3a98

.field private static final d:I = 0x3a98


# instance fields
.field private final e:Lanetwork/channel/aidl/ParcelableRequest;

.field private f:Lanet/channel/request/Request;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Lanet/channel/statist/RequestStatistic;

.field private final m:Ljava/lang/String;

.field private final n:I


# direct methods
.method public constructor <init>(Lanetwork/channel/aidl/ParcelableRequest;I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const v2, 0x466a6000    # 15000.0f

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v1, p0, Lanetwork/channel/entity/RequestConfig;->f:Lanet/channel/request/Request;

    .line 35
    iput v0, p0, Lanetwork/channel/entity/RequestConfig;->g:I

    .line 36
    iput v0, p0, Lanetwork/channel/entity/RequestConfig;->h:I

    .line 37
    iput v0, p0, Lanetwork/channel/entity/RequestConfig;->i:I

    .line 38
    iput v0, p0, Lanetwork/channel/entity/RequestConfig;->j:I

    .line 39
    iput v0, p0, Lanetwork/channel/entity/RequestConfig;->k:I

    .line 41
    iput-object v1, p0, Lanetwork/channel/entity/RequestConfig;->l:Lanet/channel/statist/RequestStatistic;

    .line 46
    if-nez p1, :cond_0

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "request is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    iput-object p1, p0, Lanetwork/channel/entity/RequestConfig;->e:Lanetwork/channel/aidl/ParcelableRequest;

    .line 51
    iput p2, p0, Lanetwork/channel/entity/RequestConfig;->n:I

    .line 52
    invoke-virtual {p1}, Lanetwork/channel/aidl/ParcelableRequest;->l()Ljava/lang/String;

    move-result-object v1

    if-nez p2, :cond_5

    const-string v0, "HTTP"

    :goto_0
    invoke-static {v1, v0}, Lanetwork/channel/util/SeqGen;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/entity/RequestConfig;->m:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Lanetwork/channel/aidl/ParcelableRequest;->i()I

    move-result v0

    iput v0, p0, Lanetwork/channel/entity/RequestConfig;->j:I

    .line 56
    iget v0, p0, Lanetwork/channel/entity/RequestConfig;->j:I

    if-gtz v0, :cond_1

    .line 57
    invoke-static {}, Lanet/channel/util/Utils;->getNetworkTimeFactor()F

    move-result v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lanetwork/channel/entity/RequestConfig;->j:I

    .line 60
    :cond_1
    invoke-virtual {p1}, Lanetwork/channel/aidl/ParcelableRequest;->j()I

    move-result v0

    iput v0, p0, Lanetwork/channel/entity/RequestConfig;->k:I

    .line 61
    iget v0, p0, Lanetwork/channel/entity/RequestConfig;->k:I

    if-gtz v0, :cond_2

    .line 62
    invoke-static {}, Lanet/channel/util/Utils;->getNetworkTimeFactor()F

    move-result v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lanetwork/channel/entity/RequestConfig;->k:I

    .line 65
    :cond_2
    invoke-virtual {p1}, Lanetwork/channel/aidl/ParcelableRequest;->f()I

    move-result v0

    iput v0, p0, Lanetwork/channel/entity/RequestConfig;->i:I

    .line 66
    iget v0, p0, Lanetwork/channel/entity/RequestConfig;->i:I

    if-ltz v0, :cond_3

    iget v0, p0, Lanetwork/channel/entity/RequestConfig;->i:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_4

    .line 67
    :cond_3
    const/4 v0, 0x2

    iput v0, p0, Lanetwork/channel/entity/RequestConfig;->i:I

    .line 70
    :cond_4
    invoke-direct {p0}, Lanetwork/channel/entity/RequestConfig;->p()Lanet/channel/util/c;

    move-result-object v0

    .line 72
    new-instance v1, Lanet/channel/statist/RequestStatistic;

    invoke-virtual {v0}, Lanet/channel/util/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lanetwork/channel/aidl/ParcelableRequest;->k()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lanet/channel/statist/RequestStatistic;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lanetwork/channel/entity/RequestConfig;->l:Lanet/channel/statist/RequestStatistic;

    .line 73
    iget-object v1, p0, Lanetwork/channel/entity/RequestConfig;->l:Lanet/channel/statist/RequestStatistic;

    invoke-virtual {v0}, Lanet/channel/util/c;->e()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lanet/channel/statist/RequestStatistic;->url:Ljava/lang/String;

    .line 75
    invoke-direct {p0, v0}, Lanetwork/channel/entity/RequestConfig;->b(Lanet/channel/util/c;)Lanet/channel/request/Request;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/entity/RequestConfig;->f:Lanet/channel/request/Request;

    .line 76
    return-void

    .line 52
    :cond_5
    const-string v0, "DGRD"

    goto :goto_0
.end method

.method private b(Lanet/channel/util/c;)Lanet/channel/request/Request;
    .locals 4

    .prologue
    .line 101
    new-instance v0, Lanet/channel/request/Request$Builder;

    invoke-direct {v0}, Lanet/channel/request/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lanet/channel/request/Request$Builder;->setUrl(Lanet/channel/util/c;)Lanet/channel/request/Request$Builder;

    move-result-object v0

    iget-object v1, p0, Lanetwork/channel/entity/RequestConfig;->e:Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v1}, Lanetwork/channel/aidl/ParcelableRequest;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lanet/channel/request/Request$Builder;->setMethod(Ljava/lang/String;)Lanet/channel/request/Request$Builder;

    move-result-object v0

    iget-object v1, p0, Lanetwork/channel/entity/RequestConfig;->e:Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v1}, Lanetwork/channel/aidl/ParcelableRequest;->e()Lanet/channel/request/BodyEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lanet/channel/request/Request$Builder;->setBody(Lanet/channel/request/BodyEntry;)Lanet/channel/request/Request$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lanetwork/channel/entity/RequestConfig;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lanet/channel/request/Request$Builder;->setReadTimeout(I)Lanet/channel/request/Request$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lanetwork/channel/entity/RequestConfig;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lanet/channel/request/Request$Builder;->setConnectTimeout(I)Lanet/channel/request/Request$Builder;

    move-result-object v0

    iget-object v1, p0, Lanetwork/channel/entity/RequestConfig;->e:Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v1}, Lanetwork/channel/aidl/ParcelableRequest;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Lanet/channel/request/Request$Builder;->setRedirectEnable(Z)Lanet/channel/request/Request$Builder;

    move-result-object v0

    iget v1, p0, Lanetwork/channel/entity/RequestConfig;->h:I

    invoke-virtual {v0, v1}, Lanet/channel/request/Request$Builder;->setRedirectTimes(I)Lanet/channel/request/Request$Builder;

    move-result-object v0

    iget-object v1, p0, Lanetwork/channel/entity/RequestConfig;->e:Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v1}, Lanetwork/channel/aidl/ParcelableRequest;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lanet/channel/request/Request$Builder;->setBizId(Ljava/lang/String;)Lanet/channel/request/Request$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lanetwork/channel/entity/RequestConfig;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lanet/channel/request/Request$Builder;->setSeq(Ljava/lang/String;)Lanet/channel/request/Request$Builder;

    move-result-object v0

    iget-object v1, p0, Lanetwork/channel/entity/RequestConfig;->l:Lanet/channel/statist/RequestStatistic;

    invoke-virtual {v0, v1}, Lanet/channel/request/Request$Builder;->setRequestStatistic(Lanet/channel/statist/RequestStatistic;)Lanet/channel/request/Request$Builder;

    move-result-object v1

    .line 113
    iget-object v0, p0, Lanetwork/channel/entity/RequestConfig;->e:Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v0}, Lanetwork/channel/aidl/ParcelableRequest;->g()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lanetwork/channel/entity/RequestConfig;->e:Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v0}, Lanetwork/channel/aidl/ParcelableRequest;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanetwork/channel/Param;

    .line 115
    invoke-interface {v0}, Lanetwork/channel/Param;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lanetwork/channel/Param;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lanet/channel/request/Request$Builder;->addParam(Ljava/lang/String;Ljava/lang/String;)Lanet/channel/request/Request$Builder;

    goto :goto_0

    .line 119
    :cond_0
    iget-object v0, p0, Lanetwork/channel/entity/RequestConfig;->e:Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v0}, Lanetwork/channel/aidl/ParcelableRequest;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lanetwork/channel/entity/RequestConfig;->e:Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v0}, Lanetwork/channel/aidl/ParcelableRequest;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lanet/channel/request/Request$Builder;->setCharset(Ljava/lang/String;)Lanet/channel/request/Request$Builder;

    .line 123
    :cond_1
    invoke-direct {p0, p1}, Lanetwork/channel/entity/RequestConfig;->c(Lanet/channel/util/c;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lanet/channel/request/Request$Builder;->setHeaders(Ljava/util/Map;)Lanet/channel/request/Request$Builder;

    .line 124
    invoke-virtual {v1}, Lanet/channel/request/Request$Builder;->build()Lanet/channel/request/Request;

    move-result-object v0

    return-object v0
.end method

.method private c(Lanet/channel/util/c;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lanet/channel/util/c;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    const/4 v0, 0x1

    .line 186
    invoke-virtual {p1}, Lanet/channel/util/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lanet/channel/strategy/utils/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 187
    const/4 v0, 0x0

    move v1, v0

    .line 190
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 191
    iget-object v0, p0, Lanetwork/channel/entity/RequestConfig;->e:Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v0}, Lanetwork/channel/aidl/ParcelableRequest;->h()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 192
    iget-object v0, p0, Lanetwork/channel/entity/RequestConfig;->e:Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v0}, Lanetwork/channel/aidl/ParcelableRequest;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanetwork/channel/Header;

    .line 193
    invoke-interface {v0}, Lanetwork/channel/Header;->a()Ljava/lang/String;

    move-result-object v4

    .line 194
    const-string v5, "Host"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, ":host"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 195
    :cond_1
    if-nez v1, :cond_0

    .line 196
    const-string v4, "Host"

    invoke-interface {v0}, Lanetwork/channel/Header;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 201
    :cond_2
    invoke-interface {v0}, Lanetwork/channel/Header;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 205
    :cond_3
    return-object v2

    :cond_4
    move v1, v0

    goto :goto_0
.end method

.method private p()Lanet/channel/util/c;
    .locals 4

    .prologue
    .line 87
    iget-object v0, p0, Lanetwork/channel/entity/RequestConfig;->e:Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v0}, Lanetwork/channel/aidl/ParcelableRequest;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lanet/channel/util/c;->a(Ljava/lang/String;)Lanet/channel/util/c;

    move-result-object v0

    .line 88
    if-nez v0, :cond_0

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url is invalid. url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lanetwork/channel/entity/RequestConfig;->e:Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v2}, Lanetwork/channel/aidl/ParcelableRequest;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    invoke-static {}, Lanetwork/channel/config/NetworkConfigCenter;->b()Z

    move-result v1

    if-nez v1, :cond_2

    .line 93
    invoke-virtual {v0}, Lanet/channel/util/c;->g()V

    .line 97
    :cond_1
    :goto_0
    return-object v0

    .line 94
    :cond_2
    const-string v1, "false"

    iget-object v2, p0, Lanetwork/channel/entity/RequestConfig;->e:Lanetwork/channel/aidl/ParcelableRequest;

    const-string v3, "EnableSchemeReplace"

    invoke-virtual {v2, v3}, Lanetwork/channel/aidl/ParcelableRequest;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    invoke-virtual {v0}, Lanet/channel/util/c;->i()V

    goto :goto_0
.end method


# virtual methods
.method public a()Lanet/channel/request/Request;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lanetwork/channel/entity/RequestConfig;->f:Lanet/channel/request/Request;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lanetwork/channel/entity/RequestConfig;->e:Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v0, p1}, Lanetwork/channel/aidl/ParcelableRequest;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lanet/channel/request/Request;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lanetwork/channel/entity/RequestConfig;->f:Lanet/channel/request/Request;

    .line 84
    return-void
.end method

.method public a(Lanet/channel/util/c;)V
    .locals 3

    .prologue
    .line 218
    iget v0, p0, Lanetwork/channel/entity/RequestConfig;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lanetwork/channel/entity/RequestConfig;->h:I

    .line 219
    new-instance v0, Lanet/channel/statist/RequestStatistic;

    invoke-virtual {p1}, Lanet/channel/util/c;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lanetwork/channel/entity/RequestConfig;->e:Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v2}, Lanetwork/channel/aidl/ParcelableRequest;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lanet/channel/statist/RequestStatistic;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lanetwork/channel/entity/RequestConfig;->l:Lanet/channel/statist/RequestStatistic;

    .line 220
    iget-object v0, p0, Lanetwork/channel/entity/RequestConfig;->l:Lanet/channel/statist/RequestStatistic;

    invoke-virtual {p1}, Lanet/channel/util/c;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lanet/channel/statist/RequestStatistic;->url:Ljava/lang/String;

    .line 222
    invoke-direct {p0, p1}, Lanetwork/channel/entity/RequestConfig;->b(Lanet/channel/util/c;)Lanet/channel/request/Request;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/entity/RequestConfig;->f:Lanet/channel/request/Request;

    .line 223
    return-void
.end method

.method public b()Lanet/channel/statist/RequestStatistic;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lanetwork/channel/entity/RequestConfig;->l:Lanet/channel/statist/RequestStatistic;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lanetwork/channel/entity/RequestConfig;->g:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lanetwork/channel/entity/RequestConfig;->k:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lanetwork/channel/entity/RequestConfig;->j:I

    return v0
.end method

.method public f()I
    .locals 2

    .prologue
    .line 144
    iget v0, p0, Lanetwork/channel/entity/RequestConfig;->k:I

    iget v1, p0, Lanetwork/channel/entity/RequestConfig;->i:I

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lanetwork/channel/entity/RequestConfig;->m:Ljava/lang/String;

    return-object v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lanetwork/channel/entity/RequestConfig;->n:I

    return v0
.end method

.method public i()Z
    .locals 2

    .prologue
    .line 161
    iget v0, p0, Lanetwork/channel/entity/RequestConfig;->g:I

    iget v1, p0, Lanetwork/channel/entity/RequestConfig;->i:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Z
    .locals 3

    .prologue
    .line 165
    invoke-static {}, Lanetwork/channel/config/NetworkConfigCenter;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "false"

    iget-object v1, p0, Lanetwork/channel/entity/RequestConfig;->e:Lanetwork/channel/aidl/ParcelableRequest;

    const-string v2, "EnableHttpDns"

    invoke-virtual {v1, v2}, Lanetwork/channel/aidl/ParcelableRequest;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lanetwork/channel/config/NetworkConfigCenter;->f()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lanetwork/channel/entity/RequestConfig;->c()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()Lanet/channel/util/c;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lanetwork/channel/entity/RequestConfig;->f:Lanet/channel/request/Request;

    invoke-virtual {v0}, Lanet/channel/request/Request;->getHttpUrl()Lanet/channel/util/c;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lanetwork/channel/entity/RequestConfig;->f:Lanet/channel/request/Request;

    invoke-virtual {v0}, Lanet/channel/request/Request;->getUrlString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/util/Map;
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
    .line 180
    iget-object v0, p0, Lanetwork/channel/entity/RequestConfig;->f:Lanet/channel/request/Request;

    invoke-virtual {v0}, Lanet/channel/request/Request;->getHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public n()Z
    .locals 3

    .prologue
    .line 209
    const-string v0, "false"

    iget-object v1, p0, Lanetwork/channel/entity/RequestConfig;->e:Lanetwork/channel/aidl/ParcelableRequest;

    const-string v2, "EnableCookie"

    invoke-virtual {v1, v2}, Lanetwork/channel/aidl/ParcelableRequest;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o()V
    .locals 2

    .prologue
    .line 213
    iget v0, p0, Lanetwork/channel/entity/RequestConfig;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lanetwork/channel/entity/RequestConfig;->g:I

    .line 214
    iget-object v0, p0, Lanetwork/channel/entity/RequestConfig;->l:Lanet/channel/statist/RequestStatistic;

    iget v1, p0, Lanetwork/channel/entity/RequestConfig;->g:I

    iput v1, v0, Lanet/channel/statist/RequestStatistic;->retryTimes:I

    .line 215
    return-void
.end method
