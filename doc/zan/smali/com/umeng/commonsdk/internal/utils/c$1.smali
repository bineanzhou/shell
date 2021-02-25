.class Lcom/umeng/commonsdk/internal/utils/c$1;
.super Landroid/content/BroadcastReceiver;
.source "BatteryUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/internal/utils/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/commonsdk/internal/utils/c;


# direct methods
.method constructor <init>(Lcom/umeng/commonsdk/internal/utils/c;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/umeng/commonsdk/internal/utils/c$1;->a:Lcom/umeng/commonsdk/internal/utils/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v1, 0x2

    const/4 v3, -0x1

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 81
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 82
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 83
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 85
    const-string v5, "level"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 87
    :try_start_1
    const-string v6, "le"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 91
    :goto_0
    :try_start_2
    const-string v5, "voltage"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v5

    .line 93
    :try_start_3
    const-string v6, "vol"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 98
    :goto_1
    :try_start_4
    const-string v5, "temperature"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    move-result v5

    .line 100
    :try_start_5
    const-string v6, "temp"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 101
    const-string v5, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 106
    :goto_2
    :try_start_6
    const-string v5, "status"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    move-result v5

    .line 108
    packed-switch v5, :pswitch_data_0

    .line 135
    :goto_3
    :pswitch_0
    :try_start_7
    const-string v5, "st"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    .line 140
    :goto_4
    :try_start_8
    const-string v3, "plugged"

    const/4 v5, 0x0

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    move-result v3

    .line 142
    packed-switch v3, :pswitch_data_1

    move v0, v2

    .line 153
    :goto_5
    :pswitch_1
    :try_start_9
    const-string v1, "ct"

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 154
    const-string v0, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v4, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    .line 161
    :goto_6
    :try_start_a
    const-string v0, "BatteryUtils"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    const v0, 0x8003

    .line 164
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/c;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/commonsdk/internal/b;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/internal/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/commonsdk/internal/b;->a()Lcom/umeng/commonsdk/internal/c;

    move-result-object v1

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 163
    invoke-static {p1, v0, v1, v2}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    .line 166
    iget-object v0, p0, Lcom/umeng/commonsdk/internal/utils/c$1;->a:Lcom/umeng/commonsdk/internal/utils/c;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/internal/utils/c;->c()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0

    .line 173
    :cond_0
    :goto_7
    return-void

    :pswitch_2
    move v3, v0

    .line 118
    goto :goto_3

    :pswitch_3
    move v3, v2

    .line 127
    goto :goto_3

    :pswitch_4
    move v3, v1

    .line 131
    goto :goto_3

    :pswitch_5
    move v0, v1

    .line 149
    goto :goto_5

    .line 169
    :catch_0
    move-exception v0

    .line 170
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/c;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/proguard/b;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 156
    :catch_1
    move-exception v0

    goto :goto_6

    .line 136
    :catch_2
    move-exception v3

    goto :goto_4

    .line 102
    :catch_3
    move-exception v5

    goto :goto_2

    .line 94
    :catch_4
    move-exception v5

    goto :goto_1

    .line 88
    :catch_5
    move-exception v5

    goto/16 :goto_0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 142
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method
