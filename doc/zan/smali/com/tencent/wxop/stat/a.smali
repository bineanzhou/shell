.class public Lcom/tencent/wxop/stat/a;
.super Ljava/lang/Object;


# static fields
.field private static g:Lcom/tencent/wxop/stat/a;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile b:I

.field private volatile c:Ljava/lang/String;

.field private volatile d:Lorg/apache/http/HttpHost;

.field private e:Lcom/tencent/wxop/stat/common/e;

.field private f:I

.field private h:Landroid/content/Context;

.field private i:Lcom/tencent/wxop/stat/common/StatLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/wxop/stat/a;->g:Lcom/tencent/wxop/stat/a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/tencent/wxop/stat/a;->a:Ljava/util/List;

    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/wxop/stat/a;->b:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/wxop/stat/a;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/wxop/stat/a;->d:Lorg/apache/http/HttpHost;

    iput-object v1, p0, Lcom/tencent/wxop/stat/a;->e:Lcom/tencent/wxop/stat/common/e;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/wxop/stat/a;->f:I

    iput-object v1, p0, Lcom/tencent/wxop/stat/a;->h:Landroid/content/Context;

    iput-object v1, p0, Lcom/tencent/wxop/stat/a;->i:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wxop/stat/a;->h:Landroid/content/Context;

    new-instance v0, Lcom/tencent/wxop/stat/common/e;

    invoke-direct {v0}, Lcom/tencent/wxop/stat/common/e;-><init>()V

    iput-object v0, p0, Lcom/tencent/wxop/stat/a;->e:Lcom/tencent/wxop/stat/common/e;

    invoke-static {p1}, Lcom/tencent/wxop/stat/i;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/tencent/wxop/stat/common/l;->b()Lcom/tencent/wxop/stat/common/StatLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wxop/stat/a;->i:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-direct {p0}, Lcom/tencent/wxop/stat/a;->l()V

    invoke-direct {p0}, Lcom/tencent/wxop/stat/a;->i()V

    invoke-virtual {p0}, Lcom/tencent/wxop/stat/a;->g()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/tencent/wxop/stat/a;
    .locals 2

    sget-object v0, Lcom/tencent/wxop/stat/a;->g:Lcom/tencent/wxop/stat/a;

    if-nez v0, :cond_1

    const-class v1, Lcom/tencent/wxop/stat/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/wxop/stat/a;->g:Lcom/tencent/wxop/stat/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/wxop/stat/a;

    invoke-direct {v0, p0}, Lcom/tencent/wxop/stat/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/wxop/stat/a;->g:Lcom/tencent/wxop/stat/a;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/tencent/wxop/stat/a;->g:Lcom/tencent/wxop/stat/a;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/tencent/wxop/stat/a;)Lcom/tencent/wxop/stat/common/e;
    .locals 1

    iget-object v0, p0, Lcom/tencent/wxop/stat/a;->e:Lcom/tencent/wxop/stat/common/e;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "(2[5][0-5]|2[0-4]\\d|1\\d{2}|\\d{1,2})\\.(25[0-5]|2[0-4]\\d|1\\d{2}|\\d{1,2})\\.(25[0-5]|2[0-4]\\d|1\\d{2}|\\d{1,2})\\.(25[0-5]|2[0-4]\\d|1\\d{2}|\\d{1,2})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method private i()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/wxop/stat/a;->a:Ljava/util/List;

    iget-object v0, p0, Lcom/tencent/wxop/stat/a;->a:Ljava/util/List;

    const-string v1, "117.135.169.101"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/wxop/stat/a;->a:Ljava/util/List;

    const-string v1, "140.207.54.125"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/wxop/stat/a;->a:Ljava/util/List;

    const-string v1, "180.153.8.53"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/wxop/stat/a;->a:Ljava/util/List;

    const-string v1, "120.198.203.175"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/wxop/stat/a;->a:Ljava/util/List;

    const-string v1, "14.17.43.18"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/wxop/stat/a;->a:Ljava/util/List;

    const-string v1, "163.177.71.186"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/wxop/stat/a;->a:Ljava/util/List;

    const-string v1, "111.30.131.31"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/wxop/stat/a;->a:Ljava/util/List;

    const-string v1, "123.126.121.167"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/wxop/stat/a;->a:Ljava/util/List;

    const-string v1, "123.151.152.111"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/wxop/stat/a;->a:Ljava/util/List;

    const-string v1, "113.142.45.79"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/wxop/stat/a;->a:Ljava/util/List;

    const-string v1, "123.138.162.90"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/wxop/stat/a;->a:Ljava/util/List;

    const-string v1, "103.7.30.94"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private j()Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "pingma.qq.com"

    invoke-direct {p0, v0}, Lcom/tencent/wxop/stat/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/wxop/stat/a;->i:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private k()V
    .locals 4

    invoke-direct {p0}, Lcom/tencent/wxop/stat/a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/wxop/stat/a;->i:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "remoteIp ip is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_0
    invoke-static {v1}, Lcom/tencent/wxop/stat/common/l;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/wxop/stat/a;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v1

    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":80/mstat/report"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/wxop/stat/StatConfig;->setStatReportUrl(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/tencent/wxop/stat/a;->a:Ljava/util/List;

    iget v2, p0, Lcom/tencent/wxop/stat/a;->f:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/tencent/wxop/stat/a;->i:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " not in ip list, change to:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->w(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private l()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/wxop/stat/a;->b:I

    iput-object v1, p0, Lcom/tencent/wxop/stat/a;->d:Lorg/apache/http/HttpHost;

    iput-object v1, p0, Lcom/tencent/wxop/stat/a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lorg/apache/http/HttpHost;
    .locals 1

    iget-object v0, p0, Lcom/tencent/wxop/stat/a;->d:Lorg/apache/http/HttpHost;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 10

    const/4 v1, 0x0

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/wxop/stat/a;->i:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateIpList "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/tencent/wxop/stat/common/l;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/wxop/stat/common/l;->c(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v0, v1

    :goto_0
    if-ge v0, v5, :cond_1

    aget-object v6, v4, v0

    invoke-static {v6}, Lcom/tencent/wxop/stat/common/l;->c(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x1

    if-le v7, v8, :cond_3

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-direct {p0, v6}, Lcom/tencent/wxop/stat/a;->b(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/tencent/wxop/stat/a;->a:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/tencent/wxop/stat/a;->i:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "add new ip:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_2
    iget-object v7, p0, Lcom/tencent/wxop/stat/a;->a:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/wxop/stat/a;->i:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    :cond_4
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iget-object v1, p0, Lcom/tencent/wxop/stat/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/wxop/stat/a;->f:I

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/wxop/stat/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/tencent/wxop/stat/a;->b:I

    return v0
.end method

.method public d()V
    .locals 2

    iget v0, p0, Lcom/tencent/wxop/stat/a;->f:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/tencent/wxop/stat/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/wxop/stat/a;->f:I

    return-void
.end method

.method public e()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/tencent/wxop/stat/a;->b:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    iget v0, p0, Lcom/tencent/wxop/stat/a;->b:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method g()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/wxop/stat/a;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/wxop/stat/common/r;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/tencent/wxop/stat/StatConfig;->g:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/wxop/stat/a;->k()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/wxop/stat/a;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/wxop/stat/common/l;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wxop/stat/a;->c:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/wxop/stat/a;->i:Lcom/tencent/wxop/stat/common/StatLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NETWORK name:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/wxop/stat/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/wxop/stat/a;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/wxop/stat/common/l;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "WIFI"

    iget-object v1, p0, Lcom/tencent/wxop/stat/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/wxop/stat/a;->b:I

    :goto_0
    iget-object v0, p0, Lcom/tencent/wxop/stat/a;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/wxop/stat/common/l;->a(Landroid/content/Context;)Lorg/apache/http/HttpHost;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wxop/stat/a;->d:Lorg/apache/http/HttpHost;

    :cond_2
    invoke-static {}, Lcom/tencent/wxop/stat/StatServiceImpl;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/wxop/stat/a;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/wxop/stat/StatServiceImpl;->d(Landroid/content/Context;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/wxop/stat/a;->b:I

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tencent/wxop/stat/a;->i:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string v1, "NETWORK TYPE: network is close."

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_6
    invoke-direct {p0}, Lcom/tencent/wxop/stat/a;->l()V

    goto :goto_1
.end method

.method public h()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/wxop/stat/a;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/tencent/wxop/stat/b;

    invoke-direct {v1, p0}, Lcom/tencent/wxop/stat/b;-><init>(Lcom/tencent/wxop/stat/a;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
