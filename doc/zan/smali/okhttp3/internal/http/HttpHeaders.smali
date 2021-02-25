.class public final Lokhttp3/internal/http/HttpHeaders;
.super Ljava/lang/Object;
.source "HttpHeaders.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static a(Ljava/lang/String;I)I
    .locals 2

    .prologue
    .line 232
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 233
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 234
    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    .line 238
    :cond_0
    return p1

    .line 232
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;)I
    .locals 2

    .prologue
    .line 219
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 220
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 224
    :cond_0
    return p1

    .line 219
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)J
    .locals 3

    .prologue
    const-wide/16 v0, -0x1

    .line 50
    if-nez p0, :cond_0

    .line 54
    :goto_0
    return-wide v0

    .line 52
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 53
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static a(Lokhttp3/Headers;)J
    .locals 2

    .prologue
    .line 46
    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/http/HttpHeaders;->a(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Lokhttp3/Response;)J
    .locals 2

    .prologue
    .line 42
    invoke-virtual {p0}, Lokhttp3/Response;->g()Lokhttp3/Headers;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/http/HttpHeaders;->a(Lokhttp3/Headers;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Lokhttp3/Headers;Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Headers;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Challenge;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 145
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 146
    invoke-virtual {p0}, Lokhttp3/Headers;->a()I

    move-result v8

    move v6, v4

    :goto_0
    if-ge v6, v8, :cond_2

    .line 147
    invoke-virtual {p0, v6}, Lokhttp3/Headers;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 146
    :cond_0
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 150
    :cond_1
    invoke-virtual {p0, v6}, Lokhttp3/Headers;->b(I)Ljava/lang/String;

    move-result-object v0

    move v1, v4

    .line 152
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 154
    const-string v2, " "

    invoke-static {v0, v1, v2}, Lokhttp3/internal/http/HttpHeaders;->a(Ljava/lang/String;ILjava/lang/String;)I

    move-result v2

    .line 156
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 157
    invoke-static {v0, v2}, Lokhttp3/internal/http/HttpHeaders;->a(Ljava/lang/String;I)I

    move-result v2

    .line 163
    const/4 v1, 0x1

    const-string v3, "realm=\""

    const-string v5, "realm=\""

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    const-string v1, "realm=\""

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v2

    .line 169
    const-string v2, "\""

    invoke-static {v0, v1, v2}, Lokhttp3/internal/http/HttpHeaders;->a(Ljava/lang/String;ILjava/lang/String;)I

    move-result v2

    .line 170
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 171
    add-int/lit8 v1, v2, 0x1

    .line 172
    const-string v2, ","

    invoke-static {v0, v1, v2}, Lokhttp3/internal/http/HttpHeaders;->a(Ljava/lang/String;ILjava/lang/String;)I

    move-result v1

    .line 173
    add-int/lit8 v1, v1, 0x1

    .line 174
    invoke-static {v0, v1}, Lokhttp3/internal/http/HttpHeaders;->a(Ljava/lang/String;I)I

    move-result v1

    .line 175
    new-instance v2, Lokhttp3/Challenge;

    invoke-direct {v2, v9, v3}, Lokhttp3/Challenge;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 178
    :cond_2
    return-object v7
.end method

.method public static a(Lokhttp3/Headers;Lokhttp3/Headers;)Lokhttp3/Headers;
    .locals 6

    .prologue
    .line 125
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->c(Lokhttp3/Headers;)Ljava/util/Set;

    move-result-object v1

    .line 126
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->a()Lokhttp3/Headers;

    move-result-object v0

    .line 135
    :goto_0
    return-object v0

    .line 128
    :cond_0
    new-instance v2, Lokhttp3/Headers$Builder;

    invoke-direct {v2}, Lokhttp3/Headers$Builder;-><init>()V

    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0}, Lokhttp3/Headers;->a()I

    move-result v3

    :goto_1
    if-ge v0, v3, :cond_2

    .line 130
    invoke-virtual {p0, v0}, Lokhttp3/Headers;->a(I)Ljava/lang/String;

    move-result-object v4

    .line 131
    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 132
    invoke-virtual {p0, v0}, Lokhttp3/Headers;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lokhttp3/Headers$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 129
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 135
    :cond_2
    invoke-virtual {v2}, Lokhttp3/Headers$Builder;->a()Lokhttp3/Headers;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lokhttp3/CookieJar;Lokhttp3/HttpUrl;Lokhttp3/Headers;)V
    .locals 2

    .prologue
    .line 182
    sget-object v0, Lokhttp3/CookieJar;->a:Lokhttp3/CookieJar;

    if-ne p0, v0, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    invoke-static {p1, p2}, Lokhttp3/Cookie;->a(Lokhttp3/HttpUrl;Lokhttp3/Headers;)Ljava/util/List;

    move-result-object v0

    .line 185
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 187
    invoke-interface {p0, p1, v0}, Lokhttp3/CookieJar;->a(Lokhttp3/HttpUrl;Ljava/util/List;)V

    goto :goto_0
