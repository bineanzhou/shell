.class Landroid/support/v7/widget/PopupMenu$3;
.super Landroid/support/v7/widget/ForwardingListener;
.source "PopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/PopupMenu;->b()Landroid/view/View$OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/PopupMenu;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/PopupMenu;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Landroid/support/v7/widget/PopupMenu$3;->a:Landroid/support/v7/widget/PopupMenu;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/support/v7/view/menu/ShowableListMenu;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Landroid/support/v7/widget/PopupMenu$3;->a:Landroid/support/v7/widget/PopupMenu;

    iget-object v0, v0, Landroid/support/v7/widget/PopupMenu;->a:Landroid/support/v7/view/menu/MenuPopupHelper;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuPopupHelper;->d()Landroid/support/v7/view/menu/MenuPopup;

    move-result-object v0

    return-object v0
.end method

.method protected b()Z
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Landroid/support/v7/widget/PopupMenu$3;->a:Landroid/support/v7/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/support/v7/widget/PopupMenu;->e()V

    .line 174
    const/4 v0, 0x1

    return v0
.end method

.method protected c()Z
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Landroid/support/v7/widget/PopupMenu$3;->a:Landroid/support/v7/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/support/v7/widget/PopupMenu;->f()V

    .line 180
    const/4 v0, 0x1

    return v0
.end method
