.class public Lcom/umeng/commonsdk/stateless/c;
.super Ljava/lang/Object;
.source "UMSLEnvelopeManager.java"


# instance fields
.field private final a:[B

.field private final b:I

.field private final c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:[B

.field private g:[B

.field private h:[B

.field private i:I

.field private j:I

.field private k:I

.field private l:[B

.field private m:[B

.field private n:Z


# direct methods
.method private constructor <init>([BLjava/lang/String;[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/umeng/commonsdk/stateless/c;->a:[B

    .line 17
    const/4 v0, 0x1

    iput v0, p0, Lcom/umeng/commonsdk/stateless/c;->b:I

    .line 18
    iput v2, p0, Lcom/umeng/commonsdk/stateless/c;->c:I

    .line 20
    const-string v0, "1.0"

    iput-object v0, p0, Lcom/umeng/commonsdk/stateless/c;->d:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/umeng/commonsdk/stateless/c;->e:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lcom/umeng/commonsdk/stateless/c;->f:[B

    .line 27
    iput-object v1, p0, Lcom/umeng/commonsdk/stateless/c;->g:[B

    .line 28
    iput-object v1, p0, Lcom/umeng/commonsdk/stateless/c;->h:[B

    .line 30
    iput v2, p0, Lcom/umeng/commonsdk/stateless/c;->i:I

    .line 34
    iput v2, p0, Lcom/umeng/commonsdk/stateless/c;->j:I

    .line 38
    iput v2, p0, Lcom/umeng/commonsdk/stateless/c;->k:I

    .line 43
    iput-object v1, p0, Lcom/umeng/commonsdk/stateless/c;->l:[B

    .line 47
    iput-object v1, p0, Lcom/umeng/commonsdk/stateless/c;->m:[B

    .line 52
    iput-boolean v2, p0, Lcom/umeng/commonsdk/stateless/c;->n:Z

    .line 58
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "entity is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_1
    iput-object p2, p0, Lcom/umeng/commonsdk/stateless/c;->e:Ljava/lang/String;

    .line 63
    array-length v0, p1

    iput v0, p0, Lcom/umeng/commonsdk/stateless/c;->k:I

    .line 64
    invoke-static {p1}, Lcom/umeng/commonsdk/stateless/f;->a([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/commonsdk/stateless/c;->l:[B

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/umeng/commonsdk/stateless/c;->j:I

    .line 67
    iput-object p3, p0, Lcom/umeng/commonsdk/stateless/c;->m:[B

    .line 68
    return-void

    .line 16
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;[B)Lcom/umeng/commonsdk/stateless/c;
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 72
    :try_start_0
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 73
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 80
    const-string v5, "walle"

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[stateless] build envelope, raw is  "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez p2, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "m app key is "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "device id is "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ", mac is "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    new-instance v0, Lcom/umeng/commonsdk/stateless/c;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v0, p2, p1, v3}, Lcom/umeng/commonsdk/stateless/c;-><init>([BLjava/lang/String;[B)V

    .line 87
    invoke-virtual {v0}, Lcom/umeng/commonsdk/stateless/c;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_1
    return-object v0

    :cond_0
    move v0, v2

    .line 80
    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    const-string v3, "walle"

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[stateless] build envelope, e is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v3, v1}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    invoke-static {p0, v0}, Lcom/umeng/commonsdk/proguard/b;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 98
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a([BI)[B
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v0, 0x0

    .line 176
    iget-object v1, p0, Lcom/umeng/commonsdk/stateless/c;->m:[B

    invoke-static {v1}, Lcom/umeng/commonsdk/stateless/f;->b([B)[B

    move-result-object v2

    .line 177
    iget-object v1, p0, Lcom/umeng/commonsdk/stateless/c;->l:[B

    invoke-static {v1}, Lcom/umeng/commonsdk/stateless/f;->b([B)[B

    move-result-object v3

    .line 179
    array-length v4, v2

    .line 180
    mul-int/lit8 v1, v4, 0x2

    new-array v5, v1, [B

    move v1, v0

    .line 183
    :goto_0
    if-ge v1, v4, :cond_0

    .line 184
    mul-int/lit8 v6, v1, 0x2

    aget-byte v7, v3, v1

    aput-byte v7, v5, v6

    .line 185
    mul-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x1

    aget-byte v7, v2, v1

    aput-byte v7, v5, v6

    .line 183
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 190
    :goto_1
    if-ge v1, v8, :cond_1

    .line 191
    aget-byte v2, p1, v1

    aput-byte v2, v5, v1

    .line 192
    array-length v2, v5

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    array-length v3, p1

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, p1, v3

    aput-byte v3, v5, v2

    .line 190
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 196
    :cond_1
    const/4 v1, 0x4

    new-array v1, v1, [B

    .line 198
    and-int/lit16 v2, p2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 199
    const/4 v2, 0x1

    shr-int/lit8 v3, p2, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 200
    shr-int/lit8 v2, p2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v8

    .line 201
    const/4 v2, 0x3

    ushr-int/lit8 v3, p2, 0x18

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 203
    :goto_2
    array-length v2, v5

    if-ge v0, v2, :cond_2

    .line 204
    aget-byte v2, v5, v0

    rem-int/lit8 v3, v0, 0x4

    aget-byte v3, v1, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v5, v0

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 207
    :cond_2
    return-object v5
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;[B)Lcom/umeng/commonsdk/stateless/c;
    .locals 4

    .prologue
    .line 103
    :try_start_0
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 111
    new-instance v0, Lcom/umeng/commonsdk/stateless/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, p2, p1, v1}, Lcom/umeng/commonsdk/stateless/c;-><init>([BLjava/lang/String;[B)V

    .line 113
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/umeng/commonsdk/stateless/c;->a(Z)V

    .line 116
    invoke-virtual {v0}, Lcom/umeng/commonsdk/stateless/c;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    return-object v0

    .line 121
    :catch_0
    move-exception v0

    .line 123
    invoke-static {p0, v0}, Lcom/umeng/commonsdk/proguard/b;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 126
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()[B
    .locals 6

    .prologue
    .line 211
    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/c;->a:[B

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    invoke-direct {p0, v0, v1}, Lcom/umeng/commonsdk/stateless/c;->a([BI)[B

    move-result-object v0

    return-object v0
.end method

.method private d()[B
    .locals 2

    .prologue
    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    iget-object v1, p0, Lcom/umeng/commonsdk/stateless/c;->f:[B

    invoke-static {v1}, Lcom/umeng/commonsdk/stateless/f;->c([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    iget v1, p0, Lcom/umeng/commonsdk/stateless/c;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 219
    iget v1, p0, Lcom/umeng/commonsdk/stateless/c;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 220
    iget v1, p0, Lcom/umeng/commonsdk/stateless/c;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 221
    iget-object v1, p0, Lcom/umeng/commonsdk/stateless/c;->g:[B

    invoke-static {v1}, Lcom/umeng/commonsdk/stateless/f;->c([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/stateless/f;->b([B)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/16 v1, 0x10

    .line 158
    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/c;->f:[B

    if-nez v0, :cond_0

    .line 159
    invoke-direct {p0}, Lcom/umeng/commonsdk/stateless/c;->c()[B

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/commonsdk/stateless/c;->f:[B

    .line 162
    :cond_0
    iget-boolean v0, p0, Lcom/umeng/commonsdk/stateless/c;->n:Z

    if-eqz v0, :cond_1

    .line 163
    new-array v0, v1, [B

    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/umeng/commonsdk/stateless/c;->f:[B

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    iget-object v1, p0, Lcom/umeng/commonsdk/stateless/c;->l:[B

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/stateless/f;->a([B[B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/commonsdk/stateless/c;->l:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/c;->f:[B

    iget v1, p0, Lcom/umeng/commonsdk/stateless/c;->j:I

    invoke-direct {p0, v0, v1}, Lcom/umeng/commonsdk/stateless/c;->a([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/commonsdk/stateless/c;->g:[B

    .line 172
    invoke-direct {p0}, Lcom/umeng/commonsdk/stateless/c;->d()[B

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/commonsdk/stateless/c;->h:[B

    .line 173
    return-void

    .line 167
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/umeng/commonsdk/stateless/c;->n:Z

    .line 151
    return-void
.end method

.method public b()[B
    .locals 2

    .prologue
    .line 227
    new-instance v1, Lcom/umeng/commonsdk/stateless/b;

    invoke-direct {v1}, Lcom/umeng/commonsdk/stateless/b;-><init>()V

    .line 229
    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/c;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/umeng/commonsdk/stateless/b;->a(Ljava/lang/String;)Lcom/umeng/commonsdk/stateless/b;

    .line 230
    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/c;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/umeng/commonsdk/stateless/b;->b(Ljava/lang/String;)Lcom/umeng/commonsdk/stateless/b;

    .line 231
    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/c;->f:[B

    invoke-static {v0}, Lcom/umeng/commonsdk/stateless/f;->c([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/umeng/commonsdk/stateless/b;->c(Ljava/lang/String;)Lcom/umeng/commonsdk/stateless/b;

    .line 232
    iget v0, p0, Lcom/umeng/commonsdk/stateless/c;->i:I

    invoke-virtual {v1, v0}, Lcom/umeng/commonsdk/stateless/b;->a(I)Lcom/umeng/commonsdk/stateless/b;

    .line 233
    iget v0, p0, Lcom/umeng/commonsdk/stateless/c;->j:I

    invoke-virtual {v1, v0}, Lcom/umeng/commonsdk/stateless/b;->b(I)Lcom/umeng/commonsdk/stateless/b;

    .line 234
    iget v0, p0, Lcom/umeng/commonsdk/stateless/c;->k:I

    invoke-virtual {v1, v0}, Lcom/umeng/commonsdk/stateless/b;->c(I)Lcom/umeng/commonsdk/stateless/b;

    .line 236
    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/c;->l:[B

    invoke-virtual {v1, v0}, Lcom/umeng/commonsdk/stateless/b;->a([B)Lcom/umeng/commonsdk/stateless/b;

    .line 237
    iget-boolean v0, p0, Lcom/umeng/commonsdk/stateless/c;->n:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/umeng/commonsdk/stateless/b;->d(I)Lcom/umeng/commonsdk/stateless/b;

    .line 239
    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/c;->g:[B

    invoke-static {v0}, Lcom/umeng/commonsdk/stateless/f;->c([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/umeng/commonsdk/stateless/b;->d(Ljava/lang/String;)Lcom/umeng/commonsdk/stateless/b;

    .line 240
    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/c;->h:[B

    invoke-static {v0}, Lcom/umeng/commonsdk/stateless/f;->c([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/umeng/commonsdk/stateless/b;->e(Ljava/lang/String;)Lcom/umeng/commonsdk/stateless/b;

    .line 243
    :try_start_0
    new-instance v0, Lcom/umeng/commonsdk/proguard/u;

    invoke-direct {v0}, Lcom/umeng/commonsdk/proguard/u;-><init>()V

    invoke-virtual {v0, v1}, Lcom/umeng/commonsdk/proguard/u;->a(Lcom/umeng/commonsdk/proguard/l;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 248
    :goto_1
    return-object v0

    .line 237
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 244
    :catch_0
    move-exception v0

    .line 248
    const/4 v0, 0x0

    goto :goto_1
.end method
