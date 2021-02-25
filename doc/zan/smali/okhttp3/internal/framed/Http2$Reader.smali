.class final Lokhttp3/internal/framed/Http2$Reader;
.super Ljava/lang/Object;
.source "Http2.java"

# interfaces
.implements Lokhttp3/internal/framed/FrameReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/framed/Http2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Reader"
.end annotation


# instance fields
.field final a:Lokhttp3/internal/framed/Hpack$Reader;

.field private final b:Lokio/BufferedSource;

.field private final c:Lokhttp3/internal/framed/Http2$ContinuationSource;

.field private final d:Z


# direct methods
.method constructor <init>(Lokio/BufferedSource;IZ)V
    .locals 2

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lokhttp3/internal/framed/Http2$Reader;->b:Lokio/BufferedSource;

    .line 95
    iput-boolean p3, p0, Lokhttp3/internal/framed/Http2$Reader;->d:Z

    .line 96
    new-instance v0, Lokhttp3/internal/framed/Http2$ContinuationSource;

    iget-object v1, p0, Lokhttp3/internal/framed/Http2$Reader;->b:Lokio/BufferedSource;

    invoke-direct {v0, v1}, Lokhttp3/internal/framed/Http2$ContinuationSource;-><init>(Lokio/BufferedSource;)V

    iput-object v0, p0, Lokhttp3/internal/framed/Http2$Reader;->c:Lokhttp3/internal/framed/Http2$ContinuationSource;

    .line 97
    new-instance v0, Lokhttp3/internal/framed/Hpack$Reader;

    iget-object v1, p0, Lokhttp3/internal/framed/Http2$Reader;->c:Lokhttp3/internal/framed/Http2$ContinuationSource;

    invoke-direct {v0, p2, v1}, Lokhttp3/internal/framed/Hpack$Reader;-><init>(ILokio/Source;)V

    iput-object v0, p0, Lokhttp3/internal/framed/Http2$Reader;->a:Lokhttp3/internal/framed/Hpack$Reader;

    .line 98
    return-void
.end method

.method private a(ISBI)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ISBI)",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Reader;->c:Lokhttp3/internal/framed/Http2$ContinuationSource;

    iget-object v1, p0, Lokhttp3/internal/framed/Http2$Reader;->c:Lokhttp3/internal/framed/Http2$ContinuationSource;

    iput p1, v1, Lokhttp3/internal/framed/Http2$ContinuationSource;->d:I

    iput p1, v0, Lokhttp3/internal/framed/Http2$ContinuationSource;->a:I

    .line 204
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Reader;->c:Lokhttp3/internal/framed/Http2$ContinuationSource;

    iput-short p2, v0, Lokhttp3/internal/framed/Http2$ContinuationSource;->e:S

    .line 205
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Reader;->c:Lokhttp3/internal/framed/Http2$ContinuationSource;

    iput-byte p3, v0, Lokhttp3/internal/framed/Http2$ContinuationSource;->b:B

    .line 206
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Reader;->c:Lokhttp3/internal/framed/Http2$ContinuationSource;

    iput p4, v0, Lokhttp3/internal/framed/Http2$ContinuationSource;->c:I

    .line 210
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Reader;->a:Lokhttp3/internal/framed/Hpack$Reader;

    invoke-virtual {v0}, Lokhttp3/internal/framed/Hpack$Reader;->b()V

    .line 211
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Reader;->a:Lokhttp3/internal/framed/Hpack$Reader;

    invoke-virtual {v0}, Lokhttp3/internal/framed/Hpack$Reader;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(Lokhttp3/internal/framed/FrameReader$Handler;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Reader;->b:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->l()I

    move-result v1

    .line 239
    const/high16 v0, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 240
    :goto_0
    const v2, 0x7fffffff

    and-int/2addr v1, v2

    .line 241
    iget-object v2, p0, Lokhttp3/internal/framed/Http2$Reader;->b:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->j()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v2, v2, 0x1

    .line 242
    invoke-interface {p1, p2, v1, v2, v0}, Lokhttp3/internal/framed/FrameReader$Handler;->a(IIIZ)V

    .line 243
    return-void

    .line 239
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lokhttp3/internal/framed/FrameReader$Handler;IBI)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 183
    if-nez p4, :cond_0

    const-string v0, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 185
    :cond_0
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    .line 187
    :goto_0
    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_3

    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Reader;->b:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->j()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    .line 189
    :goto_1
    and-int/lit8 v3, p3, 0x20

    if-eqz v3, :cond_1

    .line 190
    invoke-direct {p0, p1, p4}, Lokhttp3/internal/framed/Http2$Reader;->a(Lokhttp3/internal/framed/FrameReader$Handler;I)V

    .line 191
    add-int/lit8 p2, p2, -0x5

    .line 194
    :cond_1
    invoke-static {p2, p3, v0}, Lokhttp3/internal/framed/Http2;->a(IBS)I

    move-result v3

    .line 196
    invoke-direct {p0, v3, v0, p3, p4}, Lokhttp3/internal/framed/Http2$Reader;->a(ISBI)Ljava/util/List;

    move-result-object v5

    .line 198
    const/4 v4, -0x1

    sget-object v6, Lokhttp3/internal/framed/HeadersMode;->HTTP_20_HEADERS:Lokhttp3/internal/framed/HeadersMode;

    move-object v0, p1

    move v3, p4

    invoke-interface/range {v0 .. v6}, Lokhttp3/internal/framed/FrameReader$Handler;->a(ZZIILjava/util/List;Lokhttp3/internal/framed/HeadersMode;)V

    .line 199
    return-void

    :cond_2
    move v2, v1

    .line 185
    goto :goto_0

    :cond_3
    move v0, v1

    .line 187
    goto :goto_1
