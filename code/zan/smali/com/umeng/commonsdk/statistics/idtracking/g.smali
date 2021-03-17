.class public Lcom/umeng/commonsdk/statistics/idtracking/g;
.super Lcom/umeng/commonsdk/statistics/idtracking/a;
.source "MacTracker.java"


# static fields
.field private static final a:Ljava/lang/String; = "mac"


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 17
    const-string v0, "mac"

    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/statistics/idtracking/a;-><init>(Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/idtracking/g;->b:Landroid/content/Context;

    .line 19
    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 3

    .prologue
    .line 23
    const/4 v0, 0x0

    .line 25
    :try_start_0
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/g;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getMac(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 33
    :goto_0
    return-object v0

    .line 26
    :catch_0
    move-exception v1

    .line 27
    sget-boolean v2, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v2, :cond_0

    .line 28
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 30
    :cond_0
    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/idtracking/g;->b:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/umeng/commonsdk/proguard/b;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
