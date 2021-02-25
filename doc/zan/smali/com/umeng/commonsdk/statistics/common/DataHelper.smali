.class public Lcom/umeng/commonsdk/statistics/common/DataHelper;
.super Ljava/lang/Object;
.source "DataHelper.java"


# static fields
.field public static ENVELOPE_ENTITY_RAW_LENGTH_MAX:J

.field public static ENVELOPE_EXTRA_LENGTH:J

.field public static ENVELOPE_LENGTH_MAX:J

.field private static final iv:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/umeng/commonsdk/statistics/common/DataHelper;->iv:[B

    .line 28
    const-wide/16 v0, 0x400

    sput-wide v0, Lcom/umeng/commonsdk/statistics/common/DataHelper;->ENVELOPE_EXTRA_LENGTH:J

    .line 29
    const-wide/32 v0, 0x200000

    sput-wide v0, Lcom/umeng/commonsdk/statistics/common/DataHelper;->ENVELOPE_ENTITY_RAW_LENGTH_MAX:J

    .line 30
    const-wide/32 v0, 0x32000

    sput-wide v0, Lcom/umeng/commonsdk/statistics/common/DataHelper;->ENVELOPE_LENGTH_MAX:J

    return-void

    .line 27
    :array_0
    .array-data 1
        0xat
        0x1t
        0xbt
        0x5t
        0x4t
        0xft
        0x7t
        0x9t
        0x17t
        0x3t
        0x1t
        0x6t
        0x8t
        0xct
        0xdt
        0x5bt
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assembleStatelessURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 221
    const-string v0, "https://"

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static assembleURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 209
    const-string v0, "https://"

    .line 210
    const-string v1, "/unify_logs"

    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static bytes2Hex([B)Ljava/lang/String;
    .locals 6

    .prologue
    .line 246
    const-string v1, ""

    .line 248
    const/4 v0, 0x0

    move v5, v0

    move-object v0, v1

    move v1, v5

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 249
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 250
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 251
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 253
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 248
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_0

    .line 255
    :cond_1
    return-object v0
.end method

.method public static convertExceptionToString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 178
    if-nez p0, :cond_0

    .line 199
    :goto_0
    return-object v0

    .line 185
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 186
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 187
    invoke-virtual {p0, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 188
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 189
    :goto_1
    if-eqz v1, :cond_1

    .line 190
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 191
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_1

    .line 193
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    .line 195
    invoke-virtual {v2}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 196
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static decrypt([B[B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 137
    const-string v0, "AES/CBC/PKCS7Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 138
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 139
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v3, Lcom/umeng/commonsdk/statistics/common/DataHelper;->iv:[B

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 140
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 141
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static encrypt([B[B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 121
    const-string v0, "AES/CBC/PKCS7Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 122
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 123
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v3, Lcom/umeng/commonsdk/statistics/common/DataHelper;->iv:[B

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 124
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 125
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static encryptBySHA1(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 232
    .line 234
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 236
    :try_start_0
    const-string v1, "SHA1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 237
    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 238
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->bytes2Hex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 242
    :goto_0
    return-object v0

    .line 239
    :catch_0
    move-exception v0

    .line 240
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hash([B)[B
    .locals 1

    .prologue
    .line 99
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 101
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 103
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 108
    :goto_0
    return-object v0

    .line 104
    :catch_0
    move-exception v0

    .line 108
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static largeThanMaxSize(JJ)Z
    .locals 2

    .prologue
    .line 57
    cmp-long v0, p0, p2

    if-lez v0, :cond_0

    .line 58
    const/4 v0, 0x1

    .line 60
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static random(ILjava/lang/String;)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 152
    .line 153
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    .line 155
    float-to-double v2, v1

    const-wide v4, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v1, v2, v4

    if-gez v1, :cond_2

    .line 156
    if-nez p1, :cond_0

    .line 157
    const-string v1, "--->"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "null signature.."

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    :cond_0
    const/16 v1, 0x9

    const/16 v2, 0xb

    :try_start_0
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 166
    :goto_0
    or-int/lit16 v0, v0, 0x80

    mul-int/lit16 v0, v0, 0x3e8

    .line 174
    :cond_1
    :goto_1
    return v0

    .line 168
    :cond_2
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 169
    const v1, 0x3e418

    if-gt v0, v1, :cond_1

    const v1, 0x1f400

    if-lt v0, v1, :cond_1

    .line 170
    const v0, 0x1f018

    goto :goto_1

    .line 163
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static reverseHexString(Ljava/lang/String;)[B
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 33
    if-nez p0, :cond_1

    .line 46
    :cond_0
    return-object v0

    .line 36
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 37
    rem-int/lit8 v1, v2, 0x2

    if-nez v1, :cond_0

    .line 41
    div-int/lit8 v0, v2, 0x2

    new-array v0, v0, [B

    .line 42
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 43
    div-int/lit8 v3, v1, 0x2

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 42
    add-int/lit8 v1, v1, 0x2

    goto :goto_0
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 85
    if-nez p0, :cond_0

    .line 86
    const/4 v0, 0x0

    .line 93
    :goto_0
    return-object v0

    .line 88
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    move v0, v1

    .line 89
    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_1

    .line 90
    const-string v3, "%02X"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aget-byte v5, p0, v0

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 93
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
