.class Landroid/support/v7/util/DiffUtil$PostponedUpdate;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/util/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PostponedUpdate"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:Z


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    .prologue
    .line 850
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 851
    iput p1, p0, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->a:I

    .line 852
    iput p2, p0, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->b:I

    .line 853
    iput-boolean p3, p0, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->c:Z

    .line 854
    return-void
.end method
