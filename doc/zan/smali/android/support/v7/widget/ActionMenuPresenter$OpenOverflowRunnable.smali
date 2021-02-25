.class Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenOverflowRunnable"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ActionMenuPresenter;

.field private b:Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;)V
    .locals 0

    .prologue
    .line 794
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 795
    iput-object p2, p0, Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;->b:Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;

    .line 796
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 799
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-static {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->d(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 800
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-static {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->e(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->g()V

    .line 802
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-static {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->f(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 803
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;->b:Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 804
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;->b:Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;

    iput-object v1, v0, Landroid/support/v7/widget/ActionMenuPresenter;->h:Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;

    .line 806
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/ActionMenuPresenter;->j:Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    .line 807
    return-void
.end method
