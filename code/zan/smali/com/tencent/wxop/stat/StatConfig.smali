.class public Lcom/tencent/wxop/stat/StatConfig;
.super Ljava/lang/Object;


# static fields
.field private static A:Ljava/lang/String;

.field private static B:Ljava/lang/String;

.field private static C:Ljava/lang/String;

.field private static D:Ljava/lang/String;

.field private static E:I

.field private static F:I

.field private static G:J

.field private static H:J

.field private static volatile I:Ljava/lang/String;

.field private static J:I

.field private static volatile K:I

.field private static L:I

.field private static M:I

.field private static N:Z

.field private static O:I

.field private static P:Z

.field private static Q:Ljava/lang/String;

.field private static R:Z

.field private static S:Lcom/tencent/wxop/stat/g;

.field static a:Lcom/tencent/wxop/stat/f;

.field static b:Lcom/tencent/wxop/stat/f;

.field static c:Ljava/lang/String;

.field static d:Ljava/lang/String;

.field static e:Ljava/lang/String;

.field static f:Ljava/lang/String;

.field static g:Z

.field static h:I

.field static i:J

.field public static isAutoExceptionCaught:Z

.field static j:Z

.field static volatile k:Ljava/lang/String;

.field static l:Z

.field static m:I

.field static n:J

.field static o:I

.field private static p:Lcom/tencent/wxop/stat/common/StatLogger;

.field private static q:Lcom/tencent/wxop/stat/StatReportStrategy;

.field private static r:Z

.field private static s:Z

.field private static t:I

.field private static u:I

.field private static v:I

.field private static w:I

.field private static x:I

.field private static y:I

