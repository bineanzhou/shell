.class final Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;
.super Ljava/lang/Object;
.source "LinkedHashTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/LinkedHashTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AvlBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private leavesSkipped:I

.field private leavesToSkip:I

.field private size:I

.field private stack:Lcom/google/gson/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method add(Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 687
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v0, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v0, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 688
    iput v6, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 691
    iget v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 692
    iget v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    .line 693
    iget v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    .line 694
    iget v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v0, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 698
    iput-object p1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 699
    iget v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    .line 702
    iget v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 703
    iget v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    .line 704
    iget v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    .line 705
    iget v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    .line 721
    :cond_1
    const/4 v0, 0x4

    :goto_0
    iget v1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    add-int/lit8 v2, v0, -0x1

    and-int/2addr v1, v2

    add-int/lit8 v2, v0, -0x1

    if-ne v1, v2, :cond_5

    .line 722
    iget v1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    if-nez v1, :cond_3

    .line 724
    iget-object v1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 725
    iget-object v2, v1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 726
    iget-object v3, v2, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 727
    iget-object v4, v3, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v4, v2, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 728
    iput-object v2, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 730
    iput-object v3, v2, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 731
    iput-object v1, v2, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 732
    iget v4, v1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v2, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 733
    iput-object v2, v3, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 734
    iput-object v2, v1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 721
    :cond_2
    :goto_1
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 735
    :cond_3
    iget v1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    if-ne v1, v6, :cond_4

    .line 737
    iget-object v1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 738
    iget-object v2, v1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 739
    iput-object v2, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 741
    iput-object v1, v2, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 742
    iget v3, v1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 743
    iput-object v2, v1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 744
    iput v5, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    goto :goto_1

    .line 745
    :cond_4
    iget v1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 746
    iput v5, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    goto :goto_1

    .line 749
    :cond_5
    return-void
.end method

.method reset(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 679
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    .line 680
    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    .line 681
    iput v1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    .line 682
    iput v1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    .line 683
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 684
    return-void
.end method

.method root()Lcom/google/gson/internal/LinkedHashTreeMap$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 752
    iget-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 753
    iget-object v1, v0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    if-eqz v1, :cond_0

    .line 754
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 756
    :cond_0
    return-object v0
.end method
