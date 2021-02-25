.class public final Lokhttp3/Response;
.super Ljava/lang/Object;
.source "Response.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/Response$Builder;
    }
.end annotation


# instance fields
.field private final a:Lokhttp3/Request;

.field private final b:Lokhttp3/Protocol;

.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:Lokhttp3/Handshake;

.field private final f:Lokhttp3/Headers;

.field private final g:Lokhttp3/ResponseBody;

.field private final h:Lokhttp3/Response;

.field private final i:Lokhttp3/Response;

.field private final j:Lokhttp3/Response;

.field private final k:J

.field private final l:J

.field private volatile m:Lokhttp3/CacheControl;


# direct methods
.method private constructor <init>(Lokhttp3/Response$Builder;)V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {p1}, Lokhttp3/Response$Builder;->a(Lokhttp3/Response$Builder;)Lokhttp3/Request;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response;->a:Lokhttp3/Request;

    .line 60
    invoke-static {p1}, Lokhttp3/Response$Builder;->b(Lokhttp3/Response$Builder;)Lokhttp3/Protocol;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response;->b:Lokhttp3/Protocol;

    .line 61
    invoke-static {p1}, Lokhttp3/Response$Builder;->c(Lokhttp3/Response$Builder;)I

    move-result v0

    iput v0, p0, Lokhttp3/Response;->c:I

    .line 62
    invoke-static {p1}, Lokhttp3/Response$Builder;->d(Lokhttp3/Response$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response;->d:Ljava/lang/String;

    .line 63
    invoke-static {p1}, Lokhttp3/Response$Builder;->e(Lokhttp3/Response$Builder;)Lokhttp3/Handshake;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response;->e:Lokhttp3/Handshake;

    .line 64
    invoke-static {p1}, Lokhttp3/Response$Builder;->f(Lokhttp3/Response$Builder;)Lokhttp3/Headers$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->a()Lokhttp3/Headers;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response;->f:Lokhttp3/Headers;

    .line 65
    invoke-static {p1}, Lokhttp3/Response$Builder;->g(Lokhttp3/Response$Builder;)Lokhttp3/ResponseBody;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response;->g:Lokhttp3/ResponseBody;

    .line 66
    invoke-static {p1}, Lokhttp3/Response$Builder;->h(Lokhttp3/Response$Builder;)Lokhttp3/Response;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response;->h:Lokhttp3/Response;

    .line 67
    invoke-static {p1}, Lokhttp3/Response$Builder;->i(Lokhttp3/Response$Builder;)Lokhttp3/Response;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response;->i:Lokhttp3/Response;

    .line 68
    invoke-static {p1}, Lokhttp3/Response$Builder;->j(Lokhttp3/Response$Builder;)Lokhttp3/Response;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response;->j:Lokhttp3/Response;

    .line 69
    invoke-static {p1}, Lokhttp3/Response$Builder;->k(Lokhttp3/Response$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/Response;->k:J

    .line 70
    invoke-static {p1}, Lokhttp3/Response$Builder;->l(Lokhttp3/Response$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/Response;->l:J

    .line 71
    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/Response$Builder;Lokhttp3/Response$1;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lokhttp3/Response;-><init>(Lokhttp3/Response$Builder;)V

    return-void
.end method

.method static synthetic a(Lokhttp3/Response;)Lokhttp3/Request;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lokhttp3/Response;->a:Lokhttp3/Request;

    return-object v0
.end method

.method static synthetic b(Lokhttp3/Response;)Lokhttp3/Protocol;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lokhttp3/Response;->b:Lokhttp3/Protocol;

    return-object v0
.end method

.method static synthetic c(Lokhttp3/Response;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lokhttp3/Response;->c:I

    return v0
.end method

.method static synthetic d(Lokhttp3/Response;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lokhttp3/Response;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lokhttp3/Response;)Lokhttp3/Handshake;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lokhttp3/Response;->e:Lokhttp3/Handshake;

    return-object v0
.end method

.method static synthetic f(Lokhttp3/Response;)Lokhttp3/Headers;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lokhttp3/Response;->f:Lokhttp3/Headers;

    return-object v0
.end method

.method static synthetic g(Lokhttp3/Response;)Lokhttp3/ResponseBody;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lokhttp3/Response;->g:Lokhttp3/ResponseBody;

    return-object v0
.end method

.method static synthetic h(Lokhttp3/Response;)Lokhttp3/Response;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lokhttp3/Response;->h:Lokhttp3/Response;

    return-object v0
.end method

.method static synthetic i(Lokhttp3/Response;)Lokhttp3/Response;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lokhttp3/Response;->i:Lokhttp3/Response;

    return-object v0
.end method

.method static synthetic j(Lokhttp3/Response;)Lokhttp3/Response;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lokhttp3/Response;->j:Lokhttp3/Response;

    return-object v0
.end method

.method static synthetic k(Lokhttp3/Response;)J
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lokhttp3/Response;->k:J

    return-wide v0
.end method

.method static synthetic l(Lokhttp3/Response;)J
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lokhttp3/Response;->l:J

    return-wide v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lokhttp3/Response;->f:Lokhttp3/Headers;

    invoke-virtual {v0, p1}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_0

    move-object p2, v0

    :cond_0
    return-object p2
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lokhttp3/Response;->f:Lokhttp3/Headers;

    invoke-virtual {v0, p1}, Lokhttp3/Headers;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a()Lokhttp3/Request;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lokhttp3/Response;->a:Lokhttp3/Request;

    return-object v0
.end method

.method public a(J)Lokhttp3/ResponseBody;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lokhttp3/Response;->g:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->c()Lokio/BufferedSource;

    move-result-object v0

    .line 152
    invoke-interface {v0, p1, p2}, Lokio/BufferedSource;->b(J)Z

    .line 153
    invoke-interface {v0}, Lokio/BufferedSource;->c()Lokio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Lokio/Buffer;->D()Lokio/Buffer;

    move-result-object v1

    .line 157
    invoke-virtual {v1}, Lokio/Buffer;->b()J

    move-result-wide v2

    cmp-long v0, v2, p1

    if-lez v0, :cond_0

    .line 158
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 159
    invoke-virtual {v0, v1, p1, p2}, Lokio/Buffer;->a_(Lokio/Buffer;J)V

    .line 160
    invoke-virtual {v1}, Lokio/Buffer;->y()V

    .line 165
    :goto_0
    iget-object v1, p0, Lokhttp3/Response;->g:Lokhttp3/ResponseBody;

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->a()Lokhttp3/MediaType;

    move-result-object v1

    invoke-virtual {v0}, Lokio/Buffer;->b()J

    move-result-wide v2

    invoke-static {v1, v2, v3, v0}, Lokhttp3/ResponseBody;->a(Lokhttp3/MediaType;JLokio/BufferedSource;)Lokhttp3/ResponseBody;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v0, v1

    .line 162
    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lokhttp3/Response;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Lokhttp3/Protocol;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lokhttp3/Response;->b:Lokhttp3/Protocol;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lokhttp3/Response;->c:I

    return v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lokhttp3/Response;->g:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    .line 270
    return-void
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 106
    iget v0, p0, Lokhttp3/Response;->c:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    iget v0, p0, Lokhttp3/Response;->c:I

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lokhttp3/Response;->d:Ljava/lang/String;

    return-object v0
.end method

.method public f()Lokhttp3/Handshake;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lokhttp3/Response;->e:Lokhttp3/Handshake;

    return-object v0
.end method

.method public g()Lokhttp3/Headers;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lokhttp3/Response;->f:Lokhttp3/Headers;

    return-object v0
.end method

.method public h()Lokhttp3/ResponseBody;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lokhttp3/Response;->g:Lokhttp3/ResponseBody;

    return-object v0
.end method

.method public i()Lokhttp3/Response$Builder;
    .locals 2

    .prologue
    .line 176
    new-instance v0, Lokhttp3/Response$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lokhttp3/Response$Builder;-><init>(Lokhttp3/Response;Lokhttp3/Response$1;)V

    return-object v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lokhttp3/Response;->c:I

    packed-switch v0, :pswitch_data_0

    .line 190
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 188
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public k()Lokhttp3/Response;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lokhttp3/Response;->h:Lokhttp3/Response;

    return-object v0
.end method

.method public l()Lokhttp3/Response;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lokhttp3/Response;->i:Lokhttp3/Response;

    return-object v0
.end method

.method public m()Lokhttp3/Response;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lokhttp3/Response;->j:Lokhttp3/Response;

    return-object v0
.end method

.method public n()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Challenge;",
            ">;"
        }
    .end annotation

    .prologue
    .line 230
    iget v0, p0, Lokhttp3/Response;->c:I

    const/16 v1, 0x191

    if-ne v0, v1, :cond_0

    .line 231
    const-string v0, "WWW-Authenticate"

    .line 237
    :goto_0
    invoke-virtual {p0}, Lokhttp3/Response;->g()Lokhttp3/Headers;

    move-result-object v1

    invoke-static {v1, v0}, Lokhttp3/internal/http/HttpHeaders;->a(Lokhttp3/Headers;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_1
    return-object v0

    .line 232
    :cond_0
    iget v0, p0, Lokhttp3/Response;->c:I

    const/16 v1, 0x197

    if-ne v0, v1, :cond_1

    .line 233
    const-string v0, "Proxy-Authenticate"

    goto :goto_0

    .line 235
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method public o()Lokhttp3/CacheControl;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lokhttp3/Response;->m:Lokhttp3/CacheControl;

    .line 246
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lokhttp3/Response;->f:Lokhttp3/Headers;

    invoke-static {v0}, Lokhttp3/CacheControl;->a(Lokhttp3/Headers;)Lokhttp3/CacheControl;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Response;->m:Lokhttp3/CacheControl;

    goto :goto_0
.end method

.method public p()J
    .locals 2

    .prologue
    .line 255
    iget-wide v0, p0, Lokhttp3/Response;->k:J

    return-wide v0
.end method

.method public q()J
    .locals 2

    .prologue
    .line 264
    iget-wide v0, p0, Lokhttp3/Response;->l:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response{protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/Response;->b:Lokhttp3/Protocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lokhttp3/Response;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/Response;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/Response;->a:Lokhttp3/Request;

    .line 280
    invoke-virtual {v1}, Lokhttp3/Request;->a()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 273
    return-object v0
.end method
