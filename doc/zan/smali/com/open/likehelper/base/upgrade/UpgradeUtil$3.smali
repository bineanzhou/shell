.class final Lcom/open/likehelper/base/upgrade/UpgradeUtil$3;
.super Ljava/lang/Object;
.source "UpgradeUtil.java"

# interfaces
.implements Lcom/open/likehelper/base/upgrade/WMDialog$OnConfirmClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/open/likehelper/base/upgrade/UpgradeUtil;->c(Landroid/app/Activity;Lcom/open/likehelper/base/upgrade/UpgradeBean;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/open/likehelper/base/upgrade/UpgradeBean;

.field final synthetic c:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/open/likehelper/base/upgrade/UpgradeBean;Z)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/open/likehelper/base/upgrade/UpgradeUtil$3;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/open/likehelper/base/upgrade/UpgradeUtil$3;->b:Lcom/open/likehelper/base/upgrade/UpgradeBean;

    iput-boolean p3, p0, Lcom/open/likehelper/base/upgrade/UpgradeUtil$3;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/open/likehelper/base/upgrade/UpgradeUtil$3;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/open/likehelper/base/upgrade/UpgradeUtil$3;->b:Lcom/open/likehelper/base/upgrade/UpgradeBean;

    invoke-virtual {v1}, Lcom/open/likehelper/base/upgrade/UpgradeBean;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/open/likehelper/base/upgrade/UpgradeUtil;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 116
    iget-boolean v0, p0, Lcom/open/likehelper/base/upgrade/UpgradeUtil$3;->c:Z

    if-eqz v0, :cond_0

    .line 117
    new-instance v0, Lcom/open/likehelper/base/upgrade/WMDialog$Builder;

    iget-object v1, p0, Lcom/open/likehelper/base/upgrade/UpgradeUtil$3;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/open/likehelper/base/upgrade/WMDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u6b63\u5728\u4e0b\u8f7d"

    invoke-virtual {v0, v1}, Lcom/open/likehelper/base/upgrade/WMDialog$Builder;->a(Ljava/lang/CharSequence;)Lcom/open/likehelper/base/upgrade/WMDialog$Builder;

    move-result-object v0

    const-string v1, "\u5f53\u524d\u5e94\u7528\u4e0d\u53ef\u7528\uff0c\u8bf7\u4e0b\u8f7d\u5b8c\u4e4b\u540e\u70b9\u51fb\u5b89\u88c5\u518d\u4f7f\u7528!"

    .line 118
    invoke-virtual {v0, v1}, Lcom/open/likehelper/base/upgrade/WMDialog$Builder;->b(Ljava/lang/CharSequence;)Lcom/open/likehelper/base/upgrade/WMDialog$Builder;

    move-result-object v0

    const/16 v1, 0x13

    .line 119
    invoke-virtual {v0, v1}, Lcom/open/likehelper/base/upgrade/WMDialog$Builder;->a(I)Lcom/open/likehelper/base/upgrade/WMDialog$Builder;

    move-result-object v0

    const-string v1, "\u5173\u95ed"

    new-instance v2, Lcom/open/likehelper/base/upgrade/UpgradeUtil$3$1;

    invoke-direct {v2, p0}, Lcom/open/likehelper/base/upgrade/UpgradeUtil$3$1;-><init>(Lcom/open/likehelper/base/upgrade/UpgradeUtil$3;)V

    .line 120
    invoke-virtual {v0, v1, v2}, Lcom/open/likehelper/base/upgrade/WMDialog$Builder;->a(Ljava/lang/String;Lcom/open/likehelper/base/upgrade/WMDialog$OnConfirmClickListener;)Lcom/open/likehelper/base/upgrade/WMDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 125
    invoke-virtual {v0, v1}, Lcom/open/likehelper/base/upgrade/WMDialog$Builder;->a(Z)Lcom/open/likehelper/base/upgrade/WMDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/open/likehelper/base/upgrade/WMDialog$Builder;->a()Lcom/open/likehelper/base/upgrade/WMDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/open/likehelper/base/upgrade/WMDialog;->show()V

    .line 127
    :cond_0
    return-void
.end method
