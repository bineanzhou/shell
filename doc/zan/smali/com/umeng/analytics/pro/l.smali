.class public Lcom/umeng/analytics/pro/l;
.super Ljava/lang/Object;
.source "DefconProcesser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/pro/l$a;
    }
.end annotation


# static fields
.field private static final a:I = 0x0

.field private static final b:I = 0x1

.field private static final c:I = 0x2

.field private static final d:I = 0x3


# instance fields
.field private final e:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/umeng/analytics/pro/l;->e:J

    .line 27
    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/pro/l$1;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/umeng/analytics/pro/l;-><init>()V

    return-void
.end method

.method public static a()Lcom/umeng/analytics/pro/l;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/umeng/analytics/pro/l$a;->a:Lcom/umeng/analytics/pro/l;

    return-object v0
.end method

.method private c()Lorg/json/JSONArray;
    .locals 10

    .prologue
    .line 113
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 115
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 116
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 118
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/umeng/analytics/b;->j()Lorg/json/JSONObject;

    move-result-object v4

    .line 119
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 120
    const-string v5, "_$!sp"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    :cond_0
    const-string v5, "_$!s_b"

    invoke-static {}, Lcom/umeng/analytics/pro/o;->a()Lcom/umeng/analytics/pro/o;

    move-result-object v6

    invoke-virtual {v6}, Lcom/umeng/analytics/pro/o;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    const-string v5, "_$!ts_b"

    invoke-virtual {v0, v5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 124
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 125
    const-string v6, "_$!s_e"

    invoke-static {}, Lcom/umeng/analytics/pro/o;->a()Lcom/umeng/analytics/pro/o;

    move-result-object v7

    invoke-virtual {v7}, Lcom/umeng/analytics/pro/o;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    const-string v6, "_$!ts_e"

    const-wide/32 v8, 0xea60

    add-long/2addr v2, v8

    invoke-virtual {v5, v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 128
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 129
    const-string v2, "_$!sp"

    invoke-virtual {v5, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    :cond_1
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    return-object v1

    .line 132
    :catch_0
    move-exception v0

    .line 133
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 38
    const-string v0, "defcon"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public a(Lorg/json/JSONObject;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 42
    invoke-virtual {p0, p2}, Lcom/umeng/analytics/pro/l;->a(Landroid/content/Context;)I

    move-result v0

    .line 43
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 44
    const-string v0, "events"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    invoke-static {p2}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/g;->f()V

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 48
    const-string v0, "events"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    const-string v0, "session"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    const-string v0, "pageview"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    :try_start_0
    const-string v0, "session"

    invoke-direct {p0}, Lcom/umeng/analytics/pro/l;->c()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_1
    invoke-static {p2}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/g;->f()V

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 59
    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 60
    const-string v0, "events"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    const-string v0, "session"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    const-string v0, "pageview"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    invoke-static {p2}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/g;->f()V

    goto :goto_0
.end method

.method public b()Lorg/json/JSONObject;
    .locals 8

    .prologue
    const-wide/32 v6, 0xea60

    .line 100
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 102
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 103
    const-string v1, "id"

    invoke-static {}, Lcom/umeng/analytics/pro/o;->a()Lcom/umeng/analytics/pro/o;

    move-result-object v4

    invoke-virtual {v4}, Lcom/umeng/analytics/pro/o;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    const-string v1, "start_time"

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 105
    const-string v1, "end_time"

    add-long/2addr v2, v6

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 106
    const-string v1, "duration"

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    return-object v0

    .line 107
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public b(Lorg/json/JSONObject;Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 69
    invoke-virtual {p0, p2}, Lcom/umeng/analytics/pro/l;->a(Landroid/content/Context;)I

    move-result v0

    .line 70
    if-ne v0, v2, :cond_1

    .line 71
    const-string v0, "error"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    const-string v0, "ekv"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 73
    const-string v0, "gkv"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 75
    invoke-static {p2}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lcom/umeng/analytics/pro/g;->a(ZZ)V

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 77
    const-string v0, "sessions"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 79
    :try_start_0
    const-string v0, "sessions"

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/l;->b()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_1
    const-string v0, "error"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    const-string v0, "ekv"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 84
    const-string v0, "gkv"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 86
    invoke-static {p2}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lcom/umeng/analytics/pro/g;->a(ZZ)V

    goto :goto_0

    .line 87
    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 88
    const-string v0, "sessions"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 89
    const-string v0, "error"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 90
    const-string v0, "ekv"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    const-string v0, "gkv"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 93
    invoke-static {p2}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lcom/umeng/analytics/pro/g;->a(ZZ)V

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    goto :goto_1
.end method
