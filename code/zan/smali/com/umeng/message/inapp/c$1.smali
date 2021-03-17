.class Lcom/umeng/message/inapp/c$1;
.super Landroid/os/Handler;
.source "UmengCountDownTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/message/inapp/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/message/inapp/c;


# direct methods
.method constructor <init>(Lcom/umeng/message/inapp/c;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/umeng/message/inapp/c$1;->a:Lcom/umeng/message/inapp/c;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    .line 105
    iget-object v2, p0, Lcom/umeng/message/inapp/c$1;->a:Lcom/umeng/message/inapp/c;

    monitor-enter v2

    .line 106
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_1

    .line 107
    iget-object v0, p0, Lcom/umeng/message/inapp/c$1;->a:Lcom/umeng/message/inapp/c;

    invoke-static {v0}, Lcom/umeng/message/inapp/c;->a(Lcom/umeng/message/inapp/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    monitor-exit v2

    .line 135
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/umeng/message/inapp/c$1;->a:Lcom/umeng/message/inapp/c;

    invoke-static {v0}, Lcom/umeng/message/inapp/c;->b(Lcom/umeng/message/inapp/c;)J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    .line 113
    cmp-long v3, v0, v6

    if-gtz v3, :cond_2

    .line 114
    iget-object v0, p0, Lcom/umeng/message/inapp/c$1;->a:Lcom/umeng/message/inapp/c;

    invoke-virtual {v0}, Lcom/umeng/message/inapp/c;->e()V

    .line 134
    :cond_1
    :goto_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 115
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/umeng/message/inapp/c$1;->a:Lcom/umeng/message/inapp/c;

    invoke-static {v3}, Lcom/umeng/message/inapp/c;->c(Lcom/umeng/message/inapp/c;)J

    move-result-wide v4

    cmp-long v3, v0, v4

    if-gez v3, :cond_3

    .line 116
    iget-object v3, p0, Lcom/umeng/message/inapp/c$1;->a:Lcom/umeng/message/inapp/c;

    invoke-virtual {v3, v0, v1}, Lcom/umeng/message/inapp/c;->a(J)V

    .line 117
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/umeng/message/inapp/c$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3, v0, v1}, Lcom/umeng/message/inapp/c$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 119
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 120
    iget-object v3, p0, Lcom/umeng/message/inapp/c$1;->a:Lcom/umeng/message/inapp/c;

    invoke-virtual {v3, v0, v1}, Lcom/umeng/message/inapp/c;->a(J)V

    .line 123
    iget-object v0, p0, Lcom/umeng/message/inapp/c$1;->a:Lcom/umeng/message/inapp/c;

    invoke-static {v0}, Lcom/umeng/message/inapp/c;->c(Lcom/umeng/message/inapp/c;)J

    move-result-wide v0

    add-long/2addr v0, v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    .line 127
    :goto_2
    cmp-long v3, v0, v6

    if-gez v3, :cond_4

    iget-object v3, p0, Lcom/umeng/message/inapp/c$1;->a:Lcom/umeng/message/inapp/c;

    invoke-static {v3}, Lcom/umeng/message/inapp/c;->c(Lcom/umeng/message/inapp/c;)J

    move-result-wide v4

    add-long/2addr v0, v4

    goto :goto_2

    .line 129
    :cond_4
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/umeng/message/inapp/c$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3, v0, v1}, Lcom/umeng/message/inapp/c$1;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
