.class public interface abstract Lokhttp3/internal/framed/FrameReader$Handler;
.super Ljava/lang/Object;
.source "FrameReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/framed/FrameReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Handler"
.end annotation


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(IIIZ)V
.end method

.method public abstract a(IILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(IJ)V
.end method

.method public abstract a(ILjava/lang/String;Lokio/ByteString;Ljava/lang/String;IJ)V
.end method

.method public abstract a(ILokhttp3/internal/framed/ErrorCode;)V
.end method

.method public abstract a(ILokhttp3/internal/framed/ErrorCode;Lokio/ByteString;)V
.end method

.method public abstract a(ZII)V
.end method

.method public abstract a(ZILokio/BufferedSource;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(ZLokhttp3/internal/framed/Settings;)V
.end method

.method public abstract a(ZZIILjava/util/List;Lokhttp3/internal/framed/HeadersMode;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;",
            "Lokhttp3/internal/framed/HeadersMode;",
            ")V"
        }
    .end annotation
.end method
