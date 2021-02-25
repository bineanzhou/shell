.class public Lcom/taobao/agoo/a/b;
.super Lcom/taobao/accs/base/AccsAbstractDataListener;
.source "Taobao"


# static fields
.field public static b:Lcom/taobao/agoo/a/a;


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/agoo/ICallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/taobao/accs/base/AccsAbstractDataListener;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/agoo/a/b;->a:Ljava/util/Map;

    .line 41
    sget-object v0, Lcom/taobao/agoo/a/b;->b:Lcom/taobao/agoo/a/a;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/taobao/agoo/a/a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/taobao/agoo/a/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/taobao/agoo/a/b;->b:Lcom/taobao/agoo/a/a;

    .line 44
    :cond_0
    return-void
.end method

.method private a(Lorg/json/JSONObject;Lcom/taobao/agoo/ICallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 149
    const-string v0, "pushAliasToken"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/taobao/accs/utl/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 151
    invoke-static {}, Lcom/taobao/accs/client/GlobalClientInfo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/android/agoo/common/Config;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 152
    if-eqz p2, :cond_0

    .line 153
    invoke-virtual {p2}, Lcom/taobao/agoo/ICallback;->onSuccess()V

    .line 154
    sget-object v0, Lcom/taobao/agoo/a/b;->b:Lcom/taobao/agoo/a/a;

    iget-object v1, p2, Lcom/taobao/agoo/ICallback;->extra:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/agoo/a/a;->c(Ljava/lang/String;)V

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    if-eqz p2, :cond_0

    .line 158
    const-string v0, ""

    const-string v1, "agoo server error-pushtoken null"

    invoke-virtual {p2, v0, v1}, Lcom/taobao/agoo/ICallback;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onBind(Ljava/lang/String;ILcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public onData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public onResponse(Ljava/lang/String;Ljava/lang/String;I[BLcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 7

    .prologue
    .line 50
    :try_start_0
    const-string v0, "AgooDeviceCmd"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 51
    iget-object v0, p0, Lcom/taobao/agoo/a/b;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/agoo/ICallback;

    .line 52
    const/16 v1, 0xc8

    if-ne p3, v1, :cond_b

    .line 53
    new-instance v1, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-direct {v1, p4, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 54
    const-string v2, "RequestListener"

    const-string v3, "RequestListener onResponse"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "dataId"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    const-string v6, "listener"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object v0, v4, v5

    const/4 v5, 0x4

    const-string v6, "json"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 56
    const-string v1, "resultCode"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/taobao/accs/utl/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    const-string v3, "cmd"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 60
    const-string v4, "success"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 61
    if-eqz v0, :cond_0

    .line 62
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "agoo server error"

    invoke-virtual {v0, v1, v2}, Lcom/taobao/agoo/ICallback;->onFailure(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    :cond_0
    const-string v0, "AgooDeviceCmd"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/taobao/agoo/a/b;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_1
    :goto_0
    return-void

    .line 68
    :cond_2
    :try_start_1
    const-string v1, "register"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 69
    const-string v1, "deviceId"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/taobao/accs/utl/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 71
    if-eqz v0, :cond_3

    .line 72
    const-string v1, ""

    const-string v2, "agoo server error deviceid null"

    invoke-virtual {v0, v1, v2}, Lcom/taobao/agoo/ICallback;->onFailure(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    :cond_3
    :goto_1
    const-string v0, "AgooDeviceCmd"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/taobao/agoo/a/b;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 75
    :cond_4
    :try_start_2
    invoke-static {}, Lcom/taobao/accs/client/GlobalClientInfo;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/android/agoo/common/Config;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 76
    sget-object v2, Lcom/taobao/agoo/a/b;->b:Lcom/taobao/agoo/a/a;

    invoke-static {}, Lcom/taobao/accs/client/GlobalClientInfo;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/taobao/agoo/a/a;->a(Ljava/lang/String;)V

    .line 77
    if-eqz v0, :cond_3

    instance-of v2, v0, Lcom/taobao/agoo/IRegister;

    if-eqz v2, :cond_3

    .line 78
    const-string v2, "Agoo_AppStore"

    invoke-static {}, Lcom/taobao/accs/client/GlobalClientInfo;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/taobao/accs/utl/UtilityImpl;->saveUtdid(Ljava/lang/String;Landroid/content/Context;)V

    .line 79
    check-cast v0, Lcom/taobao/agoo/IRegister;

    invoke-virtual {v0, v1}, Lcom/taobao/agoo/IRegister;->onSuccess(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 116
    :catch_0
    move-exception v0

    .line 117
    :try_start_3
    const-string v1, "RequestListener"

    const-string v2, "onResponse"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 119
    const-string v0, "AgooDeviceCmd"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/taobao/agoo/a/b;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 87
    :cond_5
    :try_start_4
    const-string v1, "setAlias"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 88
    invoke-direct {p0, v2, v0}, Lcom/taobao/agoo/a/b;->a(Lorg/json/JSONObject;Lcom/taobao/agoo/ICallback;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 119
    const-string v0, "AgooDeviceCmd"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/taobao/agoo/a/b;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 93
    :cond_6
    :try_start_5
    const-string v1, "removeAlias"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 94
    invoke-static {}, Lcom/taobao/accs/client/GlobalClientInfo;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/android/agoo/common/Config;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 95
    if-eqz v0, :cond_7

    .line 96
    invoke-virtual {v0}, Lcom/taobao/agoo/ICallback;->onSuccess()V

    .line 98
    :cond_7
    sget-object v0, Lcom/taobao/agoo/a/b;->b:Lcom/taobao/agoo/a/a;

    invoke-virtual {v0}, Lcom/taobao/agoo/a/a;->a()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 119
    const-string v0, "AgooDeviceCmd"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/taobao/agoo/a/b;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 102
    :cond_8
    :try_start_6
    const-string v1, "enablePush"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "disablePush"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 103
    :cond_9
    if-eqz v0, :cond_a

    .line 104
    invoke-virtual {v0}, Lcom/taobao/agoo/ICallback;->onSuccess()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 119
    :cond_a
    const-string v0, "AgooDeviceCmd"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/taobao/agoo/a/b;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 110
    :cond_b
    if-eqz v0, :cond_c

    .line 111
    :try_start_7
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "accs channel error"

    invoke-virtual {v0, v1, v2}, Lcom/taobao/agoo/ICallback;->onFailure(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 119
    :cond_c
    const-string v0, "AgooDeviceCmd"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/taobao/agoo/a/b;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 119
    :catchall_0
    move-exception v0

    const-string v1, "AgooDeviceCmd"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 120
    iget-object v1, p0, Lcom/taobao/agoo/a/b;->a:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    throw v0
.end method

.method public onSendData(Ljava/lang/String;Ljava/lang/String;ILcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 0

    .prologue
    .line 145
    return-void
.end method

.method public onUnbind(Ljava/lang/String;ILcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 0

    .prologue
    .line 140
    return-void
.end method
