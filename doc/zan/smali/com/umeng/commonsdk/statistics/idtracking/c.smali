.class public Lcom/umeng/commonsdk/statistics/idtracking/c;
.super Lcom/umeng/commonsdk/statistics/idtracking/a;
.source "IDFATracker.java"


# static fields
.field private static final a:Ljava/lang/String; = "idfa"


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 14
    const-string v0, "idfa"

    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/statistics/idtracking/a;-><init>(Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/idtracking/c;->b:Landroid/content/Context;

    .line 16
    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 22
    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method
