.class Lcom/open/likehelper/ui/MomentsActivity$Adapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "MomentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/open/likehelper/ui/MomentsActivity$Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field final synthetic B:Lcom/open/likehelper/ui/MomentsActivity$Adapter;

.field imageView:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0c002a
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/open/likehelper/ui/MomentsActivity$Adapter;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 556
    iput-object p1, p0, Lcom/open/likehelper/ui/MomentsActivity$Adapter$ViewHolder;->B:Lcom/open/likehelper/ui/MomentsActivity$Adapter;

    .line 557
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 558
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 559
    return-void
.end method
