.class public Lcom/umeng/commonsdk/internal/utils/a$b;
.super Ljava/lang/Object;
.source "ApplicationLayerUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/internal/utils/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 691
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 693
    iput-object v1, p0, Lcom/umeng/commonsdk/internal/utils/a$b;->a:Ljava/lang/String;

    .line 694
    const/4 v0, -0x1

    iput v0, p0, Lcom/umeng/commonsdk/internal/utils/a$b;->b:I

    .line 695
    iput-object v1, p0, Lcom/umeng/commonsdk/internal/utils/a$b;->c:Ljava/lang/String;

    .line 696
    return-void
.end method
