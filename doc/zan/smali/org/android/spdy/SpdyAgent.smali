.class public final Lorg/android/spdy/SpdyAgent;
.super Ljava/lang/Object;
.source "SpdyAgent.java"


# static fields
.field public static final ACCS_ONLINE_SERVER:I = 0x1

.field public static final ACCS_TEST_SERVER:I = 0x0

.field private static final HAVE_CLOSE:Z = false

.field private static final KB32:I = 0x8000

.field private static final KB8:I = 0x2000

.field private static final MAX_SPDY_SESSION_COUNT:I = 0x32

.field private static final MB5:I = 0x500000

.field static final MODE_QUIC:I = 0x100

.field static final SPDY_CUSTOM_CONTROL_FRAME_RECV:I = 0x100a

.field static final SPDY_DATA_CHUNK_RECV:I = 0x1001

.field static final SPDY_DATA_RECV:I = 0x1002

.field static final SPDY_DATA_SEND:I = 0x1003

.field static final SPDY_PING_RECV:I = 0x1005

.field static final SPDY_REQUEST_RECV:I = 0x1006

.field static final SPDY_SESSION_CLOSE:I = 0x1007

.field static final SPDY_SESSION_CREATE:I = 0x1000

.field static final SPDY_SESSION_FAILED_ERROR:I = 0x1009

.field static final SPDY_STREAM_CLOSE:I = 0x1004

.field static final SPDY_STREAM_RESPONSE_RECV:I = 0x1008

.field private static final TNET_SO_VERSION:Ljava/lang/String; = "tnet-3.1.11"

.field private static domainHashLock:Ljava/lang/Object;

.field private static domainHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile enableDebug:Z

.field public static volatile enableTimeGaurd:Z

.field private static volatile gSingleInstance:Lorg/android/spdy/SpdyAgent;

.field private static volatile loadSucc:Z

.field private static lock:Ljava/lang/Object;

.field private static final r:Ljava/util/concurrent/locks/Lock;

.field private static final rwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private static totalDomain:I

.field private static final w:Ljava/util/concurrent/locks/Lock;


# instance fields
.field private accsSSLCallback:Lorg/android/spdy/AccsSSLCallback;

.field private agentNativePtr:J

.field private closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private proxyPassword:Ljava/lang/String;

.field private proxyUsername:Ljava/lang/String;

.field private sessionMgr:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/android/spdy/SpdySession;",
            ">;"
        }
    .end annotation
.end field