.end method

.method public static a(Lokhttp3/Response;Lokhttp3/Headers;Lokhttp3/Request;)Z
    .locals 3

    .prologue
    .line 64
    invoke-static {p0}, Lokhttp3/internal/http/HttpHeaders;->e(Lokhttp3/Response;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 65
    invoke-virtual {p1, v0}, Lokhttp3/Headers;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p2, v0}, Lokhttp3/Request;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0}, Lokhttp3/internal/Util;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 67
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;I)I
    .locals 4

    .prologue
    .line 247
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 248
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 249
    const p1, 0x7fffffff

    .line 256
    :goto_0
    return p1

    .line 250
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 251
    const/4 p1, 0x0

    goto :goto_0

    .line 253
    :cond_1
    long-to-int p1, v0

    goto :goto_0

    .line 255
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static b(Lokhttp3/Headers;)Z
    .locals 2

    .prologue
    .line 81
    invoke-static {p0}, Lokhttp3/internal/http/HttpHeaders;->c(Lokhttp3/Headers;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "*"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static b(Lokhttp3/Response;)Z
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lokhttp3/Response;->g()Lokhttp3/Headers;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/http/HttpHeaders;->b(Lokhttp3/Headers;)Z

    move-result v0

    return v0
.end method

.method public static c(Lokhttp3/Headers;)Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Headers;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 92
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 93
    invoke-virtual {p0}, Lokhttp3/Headers;->a()I

    move-result v4

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_3

    .line 94
    const-string v3, "Vary"

    invoke-virtual {p0, v1}, Lokhttp3/Headers;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 93
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {p0, v1}, Lokhttp3/Headers;->b(I)Ljava/lang/String;

    move-result-object v3

    .line 97
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 98
    new-instance v0, Ljava/util/TreeSet;

    sget-object v5, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 100
    :cond_2
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v3, v2

    :goto_1
    if-ge v3, v6, :cond_0

    aget-object v7, v5, v3

    .line 101
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 104
    :cond_3
    return-object v0
.end method

.method public static c(Lokhttp3/Response;)Lokhttp3/Headers;
    .locals 2

    .prologue
    .line 115
    invoke-virtual {p0}, Lokhttp3/Response;->k()Lokhttp3/Response;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Response;->a()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->c()Lokhttp3/Headers;

    move-result-object v0

    .line 116
    invoke-virtual {p0}, Lokhttp3/Response;->g()Lokhttp3/Headers;

    move-result-object v1

    .line 117
    invoke-static {v0, v1}, Lokhttp3/internal/http/HttpHeaders;->a(Lokhttp3/Headers;Lokhttp3/Headers;)Lokhttp3/Headers;

    move-result-object v0

    return-object v0
.end method

.method public static d(Lokhttp3/Response;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 193
    invoke-virtual {p0}, Lokhttp3/Response;->a()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HEAD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 211
    :cond_0
    :goto_0
    return v0

    .line 197
    :cond_1
    invoke-virtual {p0}, Lokhttp3/Response;->c()I

    move-result v2

    .line 198
    const/16 v3, 0x64

    if-lt v2, v3, :cond_2

    const/16 v3, 0xc8

    if-lt v2, v3, :cond_3

    :cond_2
    const/16 v3, 0xcc

    if-eq v2, v3, :cond_3

    const/16 v3, 0x130

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 201
    goto :goto_0

    .line 206
    :cond_3
    invoke-static {p0}, Lokhttp3/internal/http/HttpHeaders;->a(Lokhttp3/Response;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    const-string v2, "chunked"

    const-string v3, "Transfer-Encoding"

    .line 207
    invoke-virtual {p0, v3}, Lokhttp3/Response;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    .line 208
    goto :goto_0
.end method

.method private static e(Lokhttp3/Response;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Response;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    invoke-virtual {p0}, Lokhttp3/Response;->g()Lokhttp3/Headers;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/http/HttpHeaders;->c(Lokhttp3/Headers;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
