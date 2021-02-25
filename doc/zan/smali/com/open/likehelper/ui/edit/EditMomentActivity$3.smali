.class Lcom/open/likehelper/ui/edit/EditMomentActivity$3;
.super Ljava/lang/Object;
.source "EditMomentActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/open/likehelper/ui/edit/EditMomentActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/open/likehelper/ui/edit/EditMomentActivity;


# direct methods
.method constructor <init>(Lcom/open/likehelper/ui/edit/EditMomentActivity;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity$3;->a:Lcom/open/likehelper/ui/edit/EditMomentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 267
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity$3;->a:Lcom/open/likehelper/ui/edit/EditMomentActivity;

    invoke-static {v0}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->c(Lcom/open/likehelper/ui/edit/EditMomentActivity;)Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x9

    if-ltz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity$3;->a:Lcom/open/likehelper/ui/edit/EditMomentActivity;

    invoke-virtual {v0}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity$3;->a:Lcom/open/likehelper/ui/edit/EditMomentActivity;

    const v2, 0x7f070033

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v4, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/open/likehelper/util/ToastUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 273
    :goto_0
    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity$3;->a:Lcom/open/likehelper/ui/edit/EditMomentActivity;

    invoke-static {v0, v5}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->a(Lcom/open/likehelper/ui/edit/EditMomentActivity;Z)Z

    .line 271
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity$3;->a:Lcom/open/likehelper/ui/edit/EditMomentActivity;

    iget-object v1, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity$3;->a:Lcom/open/likehelper/ui/edit/EditMomentActivity;

    invoke-static {v1}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->c(Lcom/open/likehelper/ui/edit/EditMomentActivity;)Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x9

    invoke-static {v0, v1}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->a(Lcom/open/likehelper/ui/edit/EditMomentActivity;I)V

    goto :goto_0
.end method
