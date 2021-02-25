.class public Lanet/channel/util/StringUtils;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static final DIGITS_LOWER:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lanet/channel/util/StringUtils;->DIGITS_LOWER:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    const-string v0, "://"

    invoke-static {p0, v0, p1}, Lanet/channel/util/StringUtils;->concatString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    if-nez p0, :cond_0

    .line 105
    const-string v0, ""

    .line 107
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lanet/channel/util/StringUtils;->DIGITS_LOWER:[C

    invoke-static {p0, v0}, Lanet/channel/util/StringUtils;->bytesToHexString([B[C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static bytesToHexString([B[C)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 93
    array-length v2, p0

    .line 94
    shl-int/lit8 v1, v2, 0x1

    new-array v3, v1, [C

    move v1, v0

    .line 96
    :goto_0
    if-ge v1, v2, :cond_0

    .line 97
    add-int/lit8 v4, v0, 0x1

    aget-byte v5, p0, v1

    and-int/lit16 v5, v5, 0xf0

    ushr-int/lit8 v5, v5, 0x4

    aget-char v5, p1, v5

    aput-char v5, v3, v0

    .line 98
    add-int/lit8 v0, v4, 0x1

    aget-byte v5, p0, v1

    and-int/lit8 v5, v5, 0xf

    aget-char v5, p1, v5

    aput-char v5, v3, v4

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static concatString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static concatString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isBlank(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 142
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    move v0, v1

    .line 150
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v2, v0

    .line 145
    :goto_1
    if-ge v2, v3, :cond_3

    .line 146
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 145
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    .line 150
    goto :goto_0
.end method

.method public static isNotBlank(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 133
    invoke-static {p0}, Lanet/channel/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static longToIP(J)Ljava/lang/String;
    .locals 6

    .prologue
    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0x10

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 117
    const-wide/32 v0, 0x3b9aca00

    .line 119
    :cond_0
    div-long v4, p0, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 120
    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    rem-long/2addr p0, v0

    .line 122
    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    .line 123
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-gtz v3, :cond_0

    .line 124
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 125
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static md5ToHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 79
    if-nez p0, :cond_0

    .line 85
    :goto_0
    return-object v0

    .line 82
    :cond_0
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 83
    const-string v2, "utf-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    invoke-static {v1}, Lanet/channel/util/StringUtils;->bytesToHexString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 85
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static parseURL(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 20
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    :cond_0
    :goto_0
    return-object v0

    .line 23
    :cond_1
    const-string v1, "//"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 27
    :cond_2
    const-string v1, "://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 28
    const/4 v1, -0x1

    if-eq v3, v1, :cond_0

    .line 31
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 32
    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 33
    const-string v4, "http"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "https"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 36
    :cond_3
    aput-object v2, v1, v5

    .line 37
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 38
    add-int/lit8 v2, v3, 0x3

    .line 39
    :goto_1
    if-ge v2, v4, :cond_6

    .line 40
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 41
    const/16 v6, 0x2f

    if-eq v5, v6, :cond_4

    const/16 v6, 0x3a

    if-eq v5, v6, :cond_4

    const/16 v6, 0x3f

    if-eq v5, v6, :cond_4

    const/16 v6, 0x23

    if-ne v5, v6, :cond_5

    .line 42
    :cond_4
    add-int/lit8 v0, v3, 0x3

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v7

    move-object v0, v1

    .line 43
    goto :goto_0

    .line 39
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 46
    :cond_6
    if-ne v2, v4, :cond_0

    .line 47
    add-int/lit8 v0, v3, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v7

    move-object v0, v1

    .line 48
    goto :goto_0
.end method

.method public static simplifyString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p1, :cond_0

    .line 70
    :goto_0
    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "......"

    invoke-static {v0, v1}, Lanet/channel/util/StringUtils;->concatString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static stringNull2Empty(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 75
    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method
