.class public interface abstract Lokhttp3/internal/http/HttpStream;
.super Ljava/lang/Object;
.source "HttpStream.java"


# static fields
.field public static final a:I = 0x64


# virtual methods
.method public abstract a(Lokhttp3/Response;)Lokhttp3/ResponseBody;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(Lokhttp3/Request;J)Lokio/Sink;
.end method

.method public abstract a()V
.end method

.method public abstract a(Lokhttp3/Request;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract b()Lokhttp3/Response$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract d()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
