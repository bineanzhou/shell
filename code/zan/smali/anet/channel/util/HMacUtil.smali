.class public Lanet/channel/util/HMacUtil;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static final TAG:Ljava/lang/String; = "awcn.HMacUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static hmacSha1([B[B)[B
    .locals 3

    .prologue
    .line 25
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v0, "HmacSHA256"

    invoke-direct {v1, p0, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 27
    const/4 v0, 0x0

    .line 29
    :try_start_0
    const-string v2, "HmacSHA256"

    invoke-static {v2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v2

    .line 30
    invoke-virtual {v2, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 31
    invoke-virtual {v2, p1}, Ljavax/crypto/Mac;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 35
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0

    .line 34
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static hmacSha1Hex([B[B)Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 14
    const-string v0, ""

    .line 16
    :try_start_0
    invoke-static {p0, p1}, Lanet/channel/util/HMacUtil;->hmacSha1([B[B)[B

    move-result-object v1

    invoke-static {v1}, Lanet/channel/util/StringUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 17
    const-string v1, "awcn.HMacUtil"

    const-string v2, "hmacSha1Hex"

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "result"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-static {v1, v2, v3, v4}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :goto_0
    return-object v0

    .line 19
    :catch_0
    move-exception v1

    const-string v1, "awcn.HMacUtil"

    const-string v2, "hmacSha1Hex"

    new-array v3, v9, [Ljava/lang/Object;

    const-string v4, "result"

    aput-object v4, v3, v7

    aput-object v0, v3, v8

    invoke-static {v1, v2, v10, v3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
