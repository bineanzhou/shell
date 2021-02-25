.class public abstract Lcom/tencent/wxop/stat/event/e;
.super Ljava/lang/Object;


# static fields
.field protected static j:Ljava/lang/String;


# instance fields
.field private a:Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;

.field protected b:Ljava/lang/String;

.field protected c:J

.field protected d:I

.field protected e:Lcom/tencent/wxop/stat/common/a;

.field protected f:I

.field protected g:Ljava/lang/String;

.field protected h:Ljava/lang/String;

.field protected i:Ljava/lang/String;

.field protected k:Z

.field protected l:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/wxop/stat/event/e;->j:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/tencent/wxop/stat/event/e;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/wxop/stat/event/e;->e:Lcom/tencent/wxop/stat/common/a;

    iput-object v1, p0, Lcom/tencent/wxop/stat/event/e;->g:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/wxop/stat/event/e;->h:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/wxop/stat/event/e;->i:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/wxop/stat/event/e;->k:Z

    iput-object v1, p0, Lcom/tencent/wxop/stat/event/e;->a:Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;

    iput-object p1, p0, Lcom/tencent/wxop/stat/event/e;->l:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/wxop/stat/event/e;->c:J

    iput p2, p0, Lcom/tencent/wxop/stat/event/e;->d:I

    invoke-static {p1}, Lcom/tencent/wxop/stat/StatConfig;->getInstallChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wxop/stat/event/e;->h:Ljava/lang/String;

    invoke-static {p1}, Lcom/tencent/wxop/stat/common/l;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wxop/stat/event/e;->i:Ljava/lang/String;

    invoke-static {p1}, Lcom/tencent/wxop/stat/StatConfig;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wxop/stat/event/e;->b:Ljava/lang/String;

    if-eqz p3, :cond_3

    iput-object p3, p0, Lcom/tencent/wxop/stat/event/e;->a:Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;

    invoke-virtual {p3}, Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;->getAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/wxop/stat/common/l;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;->getAppKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wxop/stat/event/e;->b:Ljava/lang/String;

    :cond_0
    invoke-virtual {p3}, Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;->getInstallChannel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/wxop/stat/common/l;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;->getInstallChannel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wxop/stat/event/e;->h:Ljava/lang/String;

    :cond_1
    invoke-virtual {p3}, Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/wxop/stat/common/l;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;->getVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wxop/stat/event/e;->i:Ljava/lang/String;

    :cond_2
    invoke-virtual {p3}, Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;->isImportant()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/wxop/stat/event/e;->k:Z

    :cond_3
    invoke-static {p1}, Lcom/tencent/wxop/stat/StatConfig;->getCustomUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wxop/stat/event/e;->g:Ljava/lang/String;

    invoke-static {p1}, Lcom/tencent/wxop/stat/au;->a(Landroid/content/Context;)Lcom/tencent/wxop/stat/au;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/wxop/stat/au;->b(Landroid/content/Context;)Lcom/tencent/wxop/stat/common/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wxop/stat/event/e;->e:Lcom/tencent/wxop/stat/common/a;

    invoke-virtual {p0}, Lcom/tencent/wxop/stat/event/e;->a()Lcom/tencent/wxop/stat/event/EventType;

    move-result-object v0

    sget-object v1, Lcom/tencent/wxop/stat/event/EventType;->NETWORK_DETECTOR:Lcom/tencent/wxop/stat/event/EventType;

    if-eq v0, v1, :cond_5

    invoke-static {p1}, Lcom/tencent/wxop/stat/common/l;->q(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/tencent/wxop/stat/event/e;->f:I

    :goto_0
    sget-object v0, Lcom/tencent/wxop/stat/event/e;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/a/a/a/a/h;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Lcom/tencent/wxop/stat/StatConfig;->getLocalMidOnly(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/wxop/stat/event/e;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/wxop/stat/common/l;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "0"

    sput-object v0, Lcom/tencent/wxop/stat/event/e;->j:Ljava/lang/String;

    :cond_4
    return-void

    :cond_5
    sget-object v0, Lcom/tencent/wxop/stat/event/EventType;->NETWORK_DETECTOR:Lcom/tencent/wxop/stat/event/EventType;

    invoke-virtual {v0}, Lcom/tencent/wxop/stat/event/EventType;->a()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/tencent/wxop/stat/event/e;->f:I

    goto :goto_0
.end method


# virtual methods
.method public abstract a()Lcom/tencent/wxop/stat/event/EventType;
.end method

.method public abstract a(Lorg/json/JSONObject;)Z
.end method

.method public b(Lorg/json/JSONObject;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v3, 0x1

    :try_start_0
    const-string v1, "ky"

    iget-object v2, p0, Lcom/tencent/wxop/stat/event/e;->b:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/tencent/wxop/stat/common/r;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "et"

    invoke-virtual {p0}, Lcom/tencent/wxop/stat/event/e;->a()Lcom/tencent/wxop/stat/event/EventType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/wxop/stat/event/EventType;->a()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/tencent/wxop/stat/event/e;->e:Lcom/tencent/wxop/stat/common/a;

    if-eqz v1, :cond_0

    const-string v1, "ui"

    iget-object v2, p0, Lcom/tencent/wxop/stat/event/e;->e:Lcom/tencent/wxop/stat/common/a;

    invoke-virtual {v2}, Lcom/tencent/wxop/stat/common/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/tencent/wxop/stat/event/e;->e:Lcom/tencent/wxop/stat/common/a;

    invoke-virtual {v1}, Lcom/tencent/wxop/stat/common/a;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mc"

    invoke-static {p1, v2, v1}, Lcom/tencent/wxop/stat/common/r;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/wxop/stat/event/e;->e:Lcom/tencent/wxop/stat/common/a;

    invoke-virtual {v1}, Lcom/tencent/wxop/stat/common/a;->d()I

    move-result v1

    const-string v2, "ut"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/wxop/stat/event/e;->l:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/wxop/stat/common/l;->u(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v3, :cond_0

    const-string v1, "ia"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    const-string v1, "cui"

    iget-object v2, p0, Lcom/tencent/wxop/stat/event/e;->g:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/tencent/wxop/stat/common/r;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/wxop/stat/event/e;->a()Lcom/tencent/wxop/stat/event/EventType;

    move-result-object v1

    sget-object v2, Lcom/tencent/wxop/stat/event/EventType;->SESSION_ENV:Lcom/tencent/wxop/stat/event/EventType;

    if-eq v1, v2, :cond_1

    const-string v1, "av"

    iget-object v2, p0, Lcom/tencent/wxop/stat/event/e;->i:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/tencent/wxop/stat/common/r;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ch"

    iget-object v2, p0, Lcom/tencent/wxop/stat/event/e;->h:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/tencent/wxop/stat/common/r;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-boolean v1, p0, Lcom/tencent/wxop/stat/event/e;->k:Z

    if-eqz v1, :cond_2

    const-string v1, "impt"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    const-string v1, "mid"

    sget-object v2, Lcom/tencent/wxop/stat/event/e;->j:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/tencent/wxop/stat/common/r;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cch"

    const-string v2, "wxop"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "idx"

    iget v2, p0, Lcom/tencent/wxop/stat/event/e;->f:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "si"

    iget v2, p0, Lcom/tencent/wxop/stat/event/e;->d:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "ts"

    iget-wide v2, p0, Lcom/tencent/wxop/stat/event/e;->c:J

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "dts"

    iget-object v2, p0, Lcom/tencent/wxop/stat/event/e;->l:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/tencent/wxop/stat/common/l;->a(Landroid/content/Context;Z)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/tencent/wxop/stat/event/e;->a(Lorg/json/JSONObject;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/wxop/stat/event/e;->c:J

    return-wide v0
.end method

.method public d()Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;
    .locals 1

    iget-object v0, p0, Lcom/tencent/wxop/stat/event/e;->a:Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;

    return-object v0
.end method

.method public e()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/wxop/stat/event/e;->l:Landroid/content/Context;

    return-object v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/wxop/stat/event/e;->k:Z

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v0}, Lcom/tencent/wxop/stat/event/e;->b(Lorg/json/JSONObject;)Z

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method
