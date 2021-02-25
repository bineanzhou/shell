.class public Lanet/channel/entity/ConnType;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/entity/ConnType$TypeLevel;
    }
.end annotation


# static fields
.field public static HTTP:Lanet/channel/entity/ConnType; = null

.field public static final HTTP2:Ljava/lang/String; = "http2"

.field public static HTTPS:Lanet/channel/entity/ConnType; = null

.field public static final PK_ACS:Ljava/lang/String; = "acs"

.field public static final PK_CDN:Ljava/lang/String; = "cdn"

.field public static final PK_OPEN:Ljava/lang/String; = "open"

.field public static final RTT_0:Ljava/lang/String; = "0rtt"

.field public static final RTT_1:Ljava/lang/String; = "1rtt"

.field public static final SPDY:Ljava/lang/String; = "spdy"

.field private static connTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lanet/channel/strategy/ConnProtocol;",
            "Lanet/channel/entity/ConnType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private name:Ljava/lang/String;

.field private publicKey:Ljava/lang/String;

.field private spdyProtocol:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lanet/channel/entity/ConnType;

    const-string v1, "http"

    invoke-direct {v0, v1}, Lanet/channel/entity/ConnType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lanet/channel/entity/ConnType;->HTTP:Lanet/channel/entity/ConnType;

    .line 35
    new-instance v0, Lanet/channel/entity/ConnType;

    const-string v1, "https"

    invoke-direct {v0, v1}, Lanet/channel/entity/ConnType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lanet/channel/entity/ConnType;->HTTPS:Lanet/channel/entity/ConnType;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lanet/channel/entity/ConnType;->connTypeMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lanet/channel/entity/ConnType;->name:Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lanet/channel/entity/ConnType;->name:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public static compare(Lanet/channel/entity/ConnType;Lanet/channel/entity/ConnType;)I
    .locals 2

    .prologue
    .line 163
    invoke-direct {p0}, Lanet/channel/entity/ConnType;->getPriority()I

    move-result v0

    invoke-direct {p1}, Lanet/channel/entity/ConnType;->getPriority()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getPriority()I
    .locals 1

    .prologue
    .line 153
    invoke-virtual {p0}, Lanet/channel/entity/ConnType;->isHttpType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    const/4 v0, 0x1

    .line 158
    :goto_0
    return v0

    .line 155
    :cond_0
    iget v0, p0, Lanet/channel/entity/ConnType;->spdyProtocol:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1

    .line 156
    const/4 v0, 0x0

    goto :goto_0

    .line 158
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static valueOf(Lanet/channel/strategy/ConnProtocol;)Lanet/channel/entity/ConnType;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 47
    if-nez p0, :cond_0

    .line 93
    :goto_0
    return-object v0

    .line 51
    :cond_0
    const-string v1, "http"

    iget-object v2, p0, Lanet/channel/strategy/ConnProtocol;->protocol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    sget-object v0, Lanet/channel/entity/ConnType;->HTTP:Lanet/channel/entity/ConnType;

    goto :goto_0

    .line 53
    :cond_1
    const-string v1, "https"

    iget-object v2, p0, Lanet/channel/strategy/ConnProtocol;->protocol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 54
    sget-object v0, Lanet/channel/entity/ConnType;->HTTPS:Lanet/channel/entity/ConnType;

    goto :goto_0

    .line 57
    :cond_2
    sget-object v2, Lanet/channel/entity/ConnType;->connTypeMap:Ljava/util/Map;

    monitor-enter v2

    .line 58
    :try_start_0
    sget-object v1, Lanet/channel/entity/ConnType;->connTypeMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 59
    sget-object v0, Lanet/channel/entity/ConnType;->connTypeMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/entity/ConnType;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 62
    :cond_3
    :try_start_1
    new-instance v1, Lanet/channel/entity/ConnType;

    invoke-virtual {p0}, Lanet/channel/strategy/ConnProtocol;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lanet/channel/entity/ConnType;-><init>(Ljava/lang/String;)V

    .line 63
    iget-object v3, p0, Lanet/channel/strategy/ConnProtocol;->publicKey:Ljava/lang/String;

    iput-object v3, v1, Lanet/channel/entity/ConnType;->publicKey:Ljava/lang/String;

    .line 65
    const-string v3, "http2"

    iget-object v4, p0, Lanet/channel/strategy/ConnProtocol;->protocol:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 66
    iget v3, v1, Lanet/channel/entity/ConnType;->spdyProtocol:I

    or-int/lit8 v3, v3, 0x8

    iput v3, v1, Lanet/channel/entity/ConnType;->spdyProtocol:I

    .line 72
    :cond_4
    :goto_1
    iget v3, v1, Lanet/channel/entity/ConnType;->spdyProtocol:I

    if-nez v3, :cond_6

    .line 73
    monitor-exit v2

    goto :goto_0

    .line 67
    :cond_5
    const-string v3, "spdy"

    iget-object v4, p0, Lanet/channel/strategy/ConnProtocol;->protocol:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 68
    iget v3, v1, Lanet/channel/entity/ConnType;->spdyProtocol:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v1, Lanet/channel/entity/ConnType;->spdyProtocol:I

    goto :goto_1

    .line 76
    :cond_6
    iget-object v3, p0, Lanet/channel/strategy/ConnProtocol;->publicKey:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 77
    iget v3, v1, Lanet/channel/entity/ConnType;->spdyProtocol:I

    or-int/lit16 v3, v3, 0x80

    iput v3, v1, Lanet/channel/entity/ConnType;->spdyProtocol:I

    .line 79
    const-string v3, "1rtt"

    iget-object v4, p0, Lanet/channel/strategy/ConnProtocol;->rtt:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 80
    iget v0, v1, Lanet/channel/entity/ConnType;->spdyProtocol:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, v1, Lanet/channel/entity/ConnType;->spdyProtocol:I

    .line 87
    :goto_2
    iget-boolean v0, p0, Lanet/channel/strategy/ConnProtocol;->l7:Z

    if-eqz v0, :cond_7

    .line 88
    iget v0, v1, Lanet/channel/entity/ConnType;->spdyProtocol:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, v1, Lanet/channel/entity/ConnType;->spdyProtocol:I

    .line 92
    :cond_7
    sget-object v0, Lanet/channel/entity/ConnType;->connTypeMap:Ljava/util/Map;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    monitor-exit v2

    move-object v0, v1

    goto/16 :goto_0

    .line 81
    :cond_8
    const-string v3, "0rtt"

    iget-object v4, p0, Lanet/channel/strategy/ConnProtocol;->rtt:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 82
    iget v0, v1, Lanet/channel/entity/ConnType;->spdyProtocol:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, v1, Lanet/channel/entity/ConnType;->spdyProtocol:I

    goto :goto_2

    .line 84
    :cond_9
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 132
    if-eqz p1, :cond_0

    instance-of v2, p1, Lanet/channel/entity/ConnType;

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 141
    :cond_1
    :goto_0
    return v0

    .line 135
    :cond_2
    if-eq p0, p1, :cond_1

    .line 138
    iget-object v2, p0, Lanet/channel/entity/ConnType;->name:Ljava/lang/String;

    check-cast p1, Lanet/channel/entity/ConnType;

    iget-object v3, p1, Lanet/channel/entity/ConnType;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 141
    goto :goto_0
