.class public Lanet/channel/monitor/b;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/monitor/b$a;
    }
.end annotation


# static fields
.field static a:I

.field static b:J

.field static c:J

.field static d:J

.field static e:J

.field static f:J

.field static g:D

.field static h:D

.field static i:D

.field static j:D

.field private static volatile k:Z


# instance fields
.field private l:I

.field private m:I

.field private n:Lanet/channel/monitor/e;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v0, 0x0

    .line 13
    sput-boolean v4, Lanet/channel/monitor/b;->k:Z

    .line 18
    sput v4, Lanet/channel/monitor/b;->a:I

    .line 19
    sput-wide v0, Lanet/channel/monitor/b;->b:J

    .line 20
    sput-wide v0, Lanet/channel/monitor/b;->c:J

    .line 21
    sput-wide v0, Lanet/channel/monitor/b;->d:J

    .line 22
    sput-wide v0, Lanet/channel/monitor/b;->e:J

    .line 23
    sput-wide v0, Lanet/channel/monitor/b;->f:J

    .line 24
    sput-wide v2, Lanet/channel/monitor/b;->g:D

    .line 25
    sput-wide v2, Lanet/channel/monitor/b;->h:D

    .line 26
    sput-wide v2, Lanet/channel/monitor/b;->i:D

    .line 27
    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    sput-wide v0, Lanet/channel/monitor/b;->j:D

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x5

    iput v0, p0, Lanet/channel/monitor/b;->l:I

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lanet/channel/monitor/b;->m:I

    .line 32
    new-instance v0, Lanet/channel/monitor/e;

    invoke-direct {v0}, Lanet/channel/monitor/e;-><init>()V

    iput-object v0, p0, Lanet/channel/monitor/b;->n:Lanet/channel/monitor/e;

    .line 43
    new-instance v0, Lanet/channel/monitor/c;

    invoke-direct {v0, p0}, Lanet/channel/monitor/c;-><init>(Lanet/channel/monitor/b;)V

    invoke-static {v0}, Lanet/channel/status/NetworkStatusHelper;->a(Lanet/channel/status/NetworkStatusHelper$INetworkStatusChangeListener;)V

    .line 51
    return-void
.end method

.method synthetic constructor <init>(Lanet/channel/monitor/c;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lanet/channel/monitor/b;-><init>()V

    return-void
.end method

.method static synthetic a(Lanet/channel/monitor/b;I)I
    .locals 0

    .prologue
    .line 10
    iput p1, p0, Lanet/channel/monitor/b;->m:I

    return p1
.end method

.method public static a()Lanet/channel/monitor/b;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lanet/channel/monitor/b$a;->a:Lanet/channel/monitor/b;

    return-object v0
.end method

.method static synthetic a(Lanet/channel/monitor/b;)Lanet/channel/monitor/e;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lanet/channel/monitor/b;->n:Lanet/channel/monitor/e;

    return-object v0
.end method

.method static synthetic b(Lanet/channel/monitor/b;)I
    .locals 2

    .prologue
    .line 10
    iget v0, p0, Lanet/channel/monitor/b;->m:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lanet/channel/monitor/b;->m:I

    return v0
.end method

.method static synthetic b(Lanet/channel/monitor/b;I)I
    .locals 0

    .prologue
    .line 10
    iput p1, p0, Lanet/channel/monitor/b;->l:I

    return p1
.end method

.method static synthetic c(Lanet/channel/monitor/b;)I
    .locals 1

    .prologue
    .line 10
    iget v0, p0, Lanet/channel/monitor/b;->m:I

    return v0
.end method

.method static synthetic f()Z
    .locals 1

    .prologue
    .line 10
    sget-boolean v0, Lanet/channel/monitor/b;->k:Z

    return v0
.end method


# virtual methods
.method public a(JJJ)V
    .locals 9

    .prologue
    .line 88
    new-instance v0, Lanet/channel/monitor/d;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lanet/channel/monitor/d;-><init>(Lanet/channel/monitor/b;JJJ)V

    invoke-static {v0}, Lanet/channel/a/c;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 176
    return-void
.end method

.method public b()I
    .locals 2

    .prologue
    .line 54
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->a()Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    move-result-object v0

    sget-object v1, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->G2:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    if-ne v0, v1, :cond_0

    .line 55
    const/4 v0, 0x1

    .line 57
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lanet/channel/monitor/b;->l:I

    goto :goto_0
.end method

.method public c()D
    .locals 2

    .prologue
    .line 61
    sget-wide v0, Lanet/channel/monitor/b;->i:D

    return-wide v0
.end method

.method public declared-synchronized d()V
    .locals 6

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    const-string v0, "awcn.BandWidthSampler"

    const-string v1, "[startNetworkMeter]"

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "NetworkStatus"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->a()Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->a()Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    move-result-object v0

    sget-object v1, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->G2:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    if-ne v0, v1, :cond_0

    .line 71
    const/4 v0, 0x0

    sput-boolean v0, Lanet/channel/monitor/b;->k:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :goto_0
    monitor-exit p0

    return-void

    .line 75
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lanet/channel/monitor/b;->k:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    :try_start_2
    const-string v1, "awcn.BandWidthSampler"

    const-string v2, "startNetworkMeter fail."

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v0, v4}, Lanet/channel/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    sput-boolean v0, Lanet/channel/monitor/b;->k:Z

    .line 84
    return-void
.end method
