.class public Lanet/channel/monitor/f;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field a:Z

.field protected b:J

.field private final c:D

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    iput-wide v0, p0, Lanet/channel/monitor/f;->c:D

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lanet/channel/monitor/f;->a:Z

    .line 9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lanet/channel/monitor/f;->d:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public a(D)Z
    .locals 3

    .prologue
    .line 34
    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    .line 35
    const/4 v0, 0x1

    .line 37
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final b()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 44
    iget-boolean v1, p0, Lanet/channel/monitor/f;->d:Z

    if-eqz v1, :cond_0

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lanet/channel/monitor/f;->b:J

    sub-long/2addr v2, v4

    invoke-virtual {p0}, Lanet/channel/monitor/f;->a()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 46
    iput-boolean v0, p0, Lanet/channel/monitor/f;->d:Z

    .line 52
    :cond_0
    :goto_0
    return v0

    .line 49
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