.field private static z:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v6, 0x64

    const/16 v5, 0x1e

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/tencent/wxop/stat/common/l;->b()Lcom/tencent/wxop/stat/common/StatLogger;

    move-result-object v0

    sput-object v0, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v0, Lcom/tencent/wxop/stat/f;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/tencent/wxop/stat/f;-><init>(I)V

    sput-object v0, Lcom/tencent/wxop/stat/StatConfig;->a:Lcom/tencent/wxop/stat/f;

    new-instance v0, Lcom/tencent/wxop/stat/f;

    invoke-direct {v0, v3}, Lcom/tencent/wxop/stat/f;-><init>(I)V

    sput-object v0, Lcom/tencent/wxop/stat/StatConfig;->b:Lcom/tencent/wxop/stat/f;

    sget-object v0, Lcom/tencent/wxop/stat/StatReportStrategy;->APP_LAUNCH:Lcom/tencent/wxop/stat/StatReportStrategy;

    sput-object v0, Lcom/tencent/wxop/stat/StatConfig;->q:Lcom/tencent/wxop/stat/StatReportStrategy;

    sput-boolean v2, Lcom/tencent/wxop/stat/StatConfig;->r:Z

    sput-boolean v3, Lcom/tencent/wxop/stat/StatConfig;->s:Z

    const/16 v0, 0x7530

    sput v0, Lcom/tencent/wxop/stat/StatConfig;->t:I

    const v0, 0x186a0

    sput v0, Lcom/tencent/wxop/stat/StatConfig;->u:I

    sput v5, Lcom/tencent/wxop/stat/StatConfig;->v:I

    const/16 v0, 0xa

    sput v0, Lcom/tencent/wxop/stat/StatConfig;->w:I

    sput v6, Lcom/tencent/wxop/stat/StatConfig;->x:I

    sput v5, Lcom/tencent/wxop/stat/StatConfig;->y:I

    sput v3, Lcom/tencent/wxop/stat/StatConfig;->z:I

    const-string v0, "__HIBERNATE__"

    sput-object v0, Lcom/tencent/wxop/stat/StatConfig;->c:Ljava/lang/String;

    const-string v0, "__HIBERNATE__TIME"

    sput-object v0, Lcom/tencent/wxop/stat/StatConfig;->d:Ljava/lang/String;

    const-string v0, "__MTA_KILL__"

    sput-object v0, Lcom/tencent/wxop/stat/StatConfig;->e:Ljava/lang/String;

    sput-object v4, Lcom/tencent/wxop/stat/StatConfig;->A:Ljava/lang/String;

    const-string v0, "mta_channel"

    sput-object v0, Lcom/tencent/wxop/stat/StatConfig;->D:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/tencent/wxop/stat/StatConfig;->f:Ljava/lang/String;

    const/16 v0, 0xb4

    sput v0, Lcom/tencent/wxop/stat/StatConfig;->E:I

    sput-boolean v2, Lcom/tencent/wxop/stat/StatConfig;->g:Z

    sput v6, Lcom/tencent/wxop/stat/StatConfig;->h:I

    const-wide/16 v0, 0x2710

    sput-wide v0, Lcom/tencent/wxop/stat/StatConfig;->i:J

    const/16 v0, 0x400

    sput v0, Lcom/tencent/wxop/stat/StatConfig;->F:I

    sput-boolean v3, Lcom/tencent/wxop/stat/StatConfig;->j:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tencent/wxop/stat/StatConfig;->G:J

    const-wide/32 v0, 0x493e0

    sput-wide v0, Lcom/tencent/wxop/stat/StatConfig;->H:J

    sput-boolean v3, Lcom/tencent/wxop/stat/StatConfig;->isAutoExceptionCaught:Z

    const-string v0, "pingma.qq.com:80"

    sput-object v0, Lcom/tencent/wxop/stat/StatConfig;->k:Ljava/lang/String;

    const-string v0, "http://pingma.qq.com:80/mstat/report"

    sput-object v0, Lcom/tencent/wxop/stat/StatConfig;->I:Ljava/lang/String;

    sput v2, Lcom/tencent/wxop/stat/StatConfig;->J:I

    sput v2, Lcom/tencent/wxop/stat/StatConfig;->K:I

    const/16 v0, 0x14

    sput v0, Lcom/tencent/wxop/stat/StatConfig;->L:I

    sput v2, Lcom/tencent/wxop/stat/StatConfig;->M:I

    sput-boolean v2, Lcom/tencent/wxop/stat/StatConfig;->N:Z

    const/16 v0, 0x1000

    sput v0, Lcom/tencent/wxop/stat/StatConfig;->O:I

    sput-boolean v2, Lcom/tencent/wxop/stat/StatConfig;->P:Z

    sput-object v4, Lcom/tencent/wxop/stat/StatConfig;->Q:Ljava/lang/String;

    sput-boolean v2, Lcom/tencent/wxop/stat/StatConfig;->R:Z

    sput-object v4, Lcom/tencent/wxop/stat/StatConfig;->S:Lcom/tencent/wxop/stat/g;

    sput-boolean v3, Lcom/tencent/wxop/stat/StatConfig;->l:Z

    sput v2, Lcom/tencent/wxop/stat/StatConfig;->m:I

    const-wide/16 v0, 0x2710

    sput-wide v0, Lcom/tencent/wxop/stat/StatConfig;->n:J

    const/16 v0, 0x200

    sput v0, Lcom/tencent/wxop/stat/StatConfig;->o:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()I
    .locals 1

    sget v0, Lcom/tencent/wxop/stat/StatConfig;->v:I

    return v0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    sget-object v0, Lcom/tencent/wxop/stat/StatConfig;->b:Lcom/tencent/wxop/stat/f;

    iget-object v0, v0, Lcom/tencent/wxop/stat/f;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    sget-object v0, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "can\'t find custom key:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->w(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static declared-synchronized a(I)V
    .locals 2

    const-class v0, Lcom/tencent/wxop/stat/StatConfig;

    monitor-enter v0

    :try_start_0
    sput p0, Lcom/tencent/wxop/stat/StatConfig;->K:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static a(J)V
    .locals 2

    invoke-static {}, Lcom/tencent/wxop/stat/i;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/tencent/wxop/stat/StatConfig;->c:Ljava/lang/String;

    invoke-static {v0, v1, p0, p1}, Lcom/tencent/wxop/stat/common/q;->b(Landroid/content/Context;Ljava/lang/String;J)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/wxop/stat/StatConfig;->setEnableStatService(Z)V

    sget-object v0, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string v1, "MTA is disable for current SDK version"

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->warn(Ljava/lang/Object;)V

    return-void
.end method

