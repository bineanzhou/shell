.class Lcom/umeng/analytics/game/b;
.super Ljava/lang/Object;
.source "InternalGameAgent.java"

# interfaces
.implements Lcom/umeng/analytics/pro/r;


# static fields
.field public static a:Z


# instance fields
.field private A:Landroid/content/Context;

.field private b:Lcom/umeng/analytics/b;

.field private c:Lcom/umeng/analytics/game/a;

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private final o:Ljava/lang/String;

.field private final p:Ljava/lang/String;

.field private final q:Ljava/lang/String;

.field private final r:Ljava/lang/String;

.field private final s:Ljava/lang/String;

.field private final t:Ljava/lang/String;

.field private final u:Ljava/lang/String;

.field private final v:Ljava/lang/String;

.field private final w:Ljava/lang/String;

.field private final x:Ljava/lang/String;

.field private final y:Ljava/lang/String;

.field private final z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x1

    sput-boolean v0, Lcom/umeng/analytics/game/b;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Lcom/umeng/analytics/MobclickAgent;->getAgent()Lcom/umeng/analytics/b;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/game/b;->b:Lcom/umeng/analytics/b;

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    .line 23
    const/16 v0, 0x64

    iput v0, p0, Lcom/umeng/analytics/game/b;->d:I

    .line 24
    iput v1, p0, Lcom/umeng/analytics/game/b;->e:I

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/analytics/game/b;->f:I

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/umeng/analytics/game/b;->g:I

    .line 28
    iput v1, p0, Lcom/umeng/analytics/game/b;->h:I

    .line 30
    const-string v0, "level"

    iput-object v0, p0, Lcom/umeng/analytics/game/b;->i:Ljava/lang/String;

    .line 31
    const-string v0, "pay"

    iput-object v0, p0, Lcom/umeng/analytics/game/b;->j:Ljava/lang/String;

    .line 32
    const-string v0, "buy"

    iput-object v0, p0, Lcom/umeng/analytics/game/b;->k:Ljava/lang/String;

    .line 33
    const-string v0, "use"

    iput-object v0, p0, Lcom/umeng/analytics/game/b;->l:Ljava/lang/String;

    .line 34
    const-string v0, "bonus"

    iput-object v0, p0, Lcom/umeng/analytics/game/b;->m:Ljava/lang/String;

    .line 36
    const-string v0, "item"

    iput-object v0, p0, Lcom/umeng/analytics/game/b;->n:Ljava/lang/String;

    .line 37
    const-string v0, "cash"

    iput-object v0, p0, Lcom/umeng/analytics/game/b;->o:Ljava/lang/String;

    .line 38
    const-string v0, "coin"

    iput-object v0, p0, Lcom/umeng/analytics/game/b;->p:Ljava/lang/String;

    .line 39
    const-string v0, "source"

    iput-object v0, p0, Lcom/umeng/analytics/game/b;->q:Ljava/lang/String;

    .line 40
    const-string v0, "amount"

    iput-object v0, p0, Lcom/umeng/analytics/game/b;->r:Ljava/lang/String;

    .line 41
    const-string v0, "user_level"

    iput-object v0, p0, Lcom/umeng/analytics/game/b;->s:Ljava/lang/String;

    .line 42
    const-string v0, "bonus_source"

    iput-object v0, p0, Lcom/umeng/analytics/game/b;->t:Ljava/lang/String;

    .line 44
    const-string v0, "level"

    iput-object v0, p0, Lcom/umeng/analytics/game/b;->u:Ljava/lang/String;

    .line 45
    const-string v0, "status"

    iput-object v0, p0, Lcom/umeng/analytics/game/b;->v:Ljava/lang/String;

    .line 46
    const-string v0, "duration"

    iput-object v0, p0, Lcom/umeng/analytics/game/b;->w:Ljava/lang/String;

    .line 48
    const-string v0, "curtype"

    iput-object v0, p0, Lcom/umeng/analytics/game/b;->x:Ljava/lang/String;

    .line 49
    const-string v0, "orderid"

    iput-object v0, p0, Lcom/umeng/analytics/game/b;->y:Ljava/lang/String;

    .line 51
    const-string v0, "UMGameAgent.init(Context) should be called before any game api"

    iput-object v0, p0, Lcom/umeng/analytics/game/b;->z:Ljava/lang/String;

    .line 55
    sput-boolean v1, Lcom/umeng/analytics/game/b;->a:Z

    .line 56
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 5

    .prologue
    .line 122
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 123
    const-string v0, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 150
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_DUM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    .line 127
    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 128
    :cond_1
    const-string v0, "UMGameAgent class is UMGameAgent API, can\'t be use in no-game scenario. "

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_2
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/game/a;->b(Ljava/lang/String;)Lcom/umeng/analytics/game/a$a;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_5

    .line 134
    invoke-virtual {v0}, Lcom/umeng/analytics/game/a$a;->e()J

    move-result-wide v0

    .line 135
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_3

    .line 136
    const-string v0, "level duration is 0"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :cond_3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 142
    const-string v3, "level"

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string v3, "status"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string v3, "duration"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object v0, v0, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v0, "user_level"

    iget-object v1, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object v1, v1, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :cond_4
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->b:Lcom/umeng/analytics/b;

    iget-object v1, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    const-string v3, "level"

    invoke-virtual {v0, v1, v3, v2}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 148
    :cond_5
    const-string v0, "finishLevel(or failLevel) called before startLevel"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->w(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 307
    const-string v0, "App resume from background"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 310
    const-string v0, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_DUM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    .line 314
    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 315
    :cond_2
    const-string v0, "UMGameAgent class is UMGameAgent API, can\'t be use in no-game scenario. "

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 316
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_15109"

    const/4 v2, 0x0

    const-string v3, "\\|"

    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 319
    :cond_3
    sget-boolean v0, Lcom/umeng/analytics/game/b;->a:Z

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    invoke-virtual {v0}, Lcom/umeng/analytics/game/a;->b()V

    goto :goto_0
.end method

.method a(DDI)V
    .locals 7

    .prologue
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    .line 191
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 192
    const-string v0, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 211
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_DUM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    .line 196
    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 197
    :cond_1
    const-string v0, "UMGameAgent class is UMGameAgent API, can\'t be use in no-game scenario. "

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 198
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_15104"

    const/4 v2, 0x0

    const-string v3, "\\|"

    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 201
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 203
    const-string v1, "cash"

    mul-double v2, p1, v4

    double-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string v1, "coin"

    mul-double v2, p3, v4

    double-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string v1, "source"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-object v1, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object v1, v1, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, "user_level"

    iget-object v2, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object v2, v2, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :cond_3
    iget-object v1, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object v1, v1, Lcom/umeng/analytics/game/a;->a:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v1, "level"

    iget-object v2, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object v2, v2, Lcom/umeng/analytics/game/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    :cond_4
    iget-object v1, p0, Lcom/umeng/analytics/game/b;->b:Lcom/umeng/analytics/b;

    iget-object v2, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    const-string v3, "pay"

    invoke-virtual {v1, v2, v3, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method a(DI)V
    .locals 5

    .prologue
    .line 273
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 274
    const-string v0, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 292
    :goto_0
    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_DUM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    .line 278
    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 279
    :cond_1
    const-string v0, "UMGameAgent class is UMGameAgent API, can\'t be use in no-game scenario. "

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 280
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_15108"

    const/4 v2, 0x0

    const-string v3, "\\|"

    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 284
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 285
    const-string v1, "coin"

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, p1

    double-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const-string v1, "bonus_source"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    iget-object v1, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object v1, v1, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, "user_level"

    iget-object v2, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object v2, v2, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    :cond_3
    iget-object v1, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object v1, v1, Lcom/umeng/analytics/game/a;->a:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v1, "level"

    iget-object v2, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object v2, v2, Lcom/umeng/analytics/game/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    :cond_4
    iget-object v1, p0, Lcom/umeng/analytics/game/b;->b:Lcom/umeng/analytics/b;

    iget-object v2, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    const-string v3, "bonus"

    invoke-virtual {v1, v2, v3, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method a(DLjava/lang/String;DILjava/lang/String;)V
    .locals 6

    .prologue
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    const-wide/16 v2, 0x0

    .line 343
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 344
    const-string v0, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_DUM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    .line 348
    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 349
    :cond_2
    const-string v0, "UMGameAgent class is UMGameAgent API, can\'t be use in no-game scenario. "

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 350
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_15105"

    const/4 v2, 0x0

    const-string v3, "\\|"

    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 353
    :cond_3
    cmpl-double v0, p1, v2

    if-ltz v0, :cond_0

    cmpl-double v0, p4, v2

    if-ltz v0, :cond_0

    .line 354
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 355
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 356
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x3

    if-gt v0, v2, :cond_4

    .line 357
    const-string v0, "curtype"

    invoke-virtual {v1, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    :cond_4
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 362
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p7, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0

    .line 363
    if-lez v0, :cond_5

    const/16 v2, 0x400

    if-gt v0, v2, :cond_5

    .line 364
    const-string v0, "orderid"

    invoke-virtual {v1, v0, p7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    :cond_5
    :goto_1
    const-string v0, "cash"

    mul-double v2, p1, v4

    double-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    const-string v0, "coin"

    mul-double v2, p4, v4

    double-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    const-string v0, "source"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object v0, v0, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string v0, "user_level"

    iget-object v2, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object v2, v2, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    :cond_6
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object v0, v0, Lcom/umeng/analytics/game/a;->a:Ljava/lang/String;

    if-eqz v0, :cond_7

    const-string v0, "level"

    iget-object v2, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object v2, v2, Lcom/umeng/analytics/game/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    :cond_7
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->b:Lcom/umeng/analytics/b;

    iget-object v2, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    const-string v3, "pay"

    invoke-virtual {v0, v2, v3, v1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 366
    :catch_0
    move-exception v0

    .line 367
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method a(DLjava/lang/String;IDI)V
    .locals 7

    .prologue
    .line 214
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_DUM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    .line 215
    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 216
    :cond_0
    const-string v0, "UMGameAgent class is UMGameAgent API, can\'t be use in no-game scenario. "

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 217
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_15104"

    const/4 v2, 0x0

    const-string v3, "\\|"

    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 222
    :goto_0
    return-void

    .line 220
    :cond_1
    int-to-double v0, p4

    mul-double v4, p5, v0

    move-object v1, p0

    move-wide v2, p1

    move v6, p7

    invoke-virtual/range {v1 .. v6}, Lcom/umeng/analytics/game/b;->a(DDI)V

    .line 221
    invoke-virtual {p0, p3, p4, p5, p6}, Lcom/umeng/analytics/game/b;->a(Ljava/lang/String;ID)V

    goto :goto_0
.end method

.method a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 59
    if-nez p1, :cond_0

    .line 60
    const-string v0, "Context is null, can\'t init GameAgent"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 68
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    .line 64
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->b:Lcom/umeng/analytics/b;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/b;->a(Lcom/umeng/analytics/pro/r;)V

    .line 65
    new-instance v0, Lcom/umeng/analytics/game/a;

    iget-object v1, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/umeng/analytics/game/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    goto :goto_0
.end method

.method a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 79
    const-string v0, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iput-object p1, v0, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_0

    .line 85
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "userlevel"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method a(Ljava/lang/String;ID)V
    .locals 7

    .prologue
    .line 225
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 226
    const-string v0, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 246
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_DUM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    .line 230
    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 231
    :cond_1
    const-string v0, "UMGameAgent class is UMGameAgent API, can\'t be use in no-game scenario. "

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 232
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_15106"

    const/4 v2, 0x0

    const-string v3, "\\|"

    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 236
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 238
    const-string v1, "item"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string v1, "amount"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-string v1, "coin"

    int-to-double v2, p2

    mul-double/2addr v2, p3

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    double-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget-object v1, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object v1, v1, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, "user_level"

    iget-object v2, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object v2, v2, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    :cond_3
    iget-object v1, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object v1, v1, Lcom/umeng/analytics/game/a;->a:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v1, "level"

    iget-object v2, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object v2, v2, Lcom/umeng/analytics/game/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    :cond_4
    iget-object v1, p0, Lcom/umeng/analytics/game/b;->b:Lcom/umeng/analytics/b;

    iget-object v2, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    const-string v3, "buy"

    invoke-virtual {v1, v2, v3, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;IDI)V
    .locals 5

    .prologue
    .line 295
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_DUM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    .line 296
    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 297
    :cond_0
    const-string v0, "UMGameAgent class is UMGameAgent API, can\'t be use in no-game scenario. "

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 298
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_15108"

    const/4 v2, 0x0

    const-string v3, "\\|"

    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 303
    :goto_0
    return-void

    .line 301
    :cond_1
    int-to-double v0, p2

    mul-double/2addr v0, p3

    invoke-virtual {p0, v0, v1, p5}, Lcom/umeng/analytics/game/b;->a(DI)V

    .line 302
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/umeng/analytics/game/b;->a(Ljava/lang/String;ID)V

    goto :goto_0
.end method

.method a(Z)V
    .locals 4

    .prologue
    .line 71
    const-string v0, "Trace sleep time : %b"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    .line 73
    sput-boolean p1, Lcom/umeng/analytics/game/b;->a:Z

    .line 74
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 326
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 327
    const-string v0, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_DUM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    .line 331
    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 332
    :cond_2
    const-string v0, "UMGameAgent class is UMGameAgent API, can\'t be use in no-game scenario. "

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 333
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_15110"

    const/4 v2, 0x0

    const-string v3, "\\|"

    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 337
    :cond_3
    sget-boolean v0, Lcom/umeng/analytics/game/b;->a:Z

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    invoke-virtual {v0}, Lcom/umeng/analytics/game/a;->a()V

    goto :goto_0
.end method

.method b(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 96
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 97
    const-string v0, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 119
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_DUM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    .line 101
    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 102
    :cond_1
    const-string v0, "UMGameAgent class is UMGameAgent API, can\'t be use in no-game scenario. "

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 103
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_15101"

    const-string v2, "\\|"

    invoke-interface {v0, v1, v3, v2}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 106
    :cond_2
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iput-object p1, v0, Lcom/umeng/analytics/game/a;->a:Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/game/a;->a(Ljava/lang/String;)Lcom/umeng/analytics/game/a$a;

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 112
    const-string v1, "level"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v1, "status"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v1, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object v1, v1, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 116
    const-string v1, "user_level"

    iget-object v2, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object v2, v2, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :cond_3
    iget-object v1, p0, Lcom/umeng/analytics/game/b;->b:Lcom/umeng/analytics/b;

    iget-object v2, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    const-string v3, "level"

    invoke-virtual {v1, v2, v3, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method b(Ljava/lang/String;ID)V
    .locals 7

    .prologue
    .line 249
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 250
    const-string v0, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 270
    :goto_0
    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_DUM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    .line 254
    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 255
    :cond_1
    const-string v0, "UMGameAgent class is UMGameAgent API, can\'t be use in no-game scenario. "

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 256
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_15107"

    const/4 v2, 0x0

    const-string v3, "\\|"

    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 260
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 262
    const-string v1, "item"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string v1, "amount"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    const-string v1, "coin"

    int-to-double v2, p2

    mul-double/2addr v2, p3

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    double-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    iget-object v1, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object v1, v1, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, "user_level"

    iget-object v2, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object v2, v2, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    :cond_3
    iget-object v1, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object v1, v1, Lcom/umeng/analytics/game/a;->a:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v1, "level"

    iget-object v2, p0, Lcom/umeng/analytics/game/b;->c:Lcom/umeng/analytics/game/a;

    iget-object v2, v2, Lcom/umeng/analytics/game/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    :cond_4
    iget-object v1, p0, Lcom/umeng/analytics/game/b;->b:Lcom/umeng/analytics/b;

    iget-object v2, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    const-string v3, "use"

    invoke-virtual {v1, v2, v3, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method c(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 158
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 159
    const-string v0, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 169
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_DUM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    .line 163
    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 164
    :cond_1
    const-string v0, "UMGameAgent class is UMGameAgent API, can\'t be use in no-game scenario. "

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 165
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_15102"

    const/4 v2, 0x0

    const-string v3, "\\|"

    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 168
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/umeng/analytics/game/b;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method d(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 177
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 178
    const-string v0, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 188
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_DUM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/umeng/analytics/game/b;->A:Landroid/content/Context;

    .line 182
    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v1}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 183
    :cond_1
    const-string v0, "UMGameAgent class is UMGameAgent API, can\'t be use in no-game scenario. "

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 184
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_15103"

    const/4 v2, 0x0

    const-string v3, "\\|"

    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 187
    :cond_2
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/umeng/analytics/game/b;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method
