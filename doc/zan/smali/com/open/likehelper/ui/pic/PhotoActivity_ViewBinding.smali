.class public Lcom/open/likehelper/ui/pic/PhotoActivity_ViewBinding;
.super Ljava/lang/Object;
.source "PhotoActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/open/likehelper/ui/pic/PhotoActivity;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/open/likehelper/ui/pic/PhotoActivity;)V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 29
    invoke-virtual {p1}, Lcom/open/likehelper/ui/pic/PhotoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/open/likehelper/ui/pic/PhotoActivity_ViewBinding;-><init>(Lcom/open/likehelper/ui/pic/PhotoActivity;Landroid/view/View;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/open/likehelper/ui/pic/PhotoActivity;Landroid/view/View;)V
    .locals 6
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    const v5, 0x7f0c0092

    const v4, 0x7f0c008f

    const v3, 0x7f0c006e

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/open/likehelper/ui/pic/PhotoActivity_ViewBinding;->a:Lcom/open/likehelper/ui/pic/PhotoActivity;

    .line 37
    const-string v0, "field \'topReturn\' and method \'onViewClicked\'"

    invoke-static {p2, v4, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 38
    const-string v0, "field \'topReturn\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {v1, v4, v0, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/open/likehelper/ui/pic/PhotoActivity;->topReturn:Landroid/widget/TextView;

    .line 39
    iput-object v1, p0, Lcom/open/likehelper/ui/pic/PhotoActivity_ViewBinding;->b:Landroid/view/View;

    .line 40
    new-instance v0, Lcom/open/likehelper/ui/pic/PhotoActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/open/likehelper/ui/pic/PhotoActivity_ViewBinding$1;-><init>(Lcom/open/likehelper/ui/pic/PhotoActivity_ViewBinding;Lcom/open/likehelper/ui/pic/PhotoActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    const v0, 0x7f0c0090

    const-string v1, "field \'topTitle\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/open/likehelper/ui/pic/PhotoActivity;->topTitle:Landroid/widget/TextView;

    .line 47
    const-string v0, "field \'topRightIcon\' and method \'onViewClicked\'"

    invoke-static {p2, v5, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 48
    const-string v0, "field \'topRightIcon\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {v1, v5, v0, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/open/likehelper/ui/pic/PhotoActivity;->topRightIcon:Landroid/widget/ImageView;

    .line 49
    iput-object v1, p0, Lcom/open/likehelper/ui/pic/PhotoActivity_ViewBinding;->c:Landroid/view/View;

    .line 50
    new-instance v0, Lcom/open/likehelper/ui/pic/PhotoActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/open/likehelper/ui/pic/PhotoActivity_ViewBinding$2;-><init>(Lcom/open/likehelper/ui/pic/PhotoActivity_ViewBinding;Lcom/open/likehelper/ui/pic/PhotoActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    const v0, 0x7f0c006c

    const-string v1, "field \'picGrid\'"

    const-class v2, Landroid/support/v7/widget/RecyclerView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Lcom/open/likehelper/ui/pic/PhotoActivity;->picGrid:Landroid/support/v7/widget/RecyclerView;

    .line 57
    const-string v0, "field \'sendBtn\' and method \'onViewClicked\'"

    invoke-static {p2, v3, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 58
    const-string v0, "field \'sendBtn\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {v1, v3, v0, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/open/likehelper/ui/pic/PhotoActivity;->sendBtn:Landroid/widget/TextView;

    .line 59
    iput-object v1, p0, Lcom/open/likehelper/ui/pic/PhotoActivity_ViewBinding;->d:Landroid/view/View;

    .line 60
    new-instance v0, Lcom/open/likehelper/ui/pic/PhotoActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/open/likehelper/ui/pic/PhotoActivity_ViewBinding$3;-><init>(Lcom/open/likehelper/ui/pic/PhotoActivity_ViewBinding;Lcom/open/likehelper/ui/pic/PhotoActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    const v0, 0x7f0c006d

    const-string v1, "field \'sendLayout\'"

    const-class v2, Landroid/widget/FrameLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/open/likehelper/ui/pic/PhotoActivity;->sendLayout:Landroid/widget/FrameLayout;

    .line 67
    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 72
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoActivity_ViewBinding;->a:Lcom/open/likehelper/ui/pic/PhotoActivity;

    .line 73
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    iput-object v1, p0, Lcom/open/likehelper/ui/pic/PhotoActivity_ViewBinding;->a:Lcom/open/likehelper/ui/pic/PhotoActivity;

    .line 76
    iput-object v1, v0, Lcom/open/likehelper/ui/pic/PhotoActivity;->topReturn:Landroid/widget/TextView;

    .line 77
    iput-object v1, v0, Lcom/open/likehelper/ui/pic/PhotoActivity;->topTitle:Landroid/widget/TextView;

    .line 78
    iput-object v1, v0, Lcom/open/likehelper/ui/pic/PhotoActivity;->topRightIcon:Landroid/widget/ImageView;

    .line 79
    iput-object v1, v0, Lcom/open/likehelper/ui/pic/PhotoActivity;->picGrid:Landroid/support/v7/widget/RecyclerView;

    .line 80
    iput-object v1, v0, Lcom/open/likehelper/ui/pic/PhotoActivity;->sendBtn:Landroid/widget/TextView;

    .line 81
    iput-object v1, v0, Lcom/open/likehelper/ui/pic/PhotoActivity;->sendLayout:Landroid/widget/FrameLayout;

    .line 83
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoActivity_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iput-object v1, p0, Lcom/open/likehelper/ui/pic/PhotoActivity_ViewBinding;->b:Landroid/view/View;

    .line 85
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoActivity_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iput-object v1, p0, Lcom/open/likehelper/ui/pic/PhotoActivity_ViewBinding;->c:Landroid/view/View;

    .line 87
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iput-object v1, p0, Lcom/open/likehelper/ui/pic/PhotoActivity_ViewBinding;->d:Landroid/view/View;

    .line 89
    return-void
.end method
