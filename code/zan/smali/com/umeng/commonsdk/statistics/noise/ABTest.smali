.class public Lcom/umeng/commonsdk/statistics/noise/ABTest;
.super Ljava/lang/Object;
.source "ABTest.java"

# interfaces
.implements Lcom/umeng/commonsdk/statistics/internal/d;


# static fields
.field private static instance:Lcom/umeng/commonsdk/statistics/noise/ABTest;


# instance fields
.field private context:Landroid/content/Context;

.field private isInTest:Z

.field private mGroup:I

.field private mInterval:I

.field private mPoli:Ljava/lang/String;

.field private mPolicy:I

.field private mProb07:F

.field private mProb13:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->instance:Lcom/umeng/commonsdk/statistics/noise/ABTest;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest:Z

    .line 20
    iput v1, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mPolicy:I

    .line 21
    iput v1, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mInterval:I

    .line 22
    iput v1, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mGroup:I

    .line 23
    iput v2, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mProb13:F

    .line 24
    iput v2, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mProb07:F

    .line 25
    iput-object v3, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mPoli:Ljava/lang/String;

    .line 27
    iput-object v3, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->context:Landroid/content/Context;

    .line 45
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->context:Landroid/content/Context;

    .line 46
    invoke-virtual {p0, p2, p3}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->onExperimentChanged(Ljava/lang/String;I)V

    .line 47
    return-void
.end method

