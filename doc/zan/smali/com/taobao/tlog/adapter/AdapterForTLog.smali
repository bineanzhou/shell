.class public Lcom/taobao/tlog/adapter/AdapterForTLog;
.super Ljava/lang/Object;
.source "AdapterForTLog.java"


# static fields
.field private static isValid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14
    sput-boolean v1, Lcom/taobao/tlog/adapter/AdapterForTLog;->isValid:Z

    .line 18
    :try_start_0
    const-string v0, "com.taobao.tao.log.TLog"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 19
    const/4 v0, 0x1

    sput-boolean v0, Lcom/taobao/tlog/adapter/AdapterForTLog;->isValid:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :goto_0
    return-void

    .line 20
    :catch_0
    move-exception v0

    .line 21
    sput-boolean v1, Lcom/taobao/tlog/adapter/AdapterForTLog;->isValid:Z

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs formatLogd(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 40
    sget-boolean v0, Lcom/taobao/tlog/adapter/AdapterForTLog;->isValid:Z

    if-eqz v0, :cond_0

    .line 41
    invoke-static {p0, p1, p2}, Lcom/taobao/tao/log/TLog;->formatLogd(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    :cond_0
    return-void
.end method

.method public static varargs formatLoge(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 58
    sget-boolean v0, Lcom/taobao/tlog/adapter/AdapterForTLog;->isValid:Z

    if-eqz v0, :cond_0

    .line 59
    invoke-static {p0, p1, p2}, Lcom/taobao/tao/log/TLog;->formatLoge(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    :cond_0
    return-void
.end method

.method public static varargs formatLogi(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Lcom/taobao/tlog/adapter/AdapterForTLog;->isValid:Z

    if-eqz v0, :cond_0

    .line 47
    invoke-static {p0, p1, p2}, Lcom/taobao/tao/log/TLog;->formatLogi(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    :cond_0
    return-void
.end method

.method public static varargs formatLogv(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 34
    sget-boolean v0, Lcom/taobao/tlog/adapter/AdapterForTLog;->isValid:Z

    if-eqz v0, :cond_0

    .line 35
    invoke-static {p0, p1, p2}, Lcom/taobao/tao/log/TLog;->formatLogv(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    :cond_0
    return-void
.end method

.method public static varargs formatLogw(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 52
    sget-boolean v0, Lcom/taobao/tlog/adapter/AdapterForTLog;->isValid:Z

    if-eqz v0, :cond_0

    .line 53
    invoke-static {p0, p1, p2}, Lcom/taobao/tao/log/TLog;->formatLogw(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    :cond_0
    return-void
.end method

.method public static getLogLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/taobao/tlog/adapter/AdapterForTLog;->getLogLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLogLevel(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    sget-boolean v0, Lcom/taobao/tlog/adapter/AdapterForTLog;->isValid:Z

    if-eqz v0, :cond_2

    .line 221
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getTLogControler()Lcom/taobao/tao/log/ITLogController;

    move-result-object v0

    .line 222
    if-eqz v0, :cond_1

    .line 223
    invoke-interface {v0, p0}, Lcom/taobao/tao/log/ITLogController;->getLogLevel(Ljava/lang/String;)Lcom/taobao/tao/log/LogLevel;

    move-result-object v0

    .line 224
    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {v0}, Lcom/taobao/tao/log/LogLevel;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    :goto_0
    return-object v0

    .line 227
    :cond_0
    sget-object v0, Lcom/taobao/tao/log/LogLevel;->L:Lcom/taobao/tao/log/LogLevel;

    invoke-virtual {v0}, Lcom/taobao/tao/log/LogLevel;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 230
    :cond_1
    sget-object v0, Lcom/taobao/tao/log/LogLevel;->L:Lcom/taobao/tao/log/LogLevel;

    invoke-virtual {v0}, Lcom/taobao/tao/log/LogLevel;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 233
    :cond_2
    const-string v0, "L"

    goto :goto_0
.end method

.method public static isValid()Z
    .locals 1

    .prologue
    .line 30
    sget-boolean v0, Lcom/taobao/tlog/adapter/AdapterForTLog;->isValid:Z

    return v0
.end method

.method public static logd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 100
    sget-boolean v0, Lcom/taobao/tlog/adapter/AdapterForTLog;->isValid:Z

    if-eqz v0, :cond_0

    .line 101
    invoke-static {p0, p1}, Lcom/taobao/tao/log/TLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_0
    return-void
.end method

.method public static varargs logd(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 70
    sget-boolean v0, Lcom/taobao/tlog/adapter/AdapterForTLog;->isValid:Z

    if-eqz v0, :cond_0

    .line 71
    invoke-static {p0, p1}, Lcom/taobao/tao/log/TLog;->logd(Ljava/lang/String;[Ljava/lang/String;)V

    .line 73
    :cond_0
    return-void
.end method

.method public static loge(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 118
    sget-boolean v0, Lcom/taobao/tlog/adapter/AdapterForTLog;->isValid:Z

    if-eqz v0, :cond_0

    .line 119
    invoke-static {p0, p1}, Lcom/taobao/tao/log/TLog;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_0
    return-void
.end method

.method public static loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 130
    sget-boolean v0, Lcom/taobao/tlog/adapter/AdapterForTLog;->isValid:Z

    if-eqz v0, :cond_0

    .line 131
    invoke-static {p0, p1, p2}, Lcom/taobao/tao/log/TLog;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    :cond_0
    return-void
.end method

.method public static varargs loge(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 88
    sget-boolean v0, Lcom/taobao/tlog/adapter/AdapterForTLog;->isValid:Z

    if-eqz v0, :cond_0

    .line 89
    invoke-static {p0, p1}, Lcom/taobao/tao/log/TLog;->loge(Ljava/lang/String;[Ljava/lang/String;)V

    .line 91
    :cond_0
    return-void
.end method

.method public static logi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 106
    sget-boolean v0, Lcom/taobao/tlog/adapter/AdapterForTLog;->isValid:Z

    if-eqz v0, :cond_0

    .line 107
    invoke-static {p0, p1}, Lcom/taobao/tao/log/TLog;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_0
    return-void
.end method

.method public static varargs logi(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 76
    sget-boolean v0, Lcom/taobao/tlog/adapter/AdapterForTLog;->isValid:Z

    if-eqz v0, :cond_0

    .line 77
    invoke-static {p0, p1}, Lcom/taobao/tao/log/TLog;->logi(Ljava/lang/String;[Ljava/lang/String;)V

    .line 79
    :cond_0
    return-void
.end method

.method public static logicErrorLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 173
    sget-boolean v0, Lcom/taobao/tlog/adapter/AdapterForTLog;->isValid:Z

    if-nez v0, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    invoke-static {p0, p1, p2}, Lcom/taobao/tao/log/TLog;->logicErrorLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static logv(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 94
    sget-boolean v0, Lcom/taobao/tlog/adapter/AdapterForTLog;->isValid:Z

    if-eqz v0, :cond_0

    .line 95
    invoke-static {p0, p1}, Lcom/taobao/tao/log/TLog;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_0
    return-void
.end method

.method public static varargs logv(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 64
    sget-boolean v0, Lcom/taobao/tlog/adapter/AdapterForTLog;->isValid:Z

    if-eqz v0, :cond_0

    .line 65
    invoke-static {p0, p1}, Lcom/taobao/tao/log/TLog;->logv(Ljava/lang/String;[Ljava/lang/String;)V

    .line 67
    :cond_0
    return-void
.end method

.method public static logw(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 112
    sget-boolean v0, Lcom/taobao/tlog/adapter/AdapterForTLog;->isValid:Z

    if-eqz v0, :cond_0

    .line 113
    invoke-static {p0, p1}, Lcom/taobao/tao/log/TLog;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_0
    return-void
.end method

.method public static logw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 124
    sget-boolean v0, Lcom/taobao/tlog/adapter/AdapterForTLog;->isValid:Z

    if-eqz v0, :cond_0

    .line 125
    invoke-static {p0, p1, p2}, Lcom/taobao/tao/log/TLog;->logw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 127
    :cond_0
    return-void
.end method

.method public static varargs logw(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 82
    sget-boolean v0, Lcom/taobao/tlog/adapter/AdapterForTLog;->isValid:Z

    if-eqz v0, :cond_0

    .line 83
    invoke-static {p0, p1}, Lcom/taobao/tao/log/TLog;->logw(Ljava/lang/String;[Ljava/lang/String;)V

    .line 85
    :cond_0
    return-void
.end method

.method public static sceneLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 205
    sget-boolean v0, Lcom/taobao/tlog/adapter/AdapterForTLog;->isValid:Z

    if-nez v0, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    invoke-static {p0, p1, p2}, Lcom/taobao/tao/log/TLog;->sceneLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static traceLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 141
    sget-boolean v0, Lcom/taobao/tlog/adapter/AdapterForTLog;->isValid:Z

    if-nez v0, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    invoke-static {p0, p1}, Lcom/taobao/tao/log/TLog;->traceLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static userOptionLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 157
    sget-boolean v0, Lcom/taobao/tlog/adapter/AdapterForTLog;->isValid:Z

    if-nez v0, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    invoke-static {p0, p1, p2, p3}, Lcom/taobao/tao/log/TLog;->userOptionLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