.end method

.method public getTnetConType()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lanet/channel/entity/ConnType;->spdyProtocol:I

    return v0
.end method

.method public getTnetPublicKey(Z)I
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 102
    const/4 v1, -0x1

    .line 104
    const-string v2, "cdn"

    iget-object v3, p0, Lanet/channel/entity/ConnType;->publicKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 105
    if-eqz p1, :cond_0

    .line 114
    :cond_0
    :goto_0
    return v0

    .line 106
    :cond_1
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->getEnv()Lanet/channel/entity/ENV;

    move-result-object v0

    sget-object v2, Lanet/channel/entity/ENV;->TEST:Lanet/channel/entity/ENV;

    if-ne v0, v2, :cond_2

    .line 107
    const/4 v0, 0x0

    goto :goto_0

    .line 108
    :cond_2
    const-string v0, "open"

    iget-object v2, p0, Lanet/channel/entity/ConnType;->publicKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 109
    if-eqz p1, :cond_3

    const/16 v0, 0xb

    goto :goto_0

    :cond_3
    const/16 v0, 0xa

    goto :goto_0

    .line 110
    :cond_4
    const-string v0, "acs"

    iget-object v2, p0, Lanet/channel/entity/ConnType;->publicKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 111
    if-eqz p1, :cond_5

    const/4 v0, 0x4

    goto :goto_0

    :cond_5
    const/4 v0, 0x3

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public getTypeLevel()Lanet/channel/entity/ConnType$TypeLevel;
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Lanet/channel/entity/ConnType;->isHttpType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    sget-object v0, Lanet/channel/entity/ConnType$TypeLevel;->HTTP:Lanet/channel/entity/ConnType$TypeLevel;

    .line 148
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lanet/channel/entity/ConnType$TypeLevel;->SPDY:Lanet/channel/entity/ConnType$TypeLevel;

    goto :goto_0
.end method

.method public isHttpType()Z
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lanet/channel/entity/ConnType;->HTTP:Lanet/channel/entity/ConnType;

    invoke-virtual {p0, v0}, Lanet/channel/entity/ConnType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lanet/channel/entity/ConnType;->HTTPS:Lanet/channel/entity/ConnType;

    invoke-virtual {p0, v0}, Lanet/channel/entity/ConnType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSSL()Z
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lanet/channel/entity/ConnType;->HTTPS:Lanet/channel/entity/ConnType;

    invoke-virtual {p0, v0}, Lanet/channel/entity/ConnType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lanet/channel/entity/ConnType;->spdyProtocol:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lanet/channel/entity/ConnType;->name:Ljava/lang/String;

    return-object v0
.end method
