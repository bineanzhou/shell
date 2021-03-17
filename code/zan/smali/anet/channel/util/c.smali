.class public Lanet/channel/util/c;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private volatile f:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lanet/channel/util/c;->f:Z

    .line 20
    return-void
.end method

.method public constructor <init>(Lanet/channel/util/c;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lanet/channel/util/c;->f:Z

    .line 23
    iget-object v0, p1, Lanet/channel/util/c;->a:Ljava/lang/String;

    iput-object v0, p0, Lanet/channel/util/c;->a:Ljava/lang/String;

    .line 24
    iget-object v0, p1, Lanet/channel/util/c;->b:Ljava/lang/String;

    iput-object v0, p0, Lanet/channel/util/c;->b:Ljava/lang/String;

    .line 25
    iget-object v0, p1, Lanet/channel/util/c;->c:Ljava/lang/String;

    iput-object v0, p0, Lanet/channel/util/c;->c:Ljava/lang/String;

    .line 26
    iget-object v0, p1, Lanet/channel/util/c;->d:Ljava/lang/String;

    iput-object v0, p0, Lanet/channel/util/c;->d:Ljava/lang/String;

    .line 27
    iget-object v0, p1, Lanet/channel/util/c;->e:Ljava/lang/String;

    iput-object v0, p0, Lanet/channel/util/c;->e:Ljava/lang/String;

    .line 28
    iget-boolean v0, p1, Lanet/channel/util/c;->f:Z

    iput-boolean v0, p0, Lanet/channel/util/c;->f:Z

    .line 29
    return-void
.end method

.method public static a(Ljava/lang/String;)Lanet/channel/util/c;
    .locals 9

    .prologue
    const/4 v5, 0x6

    const/4 v6, 0x5

    const/4 v1, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 32
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v7

    .line 90
    :goto_0
    return-object v0

    .line 36
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 37
    new-instance v8, Lanet/channel/util/c;

    invoke-direct {v8}, Lanet/channel/util/c;-><init>()V

    .line 38
    iput-object v0, v8, Lanet/channel/util/c;->d:Ljava/lang/String;

    .line 41
    const-string v3, "//"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 42
    iput-object v7, v8, Lanet/channel/util/c;->a:Ljava/lang/String;

    move v5, v2

    .line 53
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    .line 54
    add-int/lit8 v1, v5, 0x2

    move v3, v1

    .line 58
    :goto_2
    if-ge v3, v4, :cond_2

    .line 59
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 60
    const/16 v6, 0x2f

    if-eq v5, v6, :cond_1

    const/16 v6, 0x3a

    if-eq v5, v6, :cond_1

    const/16 v6, 0x3f

    if-eq v5, v6, :cond_1

    const/16 v6, 0x23

    if-ne v5, v6, :cond_6

    .line 61
    :cond_1
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v8, Lanet/channel/util/c;->b:Ljava/lang/String;

    .line 65
    :cond_2
    if-ne v3, v4, :cond_7

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lanet/channel/util/c;->b:Ljava/lang/String;

    move-object v0, v8

    .line 67
    goto :goto_0

    .line 43
    :cond_3
    const-string v3, "https:"

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 44
    const-string v1, "https"

    iput-object v1, v8, Lanet/channel/util/c;->a:Ljava/lang/String;

    goto :goto_1

    .line 46
    :cond_4
    const-string v3, "http:"

    move v4, v2

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 47
    const-string v1, "http"

    iput-object v1, v8, Lanet/channel/util/c;->a:Ljava/lang/String;

    move v5, v6

    .line 48
    goto :goto_1

    :cond_5
    move-object v0, v7

    .line 50
    goto :goto_0

    .line 58
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    move v1, v2

    .line 72
    :goto_3
    if-ge v3, v4, :cond_b

    .line 73
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 74
    const/16 v6, 0x2f

    if-ne v5, v6, :cond_9

    if-nez v1, :cond_9

    move v1, v3

    .line 72
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 78
    :cond_9
    const/16 v6, 0x3f

    if-eq v5, v6, :cond_a

    const/16 v6, 0x23

    if-ne v5, v6, :cond_8

    .line 79
    :cond_a
    if-eqz v1, :cond_b

    move v2, v3

    .line 86
    :cond_b
    if-eqz v1, :cond_c

    .line 87
    if-eqz v2, :cond_d

    :goto_4
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lanet/channel/util/c;->c:Ljava/lang/String;

    :cond_c
    move-object v0, v8

    .line 90
    goto/16 :goto_0

    :cond_d
    move v2, v4

    .line 87
    goto :goto_4
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lanet/channel/util/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 152
    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 153
    iget-object v0, p0, Lanet/channel/util/c;->d:Ljava/lang/String;

    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    .line 154
    :goto_0
    iget-object v1, p0, Lanet/channel/util/c;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 155
    iget-object v1, p0, Lanet/channel/util/c;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_2

    .line 160
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lanet/channel/util/c;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 161
    iget-object v2, p0, Lanet/channel/util/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lanet/channel/util/c;->d:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/util/c;->d:Ljava/lang/String;

    .line 169
    :cond_1
    return-void

    .line 154
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lanet/channel/util/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 142
    iget-boolean v0, p0, Lanet/channel/util/c;->f:Z

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lanet/channel/util/c;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    iput-object p1, p0, Lanet/channel/util/c;->a:Ljava/lang/String;

    .line 145
    const-string v0, ":"

    iget-object v1, p0, Lanet/channel/util/c;->d:Ljava/lang/String;

    iget-object v2, p0, Lanet/channel/util/c;->d:Ljava/lang/String;

    const-string v3, "//"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lanet/channel/util/StringUtils;->concatString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/util/c;->d:Ljava/lang/String;

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lanet/channel/util/c;->e:Ljava/lang/String;

    .line 149
    :cond_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lanet/channel/util/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lanet/channel/util/c;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lanet/channel/util/c;->a:Ljava/lang/String;

    const-string v1, "://"

    iget-object v2, p0, Lanet/channel/util/c;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lanet/channel/util/StringUtils;->concatString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/util/c;->e:Ljava/lang/String;

    .line 109
    :cond_0
    iget-object v0, p0, Lanet/channel/util/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lanet/channel/util/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/net/URL;
    .locals 2

    .prologue
    .line 118
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lanet/channel/util/c;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()V
    .locals 5

    .prologue
    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lanet/channel/util/c;->f:Z

    .line 126
    const-string v0, "http"

    iget-object v1, p0, Lanet/channel/util/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    const-string v0, "http"

    iput-object v0, p0, Lanet/channel/util/c;->a:Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lanet/channel/util/c;->a:Ljava/lang/String;

    const-string v1, ":"

    iget-object v2, p0, Lanet/channel/util/c;->d:Ljava/lang/String;

    iget-object v3, p0, Lanet/channel/util/c;->d:Ljava/lang/String;

    const-string v4, "//"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lanet/channel/util/StringUtils;->concatString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/util/c;->d:Ljava/lang/String;

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lanet/channel/util/c;->e:Ljava/lang/String;

    .line 131
    :cond_0
    return-void
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lanet/channel/util/c;->f:Z

    return v0
.end method

.method public i()V
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lanet/channel/util/c;->f:Z

    .line 139
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lanet/channel/util/c;->d:Ljava/lang/String;

    return-object v0
.end method
