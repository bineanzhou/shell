.class Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;
.super Lokhttp3/RequestBody;
.source "RequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/RequestBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContentTypeOverridingRequestBody"
.end annotation


# instance fields
.field private final a:Lokhttp3/RequestBody;

.field private final b:Lokhttp3/MediaType;


# direct methods
.method constructor <init>(Lokhttp3/RequestBody;Lokhttp3/MediaType;)V
    .locals 0

    .prologue
    .line 229
    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    .line 230
    iput-object p1, p0, Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;->a:Lokhttp3/RequestBody;

    .line 231
    iput-object p2, p0, Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;->b:Lokhttp3/MediaType;

    .line 232
    return-void
.end method


# virtual methods
.method public a(Lokio/BufferedSink;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;->a:Lokhttp3/RequestBody;

    invoke-virtual {v0, p1}, Lokhttp3/RequestBody;->a(Lokio/BufferedSink;)V

    .line 244
    return-void
.end method

.method public b()Lokhttp3/MediaType;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;->b:Lokhttp3/MediaType;

    return-object v0
.end method

.method public c()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;->a:Lokhttp3/RequestBody;

    invoke-virtual {v0}, Lokhttp3/RequestBody;->c()J

    move-result-wide v0

    return-wide v0
.end method
