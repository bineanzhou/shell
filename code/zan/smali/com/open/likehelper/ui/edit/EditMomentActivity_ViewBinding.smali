.class public Lcom/open/likehelper/ui/edit/EditMomentActivity_ViewBinding;
.super Ljava/lang/Object;
.source "EditMomentActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/open/likehelper/ui/edit/EditMomentActivity;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/open/likehelper/ui/edit/EditMomentActivity;)V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p1}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/open/likehelper/ui/edit/EditMomentActivity_ViewBinding;-><init>(Lcom/open/likehelper/ui/edit/EditMomentActivity;Landroid/view/View;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/open/likehelper/ui/edit/EditMomentActivity;Landroid/view/View;)V
    .locals 7
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    const v6, 0x7f0c0064

    const v5, 0x7f0c005d

    const v4, 0x7f0c005a

    const v3, 0x7f0c0058

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity_ViewBinding;->a:Lcom/open/likehelper/ui/edit/EditMomentActivity;

    .line 44
    const v0, 0x7f0c0057

    const-string v1, "field \'mParentLayout\'"

    const-class v2, Landroid/widget/ScrollView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p1, Lcom/open/likehelper/ui/edit/EditMomentActivity;->mParentLayout:Landroid/widget/ScrollView;

    .line 45
    const v0, 0x7f0c002e

    const-string v1, "field \'mTitleBar\'"

    const-class v2, Lcom/open/likehelper/widget/TitleBar;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/open/likehelper/widget/TitleBar;

    iput-object v0, p1, Lcom/open/likehelper/ui/edit/EditMomentActivity;->mTitleBar:Lcom/open/likehelper/widget/TitleBar;

    .line 46
    const-string v0, "field \'mAvatar\' and method \'chooseAvatar\'"

    invoke-static {p2, v3, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 47
    const-string v0, "field \'mAvatar\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {v1, v3, v0, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/open/likehelper/ui/edit/EditMomentActivity;->mAvatar:Landroid/widget/ImageView;

    .line 48
    iput-object v1, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity_ViewBinding;->b:Landroid/view/View;

    .line 49
    new-instance v0, Lcom/open/likehelper/ui/edit/EditMomentActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/open/likehelper/ui/edit/EditMomentActivity_ViewBinding$1;-><init>(Lcom/open/likehelper/ui/edit/EditMomentActivity_ViewBinding;Lcom/open/likehelper/ui/edit/EditMomentActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    const v0, 0x7f0c0059

    const-string v1, "field \'mNicknameEdit\'"

    const-class v2, Landroid/widget/EditText;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/open/likehelper/ui/edit/EditMomentActivity;->mNicknameEdit:Landroid/widget/EditText;

    .line 56
    const-string v0, "field \'mGetInfoText\' and method \'getInfoFromWechat\'"

    invoke-static {p2, v4, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 57
    const-string v0, "field \'mGetInfoText\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {v1, v4, v0, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/open/likehelper/ui/edit/EditMomentActivity;->mGetInfoText:Landroid/widget/TextView;

    .line 58
    iput-object v1, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity_ViewBinding;->c:Landroid/view/View;

    .line 59
    new-instance v0, Lcom/open/likehelper/ui/edit/EditMomentActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/open/likehelper/ui/edit/EditMomentActivity_ViewBinding$2;-><init>(Lcom/open/likehelper/ui/edit/EditMomentActivity_ViewBinding;Lcom/open/likehelper/ui/edit/EditMomentActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const v0, 0x7f0c005b

    const-string v1, "field \'mContentEdit\'"

    const-class v2, Landroid/widget/EditText;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/open/likehelper/ui/edit/EditMomentActivity;->mContentEdit:Landroid/widget/EditText;

    .line 66
    const v0, 0x7f0c005c

    const-string v1, "field \'mPhotoGrid\'"

    const-class v2, Lcom/open/likehelper/widget/GridViewForScrollView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/open/likehelper/widget/GridViewForScrollView;

    iput-object v0, p1, Lcom/open/likehelper/ui/edit/EditMomentActivity;->mPhotoGrid:Lcom/open/likehelper/widget/GridViewForScrollView;

    .line 67
    const-string v0, "field \'mLocationText\' and method \'chooseLocation\'"

    invoke-static {p2, v5, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 68
    const-string v0, "field \'mLocationText\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {v1, v5, v0, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/open/likehelper/ui/edit/EditMomentActivity;->mLocationText:Landroid/widget/TextView;

    .line 69
    iput-object v1, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity_ViewBinding;->d:Landroid/view/View;

    .line 70
    new-instance v0, Lcom/open/likehelper/ui/edit/EditMomentActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/open/likehelper/ui/edit/EditMomentActivity_ViewBinding$3;-><init>(Lcom/open/likehelper/ui/edit/EditMomentActivity_ViewBinding;Lcom/open/likehelper/ui/edit/EditMomentActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    const v0, 0x7f0c005e

    const-string v1, "field \'mLikeSeekBar\'"

    const-class v2, Landroid/widget/SeekBar;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p1, Lcom/open/likehelper/ui/edit/EditMomentActivity;->mLikeSeekBar:Landroid/widget/SeekBar;

    .line 77
    const v0, 0x7f0c005f

    const-string v1, "field \'mLikeCountText\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/open/likehelper/ui/edit/EditMomentActivity;->mLikeCountText:Landroid/widget/TextView;

    .line 78
    const v0, 0x7f0c0060

    const-string v1, "field \'mCommentSeekBar\'"

    const-class v2, Landroid/widget/SeekBar;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p1, Lcom/open/likehelper/ui/edit/EditMomentActivity;->mCommentSeekBar:Landroid/widget/SeekBar;

    .line 79
    const v0, 0x7f0c0061

    const-string v1, "field \'mCommentCountText\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/open/likehelper/ui/edit/EditMomentActivity;->mCommentCountText:Landroid/widget/TextView;

    .line 80
    const v0, 0x7f0c0063

    const-string v1, "field \'mPublishTimeText\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/open/likehelper/ui/edit/EditMomentActivity;->mPublishTimeText:Landroid/widget/TextView;

    .line 81
    const-string v0, "field \'mCreateMomentText\' and method \'createMoment\'"

    invoke-static {p2, v6, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 82
    const-string v0, "field \'mCreateMomentText\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {v1, v6, v0, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/open/likehelper/ui/edit/EditMomentActivity;->mCreateMomentText:Landroid/widget/TextView;

    .line 83
    iput-object v1, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity_ViewBinding;->e:Landroid/view/View;

    .line 84
    new-instance v0, Lcom/open/likehelper/ui/edit/EditMomentActivity_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcom/open/likehelper/ui/edit/EditMomentActivity_ViewBinding$4;-><init>(Lcom/open/likehelper/ui/edit/EditMomentActivity_ViewBinding;Lcom/open/likehelper/ui/edit/EditMomentActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    const v0, 0x7f0c0062

    const-string v1, "method \'chooseTime\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 91
    iput-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity_ViewBinding;->f:Landroid/view/View;

    .line 92
    new-instance v1, Lcom/open/likehelper/ui/edit/EditMomentActivity_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lcom/open/likehelper/ui/edit/EditMomentActivity_ViewBinding$5;-><init>(Lcom/open/likehelper/ui/edit/EditMomentActivity_ViewBinding;Lcom/open/likehelper/ui/edit/EditMomentActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 103
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity_ViewBinding;->a:Lcom/open/likehelper/ui/edit/EditMomentActivity;

    .line 104
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_0
    iput-object v1, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity_ViewBinding;->a:Lcom/open/likehelper/ui/edit/EditMomentActivity;

    .line 107
    iput-object v1, v0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->mParentLayout:Landroid/widget/ScrollView;

    .line 108
    iput-object v1, v0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->mTitleBar:Lcom/open/likehelper/widget/TitleBar;

    .line 109
    iput-object v1, v0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->mAvatar:Landroid/widget/ImageView;

    .line 110
    iput-object v1, v0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->mNicknameEdit:Landroid/widget/EditText;

    .line 111
    iput-object v1, v0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->mGetInfoText:Landroid/widget/TextView;

    .line 112
    iput-object v1, v0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->mContentEdit:Landroid/widget/EditText;

    .line 113
    iput-object v1, v0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->mPhotoGrid:Lcom/open/likehelper/widget/GridViewForScrollView;

    .line 114
    iput-object v1, v0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->mLocationText:Landroid/widget/TextView;

    .line 115
    iput-object v1, v0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->mLikeSeekBar:Landroid/widget/SeekBar;

    .line 116
    iput-object v1, v0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->mLikeCountText:Landroid/widget/TextView;

    .line 117
    iput-object v1, v0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->mCommentSeekBar:Landroid/widget/SeekBar;

    .line 118
    iput-object v1, v0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->mCommentCountText:Landroid/widget/TextView;

    .line 119
    iput-object v1, v0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->mPublishTimeText:Landroid/widget/TextView;

    .line 120
    iput-object v1, v0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->mCreateMomentText:Landroid/widget/TextView;

    .line 122
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iput-object v1, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity_ViewBinding;->b:Landroid/view/View;

    .line 124
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iput-object v1, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity_ViewBinding;->c:Landroid/view/View;

    .line 126
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iput-object v1, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity_ViewBinding;->d:Landroid/view/View;

    .line 128
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iput-object v1, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity_ViewBinding;->e:Landroid/view/View;

    .line 130
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iput-object v1, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity_ViewBinding;->f:Landroid/view/View;

    .line 132
    return-void
.end method
