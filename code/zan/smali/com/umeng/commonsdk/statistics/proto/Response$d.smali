.class Lcom/umeng/commonsdk/statistics/proto/Response$d;
.super Ljava/lang/Object;
.source "Response.java"

# interfaces
.implements Lcom/umeng/commonsdk/proguard/at;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/proto/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/commonsdk/statistics/proto/Response$1;)V
    .locals 0

    .prologue
    .line 439
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/proto/Response$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/umeng/commonsdk/statistics/proto/Response$c;
    .locals 2

    .prologue
    .line 442
    new-instance v0, Lcom/umeng/commonsdk/statistics/proto/Response$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/statistics/proto/Response$c;-><init>(Lcom/umeng/commonsdk/statistics/proto/Response$1;)V

    return-object v0
.end method

.method public synthetic b()Lcom/umeng/commonsdk/proguard/as;
    .locals 1

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/proto/Response$d;->a()Lcom/umeng/commonsdk/statistics/proto/Response$c;

    move-result-object v0

    return-object v0
.end method
