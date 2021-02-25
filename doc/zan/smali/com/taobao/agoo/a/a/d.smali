.class public Lcom/taobao/agoo/a/a/d;
.super Lcom/taobao/agoo/a/a/b;
.source "Taobao"


# static fields
.field public static final JSON_CMD_DISABLEPUSH:Ljava/lang/String; = "disablePush"

.field public static final JSON_CMD_ENABLEPUSH:Ljava/lang/String; = "enablePush"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/taobao/agoo/a/a/b;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[B
    .locals 2

    .prologue
    .line 46
    new-instance v0, Lcom/taobao/agoo/a/a/d;

    invoke-direct {v0}, Lcom/taobao/agoo/a/a/d;-><init>()V

    .line 47
    iput-object p0, v0, Lcom/taobao/agoo/a/a/d;->a:Ljava/lang/String;

    .line 48
    iput-object p1, v0, Lcom/taobao/agoo/a/a/d;->b:Ljava/lang/String;

    .line 49
    iput-object p2, v0, Lcom/taobao/agoo/a/a/d;->c:Ljava/lang/String;

    .line 50
    if-eqz p3, :cond_0

    .line 51
    const-string v1, "enablePush"

    iput-object v1, v0, Lcom/taobao/agoo/a/a/d;->e:Ljava/lang/String;

    .line 55
    :goto_0
    invoke-virtual {v0}, Lcom/taobao/agoo/a/a/d;->a()[B

    move-result-object v0

    return-object v0

    .line 53
    :cond_0
    const-string v1, "disablePush"

    iput-object v1, v0, Lcom/taobao/agoo/a/a/d;->e:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public a()[B
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 24
    const/4 v0, 0x0

    .line 26
    :try_start_0
    new-instance v1, Lcom/taobao/accs/utl/e$a;

    invoke-direct {v1}, Lcom/taobao/accs/utl/e$a;-><init>()V

    .line 27
    const-string v2, "cmd"

    iget-object v3, p0, Lcom/taobao/agoo/a/a/d;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/taobao/accs/utl/e$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/e$a;

    move-result-object v2

    const-string v3, "appKey"

    iget-object v4, p0, Lcom/taobao/agoo/a/a/d;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/taobao/accs/utl/e$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/e$a;

    .line 30
    iget-object v2, p0, Lcom/taobao/agoo/a/a/d;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 31
    const-string v2, "utdid"

    iget-object v3, p0, Lcom/taobao/agoo/a/a/d;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/taobao/accs/utl/e$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/e$a;

    .line 35
    :goto_0
    invoke-virtual {v1}, Lcom/taobao/accs/utl/e$a;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 36
    const-string v2, "SwitchDO"

    const-string v3, "buildData"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "data"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    const-string v2, "utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 42
    :goto_1
    return-object v0

    .line 33
    :cond_0
    const-string v2, "deviceId"

    iget-object v3, p0, Lcom/taobao/agoo/a/a/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/taobao/accs/utl/e$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/e$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 38
    :catch_0
    move-exception v1

    .line 39
    const-string v2, "SwitchDO"

    const-string v3, "buildData"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1
.end method
