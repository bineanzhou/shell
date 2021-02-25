.class public final Lokhttp3/MultipartBody;
.super Lokhttp3/RequestBody;
.source "MultipartBody.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/MultipartBody$Builder;,
        Lokhttp3/MultipartBody$Part;
    }
.end annotation


# static fields
.field public static final a:Lokhttp3/MediaType;

.field public static final b:Lokhttp3/MediaType;

.field public static final c:Lokhttp3/MediaType;

.field public static final d:Lokhttp3/MediaType;

.field public static final e:Lokhttp3/MediaType;

.field private static final f:[B

.field private static final g:[B

.field private static final h:[B


# instance fields
.field private final i:Lokio/ByteString;

.field private final j:Lokhttp3/MediaType;

.field private final k:Lokhttp3/MediaType;

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/MultipartBody$Part;",
            ">;"
        }
    .end annotation
.end field

.field private m:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 34
    const-string v0, "multipart/mixed"

    invoke-static {v0}, Lokhttp3/MediaType;->a(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lokhttp3/MultipartBody;->a:Lokhttp3/MediaType;

    .line 41
    const-string v0, "multipart/alternative"

    invoke-static {v0}, Lokhttp3/MediaType;->a(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lokhttp3/MultipartBody;->b:Lokhttp3/MediaType;

    .line 48
    const-string v0, "multipart/digest"

    invoke-static {v0}, Lokhttp3/MediaType;->a(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lokhttp3/MultipartBody;->c:Lokhttp3/MediaType;

    .line 54
    const-string v0, "multipart/parallel"

    invoke-static {v0}, Lokhttp3/MediaType;->a(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lokhttp3/MultipartBody;->d:Lokhttp3/MediaType;

    .line 61
    const-string v0, "multipart/form-data"

    invoke-static {v0}, Lokhttp3/MediaType;->a(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lokhttp3/MultipartBody;->e:Lokhttp3/MediaType;

    .line 63
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lokhttp3/MultipartBody;->f:[B

    .line 64
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lokhttp3/MultipartBody;->g:[B

    .line 65
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lokhttp3/MultipartBody;->h:[B

    return-void

    .line 63
    nop

    :array_0
    .array-data 1
        0x3at
        0x20t
    .end array-data

    .line 64
    nop

    :array_1
    .array-data 1
        0xdt
        0xat
    .end array-data

    .line 65
    nop

    :array_2
    .array-data 1
        0x2dt
        0x2dt
    .end array-data
.end method

.method constructor <init>(Lokio/ByteString;Lokhttp3/MediaType;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/ByteString;",
            "Lokhttp3/MediaType;",
            "Ljava/util/List",
            "<",
            "Lokhttp3/MultipartBody$Part;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    .line 71
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lokhttp3/MultipartBody;->m:J

    .line 74
    iput-object p1, p0, Lokhttp3/MultipartBody;->i:Lokio/ByteString;

    .line 75
    iput-object p2, p0, Lokhttp3/MultipartBody;->j:Lokhttp3/MediaType;

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/MediaType;->a(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/MultipartBody;->k:Lokhttp3/MediaType;

    .line 77
    invoke-static {p3}, Lokhttp3/internal/Util;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/MultipartBody;->l:Ljava/util/List;

    .line 78
    return-void
.end method

.method private a(Lokio/BufferedSink;Z)J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    const-wide/16 v2, 0x0

    .line 125
    const/4 v0, 0x0

    .line 126
    if-eqz p2, :cond_7

    .line 127
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    move-object v1, v0

    move-object p1, v0

    .line 130
    :goto_0
    const/4 v0, 0x0

    iget-object v4, p0, Lokhttp3/MultipartBody;->l:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v4, v0

    :goto_1
    if-ge v4, v5, :cond_6

    .line 131
    iget-object v0, p0, Lokhttp3/MultipartBody;->l:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/MultipartBody$Part;

    .line 132
    invoke-static {v0}, Lokhttp3/MultipartBody$Part;->a(Lokhttp3/MultipartBody$Part;)Lokhttp3/Headers;

    move-result-object v6

    .line 133
    invoke-static {v0}, Lokhttp3/MultipartBody$Part;->b(Lokhttp3/MultipartBody$Part;)Lokhttp3/RequestBody;

    move-result-object v7

    .line 135
    sget-object v0, Lokhttp3/MultipartBody;->h:[B

    invoke-interface {p1, v0}, Lokio/BufferedSink;->d([B)Lokio/BufferedSink;

    .line 136
    iget-object v0, p0, Lokhttp3/MultipartBody;->i:Lokio/ByteString;

    invoke-interface {p1, v0}, Lokio/BufferedSink;->d(Lokio/ByteString;)Lokio/BufferedSink;

    .line 137
    sget-object v0, Lokhttp3/MultipartBody;->g:[B

    invoke-interface {p1, v0}, Lokio/BufferedSink;->d([B)Lokio/BufferedSink;

    .line 139
    if-eqz v6, :cond_0

    .line 140
    const/4 v0, 0x0

    invoke-virtual {v6}, Lokhttp3/Headers;->a()I

    move-result v8

    :goto_2
    if-ge v0, v8, :cond_0

    .line 141
    invoke-virtual {v6, v0}, Lokhttp3/Headers;->a(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v9}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v9

    sget-object v10, Lokhttp3/MultipartBody;->f:[B

    .line 142
    invoke-interface {v9, v10}, Lokio/BufferedSink;->d([B)Lokio/BufferedSink;

    move-result-object v9

    .line 143
    invoke-virtual {v6, v0}, Lokhttp3/Headers;->b(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v9

    sget-object v10, Lokhttp3/MultipartBody;->g:[B

    .line 144
    invoke-interface {v9, v10}, Lokio/BufferedSink;->d([B)Lokio/BufferedSink;

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 148
    :cond_0
    invoke-virtual {v7}, Lokhttp3/RequestBody;->b()Lokhttp3/MediaType;

    move-result-object v0

    .line 149
    if-eqz v0, :cond_1

    .line 150
    const-string v6, "Content-Type: "

    invoke-interface {p1, v6}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v6

    .line 151
    invoke-virtual {v0}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v0

    sget-object v6, Lokhttp3/MultipartBody;->g:[B

    .line 152
    invoke-interface {v0, v6}, Lokio/BufferedSink;->d([B)Lokio/BufferedSink;

    .line 155
    :cond_1
    invoke-virtual {v7}, Lokhttp3/RequestBody;->c()J

    move-result-wide v8

    .line 156
    const-wide/16 v10, -0x1

    cmp-long v0, v8, v10

    if-eqz v0, :cond_3

    .line 157
    const-string v0, "Content-Length: "

    invoke-interface {p1, v0}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v0

    .line 158
    invoke-interface {v0, v8, v9}, Lokio/BufferedSink;->n(J)Lokio/BufferedSink;

    move-result-object v0

    sget-object v6, Lokhttp3/MultipartBody;->g:[B

    .line 159
    invoke-interface {v0, v6}, Lokio/BufferedSink;->d([B)Lokio/BufferedSink;

    .line 166
    :cond_2
    sget-object v0, Lokhttp3/MultipartBody;->g:[B

    invoke-interface {p1, v0}, Lokio/BufferedSink;->d([B)Lokio/BufferedSink;

    .line 168
    if-eqz p2, :cond_5

    .line 169
    add-long/2addr v2, v8

    .line 174
    :goto_3
    sget-object v0, Lokhttp3/MultipartBody;->g:[B

    invoke-interface {p1, v0}, Lokio/BufferedSink;->d([B)Lokio/BufferedSink;

    .line 130
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_1

    .line 160
    :cond_3
    if-eqz p2, :cond_2

    .line 162
    invoke-virtual {v1}, Lokio/Buffer;->y()V

    .line 163
    const-wide/16 v2, -0x1

    .line 187
    :cond_4
    :goto_4
    return-wide v2

    .line 171
    :cond_5
    invoke-virtual {v7, p1}, Lokhttp3/RequestBody;->a(Lokio/BufferedSink;)V

    goto :goto_3

    .line 177
    :cond_6
    sget-object v0, Lokhttp3/MultipartBody;->h:[B

    invoke-interface {p1, v0}, Lokio/BufferedSink;->d([B)Lokio/BufferedSink;

    .line 178
    iget-object v0, p0, Lokhttp3/MultipartBody;->i:Lokio/ByteString;

    invoke-interface {p1, v0}, Lokio/BufferedSink;->d(Lokio/ByteString;)Lokio/BufferedSink;

    .line 179
    sget-object v0, Lokhttp3/MultipartBody;->h:[B

    invoke-interface {p1, v0}, Lokio/BufferedSink;->d([B)Lokio/BufferedSink;

    .line 180
    sget-object v0, Lokhttp3/MultipartBody;->g:[B

    invoke-interface {p1, v0}, Lokio/BufferedSink;->d([B)Lokio/BufferedSink;

    .line 182
    if-eqz p2, :cond_4

    .line 183
    invoke-virtual {v1}, Lokio/Buffer;->b()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 184
    invoke-virtual {v1}, Lokio/Buffer;->y()V

    goto :goto_4

    :cond_7
    move-object v1, v0

    goto/16 :goto_0
.end method

.method static a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 4

    .prologue
    const/16 v3, 0x22

    .line 201
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 202
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 203
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 204
    sparse-switch v2, :sswitch_data_0

    .line 215
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 202
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 206
    :sswitch_0
    const-string v2, "%0A"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 209
    :sswitch_1
    const-string v2, "%0D"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 212
    :sswitch_2
    const-string v2, "%22"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 219
    :cond_0
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 220
    return-object p0

    .line 204
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xd -> :sswitch_1
        0x22 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public a()Lokhttp3/MediaType;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lokhttp3/MultipartBody;->j:Lokhttp3/MediaType;

    return-object v0
.end method

.method public a(I)Lokhttp3/MultipartBody$Part;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lokhttp3/MultipartBody;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/MultipartBody$Part;

    return-object v0
.end method

.method public a(Lokio/BufferedSink;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lokhttp3/MultipartBody;->a(Lokio/BufferedSink;Z)J

    .line 114
    return-void
.end method

.method public b()Lokhttp3/MediaType;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lokhttp3/MultipartBody;->k:Lokhttp3/MediaType;

    return-object v0
.end method

.method public c()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    iget-wide v0, p0, Lokhttp3/MultipartBody;->m:J

    .line 108
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 109
    :goto_0
    return-wide v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lokhttp3/MultipartBody;->a(Lokio/BufferedSink;Z)J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/MultipartBody;->m:J

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lokhttp3/MultipartBody;->i:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lokhttp3/MultipartBody;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/MultipartBody$Part;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lokhttp3/MultipartBody;->l:Ljava/util/List;

    return-object v0
.end method
