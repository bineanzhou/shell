.class public Lcom/umeng/analytics/game/a;
.super Ljava/lang/Object;
.source "GameState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/game/a$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private h:Lcom/umeng/analytics/game/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "um_g_cache"

    iput-object v0, p0, Lcom/umeng/analytics/game/a;->d:Ljava/lang/String;

    .line 29
    const-string v0, "single_level"

    iput-object v0, p0, Lcom/umeng/analytics/game/a;->e:Ljava/lang/String;

    .line 30
    const-string v0, "stat_player_level"

    iput-object v0, p0, Lcom/umeng/analytics/game/a;->f:Ljava/lang/String;

    .line 31
    const-string v0, "stat_game_level"

    iput-object v0, p0, Lcom/umeng/analytics/game/a;->g:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/game/a;->h:Lcom/umeng/analytics/game/a$a;

    .line 25
    iput-object p1, p0, Lcom/umeng/analytics/game/a;->c:Landroid/content/Context;

    .line 26
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/umeng/analytics/game/a$a;
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/umeng/analytics/game/a$a;

    invoke-direct {v0, p1}, Lcom/umeng/analytics/game/a$a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/umeng/analytics/game/a;->h:Lcom/umeng/analytics/game/a$a;

    .line 40
    iget-object v0, p0, Lcom/umeng/analytics/game/a;->h:Lcom/umeng/analytics/game/a$a;

    invoke-virtual {v0}, Lcom/umeng/analytics/game/a$a;->a()V

    .line 42
    iget-object v0, p0, Lcom/umeng/analytics/game/a;->h:Lcom/umeng/analytics/game/a$a;

    return-object v0
.end method

.method public a()V
    .locals 3

    .prologue
    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/game/a;->h:Lcom/umeng/analytics/game/a$a;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/umeng/analytics/game/a;->h:Lcom/umeng/analytics/game/a$a;

    invoke-virtual {v0}, Lcom/umeng/analytics/game/a$a;->b()V

    .line 50
    iget-object v0, p0, Lcom/umeng/analytics/game/a;->c:Landroid/content/Context;

    const-string v1, "um_g_cache"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 51
    const-string v1, "single_level"

    iget-object v2, p0, Lcom/umeng/analytics/game/a;->h:Lcom/umeng/analytics/game/a$a;

    invoke-static {v2}, Lcom/umeng/analytics/pro/s;->a(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 52
    const-string v1, "stat_player_level"

    iget-object v2, p0, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 53
    const-string v1, "stat_game_level"

    iget-object v2, p0, Lcom/umeng/analytics/game/a;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 54
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Lcom/umeng/analytics/game/a$a;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    .line 88
    iget-object v0, p0, Lcom/umeng/analytics/game/a;->h:Lcom/umeng/analytics/game/a$a;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/umeng/analytics/game/a;->h:Lcom/umeng/analytics/game/a$a;

    invoke-virtual {v0}, Lcom/umeng/analytics/game/a$a;->d()V

    .line 90
    iget-object v0, p0, Lcom/umeng/analytics/game/a;->h:Lcom/umeng/analytics/game/a$a;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/game/a$a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/umeng/analytics/game/a;->h:Lcom/umeng/analytics/game/a$a;

    .line 92
    iput-object v1, p0, Lcom/umeng/analytics/game/a;->h:Lcom/umeng/analytics/game/a$a;

    .line 96
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public b()V
    .locals 4

    .prologue
    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/game/a;->c:Landroid/content/Context;

    const-string v1, "um_g_cache"

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getInstance(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 63
    const-string v0, "single_level"

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 66
    invoke-static {v0}, Lcom/umeng/analytics/pro/s;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/game/a$a;

    iput-object v0, p0, Lcom/umeng/analytics/game/a;->h:Lcom/umeng/analytics/game/a$a;

    .line 67
    iget-object v0, p0, Lcom/umeng/analytics/game/a;->h:Lcom/umeng/analytics/game/a$a;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/umeng/analytics/game/a;->h:Lcom/umeng/analytics/game/a$a;

    invoke-virtual {v0}, Lcom/umeng/analytics/game/a$a;->c()V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    const-string v0, "stat_player_level"

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/umeng/analytics/game/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_1

    .line 77
    const-string v2, "userlevel"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/game/a;->b:Ljava/lang/String;

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/game/a;->a:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "stat_game_level"

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/game/a;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :cond_2
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    goto :goto_0
.end method
