.class public Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "MomentsActivity$HeaderAdapter$ViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder_ViewBinding;->a:Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder;

    .line 25
    const v0, 0x7f0c0058

    const-string v1, "field \'avatarImageView\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder;->avatarImageView:Landroid/widget/ImageView;

    .line 26
    const v0, 0x7f0c0085

    const-string v1, "field \'nameTextView\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder;->nameTextView:Landroid/widget/TextView;

    .line 27
    const v0, 0x7f0c0086

    const-string v1, "field \'descriptionTextView\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder;->descriptionTextView:Landroid/widget/TextView;

    .line 28
    const v0, 0x7f0c005b

    const-string v1, "field \'contentFrameLayout\'"

    const-class v2, Landroid/widget/FrameLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder;->contentFrameLayout:Landroid/widget/FrameLayout;

    .line 29
    const v0, 0x7f0c005d

    const-string v1, "field \'locationTextView\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder;->locationTextView:Landroid/widget/TextView;

    .line 30
    const v0, 0x7f0c0087

    const-string v1, "field \'timeTextView\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder;->timeTextView:Landroid/widget/TextView;

    .line 31
    const v0, 0x7f0c0089

    const-string v1, "field \'likeTextView\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder;->likeTextView:Landroid/widget/TextView;

    .line 32
    const v0, 0x7f0c0088

    const-string v1, "field \'likeCommentLinearLayout\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder;->likeCommentLinearLayout:Landroid/widget/LinearLayout;

    .line 33
    const v0, 0x7f0c0068

    const-string v1, "field \'dividerView\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder;->dividerView:Landroid/view/View;

    .line 34
    const v0, 0x7f0c008a

    const-string v1, "field \'commentFrameLayout\'"

    const-class v2, Landroid/widget/FrameLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder;->commentFrameLayout:Landroid/widget/FrameLayout;

    .line 35
    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 40
    iget-object v0, p0, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder_ViewBinding;->a:Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder;

    .line 41
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    iput-object v1, p0, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder_ViewBinding;->a:Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder;

    .line 44
    iput-object v1, v0, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder;->avatarImageView:Landroid/widget/ImageView;

    .line 45
    iput-object v1, v0, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder;->nameTextView:Landroid/widget/TextView;

    .line 46
    iput-object v1, v0, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder;->descriptionTextView:Landroid/widget/TextView;

    .line 47
    iput-object v1, v0, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder;->contentFrameLayout:Landroid/widget/FrameLayout;

    .line 48
    iput-object v1, v0, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder;->locationTextView:Landroid/widget/TextView;

    .line 49
    iput-object v1, v0, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder;->timeTextView:Landroid/widget/TextView;

    .line 50
    iput-object v1, v0, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder;->likeTextView:Landroid/widget/TextView;

    .line 51
    iput-object v1, v0, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder;->likeCommentLinearLayout:Landroid/widget/LinearLayout;

    .line 52
    iput-object v1, v0, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder;->dividerView:Landroid/view/View;

    .line 53
    iput-object v1, v0, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter$ViewHolder;->commentFrameLayout:Landroid/widget/FrameLayout;

    .line 54
    return-void
.end method
