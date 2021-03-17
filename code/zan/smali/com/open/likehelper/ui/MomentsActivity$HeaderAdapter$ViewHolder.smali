.class Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "MomentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field final synthetic B:Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter;

.field avatarImageView:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0c0058
    .end annotation
.end field

.field commentFrameLayout:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0c008a
    .end annotation
.end field

.field contentFrameLayout:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0c005b
    .end annotation
.end field

.field descriptionTextView:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0c0086
    .end annotation
.end field

.field dividerView:Landroid/view/View;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0c0068
    .end annotation
.end field

.field likeCommentLinearLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0c0088
    .end annotation
.end field

.field likeTextView:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0c0089
    .end annotation
.end field

.field locationTextView:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0c005d
    .end annotation
.end field

.field nameTextView:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0c0085
    .end annotation
.end field

.field timeTextView:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0c0087
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 399
    iput-object p1, p0, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder;->B:Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter;

    .line 400
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 401
    invoke-static {p1}, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter;->a(Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter;)Landroid/view/View;

    move-result-object v0

    if-ne p2, v0, :cond_0

    .line 403
    :goto_0
    return-void

    .line 402
    :cond_0
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    goto :goto_0
.end method