.end method

.method private b(Lokhttp3/internal/framed/FrameReader$Handler;IBI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 217
    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_0

    move v2, v1

    .line 218
    :goto_0
    and-int/lit8 v3, p3, 0x20

    if-eqz v3, :cond_1

    .line 219
    :goto_1
    if-eqz v1, :cond_2

    .line 220
    const-string v1, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_0
    move v2, v0

    .line 217
    goto :goto_0

    :cond_1
    move v1, v0

    .line 218
    goto :goto_1

    .line 223
    :cond_2
    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_3

    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Reader;->b:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->j()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    .line 224
    :cond_3
    invoke-static {p2, p3, v0}, Lokhttp3/internal/framed/Http2;->a(IBS)I

    move-result v1

    .line 226
    iget-object v3, p0, Lokhttp3/internal/framed/Http2$Reader;->b:Lokio/BufferedSource;

    invoke-interface {p1, v2, p4, v3, v1}, Lokhttp3/internal/framed/FrameReader$Handler;->a(ZILokio/BufferedSource;I)V

    .line 227
    iget-object v1, p0, Lokhttp3/internal/framed/Http2$Reader;->b:Lokio/BufferedSource;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lokio/BufferedSource;->h(J)V

    .line 228
    return-void
.end method

.method private c(Lokhttp3/internal/framed/FrameReader$Handler;IBI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 232
    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    const-string v0, "TYPE_PRIORITY length: %d != 5"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 233
    :cond_0
    if-nez p4, :cond_1

    const-string v0, "TYPE_PRIORITY streamId == 0"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 234
    :cond_1
    invoke-direct {p0, p1, p4}, Lokhttp3/internal/framed/Http2$Reader;->a(Lokhttp3/internal/framed/FrameReader$Handler;I)V

    .line 235
    return-void
.end method

.method private d(Lokhttp3/internal/framed/FrameReader$Handler;IBI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 247
    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const-string v0, "TYPE_RST_STREAM length: %d != 4"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 248
    :cond_0
    if-nez p4, :cond_1

    const-string v0, "TYPE_RST_STREAM streamId == 0"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 249
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Reader;->b:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->l()I

    move-result v0

    .line 250
    invoke-static {v0}, Lokhttp3/internal/framed/ErrorCode;->fromHttp2(I)Lokhttp3/internal/framed/ErrorCode;

    move-result-object v1

    .line 251
    if-nez v1, :cond_2

    .line 252
    const-string v1, "TYPE_RST_STREAM unexpected error code: %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 254
    :cond_2
    invoke-interface {p1, p4, v1}, Lokhttp3/internal/framed/FrameReader$Handler;->a(ILokhttp3/internal/framed/ErrorCode;)V

    .line 255
    return-void
.end method

.method private e(Lokhttp3/internal/framed/FrameReader$Handler;IBI)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 259
    if-eqz p4, :cond_0

    const-string v0, "TYPE_SETTINGS streamId != 0"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 260
    :cond_0
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_2

    .line 261
    if-eqz p2, :cond_1

    const-string v0, "FRAME_SIZE_ERROR ack frame should be empty!"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 262
    :cond_1
    invoke-interface {p1}, Lokhttp3/internal/framed/FrameReader$Handler;->a()V

    .line 302
    :goto_0
    return-void

    .line 266
    :cond_2
    rem-int/lit8 v0, p2, 0x6

    if-eqz v0, :cond_3

    const-string v0, "TYPE_SETTINGS length %% 6 != 0: %s"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 267
    :cond_3
    new-instance v3, Lokhttp3/internal/framed/Settings;

    invoke-direct {v3}, Lokhttp3/internal/framed/Settings;-><init>()V

    move v1, v2

    .line 268
    :goto_1
    if-ge v1, p2, :cond_6

    .line 269
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Reader;->b:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->k()S

    move-result v0

    .line 270
    iget-object v4, p0, Lokhttp3/internal/framed/Http2$Reader;->b:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->l()I

    move-result v4

    .line 272
    packed-switch v0, :pswitch_data_0

    .line 299
    :cond_4
    :goto_2
    :pswitch_0
    invoke-virtual {v3, v0, v2, v4}, Lokhttp3/internal/framed/Settings;->a(III)Lokhttp3/internal/framed/Settings;

    .line 268
    add-int/lit8 v0, v1, 0x6

    move v1, v0

    goto :goto_1

    .line 276
    :pswitch_1
    if-eqz v4, :cond_4

    if-eq v4, v6, :cond_4

    .line 277
    const-string v0, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 281
    :pswitch_2
    const/4 v0, 0x4

    .line 282
    goto :goto_2

    .line 284
    :pswitch_3
    const/4 v0, 0x7

    .line 285
    if-gez v4, :cond_4

    .line 286
    const-string v0, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 290
    :pswitch_4
    const/16 v5, 0x4000

    if-lt v4, v5, :cond_5

    const v5, 0xffffff

    if-le v4, v5, :cond_4

    .line 291
    :cond_5
    const-string v0, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 301
    :cond_6
    invoke-interface {p1, v2, v3}, Lokhttp3/internal/framed/FrameReader$Handler;->a(ZLokhttp3/internal/framed/Settings;)V

    goto :goto_0

    .line 272
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method private f(Lokhttp3/internal/framed/FrameReader$Handler;IBI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 306
    if-nez p4, :cond_0

    .line 307
    const-string v1, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 309
    :cond_0
    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_1

    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Reader;->b:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->j()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    .line 310
    :cond_1
    iget-object v1, p0, Lokhttp3/internal/framed/Http2$Reader;->b:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->l()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    .line 311
    add-int/lit8 v2, p2, -0x4

    .line 312
    invoke-static {v2, p3, v0}, Lokhttp3/internal/framed/Http2;->a(IBS)I

    move-result v2

    .line 313
    invoke-direct {p0, v2, v0, p3, p4}, Lokhttp3/internal/framed/Http2$Reader;->a(ISBI)Ljava/util/List;

    move-result-object v0

    .line 314
    invoke-interface {p1, p4, v1, v0}, Lokhttp3/internal/framed/FrameReader$Handler;->a(IILjava/util/List;)V

    .line 315
    return-void
.end method

.method private g(Lokhttp3/internal/framed/FrameReader$Handler;IBI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 319
    const/16 v2, 0x8

    if-eq p2, v2, :cond_0

    const-string v2, "TYPE_PING length != 8: %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v2, v0}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 320
    :cond_0
    if-eqz p4, :cond_1

    const-string v0, "TYPE_PING streamId != 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 321
    :cond_1
    iget-object v2, p0, Lokhttp3/internal/framed/Http2$Reader;->b:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->l()I

    move-result v2

    .line 322
    iget-object v3, p0, Lokhttp3/internal/framed/Http2$Reader;->b:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->l()I

    move-result v3

    .line 323
    and-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_2

    .line 324
    :goto_0
    invoke-interface {p1, v0, v2, v3}, Lokhttp3/internal/framed/FrameReader$Handler;->a(ZII)V

    .line 325
    return-void

    :cond_2
    move v0, v1

    .line 323
    goto :goto_0
.end method

.method private h(Lokhttp3/internal/framed/FrameReader$Handler;IBI)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 329
    const/16 v0, 0x8

    if-ge p2, v0, :cond_0

    const-string v0, "TYPE_GOAWAY length < 8: %s"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 330
    :cond_0
    if-eqz p4, :cond_1

    const-string v0, "TYPE_GOAWAY streamId != 0"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 331
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Reader;->b:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->l()I

    move-result v1

    .line 332
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Reader;->b:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->l()I

    move-result v0

    .line 333
    add-int/lit8 v2, p2, -0x8

    .line 334
    invoke-static {v0}, Lokhttp3/internal/framed/ErrorCode;->fromHttp2(I)Lokhttp3/internal/framed/ErrorCode;

    move-result-object v3

    .line 335
    if-nez v3, :cond_2

    .line 336
    const-string v1, "TYPE_GOAWAY unexpected error code: %d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 338
    :cond_2
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 339
    if-lez v2, :cond_3

    .line 340
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Reader;->b:Lokio/BufferedSource;

    int-to-long v4, v2

    invoke-interface {v0, v4, v5}, Lokio/BufferedSource;->d(J)Lokio/ByteString;

    move-result-object v0

    .line 342
    :cond_3
    invoke-interface {p1, v1, v3, v0}, Lokhttp3/internal/framed/FrameReader$Handler;->a(ILokhttp3/internal/framed/ErrorCode;Lokio/ByteString;)V

    .line 343
    return-void
.end method

.method private i(Lokhttp3/internal/framed/FrameReader$Handler;IBI)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 347
    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const-string v0, "TYPE_WINDOW_UPDATE length !=4: %s"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 348
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Reader;->b:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->l()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    .line 349
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const-string v2, "windowSizeIncrement was 0"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 350
    :cond_1
    invoke-interface {p1, p4, v0, v1}, Lokhttp3/internal/framed/FrameReader$Handler;->a(IJ)V

    .line 351
    return-void
.end method


# virtual methods
.method public a()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 101
    iget-boolean v0, p0, Lokhttp3/internal/framed/Http2$Reader;->d:Z

    if-eqz v0, :cond_1

    .line 107
    :cond_0
    return-void

    .line 102
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Reader;->b:Lokio/BufferedSource;

    invoke-static {}, Lokhttp3/internal/framed/Http2;->b()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->size()I

    move-result v1

    int-to-long v2, v1

    invoke-interface {v0, v2, v3}, Lokio/BufferedSource;->d(J)Lokio/ByteString;

    move-result-object v0

    .line 103
    invoke-static {}, Lokhttp3/internal/framed/Http2;->c()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lokhttp3/internal/framed/Http2;->c()Ljava/util/logging/Logger;

    move-result-object v1

    const-string v2, "<< CONNECTION %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lokhttp3/internal/Util;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 104
    :cond_2
    invoke-static {}, Lokhttp3/internal/framed/Http2;->b()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    const-string v1, "Expected a connection header but was %s"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public a(Lokhttp3/internal/framed/FrameReader$Handler;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 111
    :try_start_0
    iget-object v2, p0, Lokhttp3/internal/framed/Http2$Reader;->b:Lokio/BufferedSource;

    const-wide/16 v4, 0x9

    invoke-interface {v2, v4, v5}, Lokio/BufferedSource;->a(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    iget-object v2, p0, Lokhttp3/internal/framed/Http2$Reader;->b:Lokio/BufferedSource;

    invoke-static {v2}, Lokhttp3/internal/framed/Http2;->a(Lokio/BufferedSource;)I

    move-result v2

    .line 129
    if-ltz v2, :cond_0

    const/16 v3, 0x4000

    if-le v2, v3, :cond_1

    .line 130
    :cond_0
    const-string v3, "FRAME_SIZE_ERROR: %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v3, v0}, Lokhttp3/internal/framed/Http2;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 112
    :catch_0
    move-exception v0

    move v0, v1

    .line 178
    :goto_0
    return v0

    .line 132
    :cond_1
    iget-object v1, p0, Lokhttp3/internal/framed/Http2$Reader;->b:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->j()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 133
    iget-object v3, p0, Lokhttp3/internal/framed/Http2$Reader;->b:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->j()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 134
    iget-object v4, p0, Lokhttp3/internal/framed/Http2$Reader;->b:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->l()I

    move-result v4

    const v5, 0x7fffffff

    and-int/2addr v4, v5

    .line 135
    invoke-static {}, Lokhttp3/internal/framed/Http2;->c()Ljava/util/logging/Logger;

    move-result-object v5

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lokhttp3/internal/framed/Http2;->c()Ljava/util/logging/Logger;

    move-result-object v5

    invoke-static {v0, v4, v2, v1, v3}, Lokhttp3/internal/framed/Http2$FrameLogger;->a(ZIIBB)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 137
    :cond_2
    packed-switch v1, :pswitch_data_0

    .line 176
    iget-object v1, p0, Lokhttp3/internal/framed/Http2$Reader;->b:Lokio/BufferedSource;

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lokio/BufferedSource;->h(J)V

    goto :goto_0

    .line 139
    :pswitch_0
    invoke-direct {p0, p1, v2, v3, v4}, Lokhttp3/internal/framed/Http2$Reader;->b(Lokhttp3/internal/framed/FrameReader$Handler;IBI)V

    goto :goto_0

    .line 143
    :pswitch_1
    invoke-direct {p0, p1, v2, v3, v4}, Lokhttp3/internal/framed/Http2$Reader;->a(Lokhttp3/internal/framed/FrameReader$Handler;IBI)V

    goto :goto_0

    .line 147
    :pswitch_2
    invoke-direct {p0, p1, v2, v3, v4}, Lokhttp3/internal/framed/Http2$Reader;->c(Lokhttp3/internal/framed/FrameReader$Handler;IBI)V

    goto :goto_0

    .line 151
    :pswitch_3
    invoke-direct {p0, p1, v2, v3, v4}, Lokhttp3/internal/framed/Http2$Reader;->d(Lokhttp3/internal/framed/FrameReader$Handler;IBI)V

    goto :goto_0

    .line 155
    :pswitch_4
    invoke-direct {p0, p1, v2, v3, v4}, Lokhttp3/internal/framed/Http2$Reader;->e(Lokhttp3/internal/framed/FrameReader$Handler;IBI)V

    goto :goto_0

    .line 159
    :pswitch_5
    invoke-direct {p0, p1, v2, v3, v4}, Lokhttp3/internal/framed/Http2$Reader;->f(Lokhttp3/internal/framed/FrameReader$Handler;IBI)V

    goto :goto_0

    .line 163
    :pswitch_6
    invoke-direct {p0, p1, v2, v3, v4}, Lokhttp3/internal/framed/Http2$Reader;->g(Lokhttp3/internal/framed/FrameReader$Handler;IBI)V

    goto :goto_0

    .line 167
    :pswitch_7
    invoke-direct {p0, p1, v2, v3, v4}, Lokhttp3/internal/framed/Http2$Reader;->h(Lokhttp3/internal/framed/FrameReader$Handler;IBI)V

    goto :goto_0

    .line 171
    :pswitch_8
    invoke-direct {p0, p1, v2, v3, v4}, Lokhttp3/internal/framed/Http2$Reader;->i(Lokhttp3/internal/framed/FrameReader$Handler;IBI)V

    goto :goto_0

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 354
    iget-object v0, p0, Lokhttp3/internal/framed/Http2$Reader;->b:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->close()V

    .line 355
    return-void
.end method
