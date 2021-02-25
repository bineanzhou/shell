.class Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView$RecycledViewPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScrapData"
.end annotation


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field b:I

.field c:J

.field d:J


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 4961
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4962
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->a:Ljava/util/ArrayList;

    .line 4963
    const/4 v0, 0x5

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->b:I

    .line 4964
    iput-wide v2, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->c:J

    .line 4965
    iput-wide v2, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->d:J

    return-void
.end method
