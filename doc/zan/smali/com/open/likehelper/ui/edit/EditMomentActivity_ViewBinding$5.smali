.class Lcom/open/likehelper/ui/edit/EditMomentActivity_ViewBinding$5;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "EditMomentActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/open/likehelper/ui/edit/EditMomentActivity_ViewBinding;-><init>(Lcom/open/likehelper/ui/edit/EditMomentActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/open/likehelper/ui/edit/EditMomentActivity;

.field final synthetic b:Lcom/open/likehelper/ui/edit/EditMomentActivity_ViewBinding;


# direct methods
.method constructor <init>(Lcom/open/likehelper/ui/edit/EditMomentActivity_ViewBinding;Lcom/open/likehelper/ui/edit/EditMomentActivity;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity_ViewBinding$5;->b:Lcom/open/likehelper/ui/edit/EditMomentActivity_ViewBinding;

    iput-object p2, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity_ViewBinding$5;->a:Lcom/open/likehelper/ui/edit/EditMomentActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity_ViewBinding$5;->a:Lcom/open/likehelper/ui/edit/EditMomentActivity;

    invoke-virtual {v0}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->chooseTime()V

    .line 96
    return-void
.end method
