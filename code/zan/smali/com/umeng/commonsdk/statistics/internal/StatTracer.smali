.class public Lcom/umeng/commonsdk/statistics/internal/StatTracer;
.super Ljava/lang/Object;
.source "StatTracer.java"

# interfaces
.implements Lcom/umeng/commonsdk/statistics/internal/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/statistics/internal/StatTracer$a;
    }
.end annotation


# static fields
.field private static final KEY_CLIENT_REQUEST_FAILED:Ljava/lang/String; = "failed_requests "

.field private static final KEY_CLIENT_REQUEST_LATENCY:Ljava/lang/String; = "last_request_spent_ms"

.field private static final KEY_CLIENT_REQUEST_SUCCESS:Ljava/lang/String; = "successful_request"

.field private static final KEY_CLIENT_REQUEST_TIME:Ljava/lang/String; = "last_request_time"

.field private static final KEY_FIRST_ACTIVATE_TIME:Ljava/lang/String; = "first_activate_time"

.field private static final KEY_LAST_REQ:Ljava/lang/String; = "last_req"

.field private static mContext:Landroid/content/Context;


# instance fields
.field private final MAX_REQUEST_LIMIT:I

.field private firstActivateTime:J

.field private lastRequestTime:J

.field public mFailedRequest:I

.field private mLastRequestLatency:I

.field public mLastSuccessfulRequestTime:J

.field public mSuccessfulRequest:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->mContext:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const v0, 0x36ee80

    iput v0, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->MAX_REQUEST_LIMIT:I

    .line 27
    iput-wide v2, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->lastRequestTime:J

    .line 28
    iput-wide v2, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->firstActivateTime:J

    .line 40
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->init()V

    .line 41
    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/commonsdk/statistics/internal/StatTracer$1;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/StatTracer;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 49
    if-eqz p0, :cond_1

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->mContext:Landroid/content/Context;

    .line 55
    :cond_0
    :goto_0
    sget-object v0, Lcom/umeng/commonsdk/statistics/internal/StatTracer$a;->a:Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    return-object v0

    .line 52
    :cond_1
    const-string v0, "inside StatTracer. please check context. context must not be null!"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private init()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 59
    sget-object v0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 61
    const-string v1, "successful_request"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->mSuccessfulRequest:I

    .line 62
    const-string v1, "failed_requests "

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->mFailedRequest:I

    .line 64
    const-string v1, "last_request_spent_ms"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->mLastRequestLatency:I

    .line 65
    const-string v1, "last_request_time"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->mLastSuccessfulRequestTime:J

    .line 67
    const-string v1, "last_req"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->lastRequestTime:J

    .line 68
    return-void
.end method


# virtual methods
.method public getFirstActivateTime()J
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 119
    sget-object v0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 120
    sget-object v1, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "first_activate_time"

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->firstActivateTime:J

    .line 121
    iget-wide v2, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->firstActivateTime:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->firstActivateTime:J

    .line 123
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "first_activate_time"

    iget-wide v2, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->firstActivateTime:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 125
    :cond_0
    iget-wide v0, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->firstActivateTime:J

    return-wide v0
.end method

.method public getLastReqTime()J
    .locals 2

    .prologue
    .line 129
    iget-wide v0, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->lastRequestTime:J

    return-wide v0
.end method

.method public getLastRequestLatency()I
    .locals 2

    .prologue
    const v0, 0x36ee80

    .line 71
    iget v1, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->mLastRequestLatency:I

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->mLastRequestLatency:I

    goto :goto_0
.end method

.method public isFirstRequest()Z
    .locals 4

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->mLastSuccessfulRequestTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 78
    :goto_0
    return v0

    .line 76
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logFailedRequest()V
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->mFailedRequest:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->mFailedRequest:I

    .line 90
    return-void
.end method

.method public logRequestEnd()V
    .locals 4

    .prologue
    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->lastRequestTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->mLastRequestLatency:I

    .line 98
    return-void
.end method

.method public logRequestStart()V
    .locals 2

    .prologue
    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->lastRequestTime:J

    .line 94
    return-void
.end method

.method public logSuccessfulRequest(Z)V
    .locals 2

    .prologue
    .line 82
    iget v0, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->mSuccessfulRequest:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->mSuccessfulRequest:I

    .line 83
    if-eqz p1, :cond_0

    .line 84
    iget-wide v0, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->lastRequestTime:J

    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->mLastSuccessfulRequestTime:J

    .line 86
    :cond_0
    return-void
.end method

.method public onRequestEnd()V
    .locals 0

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->logRequestEnd()V

    .line 140
    return-void
.end method

.method public onRequestFailed()V
    .locals 0

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->logFailedRequest()V

    .line 150
    return-void
.end method

.method public onRequestStart()V
    .locals 0

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->logRequestStart()V

    .line 135
    return-void
.end method

.method public onRequestSucceed(Z)V
    .locals 0

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->logSuccessfulRequest(Z)V

    .line 145
    return-void
.end method

.method public saveSate()V
    .locals 4

    .prologue
    .line 104
    sget-object v0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 106
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "successful_request"

    iget v2, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->mSuccessfulRequest:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "failed_requests "

    iget v2, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->mFailedRequest:I

    .line 107
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_request_spent_ms"

    iget v2, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->mLastRequestLatency:I

    .line 108
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_req"

    iget-wide v2, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->lastRequestTime:J

    .line 109
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_request_time"

    iget-wide v2, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->mLastSuccessfulRequestTime:J

    .line 110
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 111
    return-void
.end method
