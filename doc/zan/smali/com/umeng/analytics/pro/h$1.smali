.class Lcom/umeng/analytics/pro/h$1;
.super Ljava/lang/Object;
.source "AutoViewPageTracker.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/analytics/pro/h;


# direct methods
.method constructor <init>(Lcom/umeng/analytics/pro/h;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/umeng/analytics/pro/h$1;->a:Lcom/umeng/analytics/pro/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 213
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 209
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 189
    iget-object v0, p0, Lcom/umeng/analytics/pro/h$1;->a:Lcom/umeng/analytics/pro/h;

    invoke-static {v0, p1}, Lcom/umeng/analytics/pro/h;->b(Lcom/umeng/analytics/pro/h;Landroid/app/Activity;)V

    .line 190
    iget-object v0, p0, Lcom/umeng/analytics/pro/h$1;->a:Lcom/umeng/analytics/pro/h;

    iput-boolean v1, v0, Lcom/umeng/analytics/pro/h;->b:Z

    .line 192
    :try_start_0
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/b;->d()Ljava/lang/String;

    move-result-object v1

    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 197
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "@"

    aput-object v2, v4, v1

    .line 198
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, v5, v1

    .line 199
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_10034"

    const/4 v2, 0x0

    const-string v3, "\\|"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 202
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 170
    if-eqz p1, :cond_0

    .line 171
    iget-object v0, p0, Lcom/umeng/analytics/pro/h$1;->a:Lcom/umeng/analytics/pro/h;

    iget-boolean v0, v0, Lcom/umeng/analytics/pro/h;->b:Z

    if-eqz v0, :cond_2

    .line 172
    iget-object v0, p0, Lcom/umeng/analytics/pro/h$1;->a:Lcom/umeng/analytics/pro/h;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/umeng/analytics/pro/h;->b:Z

    .line 173
    sget-object v0, Lcom/umeng/analytics/pro/h;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 174
    sget-object v0, Lcom/umeng/analytics/pro/h;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/umeng/analytics/pro/h$1;->a:Lcom/umeng/analytics/pro/h;

    invoke-static {v0, p1}, Lcom/umeng/analytics/pro/h;->a(Lcom/umeng/analytics/pro/h;Landroid/app/Activity;)V

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/pro/h;->a:Ljava/lang/String;

    goto :goto_0

    .line 182
    :cond_2
    iget-object v0, p0, Lcom/umeng/analytics/pro/h$1;->a:Lcom/umeng/analytics/pro/h;

    invoke-static {v0, p1}, Lcom/umeng/analytics/pro/h;->a(Lcom/umeng/analytics/pro/h;Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 166
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 162
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 8

    .prologue
    .line 145
    :try_start_0
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/b;->e()Ljava/lang/String;

    move-result-object v1

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 150
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "@"

    aput-object v2, v4, v1

    .line 151
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .line 152
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "A_10035"

    const/4 v2, 0x0

    const-string v3, "\\|"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 155
    :catch_0
    move-exception v0

    goto :goto_0
.end method
