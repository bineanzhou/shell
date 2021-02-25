.class public abstract Landroid/support/v7/widget/RecyclerView$ItemAnimator;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ItemAnimator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;,
        Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;,
        Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;,
        Landroid/support/v7/widget/RecyclerView$ItemAnimator$AdapterChanges;
    }
.end annotation


# static fields
.field public static final h:I = 0x2

.field public static final i:I = 0x8

.field public static final j:I = 0x4

.field public static final k:I = 0x800

.field public static final l:I = 0x1000


# instance fields
.field private a:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;",
            ">;"
        }
    .end annotation
.end field

.field private c:J

.field private d:J

.field private e:J

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0xfa

    const-wide/16 v2, 0x78

    .line 11547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11603
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->a:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    .line 11604
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->b:Ljava/util/ArrayList;

    .line 11607
    iput-wide v2, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->c:J

    .line 11608
    iput-wide v2, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->d:J

    .line 11609
    iput-wide v4, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->e:J

    .line 11610
    iput-wide v4, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->f:J

    .line 12211
    return-void
.end method

.method static e(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 11932
    invoke-static {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->d(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v0

    and-int/lit8 v0, v0, 0xe

    .line 11933
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11934
    const/4 v0, 0x4

    .line 11943
    :cond_0
    :goto_0
    return v0

    .line 11936
    :cond_1
    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_0

    .line 11937
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->g()I

    move-result v1

    .line 11938
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->f()I

    move-result v2

    .line 11939
    if-eq v1, v3, :cond_0

    if-eq v2, v3, :cond_0

    if-eq v1, v2, :cond_0

    .line 11940
    or-int/lit16 v0, v0, 0x800

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 1
    .param p1    # Landroid/support/v7/widget/RecyclerView$State;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 11761
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->j()Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 1
    .param p1    # Landroid/support/v7/widget/RecyclerView$State;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$State;",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;"
        }
    .end annotation

    .prologue
    .line 11732
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->j()Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    return-object v0
.end method

.method public abstract a()V
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 11627
    iput-wide p1, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->e:J

    .line 11628
    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V
    .locals 0

    .prologue
    .line 11693
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->a:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    .line 11694
    return-void
.end method

.method public final a(Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;)Z
    .locals 2

    .prologue
    .line 12088
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->b()Z

    move-result v0

    .line 12089
    if-eqz p1, :cond_0

    .line 12090
    if-nez v0, :cond_1

    .line 12091
    invoke-interface {p1}, Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;->a()V

    .line 12096
    :cond_0
    :goto_0
    return v0

    .line 12093
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public abstract a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z
    .locals 1
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 12151
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->j(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    return v0
.end method

.method public b(J)V
    .locals 1

    .prologue
    .line 11645
    iput-wide p1, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->c:J

    .line 11646
    return-void
.end method

.method public abstract b()Z
.end method

.method public abstract b(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public c(J)V
    .locals 1

    .prologue
    .line 11663
    iput-wide p1, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->d:J

    .line 11664
    return-void
.end method

.method public abstract c(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract d()V
.end method

.method public d(J)V
    .locals 1

    .prologue
    .line 11681
    iput-wide p1, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->f:J

    .line 11682
    return-void
.end method

.method public abstract d(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
.end method

.method public e()J
    .locals 2

    .prologue
    .line 11618
    iget-wide v0, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->e:J

    return-wide v0
.end method

.method public f()J
    .locals 2

    .prologue
    .line 11636
    iget-wide v0, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->c:J

    return-wide v0
.end method

.method public final f(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .prologue
    .line 12016
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->g(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 12017
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->a:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    if-eqz v0, :cond_0

    .line 12018
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->a:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 12020
    :cond_0
    return-void
.end method

.method public g()J
    .locals 2

    .prologue
    .line 11654
    iget-wide v0, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->d:J

    return-wide v0
.end method

.method public g(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 12031
    return-void
.end method

.method public h()J
    .locals 2

    .prologue
    .line 11672
    iget-wide v0, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->f:J

    return-wide v0
.end method

.method public final h(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 12057
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->i(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 12058
    return-void
.end method

.method public final i()V
    .locals 3

    .prologue
    .line 12159
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 12160
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 12161
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

    invoke-interface {v0}, Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;->a()V

    .line 12160
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 12163
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 12164
    return-void
.end method

.method public i(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 12069
    return-void
.end method

.method public j()Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 1

    .prologue
    .line 12176
    new-instance v0, Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;-><init>()V

    return-object v0
.end method

.method public j(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 12121
    const/4 v0, 0x1

    return v0
.end method
