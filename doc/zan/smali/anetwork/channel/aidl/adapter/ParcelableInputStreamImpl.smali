.class public Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;
.super Lanetwork/channel/aidl/ParcelableInputStream$Stub;
.source "Taobao"


# static fields
.field private static final j:Ljava/lang/String; = "anet.ParcelableInputStreamImpl"

.field private static final k:Lanet/channel/bytes/ByteArray;


# instance fields
.field final h:Ljava/util/concurrent/locks/ReentrantLock;

.field final i:Ljava/util/concurrent/locks/Condition;

.field private final l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private m:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lanet/channel/bytes/ByteArray;",
            ">;"
        }
    .end annotation
.end field

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-static {v0}, Lanet/channel/bytes/ByteArray;->create(I)Lanet/channel/bytes/ByteArray;

    move-result-object v0

    sput-object v0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->k:Lanet/channel/bytes/ByteArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Lanetwork/channel/aidl/ParcelableInputStream$Stub;-><init>()V

    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->m:Ljava/util/LinkedList;

    .line 28
    iput v1, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->q:I

    .line 30
    const/16 v0, 0x2710

    iput v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->r:I

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->s:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->t:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->h:Ljava/util/concurrent/locks/ReentrantLock;

    .line 35
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->i:Ljava/util/concurrent/locks/Condition;

    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 64
    :try_start_0
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->m:Ljava/util/LinkedList;

    iget v1, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->n:I

    sget-object v2, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->k:Lanet/channel/bytes/ByteArray;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/bytes/ByteArray;

    .line 65
    invoke-virtual {v0}, Lanet/channel/bytes/ByteArray;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 69
    return-void

    .line 67
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method


