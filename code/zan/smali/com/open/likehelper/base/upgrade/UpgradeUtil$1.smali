.class final Lcom/open/likehelper/base/upgrade/UpgradeUtil$1;
.super Ljava/lang/Object;
.source "UpgradeUtil.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/open/likehelper/base/upgrade/UpgradeUtil;->a(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback",
        "<",
        "Lcom/open/likehelper/base/upgrade/UpgradeBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Z

.field final synthetic c:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Landroid/app/Activity;ZLandroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/open/likehelper/base/upgrade/UpgradeUtil$1;->a:Landroid/app/Activity;

    iput-boolean p2, p0, Lcom/open/likehelper/base/upgrade/UpgradeUtil$1;->b:Z

    iput-object p3, p0, Lcom/open/likehelper/base/upgrade/UpgradeUtil$1;->c:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<",
            "Lcom/open/likehelper/base/upgrade/UpgradeBean;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/open/likehelper/base/upgrade/UpgradeUtil$1;->a:Landroid/app/Activity;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/open/likehelper/base/upgrade/UpgradeUtil$1;->b:Z

    invoke-static {v0, v1, v2}, Lcom/open/likehelper/base/upgrade/UpgradeUtil;->a(Landroid/app/Activity;Lcom/open/likehelper/base/upgrade/UpgradeBean;Z)V

    .line 63
    iget-object v0, p0, Lcom/open/likehelper/base/upgrade/UpgradeUtil$1;->c:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/open/likehelper/base/upgrade/UpgradeUtil$1;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 66
    :cond_0
    return-void
.end method

.method public a(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<",
            "Lcom/open/likehelper/base/upgrade/UpgradeBean;",
            ">;",
            "Lretrofit2/Response",
            "<",
            "Lcom/open/likehelper/base/upgrade/UpgradeBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v1, p0, Lcom/open/likehelper/base/upgrade/UpgradeUtil$1;->a:Landroid/app/Activity;

    invoke-virtual {p2}, Lretrofit2/Response;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/open/likehelper/base/upgrade/UpgradeBean;

    iget-boolean v2, p0, Lcom/open/likehelper/base/upgrade/UpgradeUtil$1;->b:Z

    invoke-static {v1, v0, v2}, Lcom/open/likehelper/base/upgrade/UpgradeUtil;->a(Landroid/app/Activity;Lcom/open/likehelper/base/upgrade/UpgradeBean;Z)V

    .line 55
    iget-object v0, p0, Lcom/open/likehelper/base/upgrade/UpgradeUtil$1;->c:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/open/likehelper/base/upgrade/UpgradeUtil$1;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 58
    :cond_0
    return-void
.end method
