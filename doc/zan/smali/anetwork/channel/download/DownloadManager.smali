.class public Lanetwork/channel/download/DownloadManager;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanetwork/channel/download/DownloadManager$1;,
        Lanetwork/channel/download/DownloadManager$DownloadListener;,
        Lanetwork/channel/download/DownloadManager$DownloadTask;,
        Lanetwork/channel/download/DownloadManager$ClassHolder;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "anet.DownloadManager"

.field public static final b:I = -0x64

.field public static final c:I = -0x65

.field public static final d:I = -0x66

.field public static final e:I = -0x67

.field public static final f:I = -0x68

.field public static final g:I = -0x69

.field private static final h:Ljava/lang/String; = "downloads"


# instance fields
.field private i:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lanetwork/channel/download/DownloadManager$DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/concurrent/atomic/AtomicInteger;

.field private k:Ljava/util/concurrent/ThreadPoolExecutor;

.field private l:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 8

    .prologue
    const/4 v2, 0x2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lanetwork/channel/download/DownloadManager;->i:Landroid/util/SparseArray;

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lanetwork/channel/download/DownloadManager;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 53
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    move v3, v2

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lanetwork/channel/download/DownloadManager;->k:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lanetwork/channel/download/DownloadManager;->l:Landroid/content/Context;

    .line 61
    invoke-static {}, Lanetwork/channel/http/NetworkSdkSetting;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/download/DownloadManager;->l:Landroid/content/Context;

    .line 62
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager;->k:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 63
    invoke-direct {p0}, Lanetwork/channel/download/DownloadManager;->b()V

    .line 64
    return-void
.end method

