.class Lcom/umeng/commonsdk/statistics/proto/c$b;
.super Ljava/lang/Object;
.source "IdTracking.java"

# interfaces
.implements Lcom/umeng/commonsdk/proguard/at;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/proto/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/commonsdk/statistics/proto/c$1;)V
    .locals 0

    .prologue
    .line 403
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/proto/c$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/umeng/commonsdk/statistics/proto/c$a;
    .locals 2

    .prologue
    .line 406
    new-instance v0, Lcom/umeng/commonsdk/statistics/proto/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/statistics/proto/c$a;-><init>(Lcom/umeng/commonsdk/statistics/proto/c$1;)V

    return-object v0
.end method

.method public synthetic b()Lcom/umeng/commonsdk/proguard/as;
    .locals 1

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/proto/c$b;->a()Lcom/umeng/commonsdk/statistics/proto/c$a;

    move-result-object v0

    return-object v0
.end method
