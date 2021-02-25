.class public Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;
.super Ljava/lang/Object;
.source "LinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/LinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "LayoutChunkResult"
.end annotation


# instance fields
.field public a:I

.field public b:Z

.field public c:Z

.field public d:Z


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 2393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2400
    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->a:I

    .line 2401
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->b:Z

    .line 2402
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->c:Z

    .line 2403
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->d:Z

    .line 2404
    return-void
.end method