.method static a(Landroid/content/Context;Lcom/tencent/wxop/stat/f;)V
    .locals 3

    iget v0, p1, Lcom/tencent/wxop/stat/f;->a:I

    sget-object v1, Lcom/tencent/wxop/stat/StatConfig;->b:Lcom/tencent/wxop/stat/f;

    iget v1, v1, Lcom/tencent/wxop/stat/f;->a:I

    if-ne v0, v1, :cond_1

    sput-object p1, Lcom/tencent/wxop/stat/StatConfig;->b:Lcom/tencent/wxop/stat/f;

    iget-object v0, p1, Lcom/tencent/wxop/stat/f;->b:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/tencent/wxop/stat/StatConfig;->a(Lorg/json/JSONObject;)V

    sget-object v0, Lcom/tencent/wxop/stat/StatConfig;->b:Lcom/tencent/wxop/stat/f;

    iget-object v0, v0, Lcom/tencent/wxop/stat/f;->b:Lorg/json/JSONObject;

    const-string v1, "iplist"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/tencent/wxop/stat/a;->a(Landroid/content/Context;)Lcom/tencent/wxop/stat/a;

    move-result-object v0

    sget-object v1, Lcom/tencent/wxop/stat/StatConfig;->b:Lcom/tencent/wxop/stat/f;

    iget-object v1, v1, Lcom/tencent/wxop/stat/f;->b:Lorg/json/JSONObject;

    const-string v2, "iplist"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/a;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Lcom/tencent/wxop/stat/f;->a:I

    sget-object v1, Lcom/tencent/wxop/stat/StatConfig;->a:Lcom/tencent/wxop/stat/f;

    iget v1, v1, Lcom/tencent/wxop/stat/f;->a:I

    if-ne v0, v1, :cond_0

    sput-object p1, Lcom/tencent/wxop/stat/StatConfig;->a:Lcom/tencent/wxop/stat/f;

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Lcom/tencent/wxop/stat/f;Lorg/json/JSONObject;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "v"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iget v0, p1, Lcom/tencent/wxop/stat/f;->d:I

    if-eq v0, v4, :cond_6

    move v0, v1

    :goto_1
    iput v4, p1, Lcom/tencent/wxop/stat/f;->d:I

    move v2, v0

    goto :goto_0

    :cond_1
    const-string v4, "c"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v0, "c"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v4, p1, Lcom/tencent/wxop/stat/f;->b:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    :goto_2
    return-void

    :cond_2
    :try_start_1
    const-string v4, "m"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "m"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/wxop/stat/f;->c:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    if-ne v2, v1, :cond_5

    :try_start_2
    invoke-static {}, Lcom/tencent/wxop/stat/i;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/wxop/stat/au;->a(Landroid/content/Context;)Lcom/tencent/wxop/stat/au;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lcom/tencent/wxop/stat/au;->a(Lcom/tencent/wxop/stat/f;)V

    :cond_4
    iget v0, p1, Lcom/tencent/wxop/stat/f;->a:I

    sget-object v1, Lcom/tencent/wxop/stat/StatConfig;->b:Lcom/tencent/wxop/stat/f;

    iget v1, v1, Lcom/tencent/wxop/stat/f;->a:I

    if-ne v0, v1, :cond_5

    iget-object v0, p1, Lcom/tencent/wxop/stat/f;->b:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/tencent/wxop/stat/StatConfig;->a(Lorg/json/JSONObject;)V

    iget-object v0, p1, Lcom/tencent/wxop/stat/f;->b:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/tencent/wxop/stat/StatConfig;->b(Lorg/json/JSONObject;)V

    :cond_5
    invoke-static {p0, p1}, Lcom/tencent/wxop/stat/StatConfig;->a(Landroid/content/Context;Lcom/tencent/wxop/stat/f;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_1
.end method

.method static a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 5

    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lcom/tencent/wxop/stat/StatConfig;->b:Lcom/tencent/wxop/stat/f;

    iget v2, v2, Lcom/tencent/wxop/stat/f;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    sget-object v2, Lcom/tencent/wxop/stat/StatConfig;->b:Lcom/tencent/wxop/stat/f;

    invoke-static {p0, v2, v0}, Lcom/tencent/wxop/stat/StatConfig;->a(Landroid/content/Context;Lcom/tencent/wxop/stat/f;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    :cond_1
    return-void

    :cond_2
    :try_start_1
    sget-object v2, Lcom/tencent/wxop/stat/StatConfig;->a:Lcom/tencent/wxop/stat/f;

    iget v2, v2, Lcom/tencent/wxop/stat/f;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    sget-object v2, Lcom/tencent/wxop/stat/StatConfig;->a:Lcom/tencent/wxop/stat/f;

    invoke-static {p0, v2, v0}, Lcom/tencent/wxop/stat/StatConfig;->a(Landroid/content/Context;Lcom/tencent/wxop/stat/f;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_3
    const-string v2, "rs"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/tencent/wxop/stat/StatReportStrategy;->getStatReportStrategy(I)Lcom/tencent/wxop/stat/StatReportStrategy;

    move-result-object v0

    if-eqz v0, :cond_0

    sput-object v0, Lcom/tencent/wxop/stat/StatConfig;->q:Lcom/tencent/wxop/stat/StatReportStrategy;

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Change to ReportStrategy:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/wxop/stat/StatReportStrategy;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->d(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static a(Lorg/json/JSONObject;)V
    .locals 2

    :try_start_0
    const-string v0, "rs"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/tencent/wxop/stat/StatReportStrategy;->getStatReportStrategy(I)Lcom/tencent/wxop/stat/StatReportStrategy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/tencent/wxop/stat/StatConfig;->setStatSendStrategy(Lcom/tencent/wxop/stat/StatReportStrategy;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string v1, "rs not found."

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static a(III)Z
    .locals 1

    if-lt p0, p1, :cond_0

    if-gt p0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/tencent/wxop/stat/common/l;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/tencent/wxop/stat/common/l;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static b()V
    .locals 1

    sget v0, Lcom/tencent/wxop/stat/StatConfig;->M:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/tencent/wxop/stat/StatConfig;->M:I

    return-void
.end method

.method static b(I)V
    .locals 0

    if-gez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    sput p0, Lcom/tencent/wxop/stat/StatConfig;->M:I

    goto :goto_0
.end method

.method static b(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    :try_start_0
    sget-object v0, Lcom/tencent/wxop/stat/StatConfig;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/wxop/stat/common/l;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "sm"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "sm"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Ljava/lang/Integer;

    if-eqz v4, :cond_b

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    if-lez v0, :cond_3

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "match sleepTime:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " minutes"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v6, v0

    add-long/2addr v4, v6

    sget-object v0, Lcom/tencent/wxop/stat/StatConfig;->d:Ljava/lang/String;

    invoke-static {p0, v0, v4, v5}, Lcom/tencent/wxop/stat/common/q;->b(Landroid/content/Context;Ljava/lang/String;J)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/wxop/stat/StatConfig;->setEnableStatService(Z)V

    sget-object v0, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string v4, "MTA is disable for current SDK version"

    invoke-virtual {v0, v4}, Lcom/tencent/wxop/stat/common/StatLogger;->warn(Ljava/lang/Object;)V

    :cond_3
    const-string v0, "sv"

    const-string v4, "2.0.4"

    invoke-static {v3, v0, v4}, Lcom/tencent/wxop/stat/StatConfig;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string v2, "match sdk version:2.0.4"

    invoke-virtual {v0, v2}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    move v0, v1

    :goto_2
    const-string v2, "md"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v3, v2, v4}, Lcom/tencent/wxop/stat/StatConfig;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v0, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "match MODEL:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    move v0, v1

    :cond_4
    const-string v2, "av"

    invoke-static {p0}, Lcom/tencent/wxop/stat/common/l;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/tencent/wxop/stat/StatConfig;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v0, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "match app version:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tencent/wxop/stat/common/l;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    move v0, v1

    :cond_5
    const-string v2, "mf"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/tencent/wxop/stat/StatConfig;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v0, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "match MANUFACTURER:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    move v0, v1

    :cond_6
    const-string v2, "osv"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/tencent/wxop/stat/StatConfig;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v0, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "match android SDK version:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    move v0, v1

    :cond_7
    const-string v2, "ov"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/tencent/wxop/stat/StatConfig;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v0, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "match android SDK version:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    move v0, v1

    :cond_8
    const-string v2, "ui"

    invoke-static {p0}, Lcom/tencent/wxop/stat/au;->a(Landroid/content/Context;)Lcom/tencent/wxop/stat/au;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/tencent/wxop/stat/au;->b(Landroid/content/Context;)Lcom/tencent/wxop/stat/common/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/wxop/stat/common/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/tencent/wxop/stat/StatConfig;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v0, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "match imei:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tencent/wxop/stat/au;->a(Landroid/content/Context;)Lcom/tencent/wxop/stat/au;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/tencent/wxop/stat/au;->b(Landroid/content/Context;)Lcom/tencent/wxop/stat/common/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/wxop/stat/common/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    move v0, v1

    :cond_9
    const-string v2, "mid"

    invoke-static {p0}, Lcom/tencent/wxop/stat/StatConfig;->getLocalMidOnly(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/tencent/wxop/stat/StatConfig;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object v0, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "match mid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tencent/wxop/stat/StatConfig;->getLocalMidOnly(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    move v0, v1

    :cond_a
    if-eqz v0, :cond_0

    const-string v0, "2.0.4"

    invoke-static {v0}, Lcom/tencent/wxop/stat/common/l;->b(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tencent/wxop/stat/StatConfig;->a(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_b
    :try_start_1
    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_d

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto/16 :goto_1

    :cond_c
    move v0, v2

    goto/16 :goto_2

    :cond_d
    move v0, v2

    goto/16 :goto_1
.end method

.method static b(Lorg/json/JSONObject;)V
    .locals 4

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/tencent/wxop/stat/i;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/tencent/wxop/stat/StatConfig;->b(Landroid/content/Context;Lorg/json/JSONObject;)V

    sget-object v0, Lcom/tencent/wxop/stat/StatConfig;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "hibernateVer:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", current version:2.0.4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/wxop/stat/common/StatLogger;->d(Ljava/lang/Object;)V

    :cond_2
    invoke-static {v0}, Lcom/tencent/wxop/stat/common/l;->b(Ljava/lang/String;)J

    move-result-wide v0

    const-string v2, "2.0.4"

    invoke-static {v2}, Lcom/tencent/wxop/stat/common/l;->b(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gtz v2, :cond_0

    invoke-static {v0, v1}, Lcom/tencent/wxop/stat/StatConfig;->a(J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string v1, "__HIBERNATE__ not found."

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->d(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static c()I
    .locals 1

    sget v0, Lcom/tencent/wxop/stat/StatConfig;->M:I

    return v0
.end method

.method public static declared-synchronized getAppKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/tencent/wxop/stat/StatConfig;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/wxop/stat/StatConfig;->B:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getCurSessionStatReportCount()I
    .locals 1

    sget v0, Lcom/tencent/wxop/stat/StatConfig;->K:I

    return v0
.end method

.method public static getCustomLogger()Lcom/tencent/wxop/stat/g;
    .locals 1

    sget-object v0, Lcom/tencent/wxop/stat/StatConfig;->S:Lcom/tencent/wxop/stat/g;

    return-object v0
.end method

.method public static getCustomProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    sget-object v0, Lcom/tencent/wxop/stat/StatConfig;->a:Lcom/tencent/wxop/stat/f;

    iget-object v0, v0, Lcom/tencent/wxop/stat/f;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCustomProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    sget-object v0, Lcom/tencent/wxop/stat/StatConfig;->a:Lcom/tencent/wxop/stat/f;

    iget-object v0, v0, Lcom/tencent/wxop/stat/f;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getCustomUserId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    sget-object v0, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string v1, "Context for getCustomUid is null."

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/tencent/wxop/stat/StatConfig;->Q:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "MTA_CUSTOM_UID"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/tencent/wxop/stat/common/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/wxop/stat/StatConfig;->Q:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcom/tencent/wxop/stat/StatConfig;->Q:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getFlushDBSpaceMS()J
    .locals 2

    sget-wide v0, Lcom/tencent/wxop/stat/StatConfig;->n:J

    return-wide v0
.end method

.method public static declared-synchronized getInstallChannel(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/tencent/wxop/stat/StatConfig;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/wxop/stat/StatConfig;->C:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getLocalMidOnly(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/tencent/a/a/a/a/g;->C(Landroid/content/Context;)Lcom/tencent/a/a/a/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/a/a/a/a/g;->p()Lcom/tencent/a/a/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/a/a/a/a/c;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public static getMaxBatchReportCount()I
    .locals 1

    sget v0, Lcom/tencent/wxop/stat/StatConfig;->y:I

    return v0
.end method

.method public static getMaxDaySessionNumbers()I
    .locals 1

    sget v0, Lcom/tencent/wxop/stat/StatConfig;->L:I

    return v0
.end method

.method public static getMaxImportantDataSendRetryCount()I
    .locals 1

    sget v0, Lcom/tencent/wxop/stat/StatConfig;->x:I

    return v0
.end method

.method public static getMaxParallelTimmingEvents()I
    .locals 1

    sget v0, Lcom/tencent/wxop/stat/StatConfig;->F:I

    return v0
.end method

.method public static getMaxReportEventLength()I
    .locals 1

    sget v0, Lcom/tencent/wxop/stat/StatConfig;->O:I

    return v0
.end method

.method public static getMaxSendRetryCount()I
    .locals 1

    sget v0, Lcom/tencent/wxop/stat/StatConfig;->w:I

    return v0
.end method

.method public static getMaxSessionStatReportCount()I
    .locals 1

    sget v0, Lcom/tencent/wxop/stat/StatConfig;->J:I

    return v0
.end method

.method public static getMaxStoreEventCount()I
    .locals 1

    sget v0, Lcom/tencent/wxop/stat/StatConfig;->u:I

    return v0
.end method

.method public static getMid(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/tencent/wxop/stat/StatConfig;->getLocalMidOnly(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMsPeriodForMethodsCalledLimitClear()J
    .locals 2

    sget-wide v0, Lcom/tencent/wxop/stat/StatConfig;->i:J

    return-wide v0
.end method

.method public static getNumEventsCachedInMemory()I
    .locals 1

    sget v0, Lcom/tencent/wxop/stat/StatConfig;->m:I

    return v0
.end method

.method public static getNumEventsCommitPerSec()I
    .locals 1

    sget v0, Lcom/tencent/wxop/stat/StatConfig;->z:I

    return v0
.end method

.method public static getNumOfMethodsCalledLimit()I
    .locals 1

    sget v0, Lcom/tencent/wxop/stat/StatConfig;->h:I

    return v0
.end method

.method public static getQQ(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "mta.acc.qq"

    sget-object v1, Lcom/tencent/wxop/stat/StatConfig;->f:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/tencent/wxop/stat/common/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getReportCompressedSize()I
    .locals 1

    sget v0, Lcom/tencent/wxop/stat/StatConfig;->o:I

    return v0
.end method

.method public static getSendPeriodMinutes()I
    .locals 1

    sget v0, Lcom/tencent/wxop/stat/StatConfig;->E:I

    return v0
.end method

.method public static getSessionTimoutMillis()I
    .locals 1

    sget v0, Lcom/tencent/wxop/stat/StatConfig;->t:I

    return v0
.end method

.method public static getStatReportHost()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/wxop/stat/StatConfig;->k:Ljava/lang/String;

    return-object v0
.end method

.method public static getStatReportUrl()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/wxop/stat/StatConfig;->I:Ljava/lang/String;

    return-object v0
.end method

.method public static getStatSendStrategy()Lcom/tencent/wxop/stat/StatReportStrategy;
    .locals 1

    sget-object v0, Lcom/tencent/wxop/stat/StatConfig;->q:Lcom/tencent/wxop/stat/StatReportStrategy;

    return-object v0
.end method

.method public static isAutoExceptionCaught()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/wxop/stat/StatConfig;->isAutoExceptionCaught:Z

    return v0
.end method

.method public static isDebugEnable()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/wxop/stat/StatConfig;->r:Z

    return v0
.end method

.method public static isEnableConcurrentProcess()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/wxop/stat/StatConfig;->P:Z

    return v0
.end method

.method public static isEnableSmartReporting()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/wxop/stat/StatConfig;->j:Z

    return v0
.end method

.method public static isEnableStatService()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/wxop/stat/StatConfig;->s:Z

    return v0
.end method

.method public static isReportEventsByOrder()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/wxop/stat/StatConfig;->l:Z

    return v0
.end method

.method public static isXGProMode()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/wxop/stat/StatConfig;->R:Z

    return v0
.end method

.method public static setAppKey(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    if-nez p0, :cond_0

    sget-object v0, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string v1, "ctx in StatConfig.setAppKey() is null"

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x100

    if-le v0, v1, :cond_2

    :cond_1
    sget-object v0, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string v1, "appkey in StatConfig.setAppKey() is null or exceed 256 bytes"

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    sput-object p1, Lcom/tencent/wxop/stat/StatConfig;->B:Ljava/lang/String;

    goto :goto_0
.end method

.method public static setAppKey(Ljava/lang/String;)V
    .locals 2

    if-nez p0, :cond_0

    sget-object v0, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string v1, "appkey in StatConfig.setAppKey() is null"

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x100

    if-le v0, v1, :cond_1

    sget-object v0, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string v1, "The length of appkey cann\'t exceed 256 bytes."

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    sput-object p0, Lcom/tencent/wxop/stat/StatConfig;->B:Ljava/lang/String;

    goto :goto_0
.end method

.method public static setAutoExceptionCaught(Z)V
    .locals 0

    sput-boolean p0, Lcom/tencent/wxop/stat/StatConfig;->isAutoExceptionCaught:Z

    return-void
.end method

.method public static setCustomLogger(Lcom/tencent/wxop/stat/g;)V
    .locals 0

    sput-object p0, Lcom/tencent/wxop/stat/StatConfig;->S:Lcom/tencent/wxop/stat/g;

    return-void
.end method

.method public static setCustomUserId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    if-nez p0, :cond_0

    sget-object v0, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string v1, "Context for setCustomUid is null."

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "MTA_CUSTOM_UID"

    invoke-static {p0, v0, p1}, Lcom/tencent/wxop/stat/common/q;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sput-object p1, Lcom/tencent/wxop/stat/StatConfig;->Q:Ljava/lang/String;

    goto :goto_0
.end method

.method public static setDebugEnable(Z)V
    .locals 1

    sput-boolean p0, Lcom/tencent/wxop/stat/StatConfig;->r:Z

    invoke-static {}, Lcom/tencent/wxop/stat/common/l;->b()Lcom/tencent/wxop/stat/common/StatLogger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/wxop/stat/common/StatLogger;->setDebugEnable(Z)V

    return-void
.end method

.method public static setEnableConcurrentProcess(Z)V
    .locals 0

    sput-boolean p0, Lcom/tencent/wxop/stat/StatConfig;->P:Z

    return-void
.end method

.method public static setEnableSmartReporting(Z)V
    .locals 0

    sput-boolean p0, Lcom/tencent/wxop/stat/StatConfig;->j:Z

    return-void
.end method

.method public static setEnableStatService(Z)V
    .locals 2

    sput-boolean p0, Lcom/tencent/wxop/stat/StatConfig;->s:Z

    if-nez p0, :cond_0

    sget-object v0, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string v1, "!!!!!!MTA StatService has been disabled!!!!!!"

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->warn(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static setFlushDBSpaceMS(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    sput-wide p0, Lcom/tencent/wxop/stat/StatConfig;->n:J

    :cond_0
    return-void
.end method

.method public static setInstallChannel(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x80

    if-le v0, v1, :cond_0

    sget-object v0, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string v1, "the length of installChannel can not exceed the range of 128 bytes."

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    sput-object p1, Lcom/tencent/wxop/stat/StatConfig;->C:Ljava/lang/String;

    goto :goto_0
.end method

.method public static setInstallChannel(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/tencent/wxop/stat/StatConfig;->C:Ljava/lang/String;

    return-void
.end method

.method public static setMaxBatchReportCount(I)V
    .locals 2

    const/4 v0, 0x2

    const/16 v1, 0x3e8

    invoke-static {p0, v0, v1}, Lcom/tencent/wxop/stat/StatConfig;->a(III)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string v1, "setMaxBatchReportCount can not exceed the range of [2,1000]."

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    sput p0, Lcom/tencent/wxop/stat/StatConfig;->y:I

    goto :goto_0
.end method

.method public static setMaxDaySessionNumbers(I)V
    .locals 2

    if-gtz p0, :cond_0

    sget-object v0, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string v1, "maxDaySessionNumbers must be greater than 0."

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    sput p0, Lcom/tencent/wxop/stat/StatConfig;->L:I

    goto :goto_0
.end method

.method public static setMaxImportantDataSendRetryCount(I)V
    .locals 1

    const/16 v0, 0x64

    if-le p0, v0, :cond_0

    sput p0, Lcom/tencent/wxop/stat/StatConfig;->x:I

    :cond_0
    return-void
.end method

.method public static setMaxParallelTimmingEvents(I)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x1000

    invoke-static {p0, v0, v1}, Lcom/tencent/wxop/stat/StatConfig;->a(III)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string v1, "setMaxParallelTimmingEvents can not exceed the range of [1, 4096]."

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    sput p0, Lcom/tencent/wxop/stat/StatConfig;->F:I

    goto :goto_0
.end method

.method public static setMaxReportEventLength(I)V
    .locals 2

    if-gtz p0, :cond_0

    sget-object v0, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string v1, "maxReportEventLength on setMaxReportEventLength() must greater than 0."

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    sput p0, Lcom/tencent/wxop/stat/StatConfig;->O:I

    goto :goto_0
.end method

.method public static setMaxSendRetryCount(I)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x3e8

    invoke-static {p0, v0, v1}, Lcom/tencent/wxop/stat/StatConfig;->a(III)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string v1, "setMaxSendRetryCount can not exceed the range of [1,1000]."

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    sput p0, Lcom/tencent/wxop/stat/StatConfig;->w:I

    goto :goto_0
.end method

.method public static setMaxSessionStatReportCount(I)V
    .locals 2

    if-gez p0, :cond_0

    sget-object v0, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string v1, "maxSessionStatReportCount cannot be less than 0."

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    sput p0, Lcom/tencent/wxop/stat/StatConfig;->J:I

    goto :goto_0
.end method

.method public static setMaxStoreEventCount(I)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7a120

    invoke-static {p0, v0, v1}, Lcom/tencent/wxop/stat/StatConfig;->a(III)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string v1, "setMaxStoreEventCount can not exceed the range of [0, 500000]."

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    sput p0, Lcom/tencent/wxop/stat/StatConfig;->u:I

    goto :goto_0
.end method

.method public static setNumEventsCachedInMemory(I)V
    .locals 0

    if-ltz p0, :cond_0

    sput p0, Lcom/tencent/wxop/stat/StatConfig;->m:I

    :cond_0
    return-void
.end method

.method public static setNumEventsCommitPerSec(I)V
    .locals 0

    if-lez p0, :cond_0

    sput p0, Lcom/tencent/wxop/stat/StatConfig;->z:I

    :cond_0
    return-void
.end method

.method public static setNumOfMethodsCalledLimit(IJ)V
    .locals 3

    sput p0, Lcom/tencent/wxop/stat/StatConfig;->h:I

    const-wide/16 v0, 0x3e8

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    sput-wide p1, Lcom/tencent/wxop/stat/StatConfig;->i:J

    :cond_0
    return-void
.end method

.method public static setQQ(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "mta.acc.qq"

    invoke-static {p0, v0, p1}, Lcom/tencent/wxop/stat/common/q;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sput-object p1, Lcom/tencent/wxop/stat/StatConfig;->f:Ljava/lang/String;

    return-void
.end method

.method public static setReportCompressedSize(I)V
    .locals 0

    if-lez p0, :cond_0

    sput p0, Lcom/tencent/wxop/stat/StatConfig;->o:I

    :cond_0
    return-void
.end method

.method public static setReportEventsByOrder(Z)V
    .locals 0

    sput-boolean p0, Lcom/tencent/wxop/stat/StatConfig;->l:Z

    return-void
.end method

.method public static setSendPeriodMinutes(I)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x2760

    invoke-static {p0, v0, v1}, Lcom/tencent/wxop/stat/StatConfig;->a(III)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string v1, "setSendPeriodMinutes can not exceed the range of [1, 7*24*60] minutes."

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    sput p0, Lcom/tencent/wxop/stat/StatConfig;->E:I

    goto :goto_0
.end method

.method public static setSessionTimoutMillis(I)V
    .locals 2

    const/16 v0, 0x3e8

    const v1, 0x5265c00

    invoke-static {p0, v0, v1}, Lcom/tencent/wxop/stat/StatConfig;->a(III)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string v1, "setSessionTimoutMillis can not exceed the range of [1000, 24 * 60 * 60 * 1000]."

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    sput p0, Lcom/tencent/wxop/stat/StatConfig;->t:I

    goto :goto_0
.end method

.method public static setStatReportUrl(Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    sget-object v0, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string v1, "statReportUrl cannot be null or empty."

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sput-object p0, Lcom/tencent/wxop/stat/StatConfig;->I:Ljava/lang/String;

    :try_start_0
    new-instance v0, Ljava/net/URI;

    sget-object v1, Lcom/tencent/wxop/stat/StatConfig;->I:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/wxop/stat/StatConfig;->k:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "url:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tencent/wxop/stat/StatConfig;->I:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", domain:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/wxop/stat/StatConfig;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->w(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static setStatSendStrategy(Lcom/tencent/wxop/stat/StatReportStrategy;)V
    .locals 3

    sput-object p0, Lcom/tencent/wxop/stat/StatConfig;->q:Lcom/tencent/wxop/stat/StatReportStrategy;

    sget-object v0, Lcom/tencent/wxop/stat/StatReportStrategy;->PERIOD:Lcom/tencent/wxop/stat/StatReportStrategy;

    if-eq p0, v0, :cond_0

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tencent/wxop/stat/StatServiceImpl;->c:J

    :cond_0
    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/wxop/stat/StatConfig;->p:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Change to statSendStrategy: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->d(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static setXGProMode(Z)V
    .locals 0

    sput-boolean p0, Lcom/tencent/wxop/stat/StatConfig;->R:Z

    return-void
.end method
