.class Lcom/open/likehelper/base/upgrade/WMDialog$2;
.super Ljava/lang/Object;
.source "WMDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/open/likehelper/base/upgrade/WMDialog;->d(Lcom/open/likehelper/base/upgrade/WMDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/open/likehelper/base/upgrade/WMDialog;

.field final synthetic b:Lcom/open/likehelper/base/upgrade/WMDialog;


# direct methods
.method constructor <init>(Lcom/open/likehelper/base/upgrade/WMDialog;Lcom/open/likehelper/base/upgrade/WMDialog;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/open/likehelper/base/upgrade/WMDialog$2;->b:Lcom/open/likehelper/base/upgrade/WMDialog;

    iput-object p2, p0, Lcom/open/likehelper/base/upgrade/WMDialog$2;->a:Lcom/open/likehelper/base/upgrade/WMDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/open/likehelper/base/upgrade/WMDialog$2;->a:Lcom/open/likehelper/base/upgrade/WMDialog;

    invoke-static {v0}, Lcom/open/likehelper/base/upgrade/WMDialog;->c(Lcom/open/likehelper/base/upgrade/WMDialog;)Lcom/open/likehelper/base/upgrade/WMDialog$OnCancelClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/open/likehelper/base/upgrade/WMDialog$2;->a:Lcom/open/likehelper/base/upgrade/WMDialog;

    invoke-static {v0}, Lcom/open/likehelper/base/upgrade/WMDialog;->c(Lcom/open/likehelper/base/upgrade/WMDialog;)Lcom/open/likehelper/base/upgrade/WMDialog$OnCancelClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/open/likehelper/base/upgrade/WMDialog$OnCancelClickListener;->onCancel()V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/open/likehelper/base/upgrade/WMDialog$2;->b:Lcom/open/likehelper/base/upgrade/WMDialog;

    invoke-static {v0}, Lcom/open/likehelper/base/upgrade/WMDialog;->b(Lcom/open/likehelper/base/upgrade/WMDialog;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/open/likehelper/base/upgrade/WMDialog$2;->a:Lcom/open/likehelper/base/upgrade/WMDialog;

    invoke-virtual {v0}, Lcom/open/likehelper/base/upgrade/WMDialog;->dismiss()V

    .line 121
    :cond_1
    return-void
.end method
