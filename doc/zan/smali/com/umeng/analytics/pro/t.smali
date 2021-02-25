.class public final Lcom/umeng/analytics/pro/t;
.super Ljava/lang/Object;
.source "SPHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/pro/t$a;
    }
.end annotation


# static fields
.field private static a:Lcom/umeng/analytics/pro/t; = null

.field private static b:Landroid/content/Context; = null

.field private static c:Ljava/lang/String; = null

.field private static final d:Ljava/lang/String; = "mobclick_agent_user_"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/analytics/pro/t;->a:Lcom/umeng/analytics/pro/t;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/umeng/analytics/pro/t;
    .locals 2

    .prologue
    .line 30
    const-class v1, Lcom/umeng/analytics/pro/t;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/umeng/analytics/pro/t;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 31
    if-eqz p0, :cond_0

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/pro/t;->b:Landroid/content/Context;

    .line 35
    :cond_0
    sget-object v0, Lcom/umeng/analytics/pro/t;->b:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/pro/t;->c:Ljava/lang/String;

    .line 38
    :cond_1
    invoke-static {}, Lcom/umeng/analytics/pro/t$a;->a()Lcom/umeng/analytics/pro/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private e()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 104
    sget-object v0, Lcom/umeng/analytics/pro/t;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 105
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/umeng/analytics/pro/t;->b:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mobclick_agent_user_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/umeng/analytics/pro/t;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 85
    sget-object v0, Lcom/umeng/analytics/pro/t;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_0

    .line 87
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "vt"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 89
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 78
    sget-object v0, Lcom/umeng/analytics/pro/t;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_0

    .line 80
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "st"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 82
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 42
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    invoke-direct {p0}, Lcom/umeng/analytics/pro/t;->e()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 44
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 46
    const-string v1, "au_p"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 47
    const-string v1, "au_u"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 48
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 50
    :cond_0
    return-void
.end method

.method public a()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Lcom/umeng/analytics/pro/t;->e()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 54
    if-eqz v1, :cond_0

    .line 55
    const-string v2, "au_p"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 56
    const-string v3, "au_u"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 58
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 61
    :cond_0
    return-object v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/umeng/analytics/pro/t;->e()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "au_p"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "au_u"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 67
    :cond_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 70
    sget-object v1, Lcom/umeng/analytics/pro/t;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 71
    if-eqz v1, :cond_0

    .line 72
    const-string v2, "st"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    :cond_0
    return-object v0
.end method

.method public d()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 92
    sget-object v1, Lcom/umeng/analytics/pro/t;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 93
    if-eqz v1, :cond_0

    .line 94
    const-string v2, "vt"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 96
    :cond_0
    return v0
.end method
