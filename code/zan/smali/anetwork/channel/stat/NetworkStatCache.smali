.class Lanetwork/channel/stat/NetworkStatCache;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanetwork/channel/stat/INetworkStat;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanetwork/channel/stat/NetworkStatCache$holder;
    }
.end annotation


# static fields
.field private static final a:I = 0x64

.field private static final c:Ljava/lang/String; = "{\"oneWayTime\" : 0, \"totalSize\" : 0}"


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lanetwork/channel/stat/NetworkStatCache$1;

    invoke-direct {v0, p0}, Lanetwork/channel/stat/NetworkStatCache$1;-><init>(Lanetwork/channel/stat/NetworkStatCache;)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/stat/NetworkStatCache;->b:Ljava/util/Map;

    .line 26
    return-void
.end method

.method synthetic constructor <init>(Lanetwork/channel/stat/NetworkStatCache$1;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lanetwork/channel/stat/NetworkStatCache;-><init>()V

    return-void
.end method

.method public static a()Lanetwork/channel/stat/NetworkStatCache;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lanetwork/channel/stat/NetworkStatCache$holder;->a:Lanetwork/channel/stat/NetworkStatCache;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lanetwork/channel/stat/NetworkStatCache;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lanetwork/channel/stat/NetworkStatCache;->b:Ljava/util/Map;

    const-string v1, "{\"oneWayTime\" : 0, \"totalSize\" : 0}"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lanetwork/channel/statist/StatisticData;)V
    .locals 4

    .prologue
    .line 38
    invoke-static {p1}, Lanet/channel/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    :goto_0
    return-void

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x30

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 42
    const-string v1, "{\"oneWayTime\" : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p2, Lanetwork/channel/statist/StatisticData;->oneWayTime_ANet:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", \"totalSize\" : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p2, Lanetwork/channel/statist/StatisticData;->totalSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-object v1, p0, Lanetwork/channel/stat/NetworkStatCache;->b:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lanetwork/channel/stat/NetworkStatCache;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
