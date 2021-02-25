.class public Lcom/taobao/accs/utl/h;
.super Ljava/io/ByteArrayInputStream;
.source "Taobao"


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 10
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/taobao/accs/utl/h;->read()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public a(I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    new-array v0, p1, [B

    .line 42
    invoke-virtual {p0, v0}, Lcom/taobao/accs/utl/h;->read([B)I

    move-result v1

    .line 43
    if-ne v1, p1, :cond_0

    .line 44
    new-instance v1, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1

    .line 46
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "read len not match. ask for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but read for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()I
    .locals 2

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/taobao/accs/utl/h;->a()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Lcom/taobao/accs/utl/h;->a()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public c()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/taobao/accs/utl/h;->available()I

    move-result v0

    new-array v0, v0, [B

    .line 57
    invoke-virtual {p0, v0}, Lcom/taobao/accs/utl/h;->read([B)I

    .line 58
    return-object v0
.end method
