.class public Lcom/umeng/commonsdk/statistics/idtracking/n;
.super Lcom/umeng/commonsdk/statistics/idtracking/a;
.source "UMTTThreeTracker.java"


# static fields
.field private static final a:Ljava/lang/String; = "umtt3"


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 17
    const-string v0, "umtt3"

    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/statistics/idtracking/a;-><init>(Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/idtracking/n;->b:Landroid/content/Context;

    .line 19
    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 6

    .prologue
    .line 28
    const/4 v1, 0x0

    .line 30
    :try_start_0
    const-string v0, "com.umeng.commonsdk.internal.utils.SDStorageAgent"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    const-string v2, "getUmtt3"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 33
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/umeng/commonsdk/statistics/idtracking/n;->b:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v1, v0

    .line 39
    :goto_1
    return-object v1

    .line 36
    :catch_0
    move-exception v0

    goto :goto_1

    .line 35
    :catch_1
    move-exception v0

    goto :goto_1

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method
