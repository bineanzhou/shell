.class Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecyclerViewDataObserver"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 4879
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    .line 4880
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 4884
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 4885
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->U:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$State;->h:Z

    .line 4887
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->setDataSetChangedAfterLayout()V

    .line 4888
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->u:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AdapterHelper;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4889
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 4891
    :cond_0
    return-void
.end method

.method public a(III)V
    .locals 2

    .prologue
    .line 4919
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 4920
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->u:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/AdapterHelper;->a(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4921
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->b()V

    .line 4923
    :cond_0
    return-void
.end method

.method public a(IILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 4895
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 4896
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->u:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/AdapterHelper;->a(IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4897
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->b()V

    .line 4899
    :cond_0
    return-void
.end method

.method b()V
    .locals 2

    .prologue
    .line 4926
    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->a:Landroid/support/v7/widget/RecyclerView;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView;->G:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->a:Landroid/support/v7/widget/RecyclerView;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView;->F:Z

    if-eqz v0, :cond_0

    .line 4927
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->y:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 4932
    :goto_0
    return-void

    .line 4929
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->K:Z

    .line 4930
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    goto :goto_0
.end method

.method public b(II)V
    .locals 2

    .prologue
    .line 4903
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 4904
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->u:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/AdapterHelper;->b(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4905
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->b()V

    .line 4907
    :cond_0
    return-void
.end method

.method public c(II)V
    .locals 2

    .prologue
    .line 4911
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 4912
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->u:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/AdapterHelper;->c(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4913
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->b()V

    .line 4915
    :cond_0
    return-void
.end method
