.class Lcom/open/likehelper/util/PhotoSelectUtil$3;
.super Ljava/lang/Object;
.source "PhotoSelectUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/open/likehelper/util/PhotoSelectUtil;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/open/likehelper/util/PhotoSelectUtil;


# direct methods
.method constructor <init>(Lcom/open/likehelper/util/PhotoSelectUtil;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/open/likehelper/util/PhotoSelectUtil$3;->b:Lcom/open/likehelper/util/PhotoSelectUtil;

    iput-object p2, p0, Lcom/open/likehelper/util/PhotoSelectUtil$3;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/open/likehelper/util/PhotoSelectUtil$3;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/open/likehelper/util/PhotoSelectUtil$3;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/open/likehelper/util/PhotoSelectUtil$3;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 211
    :cond_0
    return-void
.end method
