.class public Lcom/umeng/commonsdk/statistics/idtracking/Envelope;
.super Ljava/lang/Object;
.source "Envelope.java"


# instance fields
.field private final CODEX_ENCRYPT:I

.field private final CODEX_NORMAL:I

.field private final SEED:[B

.field private encrypt:Z

.field private identity:[B

.field private mAddress:Ljava/lang/String;

.field private mChecksum:[B

.field private mEntity:[B

.field private mGuid:[B

.field private mLength:I

.field private mSerialNo:I

.field private mSignature:[B

.field private mTimestamp:I

.field private mVersion:Ljava/lang/String;


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

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->SEED:[B

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->CODEX_ENCRYPT:I

    .line 36
    iput v2, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->CODEX_NORMAL:I

    .line 38
    const-string v0, "1.0"

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mVersion:Ljava/lang/String;

    .line 39
    iput-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mAddress:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mSignature:[B

    .line 42
    iput-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mGuid:[B

    .line 43
    iput-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mChecksum:[B

    .line 45
    iput v2, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mSerialNo:I

    .line 46
    iput v2, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mTimestamp:I

    .line 47
    iput v2, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mLength:I

    .line 49
    iput-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mEntity:[B

    .line 50
    iput-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->identity:[B

    .line 52
    iput-boolean v2, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->encrypt:Z

    .line 56
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "entity is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_1
    iput-object p2, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mAddress:Ljava/lang/String;

    .line 61
    array-length v0, p1

    iput v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mLength:I

    .line 62
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/b;->a([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mEntity:[B

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mTimestamp:I

    .line 65
    iput-object p3, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->identity:[B

    .line 66
    return-void

    .line 34
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

.method private genCheckSum()[B
    .locals 2

    .prologue
    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mSignature:[B

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    iget v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mSerialNo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 212
    iget v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mTimestamp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 213
    iget v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 214
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mGuid:[B

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->hash([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static genEncryptEnvelope(Landroid/content/Context;Ljava/lang/String;[B)Lcom/umeng/commonsdk/statistics/idtracking/Envelope;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 121
    :try_start_0
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 122
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 124
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 126
    const-string v0, "signature"

    const/4 v5, 0x0

    invoke-interface {v4, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 127
    const-string v0, "serial"

    const/4 v6, 0x1

    invoke-interface {v4, v0, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 129
    new-instance v0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v0, p2, p1, v2}, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;-><init>([BLjava/lang/String;[B)V

    .line 131
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->setEncrypt(Z)V

    .line 132
    invoke-virtual {v0, v5}, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->setSignature(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0, v6}, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->setSerialNumber(I)V

    .line 134
    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->seal()V

    .line 136
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "serial"

    add-int/lit8 v4, v6, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "signature"

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->getSignature()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 137
    invoke-virtual {v0, p0}, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->export(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    return-object v0

    .line 139
    :catch_0
    move-exception v0

    .line 141
    invoke-static {p0, v0}, Lcom/umeng/commonsdk/proguard/b;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 144
    goto :goto_0
.end method

.method public static genEnvelope(Landroid/content/Context;Ljava/lang/String;[B)Lcom/umeng/commonsdk/statistics/idtracking/Envelope;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 94
    :try_start_0
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 95
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 97
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 99
    const-string v0, "signature"

    const/4 v5, 0x0

    invoke-interface {v4, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 100
    const-string v0, "serial"

    const/4 v6, 0x1

    invoke-interface {v4, v0, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 102
    new-instance v0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v0, p2, p1, v2}, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;-><init>([BLjava/lang/String;[B)V

    .line 104
    invoke-virtual {v0, v5}, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->setSignature(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0, v6}, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->setSerialNumber(I)V

    .line 106
    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->seal()V

    .line 108
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "serial"

    add-int/lit8 v4, v6, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "signature"

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->getSignature()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 109
    invoke-virtual {v0, p0}, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->export(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    return-object v0

    .line 111
    :catch_0
    move-exception v0

    .line 113
    invoke-static {p0, v0}, Lcom/umeng/commonsdk/proguard/b;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 116
    goto :goto_0
.end method

.method private genGuid([BI)[B
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v0, 0x0

    .line 169
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->identity:[B

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->hash([B)[B

    move-result-object v2

    .line 170
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mEntity:[B

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->hash([B)[B

    move-result-object v3

    .line 172
    array-length v4, v2

    .line 173
    mul-int/lit8 v1, v4, 0x2

    new-array v5, v1, [B

    move v1, v0

    .line 176
    :goto_0
    if-ge v1, v4, :cond_0

    .line 177
    mul-int/lit8 v6, v1, 0x2

    aget-byte v7, v3, v1

    aput-byte v7, v5, v6

    .line 178
    mul-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x1

    aget-byte v7, v2, v1

    aput-byte v7, v5, v6

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 183
    :goto_1
    if-ge v1, v8, :cond_1

    .line 184
    aget-byte v2, p1, v1

    aput-byte v2, v5, v1

    .line 185
    array-length v2, v5

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    array-length v3, p1

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, p1, v3

    aput-byte v3, v5, v2

    .line 183
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 189
    :cond_1
    const/4 v1, 0x4

    new-array v1, v1, [B

    .line 191
    and-int/lit16 v2, p2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 192
    const/4 v2, 0x1

    shr-int/lit8 v3, p2, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 193
    shr-int/lit8 v2, p2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v8

    .line 194
    const/4 v2, 0x3

    ushr-int/lit8 v3, p2, 0x18

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 196
    :goto_2
    array-length v2, v5

    if-ge v0, v2, :cond_2

    .line 197
    aget-byte v2, v5, v0

    rem-int/lit8 v3, v0, 0x4

    aget-byte v3, v1, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v5, v0

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 200
    :cond_2
    return-object v5
.end method

.method private genSignature()[B
    .locals 6

    .prologue
    .line 204
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->SEED:[B

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    invoke-direct {p0, v0, v1}, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->genGuid([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static getSignature(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 70
    if-nez v1, :cond_0

    .line 73
    :goto_0
    return-object v0

    :cond_0
    const-string v2, "signature"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public export(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/16 v7, 0x10

    .line 245
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mAddress:Ljava/lang/String;

    .line 246
    const-string v0, "umid"

    const/4 v2, 0x0

    invoke-static {p1, v0, v2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 247
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mSignature:[B

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 248
    new-array v3, v7, [B

    .line 249
    iget-object v4, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mSignature:[B

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v4, v5, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 250
    invoke-static {v3}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->hash([B)[B

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    .line 253
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 254
    const-string v5, "appkey"

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 255
    if-eqz v2, :cond_0

    .line 256
    const-string v5, "umid"

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 258
    :cond_0
    const-string v5, "signature"

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 259
    const-string v0, "checksum"

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 261
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v5, ".umeng"

    invoke-direct {v0, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 262
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 263
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 266
    :cond_1
    new-instance v3, Ljava/io/File;

    const-string v5, "exchangeIdentity.json"

    invoke-direct {v3, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->writeFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :goto_0
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 273
    const-string v3, "appkey"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 276
    const-string v1, "channel"

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->getChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 277
    if-eqz v2, :cond_2

    .line 278
    const-string v1, "umid"

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->getUmengMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 280
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "exid.dat"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->writeFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 284
    :goto_1
    return-void

    .line 267
    :catch_0
    move-exception v0

    .line 268
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 281
    :catch_1
    move-exception v0

    .line 282
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mSignature:[B

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public seal()V
    .locals 5

    .prologue
    const/16 v1, 0x10

    .line 151
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mSignature:[B

    if-nez v0, :cond_0

    .line 152
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->genSignature()[B

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mSignature:[B

    .line 155
    :cond_0
    iget-boolean v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->encrypt:Z

    if-eqz v0, :cond_1

    .line 156
    new-array v0, v1, [B

    .line 158
    :try_start_0
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mSignature:[B

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mEntity:[B

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->encrypt([B[B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mEntity:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mSignature:[B

    iget v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mTimestamp:I

    invoke-direct {p0, v0, v1}, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->genGuid([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mGuid:[B

    .line 165
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->genCheckSum()[B

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mChecksum:[B

    .line 166
    return-void

    .line 160
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setEncrypt(Z)V
    .locals 0

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->encrypt:Z

    .line 90
    return-void
.end method

.method public setSerialNumber(I)V
    .locals 0

    .prologue
    .line 85
    iput p1, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mSerialNo:I

    .line 86
    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 77
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->reverseHexString(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mSignature:[B

    .line 78
    return-void
.end method

.method public toBinary()[B
    .locals 2

    .prologue
    .line 220
    new-instance v1, Lcom/umeng/commonsdk/proguard/h;

    invoke-direct {v1}, Lcom/umeng/commonsdk/proguard/h;-><init>()V

    .line 222
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mVersion:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/umeng/commonsdk/proguard/h;->a(Ljava/lang/String;)Lcom/umeng/commonsdk/proguard/h;

    .line 223
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/umeng/commonsdk/proguard/h;->b(Ljava/lang/String;)Lcom/umeng/commonsdk/proguard/h;

    .line 224
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mSignature:[B

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/umeng/commonsdk/proguard/h;->c(Ljava/lang/String;)Lcom/umeng/commonsdk/proguard/h;

    .line 225
    iget v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mSerialNo:I

    invoke-virtual {v1, v0}, Lcom/umeng/commonsdk/proguard/h;->a(I)Lcom/umeng/commonsdk/proguard/h;

    .line 226
    iget v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mTimestamp:I

    invoke-virtual {v1, v0}, Lcom/umeng/commonsdk/proguard/h;->b(I)Lcom/umeng/commonsdk/proguard/h;

    .line 227
    iget v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mLength:I

    invoke-virtual {v1, v0}, Lcom/umeng/commonsdk/proguard/h;->c(I)Lcom/umeng/commonsdk/proguard/h;

    .line 229
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mEntity:[B

    invoke-virtual {v1, v0}, Lcom/umeng/commonsdk/proguard/h;->a([B)Lcom/umeng/commonsdk/proguard/h;

    .line 230
    iget-boolean v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->encrypt:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/umeng/commonsdk/proguard/h;->d(I)Lcom/umeng/commonsdk/proguard/h;

    .line 232
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mGuid:[B

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/umeng/commonsdk/proguard/h;->d(Ljava/lang/String;)Lcom/umeng/commonsdk/proguard/h;

    .line 233
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mChecksum:[B

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/umeng/commonsdk/proguard/h;->e(Ljava/lang/String;)Lcom/umeng/commonsdk/proguard/h;

    .line 236
    :try_start_0
    new-instance v0, Lcom/umeng/commonsdk/proguard/u;

    invoke-direct {v0}, Lcom/umeng/commonsdk/proguard/u;-><init>()V

    invoke-virtual {v0, v1}, Lcom/umeng/commonsdk/proguard/u;->a(Lcom/umeng/commonsdk/proguard/l;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 241
    :goto_1
    return-object v0

    .line 230
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 237
    :catch_0
    move-exception v0

    .line 238
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 241
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 287
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 289
    const-string v3, "version : %s\n"

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mVersion:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    const-string v3, "address : %s\n"

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mAddress:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    const-string v3, "signature : %s\n"

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mSignature:[B

    invoke-static {v5}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->toHexString([B)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    const-string v3, "serial : %s\n"

    new-array v4, v0, [Ljava/lang/Object;

    iget v5, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mSerialNo:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    const-string v3, "timestamp : %d\n"

    new-array v4, v0, [Ljava/lang/Object;

    iget v5, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mTimestamp:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    const-string v3, "length : %d\n"

    new-array v4, v0, [Ljava/lang/Object;

    iget v5, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mLength:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    const-string v3, "guid : %s\n"

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mGuid:[B

    invoke-static {v5}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->toHexString([B)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    const-string v3, "checksum : %s "

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->mChecksum:[B

    invoke-static {v5}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->toHexString([B)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    const-string v3, "codex : %d"

    new-array v4, v0, [Ljava/lang/Object;

    iget-boolean v5, p0, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->encrypt:Z

    if-eqz v5, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v1

    .line 297
    goto :goto_0
.end method
