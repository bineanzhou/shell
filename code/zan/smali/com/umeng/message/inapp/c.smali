.class abstract Lcom/umeng/message/inapp/c;
.super Ljava/lang/Object;
.source "UmengCountDownTimer.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final g:I = 0x1

.field private static final h:I = 0x2


# instance fields
.field private final b:J

.field private final c:J

.field private d:J

.field private e:J

.field private f:Z

.field private i:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/umeng/message/inapp/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/message/inapp/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/message/inapp/c;->f:Z

    .line 100
    new-instance v0, Lcom/umeng/message/inapp/c$1;

    invoke-direct {v0, p0}, Lcom/umeng/message/inapp/c$1;-><init>(Lcom/umeng/message/inapp/c;)V

    iput-object v0, p0, Lcom/umeng/message/inapp/c;->i:Landroid/os/Handler;

    .line 28
    iput-wide p1, p0, Lcom/umeng/message/inapp/c;->b:J

    .line 29
    iput-wide p3, p0, Lcom/umeng/message/inapp/c;->c:J

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/umeng/message/inapp/c;)Z
    .locals 1

    .prologue
    .line 11
    iget-boolean v0, p0, Lcom/umeng/message/inapp/c;->f:Z

    return v0
.end method

.method static synthetic b(Lcom/umeng/message/inapp/c;)J
    .locals 2

    .prologue
    .line 11
    iget-wide v0, p0, Lcom/umeng/message/inapp/c;->d:J

    return-wide v0
.end method

.method static synthetic c(Lcom/umeng/message/inapp/c;)J
    .locals 2

    .prologue
    .line 11
    iget-wide v0, p0, Lcom/umeng/message/inapp/c;->c:J

    return-wide v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    .prologue
    .line 36
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/umeng/message/inapp/c;->f:Z

    .line 37
    iget-object v0, p0, Lcom/umeng/message/inapp/c;->i:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    monitor-exit p0

    return-void

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract a(J)V
.end method

.method public final declared-synchronized b()Lcom/umeng/message/inapp/c;
    .locals 4

    .prologue
    .line 44
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/umeng/message/inapp/c;->f:Z

    .line 45
    iget-wide v0, p0, Lcom/umeng/message/inapp/c;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/umeng/message/inapp/c;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p0

    .line 51
    :goto_0
    monitor-exit p0

    return-object v0

    .line 49
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/umeng/message/inapp/c;->b:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/umeng/message/inapp/c;->d:J

    .line 50
    iget-object v0, p0, Lcom/umeng/message/inapp/c;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/umeng/message/inapp/c;->i:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, p0

    .line 51
    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()Lcom/umeng/message/inapp/c;
    .locals 4

    .prologue
    .line 58
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/umeng/message/inapp/c;->f:Z

    .line 59
    iget-wide v0, p0, Lcom/umeng/message/inapp/c;->d:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/umeng/message/inapp/c;->e:J

    .line 60
    iget-wide v0, p0, Lcom/umeng/message/inapp/c;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    move-object v0, p0

    .line 65
    :goto_0
    monitor-exit p0

    return-object v0

    .line 63
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/umeng/message/inapp/c;->i:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 64
    iget-object v0, p0, Lcom/umeng/message/inapp/c;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/umeng/message/inapp/c;->i:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, p0

    .line 65
    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()Lcom/umeng/message/inapp/c;
    .locals 4

    .prologue
    .line 72
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/umeng/message/inapp/c;->f:Z

    .line 73
    iget-wide v0, p0, Lcom/umeng/message/inapp/c;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    move-object v0, p0

    .line 79
    :goto_0
    monitor-exit p0

    return-object v0

    .line 76
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/umeng/message/inapp/c;->i:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 77
    iget-wide v0, p0, Lcom/umeng/message/inapp/c;->e:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/umeng/message/inapp/c;->d:J

    .line 78
    iget-object v0, p0, Lcom/umeng/message/inapp/c;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/umeng/message/inapp/c;->i:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, p0

    .line 79
    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract e()V
.end method
