.class public Lcom/open/likehelper/base/upgrade/WMDialog_ViewBinding;
.super Ljava/lang/Object;
.source "WMDialog_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/open/likehelper/base/upgrade/WMDialog;


# direct methods
.method public constructor <init>(Lcom/open/likehelper/base/upgrade/WMDialog;)V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 20
    invoke-virtual {p1}, Lcom/open/likehelper/base/upgrade/WMDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/open/likehelper/base/upgrade/WMDialog_ViewBinding;-><init>(Lcom/open/likehelper/base/upgrade/WMDialog;Landroid/view/View;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/open/likehelper/base/upgrade/WMDialog;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/open/likehelper/base/upgrade/WMDialog_ViewBinding;->a:Lcom/open/likehelper/base/upgrade/WMDialog;

    .line 27
    const v0, 0x7f0c007b

    const-string v1, "field \'tvTitle\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/open/likehelper/base/upgrade/WMDialog;->tvTitle:Landroid/widget/TextView;

    .line 28
    const v0, 0x7f0c007c

    const-string v1, "field \'tvMessage\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/open/likehelper/base/upgrade/WMDialog;->tvMessage:Landroid/widget/TextView;

    .line 29
    const v0, 0x7f0c007d

    const-string v1, "field \'btnOk\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/open/likehelper/base/upgrade/WMDialog;->btnOk:Landroid/widget/TextView;

    .line 30
    const v0, 0x7f0c007f

    const-string v1, "field \'btnCancel\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/open/likehelper/base/upgrade/WMDialog;->btnCancel:Landroid/widget/TextView;

    .line 31
    const v0, 0x7f0c0080

    const-string v1, "field \'btnLine\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/open/likehelper/base/upgrade/WMDialog;->btnLine:Landroid/view/View;

    .line 32
    const v0, 0x7f0c0081

    const-string v1, "field \'btnConfirm\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/open/likehelper/base/upgrade/WMDialog;->btnConfirm:Landroid/widget/TextView;

    .line 33
    const v0, 0x7f0c007e

    const-string v1, "field \'layoutOperate\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/open/likehelper/base/upgrade/WMDialog;->layoutOperate:Landroid/widget/LinearLayout;

    .line 34
    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 39
    iget-object v0, p0, Lcom/open/likehelper/base/upgrade/WMDialog_ViewBinding;->a:Lcom/open/likehelper/base/upgrade/WMDialog;

    .line 40
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    iput-object v1, p0, Lcom/open/likehelper/base/upgrade/WMDialog_ViewBinding;->a:Lcom/open/likehelper/base/upgrade/WMDialog;

    .line 43
    iput-object v1, v0, Lcom/open/likehelper/base/upgrade/WMDialog;->tvTitle:Landroid/widget/TextView;

    .line 44
    iput-object v1, v0, Lcom/open/likehelper/base/upgrade/WMDialog;->tvMessage:Landroid/widget/TextView;

    .line 45
    iput-object v1, v0, Lcom/open/likehelper/base/upgrade/WMDialog;->btnOk:Landroid/widget/TextView;

    .line 46
    iput-object v1, v0, Lcom/open/likehelper/base/upgrade/WMDialog;->btnCancel:Landroid/widget/TextView;

    .line 47
    iput-object v1, v0, Lcom/open/likehelper/base/upgrade/WMDialog;->btnLine:Landroid/view/View;

    .line 48
    iput-object v1, v0, Lcom/open/likehelper/base/upgrade/WMDialog;->btnConfirm:Landroid/widget/TextView;

    .line 49
    iput-object v1, v0, Lcom/open/likehelper/base/upgrade/WMDialog;->layoutOperate:Landroid/widget/LinearLayout;

    .line 50
    return-void
.end method
