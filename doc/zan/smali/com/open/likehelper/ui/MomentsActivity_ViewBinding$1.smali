.class Lcom/open/likehelper/ui/MomentsActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "MomentsActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/open/likehelper/ui/MomentsActivity_ViewBinding;-><init>(Lcom/open/likehelper/ui/MomentsActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/open/likehelper/ui/MomentsActivity;

.field final synthetic b:Lcom/open/likehelper/ui/MomentsActivity_ViewBinding;


# direct methods
.method constructor <init>(Lcom/open/likehelper/ui/MomentsActivity_ViewBinding;Lcom/open/likehelper/ui/MomentsActivity;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/open/likehelper/ui/MomentsActivity_ViewBinding$1;->b:Lcom/open/likehelper/ui/MomentsActivity_ViewBinding;

    iput-object p2, p0, Lcom/open/likehelper/ui/MomentsActivity_ViewBinding$1;->a:Lcom/open/likehelper/ui/MomentsActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/open/likehelper/ui/MomentsActivity_ViewBinding$1;->a:Lcom/open/likehelper/ui/MomentsActivity;

    invoke-virtual {v0}, Lcom/open/likehelper/ui/MomentsActivity;->capture()V

    .line 39
    return-void
.end method
