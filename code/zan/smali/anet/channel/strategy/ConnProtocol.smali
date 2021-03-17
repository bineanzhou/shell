.class public Lanet/channel/strategy/ConnProtocol;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final HTTP:Lanet/channel/strategy/ConnProtocol;

.field public static final HTTPS:Lanet/channel/strategy/ConnProtocol;

.field private static protocolMap:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lanet/channel/strategy/ConnProtocol;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x30e4ed8b361b2849L


# instance fields
.field final isHttp:I

.field public final l7:Z

.field public final name:Ljava/lang/String;

.field public final protocol:Ljava/lang/String;

.field public final publicKey:Ljava/lang/String;

.field public final rtt:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lanet/channel/strategy/ConnProtocol;->protocolMap:Ljava/util/Map;

    .line 16
    const-string v0, "http"

    invoke-static {v0, v1, v1, v2}, Lanet/channel/strategy/ConnProtocol;->valueOf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lanet/channel/strategy/ConnProtocol;

    move-result-object v0

    sput-object v0, Lanet/channel/strategy/ConnProtocol;->HTTP:Lanet/channel/strategy/ConnProtocol;

    .line 17
    const-string v0, "https"

    invoke-static {v0, v1, v1, v2}, Lanet/channel/strategy/ConnProtocol;->valueOf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lanet/channel/strategy/ConnProtocol;

    move-result-object v0

    sput-object v0, Lanet/channel/strategy/ConnProtocol;->HTTPS:Lanet/channel/strategy/ConnProtocol;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lanet/channel/strategy/ConnProtocol;->name:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lanet/channel/strategy/ConnProtocol;->protocol:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lanet/channel/strategy/ConnProtocol;->rtt:Ljava/lang/String;

    .line 53
    iput-object p4, p0, Lanet/channel/strategy/ConnProtocol;->publicKey:Ljava/lang/String;

    .line 54
    iput-boolean p5, p0, Lanet/channel/strategy/ConnProtocol;->l7:Z

    .line 55
    const-string v0, "http"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lanet/channel/strategy/ConnProtocol;->isHttp:I

    .line 56
    return-void

    .line 55
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static buildName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    :goto_0
    return-object p0

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 64
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 66
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    :goto_1
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    if-eqz p3, :cond_1

    .line 73
    const-string v1, "_l7"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 68
    :cond_2
    const-string v1, "_0rtt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static valueOf(Lanet/channel/strategy/k$a;)Lanet/channel/strategy/ConnProtocol;
    .locals 4

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lanet/channel/strategy/k$a;->b:Ljava/lang/String;

    iget-object v1, p0, Lanet/channel/strategy/k$a;->g:Ljava/lang/String;

    iget-object v2, p0, Lanet/channel/strategy/k$a;->j:Ljava/lang/String;

    iget-boolean v3, p0, Lanet/channel/strategy/k$a;->i:Z

    invoke-static {v0, v1, v2, v3}, Lanet/channel/strategy/ConnProtocol;->valueOf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lanet/channel/strategy/ConnProtocol;

    move-result-object v0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lanet/channel/strategy/ConnProtocol;
    .locals 7

    .prologue
    .line 34
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    const/4 v0, 0x0

    .line 45
    :goto_0
    return-object v0

    .line 38
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lanet/channel/strategy/ConnProtocol;->buildName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 39
    sget-object v6, Lanet/channel/strategy/ConnProtocol;->protocolMap:Ljava/util/Map;

    monitor-enter v6

    .line 40
    :try_start_0
    sget-object v0, Lanet/channel/strategy/ConnProtocol;->protocolMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    sget-object v0, Lanet/channel/strategy/ConnProtocol;->protocolMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/strategy/ConnProtocol;

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0

    .line 43
    :cond_1
    :try_start_1
    new-instance v0, Lanet/channel/strategy/ConnProtocol;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lanet/channel/strategy/ConnProtocol;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 44
    sget-object v2, Lanet/channel/strategy/ConnProtocol;->protocolMap:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 85
    if-ne p0, p1, :cond_0

    .line 86
    const/4 v0, 0x1

    .line 93
    :goto_0
    return v0

    .line 89
    :cond_0
    if-eqz p1, :cond_1

    instance-of v0, p1, Lanet/channel/strategy/ConnProtocol;

    if-nez v0, :cond_2

    .line 90
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 93
    :cond_2
    iget-object v0, p0, Lanet/channel/strategy/ConnProtocol;->name:Ljava/lang/String;

    check-cast p1, Lanet/channel/strategy/ConnProtocol;

    iget-object v1, p1, Lanet/channel/strategy/ConnProtocol;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 98
    .line 99
    iget-object v0, p0, Lanet/channel/strategy/ConnProtocol;->protocol:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 100
    iget-object v1, p0, Lanet/channel/strategy/ConnProtocol;->rtt:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 101
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lanet/channel/strategy/ConnProtocol;->rtt:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 103
    :cond_0
    iget-object v1, p0, Lanet/channel/strategy/ConnProtocol;->publicKey:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 104
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lanet/channel/strategy/ConnProtocol;->publicKey:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 106
    :cond_1
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lanet/channel/strategy/ConnProtocol;->l7:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    .line 107
    return v0

    .line 106
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lanet/channel/strategy/ConnProtocol;->name:Ljava/lang/String;

    return-object v0
.end method
