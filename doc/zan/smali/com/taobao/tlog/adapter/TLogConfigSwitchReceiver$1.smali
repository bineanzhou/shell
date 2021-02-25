.class final Lcom/taobao/tlog/adapter/TLogConfigSwitchReceiver$1;
.super Ljava/lang/Object;
.source "TLogConfigSwitchReceiver.java"

# interfaces
.implements Lcom/taobao/orange/OrangeConfigListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/tlog/adapter/TLogConfigSwitchReceiver;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/taobao/tlog/adapter/TLogConfigSwitchReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigUpdate(Ljava/lang/String;)V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 27
    invoke-static {}, Lcom/taobao/orange/OrangeConfig;->getInstance()Lcom/taobao/orange/OrangeConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/orange/OrangeConfig;->getConfigs(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    .line 28
    if-eqz v5, :cond_d

    .line 29
    iget-object v0, p0, Lcom/taobao/tlog/adapter/TLogConfigSwitchReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 30
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 32
    const-string v0, "tlog_destroy"

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 33
    const-string v1, "tlog_switch"

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 34
    const-string v2, "tlog_level"

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 35
    const-string v3, "tlog_module"

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 36
    const-string v4, "tlog_endtime"

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 37
    const-string v7, "tlog_pull"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 39
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getTLogControler()Lcom/taobao/tao/log/ITLogController;

    move-result-object v7

    .line 40
    if-nez v7, :cond_0

    .line 126
    :goto_0
    return-void

    .line 44
    :cond_0
    const-string v8, "TLogConfigSwitchReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "The tlogDestroy is : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  tlogSwitch is : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  tlogLevel is : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  tlogModule is : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 47
    const-string v8, "true"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->delete()V

    .line 49
    invoke-interface {v7, v11}, Lcom/taobao/tao/log/ITLogController;->openLog(Z)V

    .line 50
    invoke-interface {v7, v12}, Lcom/taobao/tao/log/ITLogController;->destroyLog(Z)V

    .line 51
    const-string v0, "tlog_switch"

    invoke-interface {v6, v0, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 54
    :cond_1
    invoke-interface {v7, v11}, Lcom/taobao/tao/log/ITLogController;->destroyLog(Z)V

    .line 60
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 61
    const-string v0, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 62
    invoke-interface {v7, v12}, Lcom/taobao/tao/log/ITLogController;->openLog(Z)V

    .line 63
    const-string v0, "tlog_switch"

    invoke-interface {v6, v0, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 72
    :cond_2
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 73
    invoke-interface {v7, v2}, Lcom/taobao/tao/log/ITLogController;->setLogLevel(Ljava/lang/String;)V

    .line 74
    const-string v0, "tlog_level"

    invoke-interface {v6, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 80
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 81
    invoke-static {v3}, Lcom/taobao/tao/log/TLogUtils;->makeModule(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/taobao/tao/log/ITLogController;->setModuleFilter(Ljava/util/Map;)V

    .line 82
    const-string v0, "tlog_module"

    invoke-interface {v6, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 88
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 91
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    add-long/2addr v0, v2

    .line 96
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v8, 0x5265c00

    add-long/2addr v2, v8

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v4, v0, v8

    if-lez v4, :cond_a

    cmp-long v4, v0, v2

    if-gez v4, :cond_a

    .line 98
    invoke-interface {v7, v0, v1}, Lcom/taobao/tao/log/ITLogController;->setEndTime(J)V

    .line 99
    const-string v2, "tlog_endtime"

    invoke-interface {v6, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 112
    :goto_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 113
    const-string v0, "true"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 114
    invoke-static {}, Lcom/taobao/tao/log/TaskManager;->getInstance()Lcom/taobao/tao/log/TaskManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/tlog/adapter/TLogConfigSwitchReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/taobao/tao/log/TaskManager;->queryTraceStatus(Landroid/content/Context;)V

    .line 116
    :cond_3
    const-string v0, "tlog_pull"

    invoke-interface {v6, v0, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 119
    :cond_4
    const-string v0, "tlog_version"

    iget-object v1, p0, Lcom/taobao/tlog/adapter/TLogConfigSwitchReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/taobao/tao/log/TLogUtils;->getAppBuildVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 120
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 57
    :cond_5
    const-string v0, "TLogConfigSwitchReceiver"

    const-string v1, "The tlogDestroy is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 64
    :cond_6
    const-string v0, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    invoke-interface {v7, v11}, Lcom/taobao/tao/log/ITLogController;->openLog(Z)V

    .line 66
    const-string v0, "tlog_switch"

    invoke-interface {v6, v0, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_1

    .line 69
    :cond_7
    const-string v0, "TLogConfigSwitchReceiver"

    const-string v1, "The tlogSwitch is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 76
    :cond_8
    const-string v0, "TLogConfigSwitchReceiver"

    const-string v1, "The tlogLevel is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 84
    :cond_9
    const-string v0, "TLogConfigSwitchReceiver"

    const-string v1, "The tlogModule is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto/16 :goto_2

    .line 100
    :cond_a
    cmp-long v0, v0, v2

    if-ltz v0, :cond_b

    .line 101
    invoke-interface {v7, v2, v3}, Lcom/taobao/tao/log/ITLogController;->setEndTime(J)V

    .line 102
    const-string v0, "tlog_endtime"

    invoke-interface {v6, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_3

    .line 104
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {v7, v0, v1}, Lcom/taobao/tao/log/ITLogController;->setEndTime(J)V

    .line 105
    const-string v0, "tlog_endtime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v6, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_3

    .line 108
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {v7, v0, v1}, Lcom/taobao/tao/log/ITLogController;->setEndTime(J)V

    .line 109
    const-string v0, "tlog_endtime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v6, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_3

    .line 123
    :cond_d
    const-string v0, "TLogConfigSwitchReceiver"

    const-string v1, "TLogConfigSwitchReceiver --> the config is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
