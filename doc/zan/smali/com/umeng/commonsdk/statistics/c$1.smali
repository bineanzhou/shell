.class Lcom/umeng/commonsdk/statistics/c$1;
.super Ljava/lang/Object;
.source "NetWorkManager.java"

# interfaces
.implements Lcom/umeng/commonsdk/statistics/internal/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/commonsdk/statistics/c;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/commonsdk/statistics/c;


# direct methods
.method constructor <init>(Lcom/umeng/commonsdk/statistics/c;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/c$1;->a:Lcom/umeng/commonsdk/statistics/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImprintChanged(Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 106
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/c$1;->a:Lcom/umeng/commonsdk/statistics/c;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/c;->a(Lcom/umeng/commonsdk/statistics/c;)Lcom/umeng/commonsdk/statistics/noise/ABTest;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->onImprintChanged(Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;)V

    .line 107
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/c$1;->a:Lcom/umeng/commonsdk/statistics/c;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/c;->b(Lcom/umeng/commonsdk/statistics/c;)Lcom/umeng/commonsdk/statistics/noise/Defcon;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/commonsdk/statistics/noise/Defcon;->onImprintChanged(Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;)V

    .line 108
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/c$1;->a:Lcom/umeng/commonsdk/statistics/c;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/c;->c(Lcom/umeng/commonsdk/statistics/c;)Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->onImprintChanged(Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;)V

    .line 111
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/c$1;->a:Lcom/umeng/commonsdk/statistics/c;

    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/c$1;->a:Lcom/umeng/commonsdk/statistics/c;

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/c;->d(Lcom/umeng/commonsdk/statistics/c;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "track_list"

    invoke-static {v1, v2, v3}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/umeng/commonsdk/statistics/c;->a:Ljava/lang/String;

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/c$1;->a:Lcom/umeng/commonsdk/statistics/c;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/c;->d(Lcom/umeng/commonsdk/statistics/c;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "umtt"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/umeng/commonsdk/framework/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 131
    :try_start_1
    const-string v1, "com.umeng.commonsdk.internal.utils.SDStorageAgent"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 132
    if-eqz v1, :cond_0

    .line 133
    const-string v2, "updateUMTT"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 134
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/umeng/commonsdk/statistics/c$1;->a:Lcom/umeng/commonsdk/statistics/c;

    invoke-static {v5}, Lcom/umeng/commonsdk/statistics/c;->d(Lcom/umeng/commonsdk/statistics/c;)Landroid/content/Context;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    goto :goto_0

    .line 137
    :catch_1
    move-exception v0

    goto :goto_0

    .line 136
    :catch_2
    move-exception v0

    goto :goto_0
.end method
