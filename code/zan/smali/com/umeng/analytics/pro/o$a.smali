.class Lcom/umeng/analytics/pro/o$a;
.super Ljava/lang/Object;
.source "SessionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/umeng/analytics/pro/o;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Lcom/umeng/analytics/pro/o;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/o;-><init>(Lcom/umeng/analytics/pro/o$1;)V

    sput-object v0, Lcom/umeng/analytics/pro/o$a;->a:Lcom/umeng/analytics/pro/o;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/umeng/analytics/pro/o;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/umeng/analytics/pro/o$a;->a:Lcom/umeng/analytics/pro/o;

    return-object v0
.end method
