.class public Lcom/umeng/commonsdk/statistics/idtracking/h;
.super Lcom/umeng/commonsdk/statistics/idtracking/a;
.source "NewUMIDTracker.java"


# static fields
.field private static final a:Ljava/lang/String; = "newumid"


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 19
    const-string v0, "newumid"

    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/statistics/idtracking/a;-><init>(Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/idtracking/h;->b:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 3

    .prologue
    .line 25
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/h;->b:Landroid/content/Context;

    const-string v1, "umid"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