.method synthetic constructor <init>(Lanetwork/channel/download/DownloadManager$1;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lanetwork/channel/download/DownloadManager;-><init>()V

    return-void
.end method

.method public static a()Lanetwork/channel/download/DownloadManager;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lanetwork/channel/download/DownloadManager$ClassHolder;->a:Lanetwork/channel/download/DownloadManager;

    return-object v0
.end method

.method static synthetic a(Lanetwork/channel/download/DownloadManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lanetwork/channel/download/DownloadManager;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lanetwork/channel/download/DownloadManager;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 384
    iget-object v2, p0, Lanetwork/channel/download/DownloadManager;->l:Landroid/content/Context;

    if-eqz v2, :cond_1

    .line 386
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 387
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 388
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 395
    :cond_0
    :goto_0
    return v0

    .line 392
    :catch_0
    move-exception v2

    const-string v2, "anet.DownloadManager"

    const-string v3, "create folder failed"

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "folder"

    aput-object v6, v5, v1

    aput-object p1, v5, v0

    invoke-static {v2, v3, v4, v5}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    move v0, v1

    .line 395
    goto :goto_0
.end method

.method static synthetic b(Lanetwork/channel/download/DownloadManager;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager;->l:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lanetwork/channel/download/DownloadManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lanetwork/channel/download/DownloadManager;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 400
    iget-object v1, p0, Lanetwork/channel/download/DownloadManager;->l:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "downloads"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 375
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager;->l:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 376
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lanetwork/channel/download/DownloadManager;->l:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "downloads"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 377
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 378
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 381
    :cond_0
    return-void
.end method

.method static synthetic c(Lanetwork/channel/download/DownloadManager;)Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager;->i:Landroid/util/SparseArray;

    return-object v0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 410
    invoke-static {p1}, Lanet/channel/util/StringUtils;->md5ToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 411
    if-nez v0, :cond_0

    .line 414
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lanetwork/channel/download/DownloadManager;->l:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move-object p1, v0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lanetwork/channel/download/DownloadManager$DownloadListener;)I
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lanetwork/channel/download/DownloadManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lanetwork/channel/download/DownloadManager$DownloadListener;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lanetwork/channel/download/DownloadManager$DownloadListener;)I
    .locals 8

    .prologue
    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v0, -0x1

    .line 83
    invoke-static {v6}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    const-string v1, "anet.DownloadManager"

    const-string v2, "enqueue"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "folder"

    aput-object v5, v4, v3

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const-string v5, "filename"

    aput-object v5, v4, v6

    const/4 v5, 0x3

    aput-object p3, v4, v5

    const/4 v5, 0x4

    const-string v6, "url"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    aput-object p1, v4, v5

    invoke-static {v1, v2, v7, v4}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    :cond_0
    iget-object v1, p0, Lanetwork/channel/download/DownloadManager;->l:Landroid/content/Context;

    if-nez v1, :cond_2

    .line 88
    const-string v1, "anet.DownloadManager"

    const-string v2, "network not initial."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v7, v3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    :cond_1
    :goto_0
    return v0

    .line 94
    :cond_2
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0, p2}, Lanetwork/channel/download/DownloadManager;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 104
    const-string v1, "anet.DownloadManager"

    const-string v2, "file folder invalid."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v7, v3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    if-eqz p4, :cond_1

    .line 106
    const/16 v1, -0x65

    const-string v2, "file folder path invalid"

    invoke-interface {p4, v0, v1, v2}, Lanetwork/channel/download/DownloadManager$DownloadListener;->a(IILjava/lang/String;)V

    goto :goto_0

    .line 95
    :catch_0
    move-exception v1

    .line 96
    const-string v2, "anet.DownloadManager"

    const-string v4, "url invalid."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v4, v7, v1, v3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 97
    if-eqz p4, :cond_1

    .line 98
    const/16 v1, -0x64

    const-string v2, "url invalid"

    invoke-interface {p4, v0, v1, v2}, Lanetwork/channel/download/DownloadManager$DownloadListener;->a(IILjava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_3
    iget-object v6, p0, Lanetwork/channel/download/DownloadManager;->i:Landroid/util/SparseArray;

    monitor-enter v6

    .line 112
    :try_start_1
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager;->i:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    move v1, v3

    .line 113
    :goto_1
    if-ge v1, v4, :cond_5

    .line 114
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager;->i:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanetwork/channel/download/DownloadManager$DownloadTask;

    .line 116
    iget-object v3, v0, Lanetwork/channel/download/DownloadManager$DownloadTask;->b:Ljava/net/URL;

    invoke-virtual {v2, v3}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 117
    invoke-virtual {v0, p4}, Lanetwork/channel/download/DownloadManager$DownloadTask;->a(Lanetwork/channel/download/DownloadManager$DownloadListener;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 118
    iget v0, v0, Lanetwork/channel/download/DownloadManager$DownloadTask;->a:I

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0

    .line 113
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 125
    :cond_5
    :try_start_2
    new-instance v0, Lanetwork/channel/download/DownloadManager$DownloadTask;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lanetwork/channel/download/DownloadManager$DownloadTask;-><init>(Lanetwork/channel/download/DownloadManager;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Lanetwork/channel/download/DownloadManager$DownloadListener;)V

    .line 126
    iget-object v1, p0, Lanetwork/channel/download/DownloadManager;->i:Landroid/util/SparseArray;

    iget v2, v0, Lanetwork/channel/download/DownloadManager$DownloadTask;->a:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 127
    iget-object v1, p0, Lanetwork/channel/download/DownloadManager;->k:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 128
    iget v0, v0, Lanetwork/channel/download/DownloadManager$DownloadTask;->a:I

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public a(I)V
    .locals 6

    .prologue
    .line 133
    iget-object v1, p0, Lanetwork/channel/download/DownloadManager;->i:Landroid/util/SparseArray;

    monitor-enter v1

    .line 134
    :try_start_0
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager;->i:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanetwork/channel/download/DownloadManager$DownloadTask;

    .line 135
    if-eqz v0, :cond_1

    .line 136
    const/4 v2, 0x2

    invoke-static {v2}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    const-string v2, "anet.DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "try cancel task"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lanetwork/channel/download/DownloadManager$DownloadTask;->b:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v5}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    :cond_0
    iget-object v2, p0, Lanetwork/channel/download/DownloadManager;->i:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 140
    invoke-virtual {v0}, Lanetwork/channel/download/DownloadManager$DownloadTask;->a()V

    .line 142
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    return-void

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
