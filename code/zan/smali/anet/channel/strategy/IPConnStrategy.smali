.class Lanet/channel/strategy/IPConnStrategy;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanet/channel/strategy/IConnStrategy;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/strategy/IPConnStrategy$IpType;
    }
.end annotation


# instance fields
.field volatile a:I

.field transient b:Z

.field public volatile cto:I

.field public volatile heartbeat:I

.field public final ip:Ljava/lang/String;

.field public final port:I

.field public final protocol:Lanet/channel/strategy/ConnProtocol;

.field public volatile retry:I

.field public volatile rto:I


# direct methods
.method private constructor <init>(Ljava/lang/String;ILanet/channel/strategy/ConnProtocol;IIII)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lanet/channel/strategy/IPConnStrategy;->a:I

    .line 52
    iput-object p1, p0, Lanet/channel/strategy/IPConnStrategy;->ip:Ljava/lang/String;

    .line 53
    iput p2, p0, Lanet/channel/strategy/IPConnStrategy;->port:I

    .line 54
    iput-object p3, p0, Lanet/channel/strategy/IPConnStrategy;->protocol:Lanet/channel/strategy/ConnProtocol;

    .line 55
    iput p4, p0, Lanet/channel/strategy/IPConnStrategy;->cto:I

    .line 56
    iput p5, p0, Lanet/channel/strategy/IPConnStrategy;->rto:I

    .line 57
    iput p6, p0, Lanet/channel/strategy/IPConnStrategy;->retry:I

    .line 58
    iput p7, p0, Lanet/channel/strategy/IPConnStrategy;->heartbeat:I

    .line 59
    return-void
.end method

.method static a(Ljava/lang/String;ILanet/channel/strategy/ConnProtocol;IIII)Lanet/channel/strategy/IPConnStrategy;
    .locals 8

    .prologue
    .line 43
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    if-gtz p1, :cond_1

    .line 44
    :cond_0
    const/4 v0, 0x0

    .line 47
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lanet/channel/strategy/IPConnStrategy;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lanet/channel/strategy/IPConnStrategy;-><init>(Ljava/lang/String;ILanet/channel/strategy/ConnProtocol;IIII)V

    goto :goto_0
.end method

.method static a(Ljava/lang/String;Lanet/channel/strategy/k$a;)Lanet/channel/strategy/IPConnStrategy;
    .locals 7

    .prologue
    .line 32
    invoke-static {p1}, Lanet/channel/strategy/ConnProtocol;->valueOf(Lanet/channel/strategy/k$a;)Lanet/channel/strategy/ConnProtocol;

    move-result-object v2

    .line 33
    if-nez v2, :cond_0

    .line 34
    const/4 v0, 0x0

    .line 37
    :goto_0
    return-object v0

    :cond_0
    iget v1, p1, Lanet/channel/strategy/k$a;->a:I

    iget v3, p1, Lanet/channel/strategy/k$a;->c:I

    iget v4, p1, Lanet/channel/strategy/k$a;->d:I

    iget v5, p1, Lanet/channel/strategy/k$a;->e:I

    iget v6, p1, Lanet/channel/strategy/k$a;->f:I

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lanet/channel/strategy/IPConnStrategy;->a(Ljava/lang/String;ILanet/channel/strategy/ConnProtocol;IIII)Lanet/channel/strategy/IPConnStrategy;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 114
    if-ne p0, p1, :cond_1

    .line 124
    :cond_0
    :goto_0
    return v0

    .line 118
    :cond_1
    if-eqz p1, :cond_2

    instance-of v2, p1, Lanet/channel/strategy/IPConnStrategy;

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    .line 119
    goto :goto_0

    .line 122
    :cond_3
    check-cast p1, Lanet/channel/strategy/IPConnStrategy;

    .line 124
    iget v2, p0, Lanet/channel/strategy/IPConnStrategy;->port:I

    iget v3, p1, Lanet/channel/strategy/IPConnStrategy;->port:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lanet/channel/strategy/IPConnStrategy;->ip:Ljava/lang/String;

    iget-object v3, p1, Lanet/channel/strategy/IPConnStrategy;->ip:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lanet/channel/strategy/IPConnStrategy;->protocol:Lanet/channel/strategy/ConnProtocol;

    iget-object v3, p1, Lanet/channel/strategy/IPConnStrategy;->protocol:Lanet/channel/strategy/ConnProtocol;

    invoke-virtual {v2, v3}, Lanet/channel/strategy/ConnProtocol;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public getConnectionTimeout()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lanet/channel/strategy/IPConnStrategy;->cto:I

    return v0
.end method

.method public getHeartbeat()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lanet/channel/strategy/IPConnStrategy;->heartbeat:I

    return v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lanet/channel/strategy/IPConnStrategy;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getIpType()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lanet/channel/strategy/IPConnStrategy;->a:I

    return v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lanet/channel/strategy/IPConnStrategy;->port:I

    return v0
.end method

.method public getProtocol()Lanet/channel/strategy/ConnProtocol;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lanet/channel/strategy/IPConnStrategy;->protocol:Lanet/channel/strategy/ConnProtocol;

    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lanet/channel/strategy/IPConnStrategy;->rto:I

    return v0
.end method

.method public getRetryTimes()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lanet/channel/strategy/IPConnStrategy;->retry:I

    return v0
.end method

.method public getUniqueId()I
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0}, Lanet/channel/strategy/IPConnStrategy;->hashCode()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 129
    .line 130
    iget-object v0, p0, Lanet/channel/strategy/IPConnStrategy;->ip:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 131
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lanet/channel/strategy/IPConnStrategy;->port:I

    add-int/2addr v0, v1

    .line 132
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lanet/channel/strategy/IPConnStrategy;->protocol:Lanet/channel/strategy/ConnProtocol;

    invoke-virtual {v1}, Lanet/channel/strategy/ConnProtocol;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 133
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x20

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 64
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lanet/channel/strategy/IPConnStrategy;->ip:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget v1, p0, Lanet/channel/strategy/IPConnStrategy;->a:I

    if-nez v1, :cond_0

    .line 66
    const-string v1, "(*)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lanet/channel/strategy/IPConnStrategy;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lanet/channel/strategy/IPConnStrategy;->protocol:Lanet/channel/strategy/ConnProtocol;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
