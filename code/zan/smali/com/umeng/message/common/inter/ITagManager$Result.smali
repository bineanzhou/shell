.class public Lcom/umeng/message/common/inter/ITagManager$Result;
.super Ljava/lang/Object;
.source "ITagManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/message/common/inter/ITagManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field private a:I

.field public errors:Ljava/lang/String;

.field public interval:J

.field public jsonString:Ljava/lang/String;

.field public last_requestTime:J

.field public msg:Ljava/lang/String;

.field public remain:I

.field public status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "fail"

    iput-object v0, p0, Lcom/umeng/message/common/inter/ITagManager$Result;->status:Ljava/lang/String;

    .line 46
    iput v1, p0, Lcom/umeng/message/common/inter/ITagManager$Result;->a:I

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/message/common/inter/ITagManager$Result;->msg:Ljava/lang/String;

    .line 53
    iput v1, p0, Lcom/umeng/message/common/inter/ITagManager$Result;->remain:I

    .line 58
    iput-wide v2, p0, Lcom/umeng/message/common/inter/ITagManager$Result;->interval:J

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/message/common/inter/ITagManager$Result;->errors:Ljava/lang/String;

    .line 65
    iput-wide v2, p0, Lcom/umeng/message/common/inter/ITagManager$Result;->last_requestTime:J

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/message/common/inter/ITagManager$Result;->jsonString:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Z)V
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "fail"

    iput-object v0, p0, Lcom/umeng/message/common/inter/ITagManager$Result;->status:Ljava/lang/String;

    .line 46
    iput v4, p0, Lcom/umeng/message/common/inter/ITagManager$Result;->a:I

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/message/common/inter/ITagManager$Result;->msg:Ljava/lang/String;

    .line 53
    iput v4, p0, Lcom/umeng/message/common/inter/ITagManager$Result;->remain:I

    .line 58
    iput-wide v2, p0, Lcom/umeng/message/common/inter/ITagManager$Result;->interval:J

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/message/common/inter/ITagManager$Result;->errors:Ljava/lang/String;

    .line 65
    iput-wide v2, p0, Lcom/umeng/message/common/inter/ITagManager$Result;->last_requestTime:J

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/message/common/inter/ITagManager$Result;->jsonString:Ljava/lang/String;

    .line 95
    if-nez p2, :cond_2

    .line 96
    :try_start_0
    const-string v0, "success"

    const-string v1, "fail"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/common/inter/ITagManager$Result;->status:Ljava/lang/String;

    .line 97
    const-string v0, "remain"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/umeng/message/common/inter/ITagManager$Result;->remain:I

    .line 98
    const-string v0, "interval"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/message/common/inter/ITagManager$Result;->interval:J

    .line 99
    const-string v0, "errors"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/common/inter/ITagManager$Result;->errors:Ljava/lang/String;

    .line 101
    const-string v0, "last_requestTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    const-string v0, "last_requestTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 118
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/common/inter/ITagManager$Result;->jsonString:Ljava/lang/String;

    .line 122
    :goto_1
    return-void

    .line 104
    :cond_1
    const-string v0, "last_requestTime"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/message/common/inter/ITagManager$Result;->last_requestTime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "com.umeng.message.common.inter.ITagManager.Result"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Json error"

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v4, v2}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    goto :goto_1

    .line 107
    :cond_2
    :try_start_1
    const-string v0, "code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/message/common/inter/ITagManager$Result;->a:I

    .line 108
    const-string v0, "msg"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/common/inter/ITagManager$Result;->msg:Ljava/lang/String;

    .line 109
    const-string v0, "status"

    const-string v1, "false"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/common/inter/ITagManager$Result;->status:Ljava/lang/String;

    .line 110
    const-string v0, "interval"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/message/common/inter/ITagManager$Result;->interval:J

    .line 111
    const-string v0, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/message/common/inter/ITagManager$Result;->last_requestTime:J

    .line 112
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_0

    .line 114
    const-string v1, "remain"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/umeng/message/common/inter/ITagManager$Result;->remain:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public setErrors(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/umeng/message/common/inter/ITagManager$Result;->errors:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setInterval(J)V
    .locals 1

    .prologue
    .line 78
    iput-wide p1, p0, Lcom/umeng/message/common/inter/ITagManager$Result;->interval:J

    .line 79
    return-void
.end method

.method public setLast_requestTime(J)V
    .locals 1

    .prologue
    .line 86
    iput-wide p1, p0, Lcom/umeng/message/common/inter/ITagManager$Result;->last_requestTime:J

    .line 87
    return-void
.end method

.method public setRemain(I)V
    .locals 0

    .prologue
    .line 74
    iput p1, p0, Lcom/umeng/message/common/inter/ITagManager$Result;->remain:I

    .line 75
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/umeng/message/common/inter/ITagManager$Result;->status:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/umeng/message/common/inter/ITagManager$Result;->jsonString:Ljava/lang/String;

    return-object v0
.end method
