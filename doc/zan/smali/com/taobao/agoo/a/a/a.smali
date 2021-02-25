.class public Lcom/taobao/agoo/a/a/a;
.super Lcom/taobao/agoo/a/a/b;
.source "Taobao"


# static fields
.field public static final JSON_CMD_REMOVEALIAS:Ljava/lang/String; = "removeAlias"

.field public static final JSON_CMD_SETALIAS:Ljava/lang/String; = "setAlias"

.field public static final JSON_PUSH_USER_TOKEN:Ljava/lang/String; = "pushAliasToken"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/taobao/agoo/a/a/b;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2

    .prologue
    .line 43
    new-instance v0, Lcom/taobao/agoo/a/a/a;

    invoke-direct {v0}, Lcom/taobao/agoo/a/a/a;-><init>()V

    .line 44
    iput-object p0, v0, Lcom/taobao/agoo/a/a/a;->a:Ljava/lang/String;

    .line 45
    iput-object p1, v0, Lcom/taobao/agoo/a/a/a;->b:Ljava/lang/String;

    .line 46
    iput-object p2, v0, Lcom/taobao/agoo/a/a/a;->c:Ljava/lang/String;

    .line 47
    const-string v1, "setAlias"

    iput-object v1, v0, Lcom/taobao/agoo/a/a/a;->e:Ljava/lang/String;

    .line 48
    invoke-virtual {v0}, Lcom/taobao/agoo/a/a/a;->a()[B

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lcom/taobao/agoo/a/a/a;

    invoke-direct {v0}, Lcom/taobao/agoo/a/a/a;-><init>()V

    .line 53
    iput-object p0, v0, Lcom/taobao/agoo/a/a/a;->a:Ljava/lang/String;

    .line 54
    iput-object p1, v0, Lcom/taobao/agoo/a/a/a;->b:Ljava/lang/String;

    .line 55
    iput-object p2, v0, Lcom/taobao/agoo/a/a/a;->d:Ljava/lang/String;

    .line 56
    const-string v1, "removeAlias"

    iput-object v1, v0, Lcom/taobao/agoo/a/a/a;->e:Ljava/lang/String;

    .line 57
    invoke-virtual {v0}, Lcom/taobao/agoo/a/a/a;->a()[B

    move-result-object v0

    return-object v0
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

    const-string v2, "cmd"

    iget-object v3, p0, Lcom/taobao/agoo/a/a/a;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/taobao/accs/utl/e$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/e$a;

    move-result-object v1

    const-string v2, "appKey"

    iget-object v3, p0, Lcom/taobao/agoo/a/a/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/taobao/accs/utl/e$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/e$a;

    move-result-object v1

    const-string v2, "deviceId"

    iget-object v3, p0, Lcom/taobao/agoo/a/a/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/taobao/accs/utl/e$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/e$a;

    move-result-object v1

    const-string v2, "alias"

    iget-object v3, p0, Lcom/taobao/agoo/a/a/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/taobao/accs/utl/e$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/e$a;

    move-result-object v1

    const-string v2, "pushAliasToken"

    iget-object v3, p0, Lcom/taobao/agoo/a/a/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/taobao/accs/utl/e$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/e$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/accs/utl/e$a;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 33
    const-string v2, "AliasDO"

    const-string v3, "buildData"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "data"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    const-string v2, "utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 39
    :goto_0
    return-object v0

    .line 35
    :catch_0
    move-exception v1

    .line 36
    const-string v2, "AliasDO"

    const-string v3, "buildData"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method
