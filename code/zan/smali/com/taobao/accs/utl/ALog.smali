.class public Lcom/taobao/accs/utl/ALog;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/accs/utl/ALog$Level;
    }
.end annotation


# static fields
.field private static LOG_BREAK:Ljava/lang/Object;

.field private static isPrintLog:Z

.field private static isUseTlog:Z

.field private static preTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 9
    const-string v0, "accs."

    sput-object v0, Lcom/taobao/accs/utl/ALog;->preTag:Ljava/lang/String;

    .line 10
    const-string v0, "|"

    sput-object v0, Lcom/taobao/accs/utl/ALog;->LOG_BREAK:Ljava/lang/Object;

    .line 11
    sput-boolean v1, Lcom/taobao/accs/utl/ALog;->isPrintLog:Z

    .line 12
    sput-boolean v1, Lcom/taobao/accs/utl/ALog;->isUseTlog:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method static varargs buildLogMsg(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 174
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 175
    const-string v0, ""

    .line 205
    :goto_0
    return-object v0

    .line 178
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 181
    sget-object v2, Lcom/taobao/accs/utl/ALog;->LOG_BREAK:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[seq:%s]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    :cond_1
    if-eqz p0, :cond_2

    .line 185
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    :cond_2
    if-eqz p2, :cond_4

    .line 190
    :goto_1
    add-int/lit8 v2, v0, 0x1

    array-length v3, p2

    if-ge v2, v3, :cond_3

    .line 191
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    aget-object v2, p2, v0

    add-int/lit8 v0, v0, 0x1

    aget-object v3, p2, v0

    invoke-static {v2, v3}, Lcom/taobao/accs/utl/ALog;->formatKv(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 195
    :cond_3
    if-lez v0, :cond_4

    array-length v2, p2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_4

    .line 196
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    aget-object v0, p2, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 201
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 205
    const-string v0, ""

    goto :goto_0
.end method

.method private static buildLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    sget-object v0, Lcom/taobao/accs/utl/ALog;->preTag:Ljava/lang/String;

    return-object v0
.end method

.method private static buildLogTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/taobao/accs/utl/ALog;->preTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/taobao/accs/utl/ALog;->d1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method public static varargs d1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 66
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    sget-boolean v0, Lcom/taobao/accs/utl/ALog;->isUseTlog:Z

    if-eqz v0, :cond_1

    .line 68
    invoke-static {p0}, Lcom/taobao/accs/utl/ALog;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, p3}, Lcom/taobao/accs/utl/ALog;->buildLogMsg(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/tlog/adapter/AdapterForTLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    invoke-static {p0}, Lcom/taobao/accs/utl/ALog;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, p3}, Lcom/taobao/accs/utl/ALog;->buildLogMsg(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/taobao/accs/utl/ALog;->e1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 142
    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/taobao/accs/utl/ALog;->e1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    return-void
.end method

.method public static varargs e1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 145
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->E:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    sget-boolean v0, Lcom/taobao/accs/utl/ALog;->isUseTlog:Z

    if-eqz v0, :cond_1

    .line 147
    invoke-static {p0}, Lcom/taobao/accs/utl/ALog;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, p4}, Lcom/taobao/accs/utl/ALog;->buildLogMsg(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lcom/taobao/tlog/adapter/AdapterForTLog;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    invoke-static {p0}, Lcom/taobao/accs/utl/ALog;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, p4}, Lcom/taobao/accs/utl/ALog;->buildLogMsg(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static varargs e1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 131
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->E:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    sget-boolean v0, Lcom/taobao/accs/utl/ALog;->isUseTlog:Z

    if-eqz v0, :cond_1

    .line 133
    invoke-static {p0}, Lcom/taobao/accs/utl/ALog;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, p3}, Lcom/taobao/accs/utl/ALog;->buildLogMsg(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/tlog/adapter/AdapterForTLog;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    invoke-static {p0}, Lcom/taobao/accs/utl/ALog;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, p3}, Lcom/taobao/accs/utl/ALog;->buildLogMsg(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static formatKv(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/taobao/accs/utl/ALog;->i1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    return-void
.end method

.method public static varargs i1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 89
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    sget-boolean v0, Lcom/taobao/accs/utl/ALog;->isUseTlog:Z

    if-eqz v0, :cond_1

    .line 91
    invoke-static {p0}, Lcom/taobao/accs/utl/ALog;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, p3}, Lcom/taobao/accs/utl/ALog;->buildLogMsg(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/tlog/adapter/AdapterForTLog;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    invoke-static {p0}, Lcom/taobao/accs/utl/ALog;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, p3}, Lcom/taobao/accs/utl/ALog;->buildLogMsg(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static initALog(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 18
    sput-object p0, Lcom/taobao/accs/utl/ALog;->preTag:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public static isPrintLog()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public static isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 40
    sget-boolean v0, Lcom/taobao/accs/utl/ALog;->isPrintLog:Z

    if-nez v0, :cond_0

    .line 53
    :goto_0
    return v2

    .line 44
    :cond_0
    sget-boolean v0, Lcom/taobao/accs/utl/ALog;->isUseTlog:Z

    if-eqz v0, :cond_2

    .line 45
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->L:Lcom/taobao/accs/utl/ALog$Level;

    .line 47
    :try_start_0
    invoke-static {}, Lcom/taobao/tlog/adapter/AdapterForTLog;->getLogLevel()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/accs/utl/ALog$Level;->valueOf(Ljava/lang/String;)Lcom/taobao/accs/utl/ALog$Level;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 51
    :goto_1
    invoke-virtual {p0}, Lcom/taobao/accs/utl/ALog$Level;->ordinal()I

    move-result v3

    invoke-virtual {v0}, Lcom/taobao/accs/utl/ALog$Level;->ordinal()I

    move-result v0

    if-lt v3, v0, :cond_1

    move v0, v1

    :goto_2
    move v2, v0

    goto :goto_0

    .line 48
    :catch_0
    move-exception v3

    .line 49
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_1
    move v0, v2

    .line 51
    goto :goto_2

    :cond_2
    move v2, v1

    .line 53
    goto :goto_0
.end method

.method public static setEnableTLog(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 31
    sput-boolean p0, Lcom/taobao/accs/utl/ALog;->isUseTlog:Z

    .line 32
    return-void
.end method

.method public static setPrintLog(Z)V
    .locals 0

    .prologue
    .line 22
    sput-boolean p0, Lcom/taobao/accs/utl/ALog;->isPrintLog:Z

    .line 23
    return-void
.end method

.method public static setUseTlog(Z)V
    .locals 0

    .prologue
    .line 26
    sput-boolean p0, Lcom/taobao/accs/utl/ALog;->isUseTlog:Z

    .line 27
    return-void
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/taobao/accs/utl/ALog;->w1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 115
    return-void
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 101
    return-void
.end method

.method public static varargs w1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 117
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->W:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    sget-boolean v0, Lcom/taobao/accs/utl/ALog;->isUseTlog:Z

    if-eqz v0, :cond_1

    .line 119
    invoke-static {p0}, Lcom/taobao/accs/utl/ALog;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, p4}, Lcom/taobao/accs/utl/ALog;->buildLogMsg(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lcom/taobao/tlog/adapter/AdapterForTLog;->logw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    invoke-static {p0}, Lcom/taobao/accs/utl/ALog;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, p4}, Lcom/taobao/accs/utl/ALog;->buildLogMsg(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static varargs w1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 103
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->W:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    sget-boolean v0, Lcom/taobao/accs/utl/ALog;->isUseTlog:Z

    if-eqz v0, :cond_1

    .line 105
    invoke-static {p0}, Lcom/taobao/accs/utl/ALog;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, p3}, Lcom/taobao/accs/utl/ALog;->buildLogMsg(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/tlog/adapter/AdapterForTLog;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    invoke-static {p0}, Lcom/taobao/accs/utl/ALog;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, p3}, Lcom/taobao/accs/utl/ALog;->buildLogMsg(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
