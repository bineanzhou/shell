.class Lcom/open/likehelper/ui/edit/EditMomentActivity$CreateMomentTask;
.super Landroid/os/AsyncTask;
.source "EditMomentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/open/likehelper/ui/edit/EditMomentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CreateMomentTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/open/likehelper/ui/edit/EditMomentActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/open/likehelper/ui/edit/EditMomentActivity;)V
    .locals 1

    .prologue
    .line 576
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 577
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity$CreateMomentTask;->a:Ljava/lang/ref/WeakReference;

    .line 578
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Void;
    .locals 3

    .prologue
    .line 582
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity$CreateMomentTask;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/open/likehelper/ui/edit/EditMomentActivity;

    invoke-static {v0}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->f(Lcom/open/likehelper/ui/edit/EditMomentActivity;)Lcom/open/likehelper/bean/MomentBean;

    move-result-object v1

    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity$CreateMomentTask;->a:Ljava/lang/ref/WeakReference;

    .line 584
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/open/likehelper/ui/edit/EditMomentActivity;

    iget-object v0, v0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->mContentEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 583
    invoke-virtual {v1, v0}, Lcom/open/likehelper/bean/MomentBean;->setDescription(Ljava/lang/String;)V

    .line 585
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity$CreateMomentTask;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/open/likehelper/ui/edit/EditMomentActivity;

    invoke-static {v0}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->b(Lcom/open/likehelper/ui/edit/EditMomentActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity$CreateMomentTask;->a:Ljava/lang/ref/WeakReference;

    .line 586
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/open/likehelper/ui/edit/EditMomentActivity;

    invoke-static {v0}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->b(Lcom/open/likehelper/ui/edit/EditMomentActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 587
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 588
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity$CreateMomentTask;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/open/likehelper/ui/edit/EditMomentActivity;

    invoke-static {v0}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->b(Lcom/open/likehelper/ui/edit/EditMomentActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/open/likehelper/ui/edit/PhotoItemBean;

    .line 589
    iget-object v0, v0, Lcom/open/likehelper/ui/edit/PhotoItemBean;->a:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity$CreateMomentTask;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/open/likehelper/ui/edit/EditMomentActivity;

    invoke-static {v0}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->f(Lcom/open/likehelper/ui/edit/EditMomentActivity;)Lcom/open/likehelper/bean/MomentBean;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/open/likehelper/bean/MomentBean;->setImages(Ljava/util/List;)V

    .line 593
    :cond_1
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity$CreateMomentTask;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/open/likehelper/ui/edit/EditMomentActivity;

    invoke-static {v0}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->g(Lcom/open/likehelper/ui/edit/EditMomentActivity;)V

    .line 594
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity$CreateMomentTask;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/open/likehelper/ui/edit/EditMomentActivity;

    invoke-static {v0}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->h(Lcom/open/likehelper/ui/edit/EditMomentActivity;)V

    .line 596
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 609
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 612
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity$CreateMomentTask;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity$CreateMomentTask;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/open/likehelper/ui/edit/EditMomentActivity;

    invoke-static {v1}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->f(Lcom/open/likehelper/ui/edit/EditMomentActivity;)Lcom/open/likehelper/bean/MomentBean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/open/likehelper/ui/MomentsActivity;->a(Landroid/content/Context;Lcom/open/likehelper/bean/MomentBean;)V

    .line 614
    invoke-static {}, Lcom/open/likehelper/util/ProgressUtils;->a()V

    .line 615
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 573
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/open/likehelper/ui/edit/EditMomentActivity$CreateMomentTask;->a([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 573
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/open/likehelper/ui/edit/EditMomentActivity$CreateMomentTask;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 601
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 603
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity$CreateMomentTask;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity$CreateMomentTask;->a:Ljava/lang/ref/WeakReference;

    .line 604
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/open/likehelper/ui/edit/EditMomentActivity;

    const v2, 0x7f07002a

    invoke-virtual {v1, v2}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 603
    invoke-static {v0, v1}, Lcom/open/likehelper/util/ProgressUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 605
    return-void
.end method
