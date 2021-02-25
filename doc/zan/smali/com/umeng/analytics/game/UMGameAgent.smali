.class public Lcom/umeng/analytics/game/UMGameAgent;
.super Lcom/umeng/analytics/MobclickAgent;
.source "UMGameAgent.java"


# static fields
.field private static final a:Ljava/lang/String; = "Input string is null or empty"

.field private static final b:Ljava/lang/String; = "Input string must be less than 64 chars"

.field private static final c:Ljava/lang/String; = "Input value type is negative"

.field private static final d:Ljava/lang/String; = "The int value for \'Pay Channels\' ranges between 1 ~ 99 "

.field private static final e:Lcom/umeng/analytics/game/b;

.field private static f:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/umeng/analytics/game/b;

    invoke-direct {v0}, Lcom/umeng/analytics/game/b;-><init>()V

    sput-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/umeng/analytics/MobclickAgent;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 275
    if-nez p0, :cond_1

    .line 281
    :cond_0
    :goto_0
    return v0

    .line 279
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 281
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static bonus(DI)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 238
    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    .line 239
    const-string v0, "Input value type is negative"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 240
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_15128"

    const-string v2, "\\|"

    invoke-interface {v0, v1, v3, v2}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 250
    :goto_0
    return-void

    .line 244
    :cond_0
    if-lez p2, :cond_1

    const/16 v0, 0x64

    if-lt p2, v0, :cond_2

    .line 245
    :cond_1
    const-string v0, "The int value for \'Pay Channels\' ranges between 1 ~ 99 "

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 246
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_15129"

    const-string v2, "\\|"

    invoke-interface {v0, v1, v3, v2}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 249
    :cond_2
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/b;

    invoke-virtual {v0, p0, p1, p2}, Lcom/umeng/analytics/game/b;->a(DI)V

    goto :goto_0
.end method

.method public static bonus(Ljava/lang/String;IDI)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 253
    invoke-static {p0}, Lcom/umeng/analytics/game/UMGameAgent;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    const-string v0, "Input string is null or empty"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 255
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_15130"

    const-string v2, "\\|"

    invoke-interface {v0, v1, v3, v2}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 272
    :goto_0
    return-void

    .line 259
    :cond_0
    if-ltz p1, :cond_1

    const-wide/16 v0, 0x0

    cmpg-double v0, p2, v0

    if-gez v0, :cond_2

    .line 260
    :cond_1
    const-string v0, "Input value type is negative"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 261
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_15131"

    const-string v2, "\\|"

    invoke-interface {v0, v1, v3, v2}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 265
    :cond_2
    if-lez p4, :cond_3

    const/16 v0, 0x64

    if-lt p4, v0, :cond_4

    .line 266
    :cond_3
    const-string v0, "The int value for \'Pay Channels\' ranges between 1 ~ 99 "

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 267
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_15132"

    const-string v2, "\\|"

    invoke-interface {v0, v1, v3, v2}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 271
    :cond_4
    sget-object v1, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/b;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/umeng/analytics/game/b;->a(Ljava/lang/String;IDI)V

    goto :goto_0
.end method

.method public static buy(Ljava/lang/String;ID)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 193
    invoke-static {p0}, Lcom/umeng/analytics/game/UMGameAgent;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    const-string v0, "Input string is null or empty"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 195
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_15124"

    const-string v2, "\\|"

    invoke-interface {v0, v1, v3, v2}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 206
    :goto_0
    return-void

    .line 199
    :cond_0
    if-ltz p1, :cond_1

    const-wide/16 v0, 0x0

    cmpg-double v0, p2, v0

    if-gez v0, :cond_2

    .line 200
    :cond_1
    const-string v0, "Input value type is negative"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 201
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_15125"

    const-string v2, "\\|"

    invoke-interface {v0, v1, v3, v2}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 205
    :cond_2
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/b;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/umeng/analytics/game/b;->a(Ljava/lang/String;ID)V

    goto :goto_0
.end method

