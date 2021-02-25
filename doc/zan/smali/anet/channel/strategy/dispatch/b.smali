.class Lanet/channel/strategy/dispatch/b;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/strategy/dispatch/b$a;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "awcn.AmdcThreadPoolExecutor"

.field private static b:I


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x2

    sput v0, Lanet/channel/strategy/dispatch/b;->b:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method static synthetic a(Lanet/channel/strategy/dispatch/b;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lanet/channel/strategy/dispatch/b;->a:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic a(Lanet/channel/strategy/dispatch/b;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .prologue
    .line 11
    iput-object p1, p0, Lanet/channel/strategy/dispatch/b;->a:Ljava/util/Map;

    return-object p1
.end method


# virtual methods
.method public a(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    const-string v0, "Env"

    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->getEnv()Lanet/channel/entity/ENV;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    monitor-enter p0

    .line 21
    :try_start_0
    iget-object v0, p0, Lanet/channel/strategy/dispatch/b;->a:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 22
    iput-object p1, p0, Lanet/channel/strategy/dispatch/b;->a:Ljava/util/Map;

    .line 24
    sget v0, Lanet/channel/strategy/dispatch/b;->b:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lanet/channel/strategy/dispatch/b;->b:I

    if-lez v0, :cond_0

    const/16 v0, 0x1f4

    .line 25
    :goto_0
    const-string v1, "awcn.AmdcThreadPoolExecutor"

    const-string v2, "merge amdc request"

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "delay"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    new-instance v1, Lanet/channel/strategy/dispatch/b$a;

    invoke-direct {v1, p0}, Lanet/channel/strategy/dispatch/b$a;-><init>(Lanet/channel/strategy/dispatch/b;)V

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lanet/channel/strategy/utils/a;->a(Ljava/lang/Runnable;J)V

    .line 41
    :goto_1
    monitor-exit p0

    .line 42
    return-void

    .line 24
    :cond_0
    const/16 v0, 0xbb8

    goto :goto_0

    .line 28
    :cond_1
    iget-object v0, p0, Lanet/channel/strategy/dispatch/b;->a:Ljava/util/Map;

    const-string v1, "hosts"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 29
    const-string v1, "hosts"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 31
    const-string v2, "Env"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lanet/channel/strategy/dispatch/b;->a:Ljava/util/Map;

    const-string v4, "Env"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 33
    iput-object p1, p0, Lanet/channel/strategy/dispatch/b;->a:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 34
    :cond_2
    :try_start_1
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    add-int/2addr v2, v3

    const/16 v3, 0x28

    if-gt v2, v3, :cond_3

    .line 35
    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 36
    iput-object p1, p0, Lanet/channel/strategy/dispatch/b;->a:Ljava/util/Map;

    goto :goto_1

    .line 38
    :cond_3
    new-instance v0, Lanet/channel/strategy/dispatch/b$a;

    invoke-direct {v0, p0, p1}, Lanet/channel/strategy/dispatch/b$a;-><init>(Lanet/channel/strategy/dispatch/b;Ljava/util/Map;)V

    invoke-static {v0}, Lanet/channel/strategy/utils/a;->a(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
