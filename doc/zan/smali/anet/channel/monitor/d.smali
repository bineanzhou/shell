.class Lanet/channel/monitor/d;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:Lanet/channel/monitor/b;


# direct methods
.method constructor <init>(Lanet/channel/monitor/b;JJJ)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lanet/channel/monitor/d;->d:Lanet/channel/monitor/b;

    iput-wide p2, p0, Lanet/channel/monitor/d;->a:J

    iput-wide p4, p0, Lanet/channel/monitor/d;->b:J

    iput-wide p6, p0, Lanet/channel/monitor/d;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v0, 0x5

    const/4 v11, 0x3

    const/4 v10, 0x0

    const/4 v1, 0x1

    .line 92
    invoke-static {v1}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    const-string v2, "awcn.BandWidthSampler"

    const-string v3, "onDataReceived"

    const/4 v4, 0x0

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "mRequestStartTime"

    aput-object v6, v5, v10

    iget-wide v6, p0, Lanet/channel/monitor/d;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v1

    const-string v6, "mRequestFinishedTime"

    aput-object v6, v5, v12

    iget-wide v6, p0, Lanet/channel/monitor/d;->b:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v11

    const/4 v6, 0x4

    const-string v7, "mRequestDataSize"

    aput-object v7, v5, v6

    iget-wide v6, p0, Lanet/channel/monitor/d;->c:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v2, v3, v4, v5}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    :cond_0
    invoke-static {}, Lanet/channel/monitor/b;->f()Z

    move-result v2

    if-nez v2, :cond_2

    .line 172
    :cond_1
    :goto_0
    return-void

    .line 102
    :cond_2
    iget-wide v2, p0, Lanet/channel/monitor/d;->c:J

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    iget-wide v2, p0, Lanet/channel/monitor/d;->a:J

    iget-wide v4, p0, Lanet/channel/monitor/d;->b:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 106
    sget v2, Lanet/channel/monitor/b;->a:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lanet/channel/monitor/b;->a:I

    .line 107
    sget-wide v2, Lanet/channel/monitor/b;->e:J

    iget-wide v4, p0, Lanet/channel/monitor/d;->c:J

    add-long/2addr v2, v4

    sput-wide v2, Lanet/channel/monitor/b;->e:J

    .line 109
    sget v2, Lanet/channel/monitor/b;->a:I

    if-ne v2, v1, :cond_3

    .line 110
    iget-wide v2, p0, Lanet/channel/monitor/d;->b:J

    iget-wide v4, p0, Lanet/channel/monitor/d;->a:J

    sub-long/2addr v2, v4

    sput-wide v2, Lanet/channel/monitor/b;->d:J

    .line 113
    :cond_3
    sget v2, Lanet/channel/monitor/b;->a:I

    if-lt v2, v12, :cond_4

    sget v2, Lanet/channel/monitor/b;->a:I

    if-gt v2, v11, :cond_4

    .line 115
    iget-wide v2, p0, Lanet/channel/monitor/d;->a:J

    sget-wide v4, Lanet/channel/monitor/b;->c:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_c

    .line 116
    sget-wide v2, Lanet/channel/monitor/b;->d:J

    iget-wide v4, p0, Lanet/channel/monitor/d;->b:J

    iget-wide v6, p0, Lanet/channel/monitor/d;->a:J

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    sput-wide v2, Lanet/channel/monitor/b;->d:J

    .line 129
    :cond_4
    :goto_1
    iget-wide v2, p0, Lanet/channel/monitor/d;->a:J

    sput-wide v2, Lanet/channel/monitor/b;->b:J

    .line 130
    iget-wide v2, p0, Lanet/channel/monitor/d;->b:J

    sput-wide v2, Lanet/channel/monitor/b;->c:J

    .line 132
    sget v2, Lanet/channel/monitor/b;->a:I

    if-ne v2, v11, :cond_1

    .line 133
    iget-object v2, p0, Lanet/channel/monitor/d;->d:Lanet/channel/monitor/b;

    invoke-static {v2}, Lanet/channel/monitor/b;->a(Lanet/channel/monitor/b;)Lanet/channel/monitor/e;

    move-result-object v2

    sget-wide v4, Lanet/channel/monitor/b;->e:J

    long-to-double v4, v4

    sget-wide v6, Lanet/channel/monitor/b;->d:J

    long-to-double v6, v6

    invoke-virtual {v2, v4, v5, v6, v7}, Lanet/channel/monitor/e;->a(DD)D

    move-result-wide v2

    double-to-long v2, v2

    long-to-double v2, v2

    sput-wide v2, Lanet/channel/monitor/b;->i:D

    .line 135
    sget-wide v2, Lanet/channel/monitor/b;->f:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, Lanet/channel/monitor/b;->f:J

    .line 136
    iget-object v2, p0, Lanet/channel/monitor/d;->d:Lanet/channel/monitor/b;

    invoke-static {v2}, Lanet/channel/monitor/b;->b(Lanet/channel/monitor/b;)I

    .line 139
    sget-wide v2, Lanet/channel/monitor/b;->f:J

    const-wide/16 v4, 0x1e

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    .line 140
    iget-object v2, p0, Lanet/channel/monitor/d;->d:Lanet/channel/monitor/b;

    invoke-static {v2}, Lanet/channel/monitor/b;->a(Lanet/channel/monitor/b;)Lanet/channel/monitor/e;

    move-result-object v2

    invoke-virtual {v2}, Lanet/channel/monitor/e;->a()V

    .line 141
    const-wide/16 v2, 0x3

    sput-wide v2, Lanet/channel/monitor/b;->f:J

    .line 145
    :cond_5
    sget-wide v2, Lanet/channel/monitor/b;->i:D

    const-wide v4, 0x3fe5c28f5c28f5c3L    # 0.68

    mul-double/2addr v2, v4

    sget-wide v4, Lanet/channel/monitor/b;->h:D

    const-wide v6, 0x3fd147ae147ae148L    # 0.27

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    sget-wide v4, Lanet/channel/monitor/b;->g:D

    const-wide v6, 0x3fa999999999999aL    # 0.05

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    .line 147
    sget-wide v4, Lanet/channel/monitor/b;->h:D

    sput-wide v4, Lanet/channel/monitor/b;->g:D

    .line 148
    sget-wide v4, Lanet/channel/monitor/b;->i:D

    sput-wide v4, Lanet/channel/monitor/b;->h:D

    .line 151
    sget-wide v4, Lanet/channel/monitor/b;->i:D

    const-wide v6, 0x3fe4cccccccccccdL    # 0.65

    sget-wide v8, Lanet/channel/monitor/b;->g:D

    mul-double/2addr v6, v8

    cmpg-double v4, v4, v6

    if-ltz v4, :cond_6

    sget-wide v4, Lanet/channel/monitor/b;->i:D

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    sget-wide v8, Lanet/channel/monitor/b;->g:D

    mul-double/2addr v6, v8

    cmpl-double v4, v4, v6

    if-lez v4, :cond_7

    .line 152
    :cond_6
    sput-wide v2, Lanet/channel/monitor/b;->i:D

    .line 155
    :cond_7
    invoke-static {v1}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 156
    const-string v2, "awcn.BandWidthSampler"

    const-string v3, "NetworkSpeed"

    const/4 v4, 0x0

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "mKalmanDataSize"

    aput-object v6, v5, v10

    sget-wide v6, Lanet/channel/monitor/b;->e:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v1

    const-string v6, "mKalmanTimeUsed"

    aput-object v6, v5, v12

    sget-wide v6, Lanet/channel/monitor/b;->d:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v11

    const/4 v6, 0x4

    const-string v7, "speed"

    aput-object v7, v5, v6

    sget-wide v6, Lanet/channel/monitor/b;->i:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v6, 0x6

    const-string v7, "mSpeedKalmanCount"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    sget-wide v8, Lanet/channel/monitor/b;->f:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4, v5}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    :cond_8
    iget-object v2, p0, Lanet/channel/monitor/d;->d:Lanet/channel/monitor/b;

    invoke-static {v2}, Lanet/channel/monitor/b;->c(Lanet/channel/monitor/b;)I

    move-result v2

    if-gt v2, v0, :cond_9

    sget-wide v2, Lanet/channel/monitor/b;->f:J

    const-wide/16 v4, 0x2

    cmp-long v2, v2, v4

    if-nez v2, :cond_b

    .line 163
    :cond_9
    invoke-static {}, Lanet/channel/monitor/a;->a()Lanet/channel/monitor/a;

    move-result-object v2

    sget-wide v4, Lanet/channel/monitor/b;->i:D

    invoke-virtual {v2, v4, v5}, Lanet/channel/monitor/a;->a(D)V

    .line 164
    iget-object v2, p0, Lanet/channel/monitor/d;->d:Lanet/channel/monitor/b;

    invoke-static {v2, v10}, Lanet/channel/monitor/b;->a(Lanet/channel/monitor/b;I)I

    .line 165
    iget-object v2, p0, Lanet/channel/monitor/d;->d:Lanet/channel/monitor/b;

    sget-wide v4, Lanet/channel/monitor/b;->i:D

    sget-wide v6, Lanet/channel/monitor/b;->j:D

    cmpg-double v3, v4, v6

    if-gez v3, :cond_a

    move v0, v1

    :cond_a
    invoke-static {v2, v0}, Lanet/channel/monitor/b;->b(Lanet/channel/monitor/b;I)I

    .line 166
    const-string v0, "awcn.BandWidthSampler"

    const-string v2, "NetworkSpeed notification!"

    const/4 v3, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "Send Network quality notification."

    aput-object v4, v1, v10

    invoke-static {v0, v2, v3, v1}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    :cond_b
    const-wide/16 v0, 0x0

    sput-wide v0, Lanet/channel/monitor/b;->d:J

    .line 169
    const-wide/16 v0, 0x0

    sput-wide v0, Lanet/channel/monitor/b;->e:J

    .line 170
    sput v10, Lanet/channel/monitor/b;->a:I

    goto/16 :goto_0

    .line 119
    :cond_c
    iget-wide v2, p0, Lanet/channel/monitor/d;->a:J

    sget-wide v4, Lanet/channel/monitor/b;->c:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_4

    iget-wide v2, p0, Lanet/channel/monitor/d;->b:J

    sget-wide v4, Lanet/channel/monitor/b;->c:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_4

    .line 120
    sget-wide v2, Lanet/channel/monitor/b;->d:J

    iget-wide v4, p0, Lanet/channel/monitor/d;->b:J

    iget-wide v6, p0, Lanet/channel/monitor/d;->a:J

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    sput-wide v2, Lanet/channel/monitor/b;->d:J

    .line 121
    sget-wide v2, Lanet/channel/monitor/b;->d:J

    sget-wide v4, Lanet/channel/monitor/b;->c:J

    iget-wide v6, p0, Lanet/channel/monitor/d;->a:J

    sub-long/2addr v4, v6

    sub-long/2addr v2, v4

    sput-wide v2, Lanet/channel/monitor/b;->d:J

    goto/16 :goto_1
.end method
