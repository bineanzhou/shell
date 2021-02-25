.class Landroid/support/v7/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;
.super Landroid/support/v7/widget/ForwardingListener;
.source "ActionMenuItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/view/menu/ActionMenuItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionMenuItemForwardingListener"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/view/menu/ActionMenuItemView;


# direct methods
.method public constructor <init>(Landroid/support/v7/view/menu/ActionMenuItemView;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Landroid/support/v7/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->a:Landroid/support/v7/view/menu/ActionMenuItemView;

    .line 311
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ForwardingListener;-><init>(Landroid/view/View;)V

    .line 312
    return-void
.end method


# virtual methods
.method public a()Landroid/support/v7/view/menu/ShowableListMenu;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->a:Landroid/support/v7/view/menu/ActionMenuItemView;

    iget-object v0, v0, Landroid/support/v7/view/menu/ActionMenuItemView;->c:Landroid/support/v7/view/menu/ActionMenuItemView$PopupCallback;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->a:Landroid/support/v7/view/menu/ActionMenuItemView;

    iget-object v0, v0, Landroid/support/v7/view/menu/ActionMenuItemView;->c:Landroid/support/v7/view/menu/ActionMenuItemView$PopupCallback;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/ActionMenuItemView$PopupCallback;->a()Landroid/support/v7/view/menu/ShowableListMenu;

    move-result-object v0

    .line 319
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 325
    iget-object v1, p0, Landroid/support/v7/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->a:Landroid/support/v7/view/menu/ActionMenuItemView;

    iget-object v1, v1, Landroid/support/v7/view/menu/ActionMenuItemView;->b:Landroid/support/v7/view/menu/MenuBuilder$ItemInvoker;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->a:Landroid/support/v7/view/menu/ActionMenuItemView;

    iget-object v1, v1, Landroid/support/v7/view/menu/ActionMenuItemView;->b:Landroid/support/v7/view/menu/MenuBuilder$ItemInvoker;

    iget-object v2, p0, Landroid/support/v7/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->a:Landroid/support/v7/view/menu/ActionMenuItemView;

    iget-object v2, v2, Landroid/support/v7/view/menu/ActionMenuItemView;->a:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-interface {v1, v2}, Landroid/support/v7/view/menu/MenuBuilder$ItemInvoker;->invokeItem(Landroid/support/v7/view/menu/MenuItemImpl;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 326
    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->a()Landroid/support/v7/view/menu/ShowableListMenu;

    move-result-object v1

    .line 327
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/support/v7/view/menu/ShowableListMenu;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 329
    :cond_0
    return v0
.end method
