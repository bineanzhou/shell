.class Lanet/channel/strategy/l;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static a:Ljava/io/File;

.field private static volatile b:Z

.field private static c:Ljava/io/FileFilter;

.field private static d:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lanet/channel/strategy/l;->a:Ljava/io/File;

    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lanet/channel/strategy/l;->b:Z

    .line 93
    new-instance v0, Lanet/channel/strategy/m;

    invoke-direct {v0}, Lanet/channel/strategy/m;-><init>()V

    sput-object v0, Lanet/channel/strategy/l;->c:Ljava/io/FileFilter;

    .line 100
    new-instance v0, Lanet/channel/strategy/n;

    invoke-direct {v0}, Lanet/channel/strategy/n;-><init>()V

    sput-object v0, Lanet/channel/strategy/l;->d:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .prologue
    .line 69
    sget-object v0, Lanet/channel/strategy/l;->a:Ljava/io/File;

    invoke-static {v0}, Lanet/channel/strategy/l;->a(Ljava/io/File;)Z

    .line 70
    new-instance v0, Ljava/io/File;

    sget-object v1, Lanet/channel/strategy/l;->a:Ljava/io/File;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static declared-synchronized a()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 74
    const-class v1, Lanet/channel/strategy/l;

    monitor-enter v1

    :try_start_0
    const-string v2, "awcn.StrategySerializeHelper"

    const-string v3, "clear start."

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v5}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    sget-object v2, Lanet/channel/strategy/l;->a:Ljava/io/File;

    if-nez v2, :cond_1

    .line 76
    const-string v0, "awcn.StrategySerializeHelper"

    const-string v2, "folder path not initialized, wait to clear"

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3, v4}, Lanet/channel/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    const/4 v0, 0x1

    sput-boolean v0, Lanet/channel/strategy/l;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 81
    :cond_1
    :try_start_1
    sget-object v2, Lanet/channel/strategy/l;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 82
    if-eqz v2, :cond_0

    .line 85
    array-length v3, v2

    :goto_1
    if-ge v0, v3, :cond_3

    aget-object v4, v2, v0

    .line 86
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 87
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 85
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 90
    :cond_3
    const-string v0, "awcn.StrategySerializeHelper"

    const-string v2, "clear end."

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3, v4}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 30
    if-eqz p0, :cond_2

    .line 31
    :try_start_0
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "awcn_strategy"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lanet/channel/strategy/l;->a:Ljava/io/File;

    .line 32
    sget-object v0, Lanet/channel/strategy/l;->a:Ljava/io/File;

    invoke-static {v0}, Lanet/channel/strategy/l;->a(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "awcn_strategy"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lanet/channel/strategy/l;->a:Ljava/io/File;

    .line 34
    sget-object v0, Lanet/channel/strategy/l;->a:Ljava/io/File;

    invoke-static {v0}, Lanet/channel/strategy/l;->a(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    const-string v0, "awcn.StrategySerializeHelper"

    const-string v1, "create directory failed!!!"

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "dir"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lanet/channel/strategy/l;->a:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    :cond_0
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->isTargetProcess()Z

    move-result v0

    if-nez v0, :cond_1

    .line 40
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->getCurrentProcess()Ljava/lang/String;

    move-result-object v0

    .line 41
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 42
    new-instance v1, Ljava/io/File;

    sget-object v2, Lanet/channel/strategy/l;->a:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Lanet/channel/strategy/l;->a:Ljava/io/File;

    .line 43
    sget-object v0, Lanet/channel/strategy/l;->a:Ljava/io/File;

    invoke-static {v0}, Lanet/channel/strategy/l;->a(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 44
    const-string v0, "awcn.StrategySerializeHelper"

    const-string v1, "create directory failed!!!"

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "dir"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lanet/channel/strategy/l;->a:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    :cond_1
    const-string v0, "awcn.StrategySerializeHelper"

    const-string v1, "StrateyFolder"

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "path"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lanet/channel/strategy/l;->a:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    sget-boolean v0, Lanet/channel/strategy/l;->b:Z

    if-eqz v0, :cond_3

    .line 50
    invoke-static {}, Lanet/channel/strategy/l;->a()V

    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Lanet/channel/strategy/l;->b:Z

    .line 59
    :cond_2
    :goto_0
    return-void

    .line 53
    :cond_3
    invoke-static {}, Lanet/channel/strategy/l;->c()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    const-string v1, "awcn.StrategySerializeHelper"

    const-string v2, "StrategySerializeHelper initialize failed!!!"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v7, v0, v3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static declared-synchronized a(Ljava/io/Serializable;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 140
    const-class v1, Lanet/channel/strategy/l;

    monitor-enter v1

    :try_start_0
    invoke-static {p1}, Lanet/channel/strategy/l;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0}, Lanet/channel/util/f;->a(Ljava/io/Serializable;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    monitor-exit v1

    return-void

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Ljava/io/File;)Z
    .locals 1

    .prologue
    .line 62
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result v0

    .line 65
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static declared-synchronized b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 144
    const-class v1, Lanet/channel/strategy/l;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lanet/channel/strategy/l;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lanet/channel/util/f;->a(Ljava/io/File;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized b()[Ljava/io/File;
    .locals 3

    .prologue
    .line 108
    const-class v1, Lanet/channel/strategy/l;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lanet/channel/strategy/l;->a:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 109
    const/4 v0, 0x0

    .line 115
    :cond_0
    :goto_0
    monitor-exit v1

    return-object v0

    .line 111
    :cond_1
    :try_start_1
    sget-object v0, Lanet/channel/strategy/l;->a:Ljava/io/File;

    sget-object v2, Lanet/channel/strategy/l;->c:Ljava/io/FileFilter;

    invoke-virtual {v0, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_0

    .line 113
    sget-object v2, Lanet/channel/strategy/l;->d:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized c()V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 119
    const-class v3, Lanet/channel/strategy/l;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lanet/channel/strategy/l;->b()[Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 120
    if-nez v4, :cond_1

    .line 137
    :cond_0
    monitor-exit v3

    return-void

    :cond_1
    move v2, v0

    .line 125
    :goto_0
    :try_start_1
    array-length v1, v4

    if-ge v2, v1, :cond_0

    .line 126
    aget-object v5, v4, v2

    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/32 v8, 0x240c8400

    cmp-long v1, v6, v8

    if-ltz v1, :cond_3

    .line 129
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 125
    :cond_2
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 133
    :cond_3
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v6, "config"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    add-int/lit8 v1, v0, 0x1

    int-to-long v6, v0

    const-wide/16 v8, 0xa

    cmp-long v0, v6, v8

    if-lez v0, :cond_4

    .line 134
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    move v0, v1

    goto :goto_1

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method
