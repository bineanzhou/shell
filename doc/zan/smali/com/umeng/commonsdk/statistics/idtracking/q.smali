.class public Lcom/umeng/commonsdk/statistics/idtracking/q;
.super Lcom/umeng/commonsdk/statistics/idtracking/a;
.source "UOPTracker.java"


# static fields
.field public static final a:Ljava/lang/String; = "uopdta"

.field private static final b:Ljava/lang/String; = "uop"


# instance fields
.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 18
    const-string v0, "uop"

    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/statistics/idtracking/a;-><init>(Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/idtracking/q;->c:Landroid/content/Context;

    .line 20
    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 3

    .prologue
    .line 24
    const-string v0, ""

    .line 25
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/q;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    const-string v0, "uopdta"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    :cond_0
    return-object v0
.end method
