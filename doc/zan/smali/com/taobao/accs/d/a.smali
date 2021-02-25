.class public Lcom/taobao/accs/d/a;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/accs/d/a$a;
    }
.end annotation


# static fields
.field private static a:Lcom/taobao/accs/d/a;


# instance fields
.field private b:Ljava/lang/ClassLoader;

.field private c:Z

.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/taobao/accs/d/a;->a:Lcom/taobao/accs/d/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/accs/d/a;->b:Ljava/lang/ClassLoader;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/accs/d/a;->c:Z

    .line 101
    return-void
.end method

.method static synthetic a(Lcom/taobao/accs/d/a;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/taobao/accs/d/a;->d:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized a()Lcom/taobao/accs/d/a;
    .locals 2

    .prologue
    .line 27
    const-class v1, Lcom/taobao/accs/d/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/taobao/accs/d/a;->a:Lcom/taobao/accs/d/a;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/taobao/accs/d/a;

    invoke-direct {v0}, Lcom/taobao/accs/d/a;-><init>()V

    sput-object v0, Lcom/taobao/accs/d/a;->a:Lcom/taobao/accs/d/a;

    .line 30
    :cond_0
    sget-object v0, Lcom/taobao/accs/d/a;->a:Lcom/taobao/accs/d/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/taobao/accs/d/a;->c:Z

    if-eqz v0, :cond_0

    .line 80
    const-string v0, "ACCSClassLoader"

    const-string v1, "dexOpting, exit"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :goto_0
    monitor-exit p0

    return-void

    .line 83
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/taobao/accs/d/a;->c:Z

    .line 84
    new-instance v0, Lcom/taobao/accs/d/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/taobao/accs/d/b;-><init>(Lcom/taobao/accs/d/a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/taobao/accs/d/b;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/taobao/accs/d/a;Z)Z
    .locals 0

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/taobao/accs/d/a;->c:Z

    return p1
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;)Ljava/lang/ClassLoader;
    .locals 6

    .prologue
    const/16 v5, 0xdd

    .line 34
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 35
    :try_start_0
    iput-object p1, p0, Lcom/taobao/accs/d/a;->d:Landroid/content/Context;

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/d/a;->b:Ljava/lang/ClassLoader;

    if-nez v0, :cond_1

    .line 38
    const-string v0, "ACCSClassLoader"

    const-string v1, "create new class loader"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    const-string v0, "ACCS_SDK"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 41
    const-string v1, "update_folder"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    const-string v2, "ACCSClassLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "baseUpdateFolder:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    if-eqz v1, :cond_1

    .line 44
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 45
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 46
    new-instance v2, Ljava/io/File;

    const-string v3, "accs.zip"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "update_verion"

    const/16 v4, 0xdd

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-le v3, v5, :cond_1

    .line 49
    const-string v3, "update_done"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 50
    const-string v0, "ACCSClassLoader"

    const-string v3, "dexopt already done"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    new-instance v0, Lcom/taobao/accs/d/a$a;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    const-string v5, "lib"

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-class v4, Lcom/taobao/accs/d/a;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/taobao/accs/d/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object v0, p0, Lcom/taobao/accs/d/a;->b:Ljava/lang/ClassLoader;

    .line 63
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/taobao/accs/d/a;->b:Ljava/lang/ClassLoader;

    if-nez v0, :cond_2

    .line 64
    const-string v0, "ACCSClassLoader"

    const-string v1, "get defalut class loader"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    const-class v0, Lcom/taobao/accs/d/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/d/a;->b:Ljava/lang/ClassLoader;

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/taobao/accs/d/a;->b:Ljava/lang/ClassLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 56
    :cond_3
    :try_start_1
    const-string v0, "ACCSClassLoader"

    const-string v3, "try dexopt"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/taobao/accs/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()Ljava/lang/ClassLoader;
    .locals 3

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/taobao/accs/d/a;->b:Ljava/lang/ClassLoader;

    if-nez v0, :cond_0

    .line 72
    const-string v0, "ACCSClassLoader"

    const-string v1, "get defalut class loader"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    const-class v0, Lcom/taobao/accs/d/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/d/a;->b:Ljava/lang/ClassLoader;

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/d/a;->b:Ljava/lang/ClassLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