# virtual methods
.method public a()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 73
    iget-object v1, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    iget-object v1, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 79
    :try_start_0
    iget v1, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->n:I

    iget-object v2, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->m:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-ne v1, v2, :cond_1

    .line 88
    iget-object v1, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 90
    :goto_0
    return v0

    .line 82
    :cond_1
    :try_start_1
    iget-object v1, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->m:Ljava/util/LinkedList;

    iget v2, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->n:I

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    move v1, v0

    .line 83
    :goto_1
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/bytes/ByteArray;

    invoke-virtual {v0}, Lanet/channel/bytes/ByteArray;->getDataLength()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_1

    .line 86
    :cond_2
    iget v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->o:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int v0, v1, v0

    .line 88
    iget-object v1, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public a([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 214
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->a([BII)I

    move-result v0

    return v0
.end method

.method public a([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_0
    if-nez p1, :cond_1

    .line 161
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 164
    :cond_1
    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_3

    .line 165
    :cond_2
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 169
    :cond_3
    add-int v2, p2, p3

    .line 171
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    move v1, p2

    .line 173
    :goto_0
    if-ge v1, v2, :cond_5

    .line 174
    :try_start_0
    iget v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->n:I

    iget-object v3, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->m:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ne v0, v3, :cond_4

    .line 175
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->i:Ljava/util/concurrent/locks/Condition;

    iget v3, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->r:I

    int-to-long v4, v3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v4, v5, v3}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 176
    invoke-virtual {p0}, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->b()V

    .line 177
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "await timeout."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {p0}, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->b()V

    .line 203
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "await interrupt"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 181
    :cond_4
    :try_start_2
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->m:Ljava/util/LinkedList;

    iget v3, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->n:I

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/bytes/ByteArray;

    .line 182
    sget-object v3, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->k:Lanet/channel/bytes/ByteArray;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v0, v3, :cond_6

    .line 205
    :cond_5
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 208
    sub-int v0, v1, p2

    .line 209
    if-lez v0, :cond_8

    :goto_1
    return v0

    .line 186
    :cond_6
    :try_start_3
    invoke-virtual {v0}, Lanet/channel/bytes/ByteArray;->getDataLength()I

    move-result v3

    iget v4, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->o:I

    sub-int/2addr v3, v4

    .line 187
    sub-int v4, v2, v1

    .line 189
    if-ge v3, v4, :cond_7

    .line 190
    invoke-virtual {v0}, Lanet/channel/bytes/ByteArray;->getBuffer()[B

    move-result-object v0

    iget v4, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->o:I

    invoke-static {v0, v4, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 191
    add-int v0, v1, v3

    .line 192
    invoke-direct {p0}, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->f()V

    .line 193
    iget v1, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->n:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->n:I

    .line 194
    const/4 v1, 0x0

    iput v1, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->o:I

    :goto_2
    move v1, v0

    .line 200
    goto :goto_0

    .line 196
    :cond_7
    invoke-virtual {v0}, Lanet/channel/bytes/ByteArray;->getBuffer()[B

    move-result-object v0

    iget v3, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->o:I

    invoke-static {v0, v3, p1, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 197
    iget v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->o:I

    add-int/2addr v0, v4

    iput v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->o:I
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 198
    add-int v0, v1, v4

    goto :goto_2

    .line 209
    :cond_8
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public a(I)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 219
    .line 220
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 222
    :goto_0
    if-ge v1, p1, :cond_3

    .line 223
    :try_start_0
    iget v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->n:I

    iget-object v2, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->m:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-ne v0, v2, :cond_0

    move v0, v1

    .line 245
    :goto_1
    iget-object v1, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 247
    int-to-long v0, v0

    return-wide v0

    .line 227
    :cond_0
    :try_start_1
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->m:Ljava/util/LinkedList;

    iget v2, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->n:I

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/bytes/ByteArray;

    .line 228
    sget-object v2, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->k:Lanet/channel/bytes/ByteArray;

    if-ne v0, v2, :cond_1

    move v0, v1

    .line 229
    goto :goto_1

    .line 232
    :cond_1
    invoke-virtual {v0}, Lanet/channel/bytes/ByteArray;->getDataLength()I

    move-result v0

    .line 233
    iget v2, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->o:I

    sub-int v2, v0, v2

    sub-int v3, p1, v1

    if-ge v2, v3, :cond_2

    .line 234
    iget v2, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->o:I

    sub-int/2addr v0, v2

    add-int/2addr v0, v1

    .line 235
    invoke-direct {p0}, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->f()V

    .line 236
    iget v1, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->n:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->n:I

    .line 237
    const/4 v1, 0x0

    iput v1, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->o:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 245
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 241
    :cond_2
    :try_start_2
    iget v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->o:I

    sub-int v1, p1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->o:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v1, p1

    .line 243
    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public a(Lanet/channel/bytes/ByteArray;)V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    :goto_0
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 43
    :try_start_0
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->m:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 44
    iget v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->q:I

    invoke-virtual {p1}, Lanet/channel/bytes/ByteArray;->getDataLength()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->q:I

    .line 45
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->i:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public a(Lanetwork/channel/entity/RequestConfig;I)V
    .locals 1

    .prologue
    .line 256
    iput p2, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->p:I

    .line 257
    invoke-virtual {p1}, Lanetwork/channel/entity/RequestConfig;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->t:Ljava/lang/String;

    .line 258
    invoke-virtual {p1}, Lanetwork/channel/entity/RequestConfig;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->s:Ljava/lang/String;

    .line 259
    invoke-virtual {p1}, Lanetwork/channel/entity/RequestConfig;->d()I

    move-result v0

    iput v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->r:I

    .line 260
    return-void
.end method

.method public b()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 95
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 98
    :try_start_0
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->m:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/bytes/ByteArray;

    .line 99
    sget-object v2, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->k:Lanet/channel/bytes/ByteArray;

    if-eq v0, v2, :cond_0

    .line 100
    invoke-virtual {v0}, Lanet/channel/bytes/ByteArray;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 109
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 103
    :cond_1
    :try_start_1
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->m:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->m:Ljava/util/LinkedList;

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->n:I

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->o:I

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->p:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 112
    :cond_2
    return-void
.end method

.method public c()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 123
    :goto_0
    :try_start_0
    iget v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->n:I

    iget-object v1, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->m:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 124
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->i:Ljava/util/concurrent/locks/Condition;

    iget v1, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->r:I

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    invoke-virtual {p0}, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->b()V

    .line 126
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "await timeout."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {p0}, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->b()V

    .line 147
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "await interrupt"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 129
    :cond_1
    :try_start_2
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->m:Ljava/util/LinkedList;

    iget v1, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->n:I

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/bytes/ByteArray;

    .line 130
    sget-object v1, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->k:Lanet/channel/bytes/ByteArray;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v0, v1, :cond_2

    .line 131
    const/4 v0, -0x1

    .line 149
    :goto_1
    iget-object v1, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->h:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 151
    return v0

    .line 135
    :cond_2
    :try_start_3
    iget v1, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->o:I

    invoke-virtual {v0}, Lanet/channel/bytes/ByteArray;->getDataLength()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 136
    invoke-virtual {v0}, Lanet/channel/bytes/ByteArray;->getBuffer()[B

    move-result-object v0

    iget v1, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->o:I

    aget-byte v0, v0, v1

    .line 137
    iget v1, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->o:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->o:I

    goto :goto_1

    .line 140
    :cond_3
    invoke-direct {p0}, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->f()V

    .line 141
    iget v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->n:I

    .line 142
    const/4 v0, 0x0

    iput v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->o:I
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public d()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 252
    iget v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->p:I

    return v0
.end method

.method public e()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 52
    sget-object v0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->k:Lanet/channel/bytes/ByteArray;

    invoke-virtual {p0, v0}, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->a(Lanet/channel/bytes/ByteArray;)V

    .line 53
    invoke-static {v6}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    const-string v0, "anet.ParcelableInputStreamImpl"

    const-string v1, "set EOS flag to stream"

    iget-object v2, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->t:Ljava/lang/String;

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    :cond_0
    iget v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->p:I

    if-eqz v0, :cond_1

    iget v0, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->p:I

    iget v1, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->q:I

    if-eq v0, v1, :cond_1

    .line 57
    const-string v0, "anet.ParcelableInputStreamImpl"

    const-string v1, "data length no match!"

    iget-object v2, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->t:Ljava/lang/String;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "ContentLength"

    aput-object v4, v3, v5

    iget v4, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->p:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    const-string v5, "Received"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget v5, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->q:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "url"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget-object v5, p0, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->s:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    :cond_1
    return-void
.end method
