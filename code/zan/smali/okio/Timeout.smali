.class public Lokio/Timeout;
.super Ljava/lang/Object;
.source "Timeout.java"


# static fields
.field public static final b:Lokio/Timeout;


# instance fields
.field private a:Z

.field private c:J

.field private d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lokio/Timeout$1;

    invoke-direct {v0}, Lokio/Timeout$1;-><init>()V

    sput-object v0, Lokio/Timeout;->b:Lokio/Timeout;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method


# virtual methods
.method public a(J)Lokio/Timeout;
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokio/Timeout;->a:Z

    .line 116
    iput-wide p1, p0, Lokio/Timeout;->c:J

    .line 117
    return-object p0
.end method

.method public a(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;
    .locals 3

    .prologue
    .line 82
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timeout < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unit == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lokio/Timeout;->d:J

    .line 85
    return-object p0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .prologue
    const-wide/32 v8, 0xf4240

    const-wide/16 v0, 0x0

    .line 192
    :try_start_0
    invoke-virtual {p0}, Lokio/Timeout;->d_()Z

    move-result v4

    .line 193
    invoke-virtual {p0}, Lokio/Timeout;->c_()J

    move-result-wide v2

    .line 195
    if-nez v4, :cond_1

    cmp-long v5, v2, v0

    if-nez v5, :cond_1

    .line 196
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V

    .line 227
    :cond_0
    return-void

    .line 202
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 203
    if-eqz v4, :cond_4

    cmp-long v5, v2, v0

    if-eqz v5, :cond_4

    .line 204
    invoke-virtual {p0}, Lokio/Timeout;->d()J

    move-result-wide v4

    sub-long/2addr v4, v6

    .line 205
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 214
    :cond_2
    :goto_0
    cmp-long v4, v2, v0

    if-lez v4, :cond_3

    .line 215
    const-wide/32 v0, 0xf4240

    div-long v0, v2, v0

    .line 216
    mul-long v4, v0, v8

    sub-long v4, v2, v4

    long-to-int v4, v4

    invoke-virtual {p1, v0, v1, v4}, Ljava/lang/Object;->wait(JI)V

    .line 217
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, v6

    .line 221
    :cond_3
    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 222
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "interrupted"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_4
    if-eqz v4, :cond_2

    .line 207
    :try_start_1
    invoke-virtual {p0}, Lokio/Timeout;->d()J
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v2

    sub-long/2addr v2, v6

    goto :goto_0
.end method

.method public final b(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;
    .locals 5

    .prologue
    .line 122
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duration <= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unit == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lokio/Timeout;->a(J)Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public c_()J
    .locals 2

    .prologue
    .line 90
    iget-wide v0, p0, Lokio/Timeout;->d:J

    return-wide v0
.end method

.method public d()J
    .locals 2

    .prologue
    .line 105
    iget-boolean v0, p0, Lokio/Timeout;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No deadline"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_0
    iget-wide v0, p0, Lokio/Timeout;->c:J

    return-wide v0
.end method

.method public d_()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lokio/Timeout;->a:Z

    return v0
.end method

.method public e_()Lokio/Timeout;
    .locals 2

    .prologue
    .line 129
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lokio/Timeout;->d:J

    .line 130
    return-object p0
.end method

.method public f()Lokio/Timeout;
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lokio/Timeout;->a:Z

    .line 136
    return-object p0
.end method

.method public g()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "thread interrupted"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_0
    iget-boolean v0, p0, Lokio/Timeout;->a:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lokio/Timeout;->c:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 150
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "deadline reached"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_1
    return-void
.end method
