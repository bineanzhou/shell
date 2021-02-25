.class Lanetwork/channel/download/DownloadManager$DownloadTask;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanetwork/channel/download/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadTask"
.end annotation


# instance fields
.field final a:I

.field final b:Ljava/net/URL;

.field final synthetic c:Lanetwork/channel/download/DownloadManager;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lanetwork/channel/download/DownloadManager$DownloadListener;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile h:Lanetwork/channel/aidl/Connection;


# direct methods
.method constructor <init>(Lanetwork/channel/download/DownloadManager;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Lanetwork/channel/download/DownloadManager$DownloadListener;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 154
    iput-object p1, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->c:Lanetwork/channel/download/DownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 151
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->h:Lanetwork/channel/aidl/Connection;

    .line 155
    invoke-static {p1}, Lanetwork/channel/download/DownloadManager;->a(Lanetwork/channel/download/DownloadManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->a:I

    .line 156
    iput-object p2, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->b:Ljava/net/URL;

    .line 157
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-direct {p0, p2}, Lanetwork/channel/download/DownloadManager$DownloadTask;->a(Ljava/net/URL;)Ljava/lang/String;

    move-result-object p4

    .line 160
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    invoke-static {p1, p4}, Lanetwork/channel/download/DownloadManager;->a(Lanetwork/channel/download/DownloadManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->d:Ljava/lang/String;

    .line 170
    :goto_0
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 171
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    return-void

    .line 163
    :cond_1
    const-string v0, "/"

    invoke-virtual {p3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->d:Ljava/lang/String;

    goto :goto_0

    .line 166
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method private a(ILjava/util/Map;J)J
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;J)J"
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 323
    .line 325
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_1

    .line 326
    :try_start_0
    const-string v0, "Content-Length"

    invoke-static {p2, v0}, Lanet/channel/util/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 342
    :cond_0
    :goto_0
    return-wide v0

    .line 327
    :cond_1
    const/16 v0, 0xce

    if-ne p1, v0, :cond_3

    .line 328
    const-string v0, "Content-Range"

    invoke-static {p2, v0}, Lanet/channel/util/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 329
    if-eqz v0, :cond_2

    .line 330
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 331
    const/4 v4, -0x1

    if-eq v1, v4, :cond_2

    .line 332
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 335
    :goto_1
    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 336
    :try_start_1
    const-string v2, "Content-Length"

    invoke-static {p2, v2}, Lanet/channel/util/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v0

    .line 337
    add-long/2addr v0, p3

    goto :goto_0

    :catch_0
    move-exception v0

    move-wide v0, v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0

    :cond_2
    move-wide v0, v2

    goto :goto_1

    :cond_3
    move-wide v0, v2

    goto :goto_0
.end method

.method private a(Ljava/net/URL;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 358
    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 359
    const/16 v0, 0x2f

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 360
    const/4 v0, 0x0

    .line 361
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 362
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 364
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 365
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lanet/channel/util/StringUtils;->md5ToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 366
    if-nez v0, :cond_1

    .line 367
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    .line 370
    :cond_1
    return-object v0
.end method

.method private a(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 307
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanetwork/channel/download/DownloadManager$DownloadListener;

    .line 309
    iget v2, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->a:I

    invoke-interface {v0, v2, p1, p2}, Lanetwork/channel/download/DownloadManager$DownloadListener;->a(IILjava/lang/String;)V

    goto :goto_0

    .line 312
    :cond_0
    return-void
.end method

.method private a(JJ)V
    .locals 7

    .prologue
    .line 315
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanetwork/channel/download/DownloadManager$DownloadListener;

    .line 317
    iget v1, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->a:I

    move-wide v2, p1

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lanetwork/channel/download/DownloadManager$DownloadListener;->a(IJJ)V

    goto :goto_0

    .line 320
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 299
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanetwork/channel/download/DownloadManager$DownloadListener;

    .line 301
    iget v2, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->a:I

    invoke-interface {v0, v2, p1}, Lanetwork/channel/download/DownloadManager$DownloadListener;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 304
    :cond_0
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lanetwork/channel/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 346
    if-eqz p1, :cond_1

    .line 347
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 348
    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 349
    const-string v2, "Range"

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanetwork/channel/Header;

    invoke-interface {v0}, Lanetwork/channel/Header;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    .line 351
    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 184
    const/16 v0, -0x69

    const-string v1, "download canceled."

    invoke-direct {p0, v0, v1}, Lanetwork/channel/download/DownloadManager$DownloadTask;->a(ILjava/lang/String;)V

    .line 185
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->h:Lanetwork/channel/aidl/Connection;

    if-eqz v0, :cond_0

    .line 187
    :try_start_0
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->h:Lanetwork/channel/aidl/Connection;

    invoke-interface {v0}, Lanetwork/channel/aidl/Connection;->e()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Lanetwork/channel/download/DownloadManager$DownloadListener;)Z
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    const/4 v0, 0x0

    .line 179
    :goto_0
    return v0

    .line 178
    :cond_0
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public run()V
    .locals 12

    .prologue
    .line 195
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    :goto_0
    return-void

    .line 199
    :cond_0
    const/4 v4, 0x0

    .line 200
    const/4 v2, 0x0

    .line 201
    const/4 v1, 0x0

    .line 203
    :try_start_0
    new-instance v8, Ljava/io/File;

    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->c:Lanetwork/channel/download/DownloadManager;

    iget-object v3, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->b:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lanetwork/channel/download/DownloadManager;->b(Lanetwork/channel/download/DownloadManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    .line 206
    new-instance v3, Lanetwork/channel/entity/RequestImpl;

    iget-object v5, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->b:Ljava/net/URL;

    invoke-direct {v3, v5}, Lanetwork/channel/entity/RequestImpl;-><init>(Ljava/net/URL;)V

    .line 207
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lanetwork/channel/entity/RequestImpl;->a(I)V

    .line 208
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lanetwork/channel/entity/RequestImpl;->a(Z)V

    .line 209
    if-eqz v0, :cond_1

    .line 210
    const-string v5, "Range"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bytes="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lanetwork/channel/entity/RequestImpl;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_1
    new-instance v5, Lanetwork/channel/degrade/DegradableNetwork;

    iget-object v6, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->c:Lanetwork/channel/download/DownloadManager;

    invoke-static {v6}, Lanetwork/channel/download/DownloadManager;->b(Lanetwork/channel/download/DownloadManager;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lanetwork/channel/degrade/DegradableNetwork;-><init>(Landroid/content/Context;)V

    .line 214
    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Lanetwork/channel/degrade/DegradableNetwork;->b(Lanetwork/channel/Request;Ljava/lang/Object;)Lanetwork/channel/aidl/Connection;

    move-result-object v6

    iput-object v6, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->h:Lanetwork/channel/aidl/Connection;

    .line 215
    iget-object v6, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->h:Lanetwork/channel/aidl/Connection;

    invoke-interface {v6}, Lanetwork/channel/aidl/Connection;->b()I

    move-result v9

    .line 217
    if-lez v9, :cond_2

    const/16 v6, 0xc8

    if-eq v9, v6, :cond_6

    const/16 v6, 0xce

    if-eq v9, v6, :cond_6

    const/16 v6, 0x1a0

    if-eq v9, v6, :cond_6

    .line 221
    :cond_2
    const/16 v0, -0x66

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ResponseCode:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lanetwork/channel/download/DownloadManager$DownloadTask;->a(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1c
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    .line 289
    if-eqz v4, :cond_3

    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 290
    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 291
    :cond_4
    :goto_2
    if-eqz v1, :cond_5

    :try_start_3
    invoke-interface {v1}, Lanetwork/channel/aidl/ParcelableInputStream;->b()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 292
    :cond_5
    :goto_3
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->c:Lanetwork/channel/download/DownloadManager;

    invoke-static {v0}, Lanetwork/channel/download/DownloadManager;->c(Lanetwork/channel/download/DownloadManager;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 293
    :try_start_4
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->c:Lanetwork/channel/download/DownloadManager;

    invoke-static {v0}, Lanetwork/channel/download/DownloadManager;->c(Lanetwork/channel/download/DownloadManager;)Landroid/util/SparseArray;

    move-result-object v0

    iget v2, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->a:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 294
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 225
    :cond_6
    if-eqz v0, :cond_c

    .line 227
    const/16 v6, 0x1a0

    if-ne v9, v6, :cond_b

    .line 228
    const/4 v0, 0x0

    .line 229
    :try_start_5
    invoke-virtual {v3}, Lanetwork/channel/entity/RequestImpl;->d()Ljava/util/List;

    move-result-object v6

    invoke-direct {p0, v6}, Lanetwork/channel/download/DownloadManager$DownloadTask;->a(Ljava/util/List;)V

    .line 231
    iget-object v6, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1c
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    move-result v6

    if-eqz v6, :cond_a

    .line 289
    if-eqz v4, :cond_7

    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 290
    :cond_7
    :goto_4
    if-eqz v2, :cond_8

    :try_start_7
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 291
    :cond_8
    :goto_5
    if-eqz v1, :cond_9

    :try_start_8
    invoke-interface {v1}, Lanetwork/channel/aidl/ParcelableInputStream;->b()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 292
    :cond_9
    :goto_6
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->c:Lanetwork/channel/download/DownloadManager;

    invoke-static {v0}, Lanetwork/channel/download/DownloadManager;->c(Lanetwork/channel/download/DownloadManager;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 293
    :try_start_9
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->c:Lanetwork/channel/download/DownloadManager;

    invoke-static {v0}, Lanetwork/channel/download/DownloadManager;->c(Lanetwork/channel/download/DownloadManager;)Landroid/util/SparseArray;

    move-result-object v0

    iget v2, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->a:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 294
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 234
    :cond_a
    const/4 v6, 0x0

    :try_start_a
    invoke-virtual {v5, v3, v6}, Lanetwork/channel/degrade/DegradableNetwork;->b(Lanetwork/channel/Request;Ljava/lang/Object;)Lanetwork/channel/aidl/Connection;

    move-result-object v3

    iput-object v3, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->h:Lanetwork/channel/aidl/Connection;

    .line 238
    :cond_b
    const/16 v3, 0xc8

    if-ne v9, v3, :cond_c

    .line 239
    const/4 v0, 0x0

    .line 243
    :cond_c
    iget-object v3, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1c
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    move-result v3

    if-eqz v3, :cond_10

    .line 289
    if-eqz v4, :cond_d

    :try_start_b
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    .line 290
    :cond_d
    :goto_7
    if-eqz v2, :cond_e

    :try_start_c
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    .line 291
    :cond_e
    :goto_8
    if-eqz v1, :cond_f

    :try_start_d
    invoke-interface {v1}, Lanetwork/channel/aidl/ParcelableInputStream;->b()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    .line 292
    :cond_f
    :goto_9
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->c:Lanetwork/channel/download/DownloadManager;

    invoke-static {v0}, Lanetwork/channel/download/DownloadManager;->c(Lanetwork/channel/download/DownloadManager;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 293
    :try_start_e
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->c:Lanetwork/channel/download/DownloadManager;

    invoke-static {v0}, Lanetwork/channel/download/DownloadManager;->c(Lanetwork/channel/download/DownloadManager;)Landroid/util/SparseArray;

    move-result-object v0

    iget v2, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->a:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 294
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0

    .line 247
    :cond_10
    const-wide/16 v6, 0x0

    .line 248
    if-nez v0, :cond_14

    .line 249
    :try_start_f
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1c
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    move-wide v4, v6

    .line 257
    :goto_a
    :try_start_10
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->h:Lanetwork/channel/aidl/Connection;

    invoke-interface {v0}, Lanetwork/channel/aidl/Connection;->d()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v9, v0, v4, v5}, Lanetwork/channel/download/DownloadManager$DownloadTask;->a(ILjava/util/Map;J)J

    move-result-wide v6

    .line 260
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->h:Lanetwork/channel/aidl/Connection;

    invoke-interface {v0}, Lanetwork/channel/aidl/Connection;->a()Lanetwork/channel/aidl/ParcelableInputStream;

    move-result-object v1

    .line 261
    if-nez v1, :cond_15

    .line 262
    const/16 v0, -0x67

    const-string v4, "input stream is null."

    invoke-direct {p0, v0, v4}, Lanetwork/channel/download/DownloadManager$DownloadTask;->a(ILjava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_b

    .line 289
    if-eqz v3, :cond_11

    :try_start_11
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_a

    .line 290
    :cond_11
    :goto_b
    if-eqz v2, :cond_12

    :try_start_12
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_b

    .line 291
    :cond_12
    :goto_c
    if-eqz v1, :cond_13

    :try_start_13
    invoke-interface {v1}, Lanetwork/channel/aidl/ParcelableInputStream;->b()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_c

    .line 292
    :cond_13
    :goto_d
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->c:Lanetwork/channel/download/DownloadManager;

    invoke-static {v0}, Lanetwork/channel/download/DownloadManager;->c(Lanetwork/channel/download/DownloadManager;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 293
    :try_start_14
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->c:Lanetwork/channel/download/DownloadManager;

    invoke-static {v0}, Lanetwork/channel/download/DownloadManager;->c(Lanetwork/channel/download/DownloadManager;)Landroid/util/SparseArray;

    move-result-object v0

    iget v2, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->a:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 294
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    monitor-exit v1

    throw v0

    .line 251
    :cond_14
    :try_start_15
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v3, v8, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_1c
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    .line 252
    :try_start_16
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    .line 253
    invoke-virtual {v3, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 254
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-static {v2}, Ljava/nio/channels/Channels;->newOutputStream(Ljava/nio/channels/WritableByteChannel;)Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_1d
    .catchall {:try_start_16 .. :try_end_16} :catchall_a

    move-wide v4, v6

    move-object v2, v3

    move-object v3, v0

    goto :goto_a

    .line 267
    :cond_15
    const/4 v0, 0x0

    .line 268
    const/16 v9, 0x800

    :try_start_17
    new-array v9, v9, [B

    .line 269
    :goto_e
    invoke-interface {v1, v9}, Lanetwork/channel/aidl/ParcelableInputStream;->a([B)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_1d

    .line 270
    iget-object v11, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v11

    if-eqz v11, :cond_19

    .line 271
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->h:Lanetwork/channel/aidl/Connection;

    invoke-interface {v0}, Lanetwork/channel/aidl/Connection;->e()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_0
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    .line 289
    if-eqz v3, :cond_16

    :try_start_18
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_d

    .line 290
    :cond_16
    :goto_f
    if-eqz v2, :cond_17

    :try_start_19
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_e

    .line 291
    :cond_17
    :goto_10
    if-eqz v1, :cond_18

    :try_start_1a
    invoke-interface {v1}, Lanetwork/channel/aidl/ParcelableInputStream;->b()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_f

    .line 292
    :cond_18
    :goto_11
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->c:Lanetwork/channel/download/DownloadManager;

    invoke-static {v0}, Lanetwork/channel/download/DownloadManager;->c(Lanetwork/channel/download/DownloadManager;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 293
    :try_start_1b
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->c:Lanetwork/channel/download/DownloadManager;

    invoke-static {v0}, Lanetwork/channel/download/DownloadManager;->c(Lanetwork/channel/download/DownloadManager;)Landroid/util/SparseArray;

    move-result-object v0

    iget v2, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->a:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 294
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4

    goto/16 :goto_0

    :catchall_4
    move-exception v0

    monitor-exit v1

    throw v0

    .line 274
    :cond_19
    add-int/2addr v0, v10

    .line 275
    const/4 v11, 0x0

    :try_start_1c
    invoke-virtual {v3, v9, v11, v10}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 276
    int-to-long v10, v0

    add-long/2addr v10, v4

    invoke-direct {p0, v10, v11, v6, v7}, Lanetwork/channel/download/DownloadManager$DownloadTask;->a(JJ)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_0
    .catchall {:try_start_1c .. :try_end_1c} :catchall_b

    goto :goto_e

    .line 285
    :catch_0
    move-exception v0

    .line 286
    :goto_12
    :try_start_1d
    const-string v4, "anet.DownloadManager"

    const-string v5, "file download failed!"

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v0, v7}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 287
    const/16 v4, -0x68

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lanetwork/channel/download/DownloadManager$DownloadTask;->a(ILjava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_b

    .line 289
    if-eqz v3, :cond_1a

    :try_start_1e
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_16

    .line 290
    :cond_1a
    :goto_13
    if-eqz v2, :cond_1b

    :try_start_1f
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_17

    .line 291
    :cond_1b
    :goto_14
    if-eqz v1, :cond_1c

    :try_start_20
    invoke-interface {v1}, Lanetwork/channel/aidl/ParcelableInputStream;->b()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_18

    .line 292
    :cond_1c
    :goto_15
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->c:Lanetwork/channel/download/DownloadManager;

    invoke-static {v0}, Lanetwork/channel/download/DownloadManager;->c(Lanetwork/channel/download/DownloadManager;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 293
    :try_start_21
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->c:Lanetwork/channel/download/DownloadManager;

    invoke-static {v0}, Lanetwork/channel/download/DownloadManager;->c(Lanetwork/channel/download/DownloadManager;)Landroid/util/SparseArray;

    move-result-object v0

    iget v2, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->a:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 294
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_5

    goto/16 :goto_0

    :catchall_5
    move-exception v0

    monitor-exit v1

    throw v0

    .line 278
    :cond_1d
    :try_start_22
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 280
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_0
    .catchall {:try_start_22 .. :try_end_22} :catchall_b

    move-result v0

    if-eqz v0, :cond_21

    .line 289
    if-eqz v3, :cond_1e

    :try_start_23
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_10

    .line 290
    :cond_1e
    :goto_16
    if-eqz v2, :cond_1f

    :try_start_24
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_11

    .line 291
    :cond_1f
    :goto_17
    if-eqz v1, :cond_20

    :try_start_25
    invoke-interface {v1}, Lanetwork/channel/aidl/ParcelableInputStream;->b()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_12

    .line 292
    :cond_20
    :goto_18
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->c:Lanetwork/channel/download/DownloadManager;

    invoke-static {v0}, Lanetwork/channel/download/DownloadManager;->c(Lanetwork/channel/download/DownloadManager;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 293
    :try_start_26
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->c:Lanetwork/channel/download/DownloadManager;

    invoke-static {v0}, Lanetwork/channel/download/DownloadManager;->c(Lanetwork/channel/download/DownloadManager;)Landroid/util/SparseArray;

    move-result-object v0

    iget v2, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->a:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 294
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_6

    goto/16 :goto_0

    :catchall_6
    move-exception v0

    monitor-exit v1

    throw v0

    .line 283
    :cond_21
    :try_start_27
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->d:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 284
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->d:Ljava/lang/String;

    invoke-direct {p0, v0}, Lanetwork/channel/download/DownloadManager$DownloadTask;->a(Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_0
    .catchall {:try_start_27 .. :try_end_27} :catchall_b

    .line 289
    if-eqz v3, :cond_22

    :try_start_28
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_13

    .line 290
    :cond_22
    :goto_19
    if-eqz v2, :cond_23

    :try_start_29
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_14

    .line 291
    :cond_23
    :goto_1a
    if-eqz v1, :cond_24

    :try_start_2a
    invoke-interface {v1}, Lanetwork/channel/aidl/ParcelableInputStream;->b()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_15

    .line 292
    :cond_24
    :goto_1b
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->c:Lanetwork/channel/download/DownloadManager;

    invoke-static {v0}, Lanetwork/channel/download/DownloadManager;->c(Lanetwork/channel/download/DownloadManager;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 293
    :try_start_2b
    iget-object v0, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->c:Lanetwork/channel/download/DownloadManager;

    invoke-static {v0}, Lanetwork/channel/download/DownloadManager;->c(Lanetwork/channel/download/DownloadManager;)Landroid/util/SparseArray;

    move-result-object v0

    iget v2, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->a:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 294
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_7

    goto/16 :goto_0

    :catchall_7
    move-exception v0

    monitor-exit v1

    throw v0

    .line 289
    :catchall_8
    move-exception v0

    :goto_1c
    if-eqz v4, :cond_25

    :try_start_2c
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_19

    .line 290
    :cond_25
    :goto_1d
    if-eqz v2, :cond_26

    :try_start_2d
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_1a

    .line 291
    :cond_26
    :goto_1e
    if-eqz v1, :cond_27

    :try_start_2e
    invoke-interface {v1}, Lanetwork/channel/aidl/ParcelableInputStream;->b()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_1b

    .line 292
    :cond_27
    :goto_1f
    iget-object v1, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->c:Lanetwork/channel/download/DownloadManager;

    invoke-static {v1}, Lanetwork/channel/download/DownloadManager;->c(Lanetwork/channel/download/DownloadManager;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 293
    :try_start_2f
    iget-object v2, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->c:Lanetwork/channel/download/DownloadManager;

    invoke-static {v2}, Lanetwork/channel/download/DownloadManager;->c(Lanetwork/channel/download/DownloadManager;)Landroid/util/SparseArray;

    move-result-object v2

    iget v3, p0, Lanetwork/channel/download/DownloadManager$DownloadTask;->a:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 294
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_9

    throw v0

    :catchall_9
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_1
    move-exception v0

    goto/16 :goto_1

    :catch_2
    move-exception v0

    goto/16 :goto_2

    :catch_3
    move-exception v0

    goto/16 :goto_3

    :catch_4
    move-exception v0

    goto/16 :goto_4

    :catch_5
    move-exception v0

    goto/16 :goto_5

    :catch_6
    move-exception v0

    goto/16 :goto_6

    :catch_7
    move-exception v0

    goto/16 :goto_7

    :catch_8
    move-exception v0

    goto/16 :goto_8

    :catch_9
    move-exception v0

    goto/16 :goto_9

    .line 289
    :catch_a
    move-exception v0

    goto/16 :goto_b

    .line 290
    :catch_b
    move-exception v0

    goto/16 :goto_c

    .line 291
    :catch_c
    move-exception v0

    goto/16 :goto_d

    :catch_d
    move-exception v0

    goto/16 :goto_f

    :catch_e
    move-exception v0

    goto/16 :goto_10

    :catch_f
    move-exception v0

    goto/16 :goto_11

    :catch_10
    move-exception v0

    goto/16 :goto_16

    :catch_11
    move-exception v0

    goto/16 :goto_17

    :catch_12
    move-exception v0

    goto/16 :goto_18

    :catch_13
    move-exception v0

    goto :goto_19

    :catch_14
    move-exception v0

    goto :goto_1a

    :catch_15
    move-exception v0

    goto :goto_1b

    :catch_16
    move-exception v0

    goto/16 :goto_13

    :catch_17
    move-exception v0

    goto/16 :goto_14

    :catch_18
    move-exception v0

    goto/16 :goto_15

    :catch_19
    move-exception v3

    goto :goto_1d

    :catch_1a
    move-exception v2

    goto :goto_1e

    :catch_1b
    move-exception v1

    goto :goto_1f

    .line 289
    :catchall_a
    move-exception v0

    move-object v2, v3

    goto :goto_1c

    :catchall_b
    move-exception v0

    move-object v4, v3

    goto :goto_1c

    .line 285
    :catch_1c
    move-exception v0

    move-object v3, v4

    goto/16 :goto_12

    :catch_1d
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    goto/16 :goto_12
.end method
