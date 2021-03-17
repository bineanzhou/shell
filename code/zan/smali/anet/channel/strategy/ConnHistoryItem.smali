.class Lanet/channel/strategy/ConnHistoryItem;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field a:B

.field b:J

.field c:J


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-byte v0, p0, Lanet/channel/strategy/ConnHistoryItem;->a:B

    .line 17
    iput-wide v2, p0, Lanet/channel/strategy/ConnHistoryItem;->b:J

    .line 18
    iput-wide v2, p0, Lanet/channel/strategy/ConnHistoryItem;->c:J

    return-void
.end method


# virtual methods
.method a()I
    .locals 3

    .prologue
    .line 34
    const/4 v1, 0x0

    .line 35
    iget-byte v0, p0, Lanet/channel/strategy/ConnHistoryItem;->a:B

    :goto_0
    if-lez v0, :cond_0

    .line 36
    and-int/lit8 v2, v0, 0x1

    add-int/2addr v1, v2

    .line 35
    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38
    :cond_0
    return v1
.end method

.method a(Z)V
    .locals 6

    .prologue
    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 22
    if-eqz p1, :cond_1

    iget-wide v0, p0, Lanet/channel/strategy/ConnHistoryItem;->b:J

    .line 23
    :goto_0
    sub-long v0, v2, v0

    const-wide/16 v4, 0x2710

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    .line 24
    iget-byte v0, p0, Lanet/channel/strategy/ConnHistoryItem;->a:B

    shl-int/lit8 v1, v0, 0x1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_1
    or-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lanet/channel/strategy/ConnHistoryItem;->a:B

    .line 25
    if-eqz p1, :cond_3

    .line 26
    iput-wide v2, p0, Lanet/channel/strategy/ConnHistoryItem;->b:J

    .line 31
    :cond_0
    :goto_2
    return-void

    .line 22
    :cond_1
    iget-wide v0, p0, Lanet/channel/strategy/ConnHistoryItem;->c:J

    goto :goto_0

    .line 24
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 28
    :cond_3
    iput-wide v2, p0, Lanet/channel/strategy/ConnHistoryItem;->c:J

    goto :goto_2
.end method

.method b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 43
    iget-byte v1, p0, Lanet/channel/strategy/ConnHistoryItem;->a:B

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0}, Lanet/channel/strategy/ConnHistoryItem;->a()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 51
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lanet/channel/strategy/ConnHistoryItem;->c:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x493e0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method d()Z
    .locals 4

    .prologue
    .line 55
    iget-wide v0, p0, Lanet/channel/strategy/ConnHistoryItem;->b:J

    iget-wide v2, p0, Lanet/channel/strategy/ConnHistoryItem;->c:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lanet/channel/strategy/ConnHistoryItem;->b:J

    .line 56
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 55
    :cond_0
    iget-wide v0, p0, Lanet/channel/strategy/ConnHistoryItem;->c:J

    goto :goto_0

    .line 56
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
