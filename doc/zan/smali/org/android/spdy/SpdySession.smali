.class public final Lorg/android/spdy/SpdySession;
.super Ljava/lang/Object;
.source "SpdySession.java"


# static fields
.field private static volatile count:I


# instance fields
.field private agent:Lorg/android/spdy/SpdyAgent;

.field private authority:Ljava/lang/String;

.field private closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private domain:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field intenalcb:Lorg/android/spdy/Intenalcb;

.field private lock:Ljava/lang/Object;

.field private mode:I

.field private pubkey_seqnum:I

.field volatile refcount:I

.field sessionCallBack:Lorg/android/spdy/SessionCb;

.field private sessionClearedFromSessionMgr:Z

.field private volatile sessionNativePtr:J

.field private spdyStream:Lorg/android/spdy/NetSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/android/spdy/NetSparseArray",
            "<",
            "Lorg/android/spdy/SpdyStreamContext;",
            ">;"
        }
    .end annotation
.end field

.field private streamcount:I

.field private thread:Landroid/os/HandlerThread;

.field private userData:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput v0, Lorg/android/spdy/SpdySession;->count:I

    return-void
.end method

.method constructor <init>(JLorg/android/spdy/SpdyAgent;Ljava/lang/String;Ljava/lang/String;Lorg/android/spdy/SessionCb;IILjava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/android/spdy/SpdySession;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    iput-boolean v2, p0, Lorg/android/spdy/SpdySession;->sessionClearedFromSessionMgr:Z

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/android/spdy/SpdySession;->lock:Ljava/lang/Object;

    .line 33
    iput v3, p0, Lorg/android/spdy/SpdySession;->streamcount:I

    .line 34
    iput-object v1, p0, Lorg/android/spdy/SpdySession;->spdyStream:Lorg/android/spdy/NetSparseArray;

    .line 35
    iput-object v1, p0, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    .line 36
    iput v2, p0, Lorg/android/spdy/SpdySession;->pubkey_seqnum:I

    .line 37
    iput-object v1, p0, Lorg/android/spdy/SpdySession;->userData:Ljava/lang/Object;

    .line 38
    iput v3, p0, Lorg/android/spdy/SpdySession;->refcount:I

    .line 48
    iput-wide p1, p0, Lorg/android/spdy/SpdySession;->sessionNativePtr:J

    .line 49
    iput-object p3, p0, Lorg/android/spdy/SpdySession;->agent:Lorg/android/spdy/SpdyAgent;

    .line 50
    iput-object p4, p0, Lorg/android/spdy/SpdySession;->authority:Ljava/lang/String;

    .line 51
    new-instance v0, Lorg/android/spdy/SpdySessionCallBack;

    invoke-direct {v0}, Lorg/android/spdy/SpdySessionCallBack;-><init>()V

    iput-object v0, p0, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    .line 52
    iput-object p5, p0, Lorg/android/spdy/SpdySession;->domain:Ljava/lang/String;

    .line 54
    new-instance v0, Lorg/android/spdy/NetSparseArray;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/android/spdy/NetSparseArray;-><init>(I)V

    iput-object v0, p0, Lorg/android/spdy/SpdySession;->spdyStream:Lorg/android/spdy/NetSparseArray;

    .line 55
    iput-object p6, p0, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    .line 56
    iput p8, p0, Lorg/android/spdy/SpdySession;->pubkey_seqnum:I

    .line 57
    iput p7, p0, Lorg/android/spdy/SpdySession;->mode:I

    .line 58
    iput-object p9, p0, Lorg/android/spdy/SpdySession;->userData:Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lorg/android/spdy/SpdySession;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 60
    return-void
.end method

.method private closeprivate()I
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 316
    .line 317
    iget-object v1, p0, Lorg/android/spdy/SpdySession;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 318
    :try_start_0
    iget-boolean v0, p0, Lorg/android/spdy/SpdySession;->sessionClearedFromSessionMgr:Z

    if-nez v0, :cond_0

    .line 319
    iget-object v0, p0, Lorg/android/spdy/SpdySession;->agent:Lorg/android/spdy/SpdyAgent;

    iget-object v2, p0, Lorg/android/spdy/SpdySession;->authority:Ljava/lang/String;

    iget-object v3, p0, Lorg/android/spdy/SpdySession;->domain:Ljava/lang/String;

    iget v4, p0, Lorg/android/spdy/SpdySession;->mode:I

    invoke-virtual {v0, v2, v3, v4}, Lorg/android/spdy/SpdyAgent;->clearSpdySession(Ljava/lang/String;Ljava/lang/String;I)V

    .line 320
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/android/spdy/SpdySession;->sessionClearedFromSessionMgr:Z

    .line 322
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/android/spdy/SpdySession;->sessionNativePtr:J

    .line 325
    iget-object v9, p0, Lorg/android/spdy/SpdySession;->lock:Ljava/lang/Object;

    monitor-enter v9

    .line 327
    :try_start_1
    invoke-virtual {p0}, Lorg/android/spdy/SpdySession;->getAllStreamCb()[Lorg/android/spdy/SpdyStreamContext;

    move-result-object v10

    .line 328
    if-eqz v10, :cond_1

    .line 329
    array-length v11, v10

    move v7, v8

    :goto_0
    if-ge v7, v11, :cond_1

    aget-object v1, v10, v7

    .line 331
    const-string v0, "tnet-jni"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SpdySessionCallBack.spdyStreamCloseCallback] unfinished stm="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lorg/android/spdy/SpdyStreamContext;->streamId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    iget-object v0, v1, Lorg/android/spdy/SpdyStreamContext;->callBack:Lorg/android/spdy/Spdycb;

    iget v2, v1, Lorg/android/spdy/SpdyStreamContext;->streamId:I

    int-to-long v2, v2

    const/16 v4, -0x7d1

    iget-object v5, v1, Lorg/android/spdy/SpdyStreamContext;->streamContext:Ljava/lang/Object;

    const/4 v6, 0x0

    move-object v1, p0

    invoke-interface/range {v0 .. v6}, Lorg/android/spdy/Spdycb;->spdyStreamCloseCallback(Lorg/android/spdy/SpdySession;JILjava/lang/Object;Lorg/android/spdy/SuperviseData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 329
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 322
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 335
    :cond_1
    :try_start_3
    iget-object v0, p0, Lorg/android/spdy/SpdySession;->spdyStream:Lorg/android/spdy/NetSparseArray;

    invoke-virtual {v0}, Lorg/android/spdy/NetSparseArray;->clear()V

    .line 336
    monitor-exit v9

    .line 338
    return v8

    .line 336
    :catchall_1
    move-exception v0

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private getAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/android/spdy/SpdySession;->authority:Ljava/lang/String;

    return-object v0
.end method

.method private native sendCustomControlFrameN(JIIII[B)I
.end method

.method private native sendHeadersN(JI[Ljava/lang/String;Z)I
.end method

.method private native setOptionN(JII)I
.end method

.method private native streamCloseN(JII)I
.end method

.method private native streamSendDataN(JI[BIIZ)I
.end method

.method private native submitBioPingN(J)I
.end method

.method private native submitPingN(J)I
.end method

.method private native submitRequestN(JLjava/lang/String;B[Ljava/lang/String;[BZII)I
.end method


# virtual methods
.method public cleanUp()I
    .locals 3

    .prologue
    .line 280
    const-string v0, "tnet-jni"

    const-string v1, "[SpdySession.cleanUp] - "

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const/4 v0, 0x0

    .line 282
    iget-object v1, p0, Lorg/android/spdy/SpdySession;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 283
    iget-object v0, p0, Lorg/android/spdy/SpdySession;->agent:Lorg/android/spdy/SpdyAgent;

    invoke-virtual {v0, p0}, Lorg/android/spdy/SpdyAgent;->removeSession(Lorg/android/spdy/SpdySession;)V

    .line 284
    invoke-direct {p0}, Lorg/android/spdy/SpdySession;->closeprivate()I

    move-result v0

    .line 286
    :cond_0
    return v0
.end method

.method public clearAllStreamCb()V
    .locals 2

    .prologue
    .line 120
    const-string v0, "tnet-jni"

    const-string v1, "[SpdySession.clearAllStreamCb] - "

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lorg/android/spdy/SpdySession;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 122
    :try_start_0
    iget-object v0, p0, Lorg/android/spdy/SpdySession;->spdyStream:Lorg/android/spdy/NetSparseArray;

    invoke-virtual {v0}, Lorg/android/spdy/NetSparseArray;->clear()V

    .line 123
    monitor-exit v1

    .line 124
    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method closeInternal()I
    .locals 3

    .prologue
    .line 290
    const/4 v0, 0x0

    .line 291
    iget-object v1, p0, Lorg/android/spdy/SpdySession;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 292
    invoke-direct {p0}, Lorg/android/spdy/SpdySession;->closeprivate()I

    move-result v0

    .line 294
    :cond_0
    return v0
.end method

.method public closeSession()I
    .locals 6

    .prologue
    .line 298
    const-string v0, "tnet-jni"

    const-string v1, "[SpdySession.closeSession] - "

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const/4 v1, 0x0

    .line 300
    iget-object v2, p0, Lorg/android/spdy/SpdySession;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 301
    :try_start_0
    iget-boolean v0, p0, Lorg/android/spdy/SpdySession;->sessionClearedFromSessionMgr:Z

    if-nez v0, :cond_0

    .line 302
    const-string v0, "tnet-jni"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SpdySession.closeSession] - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/android/spdy/SpdySession;->authority:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/android/spdy/spduLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lorg/android/spdy/SpdySession;->agent:Lorg/android/spdy/SpdyAgent;

    iget-object v3, p0, Lorg/android/spdy/SpdySession;->authority:Ljava/lang/String;

    iget-object v4, p0, Lorg/android/spdy/SpdySession;->domain:Ljava/lang/String;

    iget v5, p0, Lorg/android/spdy/SpdySession;->mode:I

    invoke-virtual {v0, v3, v4, v5}, Lorg/android/spdy/SpdyAgent;->clearSpdySession(Ljava/lang/String;Ljava/lang/String;I)V

    .line 304
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/android/spdy/SpdySession;->sessionClearedFromSessionMgr:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    :try_start_1
    iget-object v0, p0, Lorg/android/spdy/SpdySession;->agent:Lorg/android/spdy/SpdyAgent;

    iget-wide v4, p0, Lorg/android/spdy/SpdySession;->sessionNativePtr:J

    invoke-virtual {v0, v4, v5}, Lorg/android/spdy/SpdyAgent;->closeSession(J)I
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 311
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 312
    return v0

    .line 307
    :catch_0
    move-exception v0

    .line 308
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    :cond_0
    move v0, v1

    goto :goto_0

    .line 311
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public getAllStreamCb()[Lorg/android/spdy/SpdyStreamContext;
    .locals 3

    .prologue
    .line 107
    .line 108
    const/4 v0, 0x0

    .line 109
    iget-object v1, p0, Lorg/android/spdy/SpdySession;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 110
    :try_start_0
    iget-object v2, p0, Lorg/android/spdy/SpdySession;->spdyStream:Lorg/android/spdy/NetSparseArray;

    invoke-virtual {v2}, Lorg/android/spdy/NetSparseArray;->size()I

    move-result v2

    .line 111
    if-lez v2, :cond_0

    .line 112
    new-array v0, v2, [Lorg/android/spdy/SpdyStreamContext;

    .line 113
    iget-object v2, p0, Lorg/android/spdy/SpdySession;->spdyStream:Lorg/android/spdy/NetSparseArray;

    invoke-virtual {v2, v0}, Lorg/android/spdy/NetSparseArray;->toArray([Ljava/lang/Object;)V

    .line 115
    :cond_0
    monitor-exit v1

    .line 116
    return-object v0

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/android/spdy/SpdySession;->domain:Ljava/lang/String;

    return-object v0
.end method

.method getMsgHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lorg/android/spdy/SpdySession;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public getRefCount()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lorg/android/spdy/SpdySession;->refcount:I

    return v0
.end method

.method getSessionNativePtr()J
    .locals 2

    .prologue
    .line 136
    iget-wide v0, p0, Lorg/android/spdy/SpdySession;->sessionNativePtr:J

    return-wide v0
.end method

.method getSpdyAgent()Lorg/android/spdy/SpdyAgent;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/android/spdy/SpdySession;->agent:Lorg/android/spdy/SpdyAgent;

    return-object v0
.end method

.method getSpdyStream(I)Lorg/android/spdy/SpdyStreamContext;
    .locals 2

    .prologue
    .line 88
    const/4 v0, 0x0

    .line 89
    if-lez p1, :cond_0

    .line 90
    iget-object v1, p0, Lorg/android/spdy/SpdySession;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 91
    :try_start_0
    iget-object v0, p0, Lorg/android/spdy/SpdySession;->spdyStream:Lorg/android/spdy/NetSparseArray;

    invoke-virtual {v0, p1}, Lorg/android/spdy/NetSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/android/spdy/SpdyStreamContext;

    .line 92
    monitor-exit v1

    .line 94
    :cond_0
    return-object v0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/android/spdy/SpdySession;->userData:Ljava/lang/Object;

    return-object v0
.end method

.method increRefCount()V
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lorg/android/spdy/SpdySession;->refcount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/android/spdy/SpdySession;->refcount:I

    .line 67
    return-void
.end method

.method putSpdyStreamCtx(Lorg/android/spdy/SpdyStreamContext;)I
    .locals 3

    .prologue
    .line 79
    .line 80
    iget-object v1, p0, Lorg/android/spdy/SpdySession;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 81
    :try_start_0
    iget v0, p0, Lorg/android/spdy/SpdySession;->streamcount:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/android/spdy/SpdySession;->streamcount:I

    .line 82
    iget-object v2, p0, Lorg/android/spdy/SpdySession;->spdyStream:Lorg/android/spdy/NetSparseArray;

    invoke-virtual {v2, v0, p1}, Lorg/android/spdy/NetSparseArray;->put(ILjava/lang/Object;)V

    .line 83
    monitor-exit v1

    .line 84
    return v0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method removeSpdyStream(I)V
    .locals 2

    .prologue
    .line 98
    if-lez p1, :cond_0

    .line 99
    iget-object v1, p0, Lorg/android/spdy/SpdySession;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 100
    :try_start_0
    iget-object v0, p0, Lorg/android/spdy/SpdySession;->spdyStream:Lorg/android/spdy/NetSparseArray;

    invoke-virtual {v0, p1}, Lorg/android/spdy/NetSparseArray;->remove(I)V

    .line 101
    monitor-exit v1

    .line 103
    :cond_0
    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sendCustomControlFrame(IIII[B)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/android/spdy/SpdyErrorException;
        }
    .end annotation

    .prologue
    .line 196
    invoke-virtual {p0}, Lorg/android/spdy/SpdySession;->sessionIsOpen()V

    .line 198
    if-eqz p5, :cond_1

    array-length v0, p5

    if-gtz v0, :cond_1

    .line 199
    const/4 p5, 0x0

    move-object v8, p5

    .line 203
    :goto_0
    const-string v0, "tnet-jni"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[sendCustomControlFrame] - type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-wide v2, p0, Lorg/android/spdy/SpdySession;->sessionNativePtr:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v8}, Lorg/android/spdy/SpdySession;->sendCustomControlFrameN(JIIII[B)I

    move-result v0

    .line 207
    if-eqz v0, :cond_0

    new-instance v1, Lorg/android/spdy/SpdyErrorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendCustomControlFrame error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 208
    :cond_0
    return v0

    :cond_1
    move-object v8, p5

    goto :goto_0
.end method

.method sessionIsOpen()V
    .locals 3

    .prologue
    .line 271
    iget-object v0, p0, Lorg/android/spdy/SpdySession;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    new-instance v0, Lorg/android/spdy/SpdyErrorException;

    const-string v1, "session is already closed: -1104"

    const/16 v2, -0x450

    invoke-direct {v0, v1, v2}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 274
    :cond_0
    return-void
.end method

.method public setOption(II)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/android/spdy/SpdyErrorException;
        }
    .end annotation

    .prologue
    .line 151
    invoke-virtual {p0}, Lorg/android/spdy/SpdySession;->sessionIsOpen()V

    .line 153
    iget-wide v0, p0, Lorg/android/spdy/SpdySession;->sessionNativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/android/spdy/SpdySession;->setOptionN(JII)I

    move-result v0

    .line 154
    if-eqz v0, :cond_0

    new-instance v1, Lorg/android/spdy/SpdyErrorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOption error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 155
    :cond_0
    return v0
.end method

.method setSessionNativePtr(J)V
    .locals 1

    .prologue
    .line 140
    iput-wide p1, p0, Lorg/android/spdy/SpdySession;->sessionNativePtr:J

    .line 141
    return-void
.end method

.method public streamReset(JI)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/android/spdy/SpdyErrorException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-virtual {p0}, Lorg/android/spdy/SpdySession;->sessionIsOpen()V

    .line 189
    const-string v0, "tnet-jni"

    const-string v1, "[SpdySession.streamReset] - "

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-wide v0, p0, Lorg/android/spdy/SpdySession;->sessionNativePtr:J

    long-to-int v2, p1

    invoke-direct {p0, v0, v1, v2, p3}, Lorg/android/spdy/SpdySession;->streamCloseN(JII)I

    move-result v0

    .line 191
    if-eqz v0, :cond_0

    new-instance v1, Lorg/android/spdy/SpdyErrorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "streamReset error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 192
    :cond_0
    return v0
.end method

.method public submitBioPing()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/android/spdy/SpdyErrorException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 173
    invoke-virtual {p0}, Lorg/android/spdy/SpdySession;->sessionIsOpen()V

    .line 174
    iget-wide v0, p0, Lorg/android/spdy/SpdySession;->sessionNativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/android/spdy/SpdySession;->submitBioPingN(J)I

    move-result v0

    .line 175
    if-eqz v0, :cond_0

    new-instance v1, Lorg/android/spdy/SpdyErrorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "submitBioPing error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 176
    :cond_0
    return v0
.end method

.method public submitPing()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/android/spdy/SpdyErrorException;
        }
    .end annotation

    .prologue
    .line 164
    invoke-virtual {p0}, Lorg/android/spdy/SpdySession;->sessionIsOpen()V

    .line 166
    iget-wide v0, p0, Lorg/android/spdy/SpdySession;->sessionNativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/android/spdy/SpdySession;->submitPingN(J)I

    move-result v0

    .line 167
    if-eqz v0, :cond_0

    new-instance v1, Lorg/android/spdy/SpdyErrorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "submitPing error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 168
    :cond_0
    return v0
.end method

.method public submitRequest(Lorg/android/spdy/SpdyRequest;Lorg/android/spdy/SpdyDataProvider;Ljava/lang/Object;Lorg/android/spdy/Spdycb;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/android/spdy/SpdyErrorException;
        }
    .end annotation

    .prologue
    .line 227
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lorg/android/spdy/SpdyRequest;->getAuthority()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 228
    :cond_0
    new-instance v0, Lorg/android/spdy/SpdyErrorException;

    const-string v1, "submitRequest error: -1102"

    const/16 v2, -0x44e

    invoke-direct {v0, v1, v2}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 231
    :cond_1
    invoke-virtual {p0}, Lorg/android/spdy/SpdySession;->sessionIsOpen()V

    .line 233
    invoke-static {p1, p2}, Lorg/android/spdy/SpdyAgent;->dataproviderToByteArray(Lorg/android/spdy/SpdyRequest;Lorg/android/spdy/SpdyDataProvider;)[B

    move-result-object v7

    .line 236
    if-eqz v7, :cond_2

    array-length v0, v7

    if-gtz v0, :cond_2

    .line 237
    const/4 v7, 0x0

    .line 239
    :cond_2
    const/4 v8, 0x1

    .line 240
    if-eqz p2, :cond_3

    .line 241
    iget-boolean v8, p2, Lorg/android/spdy/SpdyDataProvider;->finished:Z

    .line 250
    :cond_3
    new-instance v0, Lorg/android/spdy/SpdyStreamContext;

    invoke-direct {v0, p3, p4}, Lorg/android/spdy/SpdyStreamContext;-><init>(Ljava/lang/Object;Lorg/android/spdy/Spdycb;)V

    .line 251
    invoke-virtual {p0, v0}, Lorg/android/spdy/SpdySession;->putSpdyStreamCtx(Lorg/android/spdy/SpdyStreamContext;)I

    move-result v9

    .line 252
    invoke-virtual {p1}, Lorg/android/spdy/SpdyRequest;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lorg/android/spdy/SpdyAgent;->mapToByteArray(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v6

    .line 255
    const-string v1, "tnet-jni"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "starttime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-wide v2, p0, Lorg/android/spdy/SpdySession;->sessionNativePtr:J

    invoke-virtual {p1}, Lorg/android/spdy/SpdyRequest;->getUrlPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lorg/android/spdy/SpdyRequest;->getPriority()I

    move-result v1

    int-to-byte v5, v1

    invoke-virtual {p1}, Lorg/android/spdy/SpdyRequest;->getRequestTimeoutMs()I

    move-result v10

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lorg/android/spdy/SpdySession;->submitRequestN(JLjava/lang/String;B[Ljava/lang/String;[BZII)I

    move-result v1

    .line 259
    const-string v2, "tnet-jni"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " calltime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    if-gez v1, :cond_4

    .line 262
    invoke-virtual {p0, v9}, Lorg/android/spdy/SpdySession;->removeSpdyStream(I)V

    .line 263
    new-instance v0, Lorg/android/spdy/SpdyErrorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "submitRequest error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 265
    :cond_4
    iput v1, v0, Lorg/android/spdy/SpdyStreamContext;->streamId:I

    .line 267
    return v1
.end method
