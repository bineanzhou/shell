.class public Lcom/taobao/agoo/a/a/c;
.super Lcom/taobao/agoo/a/a/b;
.source "Taobao"


# static fields
.field public static final JSON_CMD_REGISTER:Ljava/lang/String; = "register"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/taobao/agoo/a/a/b;-><init>()V

    .line 24
    const/16 v0, 0xdd

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/agoo/a/a/c;->d:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 72
    .line 76
    :try_start_0
    invoke-static {p0}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 78
    invoke-static {p0}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/accs/client/GlobalClientInfo;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 79
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 80
    :cond_0
    const-string v2, "RegisterDO"

    const-string v3, "buildRegister param null"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "appKey"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    const-string v7, "utdid"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object v0, v5, v6

    const/4 v0, 0x4

    const-string v6, "appVersion"

    aput-object v6, v5, v0

    const/4 v0, 0x5

    aput-object v4, v5, v0

    invoke-static {v2, v3, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    if-eqz v1, :cond_1

    .line 103
    invoke-virtual {v1}, Lcom/taobao/agoo/a/a/c;->a()[B

    .line 106
    :cond_1
    :goto_0
    return-object v1

    .line 83
    :cond_2
    :try_start_1
    new-instance v2, Lcom/taobao/agoo/a/a/c;

    invoke-direct {v2}, Lcom/taobao/agoo/a/a/c;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    :try_start_2
    const-string v5, "register"

    iput-object v5, v2, Lcom/taobao/agoo/a/a/c;->e:Ljava/lang/String;

    .line 85
    iput-object p1, v2, Lcom/taobao/agoo/a/a/c;->a:Ljava/lang/String;

    .line 86
    iput-object v0, v2, Lcom/taobao/agoo/a/a/c;->b:Ljava/lang/String;

    .line 87
    iput-object v4, v2, Lcom/taobao/agoo/a/a/c;->c:Ljava/lang/String;

    .line 88
    iput-object p2, v2, Lcom/taobao/agoo/a/a/c;->f:Ljava/lang/String;

    .line 89
    iput-object v3, v2, Lcom/taobao/agoo/a/a/c;->g:Ljava/lang/String;

    .line 90
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v0, v2, Lcom/taobao/agoo/a/a/c;->j:Ljava/lang/String;

    .line 91
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, v2, Lcom/taobao/agoo/a/a/c;->k:Ljava/lang/String;

    .line 92
    invoke-static {p0}, Lcom/taobao/accs/utl/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/taobao/agoo/a/a/c;->h:Ljava/lang/String;

    .line 1012
    new-instance v0, Lcom/taobao/accs/utl/d;

    invoke-direct {v0}, Lcom/taobao/accs/utl/d;-><init>()V

    .line 93
    invoke-virtual {v0}, Lcom/taobao/accs/utl/j;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/taobao/agoo/a/a/c;->i:Ljava/lang/String;

    .line 94
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 95
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    :goto_1
    iput-object v3, v2, Lcom/taobao/agoo/a/a/c;->l:Ljava/lang/String;

    .line 96
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, v2, Lcom/taobao/agoo/a/a/c;->m:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 102
    if-eqz v2, :cond_6

    .line 103
    invoke-virtual {v2}, Lcom/taobao/agoo/a/a/c;->a()[B

    move-result-object v0

    :goto_3
    move-object v1, v0

    .line 106
    goto :goto_0

    :cond_3
    move-object v3, v1

    .line 95
    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 96
    goto :goto_2

    .line 99
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 100
    :goto_4
    :try_start_3
    const-string v3, "RegisterDO"

    const-string v4, "buildRegister"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v0, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 102
    if-eqz v2, :cond_6

    .line 103
    invoke-virtual {v2}, Lcom/taobao/agoo/a/a/c;->a()[B

    move-result-object v0

    goto :goto_3

    .line 102
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_5
    if-eqz v2, :cond_5

    .line 103
    invoke-virtual {v2}, Lcom/taobao/agoo/a/a/c;->a()[B

    :cond_5
    throw v0

    .line 102
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 99
    :catch_1
    move-exception v0

    goto :goto_4

    :cond_6
    move-object v0, v1

    goto :goto_3
.end method


# virtual methods
.method public a()[B
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 43
    const/4 v0, 0x0

    .line 45
    :try_start_0
    new-instance v1, Lcom/taobao/accs/utl/e$a;

    invoke-direct {v1}, Lcom/taobao/accs/utl/e$a;-><init>()V

    const-string v2, "cmd"

    iget-object v3, p0, Lcom/taobao/agoo/a/a/c;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/taobao/accs/utl/e$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/e$a;

    move-result-object v1

    const-string v2, "appKey"

    iget-object v3, p0, Lcom/taobao/agoo/a/a/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/taobao/accs/utl/e$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/e$a;

    move-result-object v1

    const-string v2, "utdid"

    iget-object v3, p0, Lcom/taobao/agoo/a/a/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/taobao/accs/utl/e$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/e$a;

    move-result-object v1

    const-string v2, "appVersion"

    iget-object v3, p0, Lcom/taobao/agoo/a/a/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/taobao/accs/utl/e$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/e$a;

    move-result-object v1

    const-string v2, "sdkVersion"

    iget-object v3, p0, Lcom/taobao/agoo/a/a/c;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/taobao/accs/utl/e$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/e$a;

    move-result-object v1

    const-string v2, "ttid"

    iget-object v3, p0, Lcom/taobao/agoo/a/a/c;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/taobao/accs/utl/e$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/e$a;

    move-result-object v1

    const-string v2, "packageName"

    iget-object v3, p0, Lcom/taobao/agoo/a/a/c;->g:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/taobao/accs/utl/e$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/e$a;

    move-result-object v1

    const-string v2, "notifyEnable"

    iget-object v3, p0, Lcom/taobao/agoo/a/a/c;->h:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/taobao/accs/utl/e$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/e$a;

    move-result-object v1

    const-string v2, "romInfo"

    iget-object v3, p0, Lcom/taobao/agoo/a/a/c;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/taobao/accs/utl/e$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/e$a;

    move-result-object v1

    const-string v2, "c0"

    iget-object v3, p0, Lcom/taobao/agoo/a/a/c;->j:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/taobao/accs/utl/e$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/e$a;

    move-result-object v1

    const-string v2, "c1"

    iget-object v3, p0, Lcom/taobao/agoo/a/a/c;->k:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/taobao/accs/utl/e$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/e$a;

    move-result-object v1

    const-string v2, "c2"

    iget-object v3, p0, Lcom/taobao/agoo/a/a/c;->l:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/taobao/accs/utl/e$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/e$a;

    move-result-object v1

    const-string v2, "c3"

    iget-object v3, p0, Lcom/taobao/agoo/a/a/c;->m:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/taobao/accs/utl/e$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/e$a;

    move-result-object v1

    const-string v2, "c4"

    iget-object v3, p0, Lcom/taobao/agoo/a/a/c;->n:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/taobao/accs/utl/e$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/e$a;

    move-result-object v1

    const-string v2, "c5"

    iget-object v3, p0, Lcom/taobao/agoo/a/a/c;->o:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/taobao/accs/utl/e$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/e$a;

    move-result-object v1

    const-string v2, "c6"

    iget-object v3, p0, Lcom/taobao/agoo/a/a/c;->p:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/taobao/accs/utl/e$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/e$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/accs/utl/e$a;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 63
    const-string v2, "RegisterDO"

    const-string v3, "buildData"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "data"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    const-string v2, "utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 68
    :goto_0
    return-object v0

    .line 65
    :catch_0
    move-exception v1

    .line 66
    const-string v2, "RegisterDO"

    const-string v3, "buildData"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method