.method public static exchange(DLjava/lang/String;DILjava/lang/String;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 172
    cmpg-double v0, p0, v2

    if-ltz v0, :cond_0

    cmpg-double v0, p3, v2

    if-gez v0, :cond_1

    .line 173
    :cond_0
    const-string v0, "Input value type is negative"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 174
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_15122"

    const-string v2, "\\|"

    invoke-interface {v0, v1, v4, v2}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 183
    :goto_0
    return-void

    .line 177
    :cond_1
    if-lez p5, :cond_2

    const/16 v0, 0x64

    if-lt p5, v0, :cond_3

    .line 178
    :cond_2
    const-string v0, "The int value for \'Pay Channels\' ranges between 1 ~ 99 "

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 179
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_15123"

    const-string v2, "\\|"

    invoke-interface {v0, v1, v4, v2}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 182
    :cond_3
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/b;

    move-wide v1, p0

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/umeng/analytics/game/b;->a(DLjava/lang/String;DILjava/lang/String;)V

    goto :goto_0
.end method

.method public static failLevel(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 89
    invoke-static {p0}, Lcom/umeng/analytics/game/UMGameAgent;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const-string v0, "Input string is null or empty"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 91
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_15115"

    const-string v2, "\\|"

    invoke-interface {v0, v1, v3, v2}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 100
    :goto_0
    return-void

    .line 94
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_1

    .line 95
    const-string v0, "Input string must be less than 64 chars"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 96
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_15116"

    const-string v2, "\\|"

    invoke-interface {v0, v1, v3, v2}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_1
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/b;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/game/b;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static finishLevel(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 70
    invoke-static {p0}, Lcom/umeng/analytics/game/UMGameAgent;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    const-string v0, "Input string is null or empty"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 72
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_15113"

    const-string v2, "\\|"

    invoke-interface {v0, v1, v3, v2}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 81
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_1

    .line 76
    const-string v0, "Input string must be less than 64 chars"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 77
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_15114"

    const-string v2, "\\|"

    invoke-interface {v0, v1, v3, v2}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_1
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/b;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/game/b;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 25
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->f:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 26
    if-eqz p0, :cond_0

    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/game/UMGameAgent;->f:Landroid/content/Context;

    .line 30
    :cond_0
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/b;

    sget-object v1, Lcom/umeng/analytics/game/UMGameAgent;->f:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/game/b;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :goto_0
    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 32
    const-string v0, "please check Context!"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static pay(DDI)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 110
    if-lez p4, :cond_0

    const/16 v0, 0x64

    if-lt p4, v0, :cond_1

    .line 111
    :cond_0
    const-string v0, "The int value for \'Pay Channels\' ranges between 1 ~ 99 "

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 112
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_15118"

    const-string v2, "\\|"

    invoke-interface {v0, v1, v4, v2}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 123
    :goto_0
    return-void

    .line 116
    :cond_1
    cmpg-double v0, p0, v2

    if-ltz v0, :cond_2

    cmpg-double v0, p2, v2

    if-gez v0, :cond_3

    .line 117
    :cond_2
    const-string v0, "Input value type is negative"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 118
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_15117"

    const-string v2, "\\|"

    invoke-interface {v0, v1, v4, v2}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_3
    sget-object v1, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/b;

    move-wide v2, p0

    move-wide v4, p2

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/umeng/analytics/game/b;->a(DDI)V

    goto :goto_0
.end method

.method public static pay(DLjava/lang/String;IDI)V
    .locals 12

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    .line 140
    if-lez p6, :cond_0

    const/16 v2, 0x64

    move/from16 v0, p6

    if-lt v0, v2, :cond_1

    .line 141
    :cond_0
    const-string v2, "The int value for \'Pay Channels\' ranges between 1 ~ 99 "

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 142
    sget-object v2, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v3, "A_15119"

    const-string v4, "\\|"

    invoke-interface {v2, v3, v5, v4}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 159
    :goto_0
    return-void

    .line 146
    :cond_1
    cmpg-double v2, p0, v6

    if-ltz v2, :cond_2

    if-ltz p3, :cond_2

    cmpg-double v2, p4, v6

    if-gez v2, :cond_3

    .line 147
    :cond_2
    const-string v2, "Input value type is negative"

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 148
    sget-object v2, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v3, "A_15120"

    const-string v4, "\\|"

    invoke-interface {v2, v3, v5, v4}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 152
    :cond_3
    invoke-static {p2}, Lcom/umeng/analytics/game/UMGameAgent;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 153
    const-string v2, "Input string is null or empty"

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 154
    sget-object v2, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v3, "A_15121"

    const-string v4, "\\|"

    invoke-interface {v2, v3, v5, v4}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 158
    :cond_4
    sget-object v3, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/b;

    move-wide v4, p0

    move-object v6, p2

    move v7, p3

    move-wide/from16 v8, p4

    move/from16 v10, p6

    invoke-virtual/range {v3 .. v10}, Lcom/umeng/analytics/game/b;->a(DLjava/lang/String;IDI)V

    goto :goto_0
.end method

.method public static setPlayerLevel(I)V
    .locals 2

    .prologue
    .line 41
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/b;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/game/b;->a(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static setTraceSleepTime(Z)V
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/b;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/game/b;->a(Z)V

    .line 38
    return-void
.end method

.method public static startLevel(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 50
    invoke-static {p0}, Lcom/umeng/analytics/game/UMGameAgent;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    const-string v0, "Input string is null or empty"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 52
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_15111"

    const-string v2, "\\|"

    invoke-interface {v0, v1, v3, v2}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 62
    :goto_0
    return-void

    .line 56
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_1

    .line 57
    const-string v0, "Input string must be less than 64 chars"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 58
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_15112"

    const-string v2, "\\|"

    invoke-interface {v0, v1, v3, v2}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_1
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/b;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/game/b;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static use(Ljava/lang/String;ID)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 216
    invoke-static {p0}, Lcom/umeng/analytics/game/UMGameAgent;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    const-string v0, "Input string is null or empty"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 218
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_15126"

    const-string v2, "\\|"

    invoke-interface {v0, v1, v3, v2}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 229
    :goto_0
    return-void

    .line 222
    :cond_0
    if-ltz p1, :cond_1

    const-wide/16 v0, 0x0

    cmpg-double v0, p2, v0

    if-gez v0, :cond_2

    .line 223
    :cond_1
    const-string v0, "Input value type is negative"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 224
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_15127"

    const-string v2, "\\|"

    invoke-interface {v0, v1, v3, v2}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 228
    :cond_2
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/b;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/umeng/analytics/game/b;->b(Ljava/lang/String;ID)V

    goto :goto_0
.end method
