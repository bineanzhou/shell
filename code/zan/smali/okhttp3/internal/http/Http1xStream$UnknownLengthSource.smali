.class Lokhttp3/internal/http/Http1xStream$UnknownLengthSource;
.super Lokhttp3/internal/http/Http1xStream$AbstractSource;
.source "Http1xStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http/Http1xStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnknownLengthSource"
.end annotation


# instance fields
.field final synthetic d:Lokhttp3/internal/http/Http1xStream;

.field private e:Z


# direct methods
.method private constructor <init>(Lokhttp3/internal/http/Http1xStream;)V
    .locals 1

    .prologue
    .line 463
    iput-object p1, p0, Lokhttp3/internal/http/Http1xStream$UnknownLengthSource;->d:Lokhttp3/internal/http/Http1xStream;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lokhttp3/internal/http/Http1xStream$AbstractSource;-><init>(Lokhttp3/internal/http/Http1xStream;Lokhttp3/internal/http/Http1xStream$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/internal/http/Http1xStream;Lokhttp3/internal/http/Http1xStream$1;)V
    .locals 0

    .prologue
    .line 463
    invoke-direct {p0, p1}, Lokhttp3/internal/http/Http1xStream$UnknownLengthSource;-><init>(Lokhttp3/internal/http/Http1xStream;)V

    return-void
.end method


# virtual methods
.method public a(Lokio/Buffer;J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const-wide/16 v0, -0x1

    .line 468
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gez v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 469
    :cond_0
    iget-boolean v2, p0, Lokhttp3/internal/http/Http1xStream$UnknownLengthSource;->b:Z

    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 470
    :cond_1
    iget-boolean v2, p0, Lokhttp3/internal/http/Http1xStream$UnknownLengthSource;->e:Z

    if-eqz v2, :cond_2

    .line 478
    :goto_0
    return-wide v0

    .line 472
    :cond_2
    iget-object v2, p0, Lokhttp3/internal/http/Http1xStream$UnknownLengthSource;->d:Lokhttp3/internal/http/Http1xStream;

    invoke-static {v2}, Lokhttp3/internal/http/Http1xStream;->b(Lokhttp3/internal/http/Http1xStream;)Lokio/BufferedSource;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lokio/BufferedSource;->a(Lokio/Buffer;J)J

    move-result-wide v2

    .line 473
    cmp-long v4, v2, v0

    if-nez v4, :cond_3

    .line 474
    iput-boolean v5, p0, Lokhttp3/internal/http/Http1xStream$UnknownLengthSource;->e:Z

    .line 475
    invoke-virtual {p0, v5}, Lokhttp3/internal/http/Http1xStream$UnknownLengthSource;->a(Z)V

    goto :goto_0

    :cond_3
    move-wide v0, v2

    .line 478
    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 482
    iget-boolean v0, p0, Lokhttp3/internal/http/Http1xStream$UnknownLengthSource;->b:Z

    if-eqz v0, :cond_0

    .line 487
    :goto_0
    return-void

    .line 483
    :cond_0
    iget-boolean v0, p0, Lokhttp3/internal/http/Http1xStream$UnknownLengthSource;->e:Z

    if-nez v0, :cond_1

    .line 484
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lokhttp3/internal/http/Http1xStream$UnknownLengthSource;->a(Z)V

    .line 486
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/http/Http1xStream$UnknownLengthSource;->b:Z

    goto :goto_0
.end method