.field private sessionQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/android/spdy/SpdySession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    sput-boolean v1, Lorg/android/spdy/SpdyAgent;->enableDebug:Z

    .line 61
    sput-boolean v1, Lorg/android/spdy/SpdyAgent;->enableTimeGaurd:Z

    .line 65
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v0, Lorg/android/spdy/SpdyAgent;->rwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 66
    sget-object v0, Lorg/android/spdy/SpdyAgent;->rwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    sput-object v0, Lorg/android/spdy/SpdyAgent;->r:Ljava/util/concurrent/locks/Lock;

    .line 67
    sget-object v0, Lorg/android/spdy/SpdyAgent;->rwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    sput-object v0, Lorg/android/spdy/SpdyAgent;->w:Ljava/util/concurrent/locks/Lock;

    .line 69
    sput-boolean v1, Lorg/android/spdy/SpdyAgent;->loadSucc:Z

    .line 86
    const/4 v0, 0x0

    sput-object v0, Lorg/android/spdy/SpdyAgent;->gSingleInstance:Lorg/android/spdy/SpdyAgent;

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/android/spdy/SpdyAgent;->lock:Ljava/lang/Object;

    .line 118
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/android/spdy/SpdyAgent;->domainHashLock:Ljava/lang/Object;

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/android/spdy/SpdyAgent;->domainHashMap:Ljava/util/HashMap;

    .line 120
    sput v1, Lorg/android/spdy/SpdyAgent;->totalDomain:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lorg/android/spdy/SpdyVersion;Lorg/android/spdy/SpdySessionKind;Lorg/android/spdy/AccsSSLCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/android/spdy/SpdyAgent;->sessionMgr:Ljava/util/HashMap;

    .line 51
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/android/spdy/SpdyAgent;->sessionQueue:Ljava/util/LinkedList;

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/android/spdy/SpdyAgent;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    iput-object v2, p0, Lorg/android/spdy/SpdyAgent;->proxyUsername:Ljava/lang/String;

    .line 57
    iput-object v2, p0, Lorg/android/spdy/SpdyAgent;->proxyPassword:Ljava/lang/String;

    .line 150
    :try_start_0
    invoke-static {p1}, Lorg/android/spdy/SoInstallMgrSdk;->init(Landroid/content/Context;)V

    .line 151
    const-string v0, "tnet-3.1.11"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/android/spdy/SoInstallMgrSdk;->initSo(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lorg/android/spdy/SpdyAgent;->loadSucc:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_0
    :try_start_1
    invoke-virtual {p2}, Lorg/android/spdy/SpdyVersion;->getInt()I

    move-result v0

    invoke-virtual {p3}, Lorg/android/spdy/SpdySessionKind;->getint()I

    move-result v1

    sget-object v2, Lorg/android/spdy/SslVersion;->SLIGHT_VERSION_V1:Lorg/android/spdy/SslVersion;

    invoke-virtual {v2}, Lorg/android/spdy/SslVersion;->getint()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/android/spdy/SpdyAgent;->initAgent(III)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/android/spdy/SpdyAgent;->agentNativePtr:J

    .line 158
    iput-object p4, p0, Lorg/android/spdy/SpdyAgent;->accsSSLCallback:Lorg/android/spdy/AccsSSLCallback;
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    .line 162
    :goto_1
    iget-object v0, p0, Lorg/android/spdy/SpdyAgent;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 163
    return-void

    .line 152
    :catch_0
    move-exception v0

    .line 153
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 159
    :catch_1
    move-exception v0

    .line 160
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    goto :goto_1
.end method

.method static InvlidCharJudge([B[B)V
    .locals 6

    .prologue
    const/16 v5, 0x7e

    const/16 v4, 0x3f

    const/16 v3, 0x20

    const/4 v1, 0x0

    .line 212
    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 213
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    if-lt v2, v3, :cond_0

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    if-le v2, v5, :cond_1

    .line 214
    :cond_0
    aput-byte v4, p0, v0

    .line 212
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 218
    :cond_2
    :goto_1
    array-length v0, p1

    if-ge v1, v0, :cond_5

    .line 219
    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0xff

    if-lt v0, v3, :cond_3

    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0xff

    if-le v0, v5, :cond_4

    .line 220
    :cond_3
    aput-byte v4, p1, v1

    .line 218
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 223
    :cond_5
    return-void
.end method

.method private agentIsOpen()V
    .locals 3

    .prologue
    .line 544
    iget-object v0, p0, Lorg/android/spdy/SpdyAgent;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 545
    new-instance v0, Lorg/android/spdy/SpdyErrorException;

    const-string v1, "SPDY_JNI_ERR_ASYNC_CLOSE"

    const/16 v2, -0x450

    invoke-direct {v0, v1, v2}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 548
    :cond_0
    invoke-direct {p0}, Lorg/android/spdy/SpdyAgent;->checkLoadSo()V

    .line 549
    return-void
.end method

.method private bioPingRecvCallback(Lorg/android/spdy/SpdySession;I)V
    .locals 2

    .prologue
    .line 799
    const-string v0, "tnet-jni"

    const-string v1, "[bioPingRecvCallback] - "

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    if-nez p1, :cond_0

    .line 801
    const-string v0, "tnet-jni"

    const-string v1, "[bioPingRecvCallback] - session is null"

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    :goto_0
    return-void

    .line 802
    :cond_0
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    if-nez v0, :cond_1

    .line 803
    const-string v0, "tnet-jni"

    const-string v1, "[bioPingRecvCallback] - session.intenalcb is null"

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 805
    :cond_1
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    invoke-interface {v0, p1, p2}, Lorg/android/spdy/Intenalcb;->bioPingRecvCallback(Lorg/android/spdy/SpdySession;I)V

    goto :goto_0
.end method

.method private checkLoadSo()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/android/spdy/SpdyErrorException;
        }
    .end annotation

    .prologue
    .line 166
    sget-boolean v0, Lorg/android/spdy/SpdyAgent;->loadSucc:Z

    if-eqz v0, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    :try_start_0
    sget-object v1, Lorg/android/spdy/SpdyAgent;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :try_start_1
    sget-boolean v0, Lorg/android/spdy/SpdyAgent;->loadSucc:Z

    if-eqz v0, :cond_2

    monitor-exit v1

    goto :goto_0

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 177
    :goto_1
    sget-boolean v0, Lorg/android/spdy/SpdyAgent;->loadSucc:Z

    if-nez v0, :cond_0

    .line 178
    new-instance v0, Lorg/android/spdy/SpdyErrorException;

    const-string v1, "TNET_JNI_ERR_LOAD_SO_FAIL"

    const/16 v2, -0x454

    invoke-direct {v0, v1, v2}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 171
    :cond_2
    :try_start_3
    const-string v0, "tnet-3.1.11"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lorg/android/spdy/SoInstallMgrSdk;->initSo(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lorg/android/spdy/SpdyAgent;->loadSucc:Z

    .line 172
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lorg/android/spdy/SpdyAgent;->initAgent(III)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/android/spdy/SpdyAgent;->agentNativePtr:J

    .line 173
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public static checkLoadSucc()Z
    .locals 1

    .prologue
    .line 102
    sget-boolean v0, Lorg/android/spdy/SpdyAgent;->loadSucc:Z

    return v0
.end method

.method private native closeSessionN(J)I
.end method

.method public static configIpStackMode(I)I
    .locals 3

    .prologue
    .line 980
    const-string v0, "tnet-jni"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[configIpStackMode] - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    invoke-static {p0}, Lorg/android/spdy/SpdyAgent;->configIpStackModeN(I)I

    move-result v0

    return v0
.end method

.method private static native configIpStackModeN(I)I
.end method

.method private native configLogFileN(Ljava/lang/String;II)I
.end method

.method private native configLogFileN(Ljava/lang/String;III)I
.end method

.method private static crashReporter(I)V
    .locals 0

    .prologue
    .line 937
    return-void
.end method

.method private native createSessionN(JLorg/android/spdy/SpdySession;I[BC[BC[B[BLjava/lang/Object;III)J
.end method

.method static dataproviderToByteArray(Lorg/android/spdy/SpdyRequest;Lorg/android/spdy/SpdyDataProvider;)[B
    .locals 4

    .prologue
    .line 273
    .line 276
    invoke-virtual {p0}, Lorg/android/spdy/SpdyRequest;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lorg/android/spdy/SpdyAgent;->headJudge(Ljava/util/Map;)V

    .line 278
    if-nez p1, :cond_1

    .line 279
    const/4 v0, 0x0

    .line 295
    :cond_0
    return-object v0

    .line 282
    :cond_1
    iget-object v0, p1, Lorg/android/spdy/SpdyDataProvider;->postBody:Ljava/util/Map;

    invoke-static {v0}, Lorg/android/spdy/SpdyAgent;->mapBodyToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 283
    if-eqz v0, :cond_2

    .line 284
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 290
    :goto_0
    if-eqz v0, :cond_0

    array-length v1, v0

    const/high16 v2, 0x500000

    if-lt v1, v2, :cond_0

    .line 291
    new-instance v1, Lorg/android/spdy/SpdyErrorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SPDY_JNI_ERR_INVALID_PARAM:total="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, -0x44e

    invoke-direct {v1, v0, v2}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 287
    :cond_2
    iget-object v0, p1, Lorg/android/spdy/SpdyDataProvider;->data:[B

    goto :goto_0
.end method

.method private native freeAgent(J)I
.end method

.method private getDomainHashIndex(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 124
    sget-object v1, Lorg/android/spdy/SpdyAgent;->domainHashLock:Ljava/lang/Object;

    monitor-enter v1

    .line 125
    :try_start_0
    sget-object v0, Lorg/android/spdy/SpdyAgent;->domainHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 126
    if-nez v0, :cond_0

    .line 127
    sget-object v0, Lorg/android/spdy/SpdyAgent;->domainHashMap:Ljava/util/HashMap;

    sget v2, Lorg/android/spdy/SpdyAgent;->totalDomain:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lorg/android/spdy/SpdyAgent;->totalDomain:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget v0, Lorg/android/spdy/SpdyAgent;->totalDomain:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 130
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 130
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;Lorg/android/spdy/SpdyVersion;Lorg/android/spdy/SpdySessionKind;)Lorg/android/spdy/SpdyAgent;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;,
            Lorg/android/spdy/SpdyErrorException;
        }
    .end annotation

    .prologue
    .line 91
    sget-object v0, Lorg/android/spdy/SpdyAgent;->gSingleInstance:Lorg/android/spdy/SpdyAgent;

    if-nez v0, :cond_1

    .line 92
    sget-object v1, Lorg/android/spdy/SpdyAgent;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 93
    :try_start_0
    sget-object v0, Lorg/android/spdy/SpdyAgent;->gSingleInstance:Lorg/android/spdy/SpdyAgent;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lorg/android/spdy/SpdyAgent;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, p2, v2}, Lorg/android/spdy/SpdyAgent;-><init>(Landroid/content/Context;Lorg/android/spdy/SpdyVersion;Lorg/android/spdy/SpdySessionKind;Lorg/android/spdy/AccsSSLCallback;)V

    sput-object v0, Lorg/android/spdy/SpdyAgent;->gSingleInstance:Lorg/android/spdy/SpdyAgent;

    .line 96
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :cond_1
    sget-object v0, Lorg/android/spdy/SpdyAgent;->gSingleInstance:Lorg/android/spdy/SpdyAgent;

    return-object v0

    .line 96
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;Lorg/android/spdy/SpdyVersion;Lorg/android/spdy/SpdySessionKind;Lorg/android/spdy/AccsSSLCallback;)Lorg/android/spdy/SpdyAgent;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;,
            Lorg/android/spdy/SpdyErrorException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 108
    sget-object v0, Lorg/android/spdy/SpdyAgent;->gSingleInstance:Lorg/android/spdy/SpdyAgent;

    if-nez v0, :cond_1

    .line 109
    sget-object v1, Lorg/android/spdy/SpdyAgent;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 110
    :try_start_0
    sget-object v0, Lorg/android/spdy/SpdyAgent;->gSingleInstance:Lorg/android/spdy/SpdyAgent;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lorg/android/spdy/SpdyAgent;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/android/spdy/SpdyAgent;-><init>(Landroid/content/Context;Lorg/android/spdy/SpdyVersion;Lorg/android/spdy/SpdySessionKind;Lorg/android/spdy/AccsSSLCallback;)V

    sput-object v0, Lorg/android/spdy/SpdyAgent;->gSingleInstance:Lorg/android/spdy/SpdyAgent;

    .line 113
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :cond_1
    sget-object v0, Lorg/android/spdy/SpdyAgent;->gSingleInstance:Lorg/android/spdy/SpdyAgent;

    return-object v0

    .line 113
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getPerformance(Lorg/android/spdy/SpdySession;Lorg/android/spdy/SslPermData;)V
    .locals 0

    .prologue
    .line 929
    return-void
.end method

.method private getSSLMeta(Lorg/android/spdy/SpdySession;)[B
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 911
    if-nez p1, :cond_0

    .line 912
    const-string v1, "tnet-jni"

    const-string v2, "[getSSLMeta] - session is null"

    invoke-static {v1, v2}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    :goto_0
    return-object v0

    .line 914
    :cond_0
    iget-object v1, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    if-nez v1, :cond_1

    .line 915
    const-string v1, "tnet-jni"

    const-string v2, "[getSSLMeta] - session.intenalcb is null"

    invoke-static {v1, v2}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 919
    :cond_1
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    invoke-interface {v0, p1}, Lorg/android/spdy/Intenalcb;->getSSLMeta(Lorg/android/spdy/SpdySession;)[B

    move-result-object v0

    goto :goto_0
.end method

.method private getSSLPublicKey(I[B)[B
    .locals 2

    .prologue
    .line 890
    iget-object v0, p0, Lorg/android/spdy/SpdyAgent;->accsSSLCallback:Lorg/android/spdy/AccsSSLCallback;

    if-nez v0, :cond_0

    .line 891
    const-string v0, "tnet-jni"

    const-string v1, "[getSSLPublicKey] - accsSSLCallback is null."

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    const/4 v0, 0x0

    .line 894
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/android/spdy/SpdyAgent;->accsSSLCallback:Lorg/android/spdy/AccsSSLCallback;

    invoke-interface {v0, p1, p2}, Lorg/android/spdy/AccsSSLCallback;->getSSLPublicKey(I[B)[B

    move-result-object v0

    goto :goto_0
.end method

.method private native getSession(J[BC)J
.end method

.method static headJudge(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 226
    .line 228
    const/4 v0, 0x0

    .line 229
    if-eqz p0, :cond_0

    .line 230
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 231
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    .line 234
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 236
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 237
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 238
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v4, v5}, Lorg/android/spdy/SpdyAgent;->InvlidCharJudge([B[B)V

    .line 239
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v1, v2

    .line 240
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v1, v0}, Lorg/android/spdy/SpdyAgent;->securityCheck(II)V

    move v2, v1

    goto :goto_0

    .line 243
    :cond_0
    return-void
.end method

.method private native initAgent(III)J
.end method

.method public static inspect(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 975
    return-void
.end method

.method private native logFileCloseN()V
.end method

.method private native logFileFlushN()V
.end method

.method static mapBodyToString(Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 246
    const/4 v0, 0x0

    .line 249
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    if-eqz p0, :cond_2

    .line 251
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 252
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    .line 255
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 257
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 258
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 259
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x26

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    .line 262
    invoke-static {v0}, Lorg/android/spdy/SpdyAgent;->tableListJudge(I)V

    move v2, v0

    goto :goto_0

    .line 264
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 265
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 267
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 269
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static mapToByteArray(Ljava/util/Map;)[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 606
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 607
    :cond_0
    const/4 v0, 0x0

    .line 622
    :goto_0
    return-object v0

    .line 609
    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 610
    new-array v3, v0, [Ljava/lang/String;

    .line 611
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 612
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 615
    const/4 v0, 0x0

    move v2, v0

    .line 616
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 617
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 618
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v2

    .line 619
    add-int/lit8 v5, v2, 0x1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v5

    .line 620
    add-int/lit8 v0, v2, 0x2

    move v2, v0

    goto :goto_1

    :cond_2
    move-object v0, v3

    .line 622
    goto :goto_0
.end method

.method private putSSLMeta(Lorg/android/spdy/SpdySession;[B)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 898
    if-nez p1, :cond_0

    .line 899
    const-string v1, "tnet-jni"

    const-string v2, "[putSSLMeta] - session is null"

    invoke-static {v1, v2}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    :goto_0
    return v0

    .line 901
    :cond_0
    iget-object v1, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    if-nez v1, :cond_1

    .line 902
    const-string v1, "tnet-jni"

    const-string v2, "[putSSLMeta] - session.intenalcb is null"

    invoke-static {v1, v2}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 906
    :cond_1
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    invoke-interface {v0, p1, p2}, Lorg/android/spdy/Intenalcb;->putSSLMeta(Lorg/android/spdy/SpdySession;[B)I

    move-result v0

    goto :goto_0
.end method

.method static securityCheck(II)V
    .locals 4

    .prologue
    const/16 v3, -0x44e

    .line 192
    const v0, 0x8000

    if-lt p0, v0, :cond_0

    .line 193
    new-instance v0, Lorg/android/spdy/SpdyErrorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SPDY_JNI_ERR_INVALID_PARAM:total="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 197
    :cond_0
    const/16 v0, 0x2000

    if-lt p1, v0, :cond_1

    .line 198
    new-instance v0, Lorg/android/spdy/SpdyErrorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SPDY_JNI_ERR_INVALID_PARAM:value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 201
    :cond_1
    return-void
.end method

.method private native setConTimeout(JI)I
.end method

.method private native setSessionKind(JI)I
.end method

.method private spdyCustomControlFrameFailCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;II)V
    .locals 2

    .prologue
    .line 788
    const-string v0, "tnet-jni"

    const-string v1, "[spdyCustomControlFrameFailCallback] - "

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    if-nez p1, :cond_0

    .line 790
    const-string v0, "tnet-jni"

    const-string v1, "[spdyCustomControlFrameFailCallback] - session is null"

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    :goto_0
    return-void

    .line 791
    :cond_0
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    if-nez v0, :cond_1

    .line 792
    const-string v0, "tnet-jni"

    const-string v1, "[spdyCustomControlFrameFailCallback] - session.intenalcb is null"

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 794
    :cond_1
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/android/spdy/Intenalcb;->spdyCustomControlFrameFailCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;II)V

    goto :goto_0
.end method

.method private spdyCustomControlFrameRecvCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;IIII[B)V
    .locals 8

    .prologue
    .line 777
    const-string v0, "tnet-jni"

    const-string v1, "[spdyCustomControlFrameRecvCallback] - "

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    if-nez p1, :cond_0

    .line 779
    const-string v0, "tnet-jni"

    const-string v1, "[spdyCustomControlFrameRecvCallback] - session is null"

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    :goto_0
    return-void

    .line 780
    :cond_0
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    if-nez v0, :cond_1

    .line 781
    const-string v0, "tnet-jni"

    const-string v1, "[spdyCustomControlFrameRecvCallback] - session.intenalcb is null"

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 783
    :cond_1
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lorg/android/spdy/Intenalcb;->spdyCustomControlFrameRecvCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;IIII[B)V

    goto :goto_0
.end method

.method private spdyDataChunkRecvCB(Lorg/android/spdy/SpdySession;ZILorg/android/spdy/SpdyByteArray;I)V
    .locals 8

    .prologue
    .line 712
    const-string v0, "tnet-jni"

    const-string v1, "[spdyDataChunkRecvCB] - "

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    int-to-long v0, p3

    const-wide v2, 0xffffffffL

    and-long v4, v0, v2

    .line 715
    if-nez p1, :cond_0

    .line 716
    const-string v0, "tnet-jni"

    const-string v1, "[spdyDataChunkRecvCB] - session is null"

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    :goto_0
    return-void

    .line 717
    :cond_0
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    if-nez v0, :cond_1

    .line 718
    const-string v0, "tnet-jni"

    const-string v1, "[spdyDataChunkRecvCB] - session.intenalcb is null"

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 720
    :cond_1
    iget-object v1, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    move-object v2, p1

    move v3, p2

    move-object v6, p4

    move v7, p5

    invoke-interface/range {v1 .. v7}, Lorg/android/spdy/Intenalcb;->spdyDataChunkRecvCB(Lorg/android/spdy/SpdySession;ZJLorg/android/spdy/SpdyByteArray;I)V

    goto :goto_0
.end method

.method private spdyDataRecvCallback(Lorg/android/spdy/SpdySession;ZIII)V
    .locals 8

    .prologue
    .line 726
    const-string v0, "tnet-jni"

    const-string v1, "[spdyDataRecvCallback] - "

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    int-to-long v0, p3

    const-wide v2, 0xffffffffL

    and-long v4, v0, v2

    .line 729
    if-nez p1, :cond_0

    .line 730
    const-string v0, "tnet-jni"

    const-string v1, "[spdyDataRecvCallback] - session is null"

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    :goto_0
    return-void

    .line 731
    :cond_0
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    if-nez v0, :cond_1

    .line 732
    const-string v0, "tnet-jni"

    const-string v1, "[spdyDataRecvCallback] - session.intenalcb is null"

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 734
    :cond_1
    iget-object v1, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    move-object v2, p1

    move v3, p2

    move v6, p4

    move v7, p5

    invoke-interface/range {v1 .. v7}, Lorg/android/spdy/Intenalcb;->spdyDataRecvCallback(Lorg/android/spdy/SpdySession;ZJII)V

    goto :goto_0
.end method

.method private spdyDataSendCallback(Lorg/android/spdy/SpdySession;ZIII)V
    .locals 8

    .prologue
    .line 740
    int-to-long v0, p3

    const-wide v2, 0xffffffffL

    and-long v4, v0, v2

    .line 741
    if-nez p1, :cond_0

    .line 742
    const-string v0, "tnet-jni"

    const-string v1, "[spdyDataSendCallback] - session is null"

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    :goto_0
    return-void

    .line 743
    :cond_0
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    if-nez v0, :cond_1

    .line 744
    const-string v0, "tnet-jni"

    const-string v1, "[spdyDataSendCallback] - session.intenalcb is null"

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 746
    :cond_1
    iget-object v1, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    move-object v2, p1

    move v3, p2

    move v6, p4

    move v7, p5

    invoke-interface/range {v1 .. v7}, Lorg/android/spdy/Intenalcb;->spdyDataSendCallback(Lorg/android/spdy/SpdySession;ZJII)V

    goto :goto_0
.end method

.method private spdyPingRecvCallback(Lorg/android/spdy/SpdySession;ILjava/lang/Object;)V
    .locals 4

    .prologue
    .line 765
    const-string v0, "tnet-jni"

    const-string v1, "[spdyPingRecvCallback] - "

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    if-nez p1, :cond_0

    .line 767
    const-string v0, "tnet-jni"

    const-string v1, "[spdyPingRecvCallback] - session is null"

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    :goto_0
    return-void

    .line 768
    :cond_0
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    if-nez v0, :cond_1

    .line 769
    const-string v0, "tnet-jni"

    const-string v1, "[spdyPingRecvCallback] - session.intenalcb is null"

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 771
    :cond_1
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    int-to-long v2, p2

    invoke-interface {v0, p1, v2, v3, p3}, Lorg/android/spdy/Intenalcb;->spdyPingRecvCallback(Lorg/android/spdy/SpdySession;JLjava/lang/Object;)V

    goto :goto_0
.end method

.method private spdyRequestRecvCallback(Lorg/android/spdy/SpdySession;II)V
    .locals 4

    .prologue
    .line 811
    int-to-long v0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 812
    if-nez p1, :cond_0

    .line 813
    const-string v0, "tnet-jni"

    const-string v1, "[spdyRequestRecvCallback] - session is null"

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    :goto_0
    return-void

    .line 814
    :cond_0
    iget-object v2, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    if-nez v2, :cond_1

    .line 815
    const-string v0, "tnet-jni"

    const-string v1, "[spdyRequestRecvCallback] - session.intenalcb is null"

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 817
    :cond_1
    iget-object v2, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    invoke-interface {v2, p1, v0, v1, p3}, Lorg/android/spdy/Intenalcb;->spdyRequestRecvCallback(Lorg/android/spdy/SpdySession;JI)V

    goto :goto_0
.end method

.method private spdySessionCloseCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;Lorg/android/spdy/SuperviseConnectInfo;I)V
    .locals 3

    .prologue
    .line 837
    const-string v0, "tnet-jni"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[spdySessionCloseCallback] - errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    if-nez p1, :cond_0

    .line 839
    const-string v0, "tnet-jni"

    const-string v1, "[spdySessionCloseCallback] - session is null"

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    :goto_0
    return-void

    .line 842
    :cond_0
    :try_start_0
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    if-nez v0, :cond_1

    .line 843
    const-string v0, "tnet-jni"

    const-string v1, "[spdySessionCloseCallback] - session.intenalcb is null"

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 848
    :goto_1
    invoke-virtual {p1}, Lorg/android/spdy/SpdySession;->cleanUp()I

    goto :goto_0

    .line 845
    :cond_1
    :try_start_1
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/android/spdy/Intenalcb;->spdySessionCloseCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;Lorg/android/spdy/SuperviseConnectInfo;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 848
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lorg/android/spdy/SpdySession;->cleanUp()I

    throw v0
.end method

.method private spdySessionConnectCB(Lorg/android/spdy/SpdySession;Lorg/android/spdy/SuperviseConnectInfo;)V
    .locals 2

    .prologue
    .line 699
    const-string v0, "tnet-jni"

    const-string v1, "[spdySessionConnectCB] - "

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    if-nez p1, :cond_0

    .line 701
    const-string v0, "tnet-jni"

    const-string v1, "[spdySessionConnectCB] - session is null"

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    :goto_0
    return-void

    .line 702
    :cond_0
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    if-nez v0, :cond_1

    .line 703
    const-string v0, "tnet-jni"

    const-string v1, "[spdySessionConnectCB] - session.intenalcb is null"

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 705
    :cond_1
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    invoke-interface {v0, p1, p2}, Lorg/android/spdy/Intenalcb;->spdySessionConnectCB(Lorg/android/spdy/SpdySession;Lorg/android/spdy/SuperviseConnectInfo;)V

    goto :goto_0
.end method

.method private spdySessionFailedError(Lorg/android/spdy/SpdySession;ILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 855
    const-string v0, "tnet-jni"

    const-string v1, "[spdySessionFailedError] - "

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    if-nez p1, :cond_0

    .line 857
    const-string v0, "tnet-jni"

    const-string v1, "[spdySessionFailedError] - session is null"

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    :goto_0
    return-void

    .line 860
    :cond_0
    :try_start_0
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    if-nez v0, :cond_1

    .line 861
    const-string v0, "tnet-jni"

    const-string v1, "[spdySessionFailedError] - session.intenalcb is null"

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 866
    :goto_1
    invoke-virtual {p1}, Lorg/android/spdy/SpdySession;->cleanUp()I

    goto :goto_0

    .line 863
    :cond_1
    :try_start_1
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    invoke-interface {v0, p1, p2, p3}, Lorg/android/spdy/Intenalcb;->spdySessionFailedError(Lorg/android/spdy/SpdySession;ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 866
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lorg/android/spdy/SpdySession;->cleanUp()I

    throw v0
.end method

.method private spdySessionOnWritable(Lorg/android/spdy/SpdySession;Ljava/lang/Object;I)V
    .locals 4

    .prologue
    .line 872
    const-string v0, "tnet-jni"

    const-string v1, "[spdySessionOnWritable] - "

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    if-nez p1, :cond_0

    .line 874
    const-string v0, "tnet-jni"

    const-string v1, "[spdySessionOnWritable] - session is null"

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    :goto_0
    return-void

    .line 877
    :cond_0
    :try_start_0
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    if-nez v0, :cond_1

    .line 878
    const-string v0, "tnet-jni"

    const-string v1, "[spdySessionOnWritable] - session.intenalcb is null"

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 882
    :catch_0
    move-exception v0

    .line 883
    const-string v1, "tnet-jni"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[spdySessionOnWritable] - exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/android/spdy/spduLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 880
    :cond_1
    :try_start_1
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    invoke-interface {v0, p1, p2, p3}, Lorg/android/spdy/Intenalcb;->spdySessionOnWritable(Lorg/android/spdy/SpdySession;Ljava/lang/Object;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private spdyStreamCloseCallback(Lorg/android/spdy/SpdySession;IIILorg/android/spdy/SuperviseData;)V
    .locals 7

    .prologue
    .line 752
    const-string v0, "tnet-jni"

    const-string v1, "[spdyStreamCloseCallback] - "

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    int-to-long v0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr v2, v0

    .line 754
    if-nez p1, :cond_0

    .line 755
    const-string v0, "tnet-jni"

    const-string v1, "[spdyStreamCloseCallback] - session is null"

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    :goto_0
    return-void

    .line 756
    :cond_0
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    if-nez v0, :cond_1

    .line 757
    const-string v0, "tnet-jni"

    const-string v1, "[spdyStreamCloseCallback] - session.intenalcb is null"

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 759
    :cond_1
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    move-object v1, p1

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lorg/android/spdy/Intenalcb;->spdyStreamCloseCallback(Lorg/android/spdy/SpdySession;JIILorg/android/spdy/SuperviseData;)V

    goto :goto_0
.end method

.method private spdyStreamResponseRecv(Lorg/android/spdy/SpdySession;I[Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 823
    const-string v0, "tnet-jni"

    const-string v1, "[spdyStreamResponseRecv] - "

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    invoke-static {p3}, Lorg/android/spdy/SpdyAgent;->stringArrayToMap([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 826
    int-to-long v0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr v2, v0

    .line 827
    if-nez p1, :cond_0

    .line 828
    const-string v0, "tnet-jni"

    const-string v1, "[spdyStreamResponseRecv] - session is null"

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    :goto_0
    return-void

    .line 829
    :cond_0
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    if-nez v0, :cond_1

    .line 830
    const-string v0, "tnet-jni"

    const-string v1, "[spdyStreamResponseRecv] - session.intenalcb is null"

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 832
    :cond_1
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->intenalcb:Lorg/android/spdy/Intenalcb;

    move-object v1, p1

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lorg/android/spdy/Intenalcb;->spdyOnStreamResponse(Lorg/android/spdy/SpdySession;JLjava/util/Map;I)V

    goto :goto_0
.end method

.method static stringArrayToMap([Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 627
    if-nez p0, :cond_0

    move-object v0, v2

    .line 644
    :goto_0
    return-object v0

    .line 630
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    const/4 v0, 0x5

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 632
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    add-int/lit8 v0, v1, 0x2

    array-length v4, p0

    if-gt v0, v4, :cond_4

    .line 634
    aget-object v0, p0, v1

    if-eqz v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    aget-object v0, p0, v0

    if-nez v0, :cond_2

    :cond_1
    move-object v0, v2

    .line 635
    goto :goto_0

    .line 637
    :cond_2
    aget-object v0, p0, v1

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 638
    if-nez v0, :cond_3

    .line 639
    new-instance v0, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 640
    aget-object v4, p0, v1

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    :cond_3
    add-int/lit8 v4, v1, 0x1

    aget-object v4, p0, v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 632
    add-int/lit8 v0, v1, 0x2

    move v1, v0

    goto :goto_1

    :cond_4
    move-object v0, v3

    .line 644
    goto :goto_0
.end method

.method static tableListJudge(I)V
    .locals 3

    .prologue
    .line 204
    const/high16 v0, 0x500000

    if-lt p0, v0, :cond_0

    .line 205
    new-instance v0, Lorg/android/spdy/SpdyErrorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SPDY_JNI_ERR_INVALID_PARAM:total="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x44e

    invoke-direct {v0, v1, v2}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 208
    :cond_0
    return-void
.end method


# virtual methods
.method clearSpdySession(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 72
    if-eqz p1, :cond_1

    .line 73
    sget-object v0, Lorg/android/spdy/SpdyAgent;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 75
    if-eqz p1, :cond_0

    .line 76
    :try_start_0
    iget-object v0, p0, Lorg/android/spdy/SpdyAgent;->sessionMgr:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :cond_0
    sget-object v0, Lorg/android/spdy/SpdyAgent;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 84
    :cond_1
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    sget-object v0, Lorg/android/spdy/SpdyAgent;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lorg/android/spdy/SpdyAgent;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 589
    return-void
.end method

.method closeSession(J)I
    .locals 1

    .prologue
    .line 602
    invoke-direct {p0, p1, p2}, Lorg/android/spdy/SpdyAgent;->closeSessionN(J)I

    move-result v0

    return v0
.end method

.method public configLogFile(Ljava/lang/String;II)I
    .locals 1

    .prologue
    .line 940
    sget-boolean v0, Lorg/android/spdy/SpdyAgent;->loadSucc:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lorg/android/spdy/SpdyAgent;->configLogFileN(Ljava/lang/String;II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public configLogFile(Ljava/lang/String;III)I
    .locals 1

    .prologue
    .line 944
    sget-boolean v0, Lorg/android/spdy/SpdyAgent;->loadSucc:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/android/spdy/SpdyAgent;->configLogFileN(Ljava/lang/String;III)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public createSession(Ljava/lang/String;Ljava/lang/Object;Lorg/android/spdy/SessionCb;I)Lorg/android/spdy/SpdySession;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/android/spdy/SpdyErrorException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 318
    const-string v2, ""

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p4

    invoke-virtual/range {v0 .. v7}, Lorg/android/spdy/SpdyAgent;->createSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lorg/android/spdy/SessionCb;Lorg/android/spdy/SslCertcb;II)Lorg/android/spdy/SpdySession;

    move-result-object v0

    return-object v0
.end method

.method public createSession(Ljava/lang/String;Ljava/lang/Object;Lorg/android/spdy/SessionCb;Lorg/android/spdy/SslCertcb;I)Lorg/android/spdy/SpdySession;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/android/spdy/SpdyErrorException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 328
    const-string v2, ""

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v7}, Lorg/android/spdy/SpdyAgent;->createSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lorg/android/spdy/SessionCb;Lorg/android/spdy/SslCertcb;II)Lorg/android/spdy/SpdySession;

    move-result-object v0

    return-object v0
.end method

.method public createSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lorg/android/spdy/SessionCb;I)Lorg/android/spdy/SpdySession;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/android/spdy/SpdyErrorException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 323
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    invoke-virtual/range {v0 .. v7}, Lorg/android/spdy/SpdyAgent;->createSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lorg/android/spdy/SessionCb;Lorg/android/spdy/SslCertcb;II)Lorg/android/spdy/SpdySession;

    move-result-object v0

    return-object v0
.end method

.method public createSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lorg/android/spdy/SessionCb;Lorg/android/spdy/SslCertcb;II)Lorg/android/spdy/SpdySession;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/android/spdy/SpdyErrorException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 335
    const/4 v8, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lorg/android/spdy/SpdyAgent;->createSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lorg/android/spdy/SessionCb;Lorg/android/spdy/SslCertcb;III)Lorg/android/spdy/SpdySession;

    move-result-object v0

    return-object v0
.end method

.method public createSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lorg/android/spdy/SessionCb;Lorg/android/spdy/SslCertcb;III)Lorg/android/spdy/SpdySession;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/android/spdy/SpdyErrorException;
        }
    .end annotation

    .prologue
    .line 359
    if-nez p1, :cond_0

    .line 360
    new-instance v2, Lorg/android/spdy/SpdyErrorException;

    const-string v3, "SPDY_JNI_ERR_INVALID_PARAM"

    const/16 v4, -0x44e

    invoke-direct {v2, v3, v4}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 364
    :cond_0
    const-string v2, "/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 365
    const/4 v3, 0x0

    aget-object v3, v2, v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 366
    const-string v3, "0.0.0.0"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    .line 367
    const/16 v17, 0x0

    .line 368
    array-length v3, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 369
    const/4 v3, 0x1

    aget-object v2, v2, v3

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 370
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    .line 371
    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-char v0, v2

    move/from16 v17, v0

    move-object/from16 v7, p1

    .line 375
    :goto_0
    invoke-direct/range {p0 .. p0}, Lorg/android/spdy/SpdyAgent;->agentIsOpen()V

    .line 377
    const/4 v3, 0x0

    .line 378
    sget-object v2, Lorg/android/spdy/SpdyAgent;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 380
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/android/spdy/SpdyAgent;->sessionMgr:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/android/spdy/SpdySession;

    .line 381
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/android/spdy/SpdyAgent;->sessionMgr:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    const/16 v5, 0x32

    if-lt v4, v5, :cond_1

    .line 382
    const/4 v3, 0x1

    .line 385
    :cond_1
    sget-object v4, Lorg/android/spdy/SpdyAgent;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 387
    if-eqz v3, :cond_3

    .line 388
    new-instance v2, Lorg/android/spdy/SpdyErrorException;

    const-string v3, "SPDY_SESSION_EXCEED_MAXED: session count exceed max"

    const/16 v4, -0x451

    invoke-direct {v2, v3, v4}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 373
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/0.0.0.0:0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 385
    :catchall_0
    move-exception v2

    sget-object v3, Lorg/android/spdy/SpdyAgent;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2

    .line 392
    :cond_3
    if-eqz v2, :cond_4

    .line 394
    invoke-virtual {v2}, Lorg/android/spdy/SpdySession;->increRefCount()V

    .line 454
    :goto_1
    return-object v2

    .line 399
    :cond_4
    sget-object v2, Lorg/android/spdy/SpdyAgent;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 401
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/android/spdy/SpdyAgent;->sessionMgr:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/android/spdy/SpdySession;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 405
    :goto_2
    if-eqz v2, :cond_5

    .line 406
    sget-object v3, Lorg/android/spdy/SpdyAgent;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 407
    invoke-virtual {v2}, Lorg/android/spdy/SpdySession;->increRefCount()V

    goto :goto_1

    .line 402
    :catch_0
    move-exception v2

    .line 403
    const/4 v2, 0x0

    goto :goto_2

    .line 411
    :cond_5
    :try_start_2
    new-instance v3, Lorg/android/spdy/SpdySession;

    const-wide/16 v4, 0x0

    move-object/from16 v6, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p4

    move/from16 v10, p6

    move/from16 v11, p7

    move-object/from16 v12, p3

    invoke-direct/range {v3 .. v12}, Lorg/android/spdy/SpdySession;-><init>(JLorg/android/spdy/SpdyAgent;Ljava/lang/String;Ljava/lang/String;Lorg/android/spdy/SessionCb;IILjava/lang/Object;)V

    .line 413
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/android/spdy/SpdyAgent;->getDomainHashIndex(Ljava/lang/String;)I

    move-result v13

    .line 414
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/android/spdy/SpdyAgent;->proxyUsername:Ljava/lang/String;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/android/spdy/SpdyAgent;->proxyPassword:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 415
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/android/spdy/SpdyAgent;->agentNativePtr:J

    const/4 v2, 0x0

    aget-object v2, v15, v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    const/4 v2, 0x1

    aget-object v2, v15, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-char v15, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/android/spdy/SpdyAgent;->proxyUsername:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/android/spdy/SpdyAgent;->proxyPassword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v9, p0

    move-object v12, v3

    move-object/from16 v20, p3

    move/from16 v21, p6

    move/from16 v22, p7

    move/from16 v23, p8

    invoke-direct/range {v9 .. v23}, Lorg/android/spdy/SpdyAgent;->createSessionN(JLorg/android/spdy/SpdySession;I[BC[BC[B[BLjava/lang/Object;III)J

    move-result-wide v8

    .line 428
    :goto_3
    const-string v2, "tnet-jni"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " create new session: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    const-wide/16 v4, 0x1

    and-long/2addr v4, v8

    const-wide/16 v10, 0x1

    cmp-long v2, v4, v10

    if-nez v2, :cond_7

    .line 436
    const-wide/16 v4, 0x0

    .line 437
    const/4 v2, 0x1

    shr-long/2addr v8, v2

    long-to-int v2, v8

    .line 442
    :goto_4
    const-wide/16 v8, 0x0

    cmp-long v6, v4, v8

    if-eqz v6, :cond_8

    .line 444
    invoke-virtual {v3, v4, v5}, Lorg/android/spdy/SpdySession;->setSessionNativePtr(J)V

    .line 445
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/android/spdy/SpdyAgent;->sessionMgr:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/android/spdy/SpdyAgent;->sessionQueue:Ljava/util/LinkedList;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 452
    :goto_5
    sget-object v2, Lorg/android/spdy/SpdyAgent;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v2, v3

    .line 454
    goto/16 :goto_1

    .line 421
    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/android/spdy/SpdyAgent;->agentNativePtr:J

    const/4 v2, 0x0

    aget-object v2, v15, v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    const/4 v2, 0x1

    aget-object v2, v15, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-char v15, v2

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v9, p0

    move-object v12, v3

    move-object/from16 v20, p3

    move/from16 v21, p6

    move/from16 v22, p7

    move/from16 v23, p8

    invoke-direct/range {v9 .. v23}, Lorg/android/spdy/SpdyAgent;->createSessionN(JLorg/android/spdy/SpdySession;I[BC[BC[B[BLjava/lang/Object;III)J

    move-result-wide v8

    goto/16 :goto_3

    .line 440
    :cond_7
    const/4 v2, 0x0

    move-wide v4, v8

    goto :goto_4

    .line 448
    :cond_8
    if-eqz v2, :cond_9

    new-instance v3, Lorg/android/spdy/SpdyErrorException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "create session error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 452
    :catchall_1
    move-exception v2

    sget-object v3, Lorg/android/spdy/SpdyAgent;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2

    .line 449
    :cond_9
    const/4 v3, 0x0

    goto :goto_5
.end method

.method public createSession(Lorg/android/spdy/SessionInfo;)Lorg/android/spdy/SpdySession;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/android/spdy/SpdyErrorException;
        }
    .end annotation

    .prologue
    .line 331
    invoke-virtual {p1}, Lorg/android/spdy/SessionInfo;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/android/spdy/SessionInfo;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/android/spdy/SessionInfo;->getSessonUserData()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lorg/android/spdy/SessionInfo;->getSessionCb()Lorg/android/spdy/SessionCb;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p1}, Lorg/android/spdy/SessionInfo;->getMode()I

    move-result v6

    invoke-virtual {p1}, Lorg/android/spdy/SessionInfo;->getPubKeySeqNum()I

    move-result v7

    invoke-virtual {p1}, Lorg/android/spdy/SessionInfo;->getConnectionTimeoutMs()I

    move-result v8

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lorg/android/spdy/SpdyAgent;->createSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lorg/android/spdy/SessionCb;Lorg/android/spdy/SslCertcb;III)Lorg/android/spdy/SpdySession;

    move-result-object v0

    return-object v0
.end method

.method public getAllSession()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/android/spdy/SpdySession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 933
    iget-object v0, p0, Lorg/android/spdy/SpdyAgent;->sessionMgr:Ljava/util/HashMap;

    return-object v0
.end method

.method public logFileClose()V
    .locals 1

    .prologue
    .line 954
    sget-boolean v0, Lorg/android/spdy/SpdyAgent;->loadSucc:Z

    if-eqz v0, :cond_0

    .line 955
    invoke-direct {p0}, Lorg/android/spdy/SpdyAgent;->logFileFlushN()V

    .line 956
    invoke-direct {p0}, Lorg/android/spdy/SpdyAgent;->logFileCloseN()V

    .line 958
    :cond_0
    return-void
.end method

.method public logFileFlush()V
    .locals 1

    .prologue
    .line 948
    sget-boolean v0, Lorg/android/spdy/SpdyAgent;->loadSucc:Z

    if-eqz v0, :cond_0

    .line 949
    invoke-direct {p0}, Lorg/android/spdy/SpdyAgent;->logFileFlushN()V

    .line 951
    :cond_0
    return-void
.end method

.method removeSession(Lorg/android/spdy/SpdySession;)V
    .locals 2

    .prologue
    .line 592
    sget-object v0, Lorg/android/spdy/SpdyAgent;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 594
    :try_start_0
    iget-object v0, p0, Lorg/android/spdy/SpdyAgent;->sessionQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 596
    sget-object v0, Lorg/android/spdy/SpdyAgent;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 598
    return-void

    .line 596
    :catchall_0
    move-exception v0

    sget-object v1, Lorg/android/spdy/SpdyAgent;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public setAccsSslCallback(Lorg/android/spdy/AccsSSLCallback;)V
    .locals 3

    .prologue
    .line 675
    const-string v0, "tnet-jni"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setAccsSslCallback] - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    iput-object p1, p0, Lorg/android/spdy/SpdyAgent;->accsSSLCallback:Lorg/android/spdy/AccsSSLCallback;

    .line 677
    return-void
.end method

.method public setConnectTimeOut(I)I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 664
    const/4 v0, 0x0

    .line 665
    invoke-direct {p0}, Lorg/android/spdy/SpdyAgent;->agentIsOpen()V

    .line 667
    :try_start_0
    iget-wide v2, p0, Lorg/android/spdy/SpdyAgent;->agentNativePtr:J

    invoke-direct {p0, v2, v3, p1}, Lorg/android/spdy/SpdyAgent;->setConTimeout(JI)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 671
    :goto_0
    return v0

    .line 668
    :catch_0
    move-exception v1

    .line 669
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    goto :goto_0
.end method

.method public setProxyUsernamePassword(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lorg/android/spdy/SpdyAgent;->proxyUsername:Ljava/lang/String;

    .line 184
    iput-object p2, p0, Lorg/android/spdy/SpdyAgent;->proxyPassword:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public setSessionKind(Lorg/android/spdy/SpdySessionKind;)I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 649
    const/4 v0, -0x1

    .line 650
    invoke-direct {p0}, Lorg/android/spdy/SpdyAgent;->agentIsOpen()V

    .line 652
    :try_start_0
    iget-wide v2, p0, Lorg/android/spdy/SpdyAgent;->agentNativePtr:J

    invoke-virtual {p1}, Lorg/android/spdy/SpdySessionKind;->getint()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lorg/android/spdy/SpdyAgent;->setSessionKind(JI)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 656
    :goto_0
    return v0

    .line 653
    :catch_0
    move-exception v1

    .line 654
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    goto :goto_0
.end method

.method public submitRequest(Lorg/android/spdy/SpdyRequest;Lorg/android/spdy/SpdyDataProvider;Ljava/lang/Object;Ljava/lang/Object;Lorg/android/spdy/Spdycb;Lorg/android/spdy/SessionCb;I)Lorg/android/spdy/SpdySession;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/android/spdy/SpdyErrorException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 539
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lorg/android/spdy/SpdyAgent;->submitRequest(Lorg/android/spdy/SpdyRequest;Lorg/android/spdy/SpdyDataProvider;Ljava/lang/Object;Ljava/lang/Object;Lorg/android/spdy/Spdycb;Lorg/android/spdy/SessionCb;Lorg/android/spdy/SslCertcb;I)Lorg/android/spdy/SpdySession;

    move-result-object v0

    return-object v0
.end method

.method public submitRequest(Lorg/android/spdy/SpdyRequest;Lorg/android/spdy/SpdyDataProvider;Ljava/lang/Object;Ljava/lang/Object;Lorg/android/spdy/Spdycb;Lorg/android/spdy/SessionCb;II)Lorg/android/spdy/SpdySession;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/android/spdy/SpdyErrorException;
        }
    .end annotation

    .prologue
    .line 507
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lorg/android/spdy/SpdyAgent;->submitRequest(Lorg/android/spdy/SpdyRequest;Lorg/android/spdy/SpdyDataProvider;Ljava/lang/Object;Ljava/lang/Object;Lorg/android/spdy/Spdycb;Lorg/android/spdy/SessionCb;Lorg/android/spdy/SslCertcb;II)Lorg/android/spdy/SpdySession;

    move-result-object v0

    return-object v0
.end method

.method public submitRequest(Lorg/android/spdy/SpdyRequest;Lorg/android/spdy/SpdyDataProvider;Ljava/lang/Object;Ljava/lang/Object;Lorg/android/spdy/Spdycb;Lorg/android/spdy/SessionCb;Lorg/android/spdy/SslCertcb;I)Lorg/android/spdy/SpdySession;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/android/spdy/SpdyErrorException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 489
    invoke-virtual {p1}, Lorg/android/spdy/SpdyRequest;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/android/spdy/SpdyRequest;->getDomain()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    invoke-virtual {p1}, Lorg/android/spdy/SpdyRequest;->getConnectionTimeoutMs()I

    move-result v8

    move-object v0, p0

    move-object v3, p3

    move-object v4, p6

    move-object/from16 v5, p7

    move/from16 v6, p8

    invoke-virtual/range {v0 .. v8}, Lorg/android/spdy/SpdyAgent;->createSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lorg/android/spdy/SessionCb;Lorg/android/spdy/SslCertcb;III)Lorg/android/spdy/SpdySession;

    move-result-object v0

    .line 490
    invoke-virtual {v0, p1, p2, p4, p5}, Lorg/android/spdy/SpdySession;->submitRequest(Lorg/android/spdy/SpdyRequest;Lorg/android/spdy/SpdyDataProvider;Ljava/lang/Object;Lorg/android/spdy/Spdycb;)I

    .line 491
    return-object v0
.end method

.method public submitRequest(Lorg/android/spdy/SpdyRequest;Lorg/android/spdy/SpdyDataProvider;Ljava/lang/Object;Ljava/lang/Object;Lorg/android/spdy/Spdycb;Lorg/android/spdy/SessionCb;Lorg/android/spdy/SslCertcb;II)Lorg/android/spdy/SpdySession;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/android/spdy/SpdyErrorException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 499
    invoke-virtual {p1}, Lorg/android/spdy/SpdyRequest;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/android/spdy/SpdyRequest;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/android/spdy/SpdyRequest;->getConnectionTimeoutMs()I

    move-result v8

    move-object v0, p0

    move-object v3, p3

    move-object v4, p6

    move-object/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    invoke-virtual/range {v0 .. v8}, Lorg/android/spdy/SpdyAgent;->createSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lorg/android/spdy/SessionCb;Lorg/android/spdy/SslCertcb;III)Lorg/android/spdy/SpdySession;

    move-result-object v0

    .line 500
    invoke-virtual {v0, p1, p2, p4, p5}, Lorg/android/spdy/SpdySession;->submitRequest(Lorg/android/spdy/SpdyRequest;Lorg/android/spdy/SpdyDataProvider;Ljava/lang/Object;Lorg/android/spdy/Spdycb;)I

    .line 501
    return-object v0
.end method

.method public switchAccsServer(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 971
    return-void
.end method