.method public static declared-synchronized getService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/noise/ABTest;
    .locals 4

    .prologue
    .line 32
    const-class v1, Lcom/umeng/commonsdk/statistics/noise/ABTest;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->instance:Lcom/umeng/commonsdk/statistics/noise/ABTest;

    if-nez v0, :cond_0

    .line 36
    const-string v0, "client_test"

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    const-string v2, "test_report_interval"

    const-string v3, "0"

    invoke-static {p0, v2, v3}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 38
    new-instance v3, Lcom/umeng/commonsdk/statistics/noise/ABTest;

    invoke-direct {v3, p0, v0, v2}, Lcom/umeng/commonsdk/statistics/noise/ABTest;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    sput-object v3, Lcom/umeng/commonsdk/statistics/noise/ABTest;->instance:Lcom/umeng/commonsdk/statistics/noise/ABTest;

    .line 41
    :cond_0
    sget-object v0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->instance:Lcom/umeng/commonsdk/statistics/noise/ABTest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private parseFIXED(Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v1, -0x1

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 180
    if-nez p1, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    const-string v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 184
    const/4 v0, 0x0

    .line 185
    const/4 v2, 0x2

    aget-object v2, v4, v2

    const-string v5, "SIG13"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 186
    const/4 v0, 0x3

    aget-object v0, v4, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 188
    :cond_2
    iget v2, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mProb13:F

    cmpl-float v0, v2, v0

    if-lez v0, :cond_3

    .line 189
    iput-boolean v3, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest:Z

    goto :goto_0

    .line 194
    :cond_3
    aget-object v0, v4, v3

    const-string v2, "FIXED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 195
    aget-object v0, v4, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 198
    :goto_1
    const/4 v2, 0x0

    .line 199
    aget-object v5, v4, v8

    const-string v6, "RPT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 200
    const-string v2, "RPT"

    iput-object v2, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mPoli:Ljava/lang/String;

    .line 201
    aget-object v2, v4, v9

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 202
    array-length v2, v5

    new-array v4, v2, [I

    move v2, v3

    .line 203
    :goto_2
    array-length v6, v5

    if-ge v2, v6, :cond_4

    .line 204
    aget-object v6, v5, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v4, v2

    .line 203
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    move-object v2, v4

    .line 219
    :cond_5
    :goto_3
    if-eq v0, v1, :cond_7

    .line 220
    iput-boolean v7, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest:Z

    .line 221
    iput v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mGroup:I

    .line 222
    if-eqz v2, :cond_0

    .line 223
    add-int/lit8 v0, v0, -0x1

    aget v0, v2, v0

    iput v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mPolicy:I

    goto :goto_0

    .line 206
    :cond_6
    aget-object v5, v4, v8

    const-string v6, "DOM"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 207
    const-string v5, "DOM"

    iput-object v5, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mPoli:Ljava/lang/String;

    .line 208
    iput-boolean v7, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest:Z

    .line 210
    const/4 v5, 0x5

    :try_start_0
    aget-object v4, v4, v5

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 211
    array-length v4, v5

    new-array v2, v4, [I

    move v4, v3

    .line 212
    :goto_4
    array-length v6, v5

    if-ge v4, v6, :cond_5

    .line 213
    aget-object v6, v5, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v2, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 226
    :cond_7
    iput-boolean v3, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest:Z

    goto/16 :goto_0

    .line 215
    :catch_0
    move-exception v4

    goto :goto_3

    :cond_8
    move v0, v1

    goto :goto_1
.end method

.method private parseSig7(Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v5, -0x1

    const/4 v1, 0x0

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 112
    if-nez p1, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    const-string v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 117
    const/4 v0, 0x2

    aget-object v0, v4, v0

    const-string v3, "SIG13"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 118
    const/4 v0, 0x3

    aget-object v0, v4, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 120
    :goto_1
    iget v3, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mProb13:F

    cmpl-float v0, v3, v0

    if-lez v0, :cond_2

    .line 121
    iput-boolean v2, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest:Z

    goto :goto_0

    .line 125
    :cond_2
    const/4 v0, 0x0

    .line 126
    aget-object v3, v4, v2

    const-string v6, "SIG7"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 127
    aget-object v0, v4, v8

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 128
    array-length v0, v6

    new-array v3, v0, [F

    move v0, v2

    .line 129
    :goto_2
    array-length v7, v6

    if-ge v0, v7, :cond_3

    .line 130
    aget-object v7, v6, v0

    invoke-static {v7}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    aput v7, v3, v0

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move-object v0, v3

    .line 134
    :cond_4
    const/4 v3, 0x0

    .line 135
    aget-object v6, v4, v9

    const-string v7, "RPT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 136
    const-string v3, "RPT"

    iput-object v3, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mPoli:Ljava/lang/String;

    .line 137
    const/4 v3, 0x5

    aget-object v3, v4, v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 138
    array-length v3, v6

    new-array v4, v3, [I

    move v3, v2

    .line 139
    :goto_3
    array-length v7, v6

    if-ge v3, v7, :cond_5

    .line 140
    aget-object v7, v6, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v4, v3

    .line 139
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    move-object v3, v4

    :cond_6
    :goto_4
    move v4, v1

    move v1, v2

    .line 157
    :goto_5
    array-length v6, v0

    if-ge v1, v6, :cond_a

    .line 158
    aget v6, v0, v1

    add-float/2addr v4, v6

    .line 159
    iget v6, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mProb07:F

    cmpg-float v6, v6, v4

    if-gez v6, :cond_8

    .line 165
    :goto_6
    if-eq v1, v5, :cond_9

    .line 166
    iput-boolean v8, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest:Z

    .line 167
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mGroup:I

    .line 168
    if-eqz v3, :cond_0

    .line 169
    aget v0, v3, v1

    iput v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mPolicy:I

    goto/16 :goto_0

    .line 142
    :cond_7
    aget-object v6, v4, v9

    const-string v7, "DOM"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 143
    iput-boolean v8, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest:Z

    .line 144
    const-string v6, "DOM"

    iput-object v6, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mPoli:Ljava/lang/String;

    .line 146
    const/4 v6, 0x5

    :try_start_0
    aget-object v4, v4, v6

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 147
    array-length v4, v6

    new-array v3, v4, [I

    move v4, v2

    .line 148
    :goto_7
    array-length v7, v6

    if-ge v4, v7, :cond_6

    .line 149
    aget-object v7, v6, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v3, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 157
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 172
    :cond_9
    iput-boolean v2, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest:Z

    goto/16 :goto_0

    .line 151
    :catch_0
    move-exception v4

    goto :goto_4

    :cond_a
    move v1, v5

    goto :goto_6

    :cond_b
    move v0, v1

    goto/16 :goto_1
.end method

.method private prob(Ljava/lang/String;I)F
    .locals 2

    .prologue
    .line 50
    mul-int/lit8 v0, p2, 0x2

    .line 51
    if-nez p1, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 56
    :goto_0
    return v0

    .line 53
    :cond_0
    add-int/lit8 v1, v0, 0x5

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    .line 54
    const/high16 v1, 0x49800000    # 1048576.0f

    .line 56
    div-float/2addr v0, v1

    goto :goto_0
.end method

.method public static validate(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 82
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v0

    .line 86
    :cond_1
    const-string v2, "\\|"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 87
    array-length v3, v2

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    .line 91
    aget-object v3, v2, v0

    const-string v4, "SIG7"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 92
    aget-object v3, v2, v1

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    .line 93
    aget-object v4, v2, v6

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    .line 94
    if-ne v3, v4, :cond_2

    move v0, v1

    .line 95
    goto :goto_0

    .line 99
    :cond_2
    aget-object v3, v2, v0

    const-string v4, "FIXED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 100
    aget-object v3, v2, v6

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    .line 101
    aget-object v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 102
    if-lt v3, v2, :cond_0

    if-lt v2, v1, :cond_0

    move v0, v1

    .line 103
    goto :goto_0
.end method


# virtual methods
.method public getGroup()I
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mGroup:I

    return v0
.end method

.method public getGroupInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest:Z

    if-nez v0, :cond_0

    .line 248
    const-string v0, "error"

    .line 249
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mGroup:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTestInterval()I
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mInterval:I

    return v0
.end method

.method public getTestName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mPoli:Ljava/lang/String;

    return-object v0
.end method

.method public getTestPolicy()I
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mPolicy:I

    return v0
.end method

.method public isInTest()Z
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest:Z

    return v0
.end method

.method public onExperimentChanged(Ljava/lang/String;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 61
    iput p2, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mInterval:I

    .line 62
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->getSignature(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 64
    :cond_0
    iput-boolean v2, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest:Z

    .line 79
    :cond_1
    :goto_0
    return-void

    .line 68
    :cond_2
    const/16 v1, 0xc

    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->prob(Ljava/lang/String;I)F

    move-result v1

    iput v1, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mProb13:F

    .line 69
    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->prob(Ljava/lang/String;I)F

    move-result v0

    iput v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mProb07:F

    .line 70
    const-string v0, "SIG7"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 71
    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->parseSig7(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    iput-boolean v2, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest:Z

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "v:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 72
    :cond_3
    :try_start_1
    const-string v0, "FIXED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->parseFIXED(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onImprintChanged(Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;)V
    .locals 3

    .prologue
    .line 258
    const-string v0, "client_test"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 259
    const-string v1, "test_report_interval"

    const-string v2, "0"

    invoke-virtual {p1, v1, v2}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 260
    invoke-virtual {p0, v0, v1}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->onExperimentChanged(Ljava/lang/String;I)V

    .line 261
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    const-string v1, " p13:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    iget v1, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mProb13:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 267
    const-string v1, " p07:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    iget v1, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mProb07:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 269
    const-string v1, " policy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    iget v1, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mPolicy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 271
    const-string v1, " interval:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    iget v1, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
