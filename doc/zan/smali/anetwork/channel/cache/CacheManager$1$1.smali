.class Lanetwork/channel/cache/CacheManager$1$1;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanetwork/channel/cache/CachePrediction;


# instance fields
.field final synthetic a:Lanetwork/channel/cache/CacheManager$1;


# direct methods
.method constructor <init>(Lanetwork/channel/cache/CacheManager$1;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lanetwork/channel/cache/CacheManager$1$1;->a:Lanetwork/channel/cache/CacheManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 51
    const-string v0, "weex"

    const-string v1, "f-refer"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
