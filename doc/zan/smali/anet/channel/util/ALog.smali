.class public Lanet/channel/util/ALog;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/util/ALog$a;
    }
.end annotation


# static fields
.field private static LOG_BREAK:Ljava/lang/Object;

.field private static isPrintLog:Z

.field private static isUseTlog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 8
    const-string v0, "|"

    sput-object v0, Lanet/channel/util/ALog;->LOG_BREAK:Ljava/lang/Object;

    .line 9
    sput-boolean v1, Lanet/channel/util/ALog;->isPrintLog:Z

    .line 10
    sput-boolean v1, Lanet/channel/util/ALog;->isUseTlog:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method static varargs buildLogMsg(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 140
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 141
    const-string v0, ""

    .line 166
    :goto_0
    return-object v0

    .line 144
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 146
    sget-object v0, Lanet/channel/util/ALog;->LOG_BREAK:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[seq:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    :cond_1
    if-eqz p0, :cond_2

    .line 150
    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    :cond_2
    if-eqz p2, :cond_6

    .line 154
    const/4 v0, 0x0

    .line 155
    :goto_1
    add-int/lit8 v1, v0, 0x1

    array-length v3, p2

    if-ge v1, v3, :cond_5

    .line 156
    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v1, p2, v0

    if-eqz v1, :cond_3

    aget-object v1, p2, v0

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v1, v0, 0x1

    aget-object v1, p2, v1

    if-eqz v1, :cond_4

    add-int/lit8 v1, v0, 0x1

    aget-object v1, p2, v1

    :goto_3
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 155
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 156
    :cond_3
    const-string v1, ""

    goto :goto_2

    :cond_4
    const-string v1, ""

    goto :goto_3

    .line 161
    :cond_5
    array-length v1, p2

    if-ge v0, v1, :cond_6

    .line 162
    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    aget-object v0, p2, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 166
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static buildLogTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 136
    return-object p0
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 69
    const/4 v0, 0x1

    invoke-static {v0}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    sget-boolean v0, Lanet/channel/util/ALog;->isUseTlog:Z

    if-eqz v0, :cond_1

    .line 71
    invoke-static {p0}, Lanet/channel/util/ALog;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, p3}, Lanet/channel/util/ALog;->buildLogMsg(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/tlog/adapter/AdapterForTLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    invoke-static {p0}, Lanet/channel/util/ALog;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, p3}, Lanet/channel/util/ALog;->buildLogMsg(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 126
    const/4 v0, 0x4

    invoke-static {v0}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    sget-boolean v0, Lanet/channel/util/ALog;->isUseTlog:Z

    if-eqz v0, :cond_1

    .line 128
    invoke-static {p0}, Lanet/channel/util/ALog;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, p4}, Lanet/channel/util/ALog;->buildLogMsg(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lcom/taobao/tlog/adapter/AdapterForTLog;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    invoke-static {p0}, Lanet/channel/util/ALog;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, p4}, Lanet/channel/util/ALog;->buildLogMsg(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 116
    const/4 v0, 0x4

    invoke-static {v0}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    sget-boolean v0, Lanet/channel/util/ALog;->isUseTlog:Z

    if-eqz v0, :cond_1

    .line 118
    invoke-static {p0}, Lanet/channel/util/ALog;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, p3}, Lanet/channel/util/ALog;->buildLogMsg(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/tlog/adapter/AdapterForTLog;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    invoke-static {p0}, Lanet/channel/util/ALog;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, p3}, Lanet/channel/util/ALog;->buildLogMsg(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 86
    const/4 v0, 0x2

    invoke-static {v0}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    sget-boolean v0, Lanet/channel/util/ALog;->isUseTlog:Z

    if-eqz v0, :cond_1

    .line 88
    invoke-static {p0}, Lanet/channel/util/ALog;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, p3}, Lanet/channel/util/ALog;->buildLogMsg(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/tlog/adapter/AdapterForTLog;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    invoke-static {p0}, Lanet/channel/util/ALog;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, p3}, Lanet/channel/util/ALog;->buildLogMsg(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isPrintLog()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public static isPrintLog(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 56
    sget-boolean v2, Lanet/channel/util/ALog;->isPrintLog:Z

    if-nez v2, :cond_1

    move v0, v1

    .line 62
    :cond_0
    :goto_0
    return v0

    .line 59
    :cond_1
    sget-boolean v2, Lanet/channel/util/ALog;->isUseTlog:Z

    if-eqz v2, :cond_0

    .line 60
    invoke-static {}, Lcom/taobao/tlog/adapter/AdapterForTLog;->getLogLevel()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lanet/channel/util/ALog$a;->a(Ljava/lang/String;)I

    move-result v2

    if-ge p0, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static setEnableTLog(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 47
    sput-boolean p0, Lanet/channel/util/ALog;->isUseTlog:Z

    .line 48
    return-void
.end method

.method public static setPrintLog(Z)V
    .locals 0

    .prologue
    .line 38
    sput-boolean p0, Lanet/channel/util/ALog;->isPrintLog:Z

    .line 39
    return-void
.end method

.method public static setUseTlog(Z)V
    .locals 0

    .prologue
    .line 42
    sput-boolean p0, Lanet/channel/util/ALog;->isUseTlog:Z

    .line 43
    return-void
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 106
    const/4 v0, 0x3

    invoke-static {v0}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    sget-boolean v0, Lanet/channel/util/ALog;->isUseTlog:Z

    if-eqz v0, :cond_1

    .line 108
    invoke-static {p0}, Lanet/channel/util/ALog;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, p4}, Lanet/channel/util/ALog;->buildLogMsg(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lcom/taobao/tlog/adapter/AdapterForTLog;->logw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    invoke-static {p0}, Lanet/channel/util/ALog;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, p4}, Lanet/channel/util/ALog;->buildLogMsg(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 96
    const/4 v0, 0x3

    invoke-static {v0}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    sget-boolean v0, Lanet/channel/util/ALog;->isUseTlog:Z

    if-eqz v0, :cond_1

    .line 98
    invoke-static {p0}, Lanet/channel/util/ALog;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, p3}, Lanet/channel/util/ALog;->buildLogMsg(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/tlog/adapter/AdapterForTLog;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    invoke-static {p0}, Lanet/channel/util/ALog;->buildLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, p3}, Lanet/channel/util/ALog;->buildLogMsg(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
