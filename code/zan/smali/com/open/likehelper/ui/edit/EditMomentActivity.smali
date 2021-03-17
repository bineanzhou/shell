.class public Lcom/open/likehelper/ui/edit/EditMomentActivity;
.super Lcom/open/likehelper/base/BaseActivity;
.source "EditMomentActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/open/likehelper/ui/edit/EditMomentActivity$CreateMomentTask;,
        Lcom/open/likehelper/ui/edit/EditMomentActivity$LoginAuthListener;
    }
.end annotation


# static fields
.field public static final a:I = 0x9

.field public static final b:I = 0x64

.field public static final c:I = 0x5


# instance fields
.field private d:Lcom/open/likehelper/util/PhotoSelectUtil;

.field private e:Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/open/likehelper/ui/edit/PhotoItemBean;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/open/likehelper/bean/MomentBean;

.field private h:Lcom/umeng/socialize/UMShareAPI;

.field private i:Lcom/google/gson/Gson;

.field private j:I

.field private k:I

.field private l:Z

.field mAvatar:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0c0058
    .end annotation
.end field

.field mCommentCountText:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0c0061
    .end annotation
.end field

.field mCommentSeekBar:Landroid/widget/SeekBar;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0c0060
    .end annotation
.end field

.field mContentEdit:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0c005b
    .end annotation
.end field

.field mCreateMomentText:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0c0064
    .end annotation
.end field

.field mGetInfoText:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0c005a
    .end annotation
.end field

.field mLikeCountText:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0c005f
    .end annotation
.end field

.field mLikeSeekBar:Landroid/widget/SeekBar;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0c005e
    .end annotation
.end field

.field mLocationText:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0c005d
    .end annotation
.end field

.field mNicknameEdit:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0c0059
    .end annotation
.end field

.field mParentLayout:Landroid/widget/ScrollView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0c0057
    .end annotation
.end field

.field mPhotoGrid:Lcom/open/likehelper/widget/GridViewForScrollView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0c005c
    .end annotation
.end field

.field mPublishTimeText:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0c0063
    .end annotation
.end field

.field mTitleBar:Lcom/open/likehelper/widget/TitleBar;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0c002e
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Lcom/open/likehelper/base/BaseActivity;-><init>()V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->f:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Lcom/open/likehelper/bean/MomentBean;

    invoke-direct {v0}, Lcom/open/likehelper/bean/MomentBean;-><init>()V

    iput-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->g:Lcom/open/likehelper/bean/MomentBean;

    .line 81
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->i:Lcom/google/gson/Gson;

    .line 83
    iput v1, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->j:I

    .line 84
    iput v1, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->k:I

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->l:Z

    .line 573
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->mTitleBar:Lcom/open/likehelper/widget/TitleBar;

    const v1, 0x7f070032

    invoke-virtual {p0, v1}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/open/likehelper/widget/TitleBar;->setTitleText(Ljava/lang/String;)Lcom/open/likehelper/widget/TitleBar;

    .line 165
    invoke-direct {p0}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->b()V

    .line 166
    invoke-direct {p0}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->c()V

    .line 167
    invoke-direct {p0}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->d()V

    .line 168
    invoke-direct {p0}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->e()V

    .line 169
    invoke-direct {p0}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->f()V

    .line 170
    invoke-direct {p0}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->g()V

    .line 172
    invoke-static {p0}, Lcom/open/likehelper/util/Utils;->b(Landroid/app/Activity;)V

    .line 173
    return-void
.end method

.method private a(I)V
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->d:Lcom/open/likehelper/util/PhotoSelectUtil;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->d:Lcom/open/likehelper/util/PhotoSelectUtil;

    invoke-virtual {v0, p1}, Lcom/open/likehelper/util/PhotoSelectUtil;->a(I)V

    .line 351
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 149
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/open/likehelper/ui/edit/EditMomentActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 150
    return-void
.end method

.method static synthetic a(Lcom/open/likehelper/ui/edit/EditMomentActivity;I)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/open/likehelper/ui/edit/EditMomentActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->mPublishTimeText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->g:Lcom/open/likehelper/bean/MomentBean;

    invoke-virtual {v0, p1}, Lcom/open/likehelper/bean/MomentBean;->setTimes(Ljava/lang/String;)V

    .line 406
    return-void
.end method

.method static synthetic a(Lcom/open/likehelper/ui/edit/EditMomentActivity;)Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->l:Z

    return v0
.end method

.method static synthetic a(Lcom/open/likehelper/ui/edit/EditMomentActivity;Z)Z
    .locals 0

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->l:Z

    return p1
.end method

.method static synthetic b(Lcom/open/likehelper/ui/edit/EditMomentActivity;I)I
    .locals 0

    .prologue
    .line 67
    iput p1, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->j:I

    return p1
.end method

.method static synthetic b(Lcom/open/likehelper/ui/edit/EditMomentActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/open/likehelper/base/user/UserManager;->a(Landroid/content/Context;)Lcom/open/likehelper/base/user/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/open/likehelper/base/user/UserManager;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->c(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 178
    invoke-virtual {p0}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/open/likehelper/base/user/UserManager;->a(Landroid/content/Context;)Lcom/open/likehelper/base/user/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/open/likehelper/base/user/UserManager;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->d()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    .line 180
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->f()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->mAvatar:Landroid/widget/ImageView;

    .line 181
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 182
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->g:Lcom/open/likehelper/bean/MomentBean;

    invoke-virtual {p0}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/open/likehelper/base/user/UserManager;->a(Landroid/content/Context;)Lcom/open/likehelper/base/user/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/open/likehelper/base/user/UserManager;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/open/likehelper/bean/MomentBean;->setAvatar(Ljava/lang/String;)V

    .line 184
    :cond_0
    invoke-virtual {p0}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/open/likehelper/base/user/UserManager;->a(Landroid/content/Context;)Lcom/open/likehelper/base/user/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/open/likehelper/base/user/UserManager;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->mNicknameEdit:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/open/likehelper/base/user/UserManager;->a(Landroid/content/Context;)Lcom/open/likehelper/base/user/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/open/likehelper/base/user/UserManager;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->g:Lcom/open/likehelper/bean/MomentBean;

    invoke-virtual {p0}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/open/likehelper/base/user/UserManager;->a(Landroid/content/Context;)Lcom/open/likehelper/base/user/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/open/likehelper/base/user/UserManager;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/open/likehelper/bean/MomentBean;->setNickname(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->mNicknameEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->mNicknameEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->g:Lcom/open/likehelper/bean/MomentBean;

    const v1, 0x7f07003f

    invoke-virtual {p0, v1}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/open/likehelper/bean/MomentBean;->setTimes(Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method static synthetic b(Lcom/open/likehelper/ui/edit/EditMomentActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->c(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 409
    invoke-virtual {p0}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/open/likehelper/base/user/UserManager;->a(Landroid/content/Context;)Lcom/open/likehelper/base/user/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/open/likehelper/base/user/UserManager;->b(Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->g:Lcom/open/likehelper/bean/MomentBean;

    invoke-virtual {v0, p1}, Lcom/open/likehelper/bean/MomentBean;->setAvatar(Ljava/lang/String;)V

    .line 411
    return-void
.end method

.method static synthetic c(Lcom/open/likehelper/ui/edit/EditMomentActivity;I)I
    .locals 0

    .prologue
    .line 67
    iput p1, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->k:I

    return p1
.end method

.method static synthetic c(Lcom/open/likehelper/ui/edit/EditMomentActivity;)Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->e:Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 194
    invoke-static {p0}, Lcom/umeng/socialize/UMShareAPI;->get(Landroid/content/Context;)Lcom/umeng/socialize/UMShareAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->h:Lcom/umeng/socialize/UMShareAPI;

    .line 195
    new-instance v0, Lcom/umeng/socialize/UMShareConfig;

    invoke-direct {v0}, Lcom/umeng/socialize/UMShareConfig;-><init>()V

    .line 196
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/UMShareConfig;->isNeedAuthOnGetUserInfo(Z)Lcom/umeng/socialize/UMShareConfig;

    .line 197
    iget-object v1, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->h:Lcom/umeng/socialize/UMShareAPI;

    invoke-virtual {v1, v0}, Lcom/umeng/socialize/UMShareAPI;->setShareConfig(Lcom/umeng/socialize/UMShareConfig;)V

    .line 198
    return-void
.end method

.method static synthetic c(Lcom/open/likehelper/ui/edit/EditMomentActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 414
    invoke-virtual {p0}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/open/likehelper/base/user/UserManager;->a(Landroid/content/Context;)Lcom/open/likehelper/base/user/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/open/likehelper/base/user/UserManager;->a(Ljava/lang/String;)V

    .line 415
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->g:Lcom/open/likehelper/bean/MomentBean;

    invoke-virtual {v0, p1}, Lcom/open/likehelper/bean/MomentBean;->setNickname(Ljava/lang/String;)V

    .line 416
    return-void
.end method

.method static synthetic d(Lcom/open/likehelper/ui/edit/EditMomentActivity;)I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->j:I

    return v0
.end method

.method private d()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 201
    new-instance v0, Lcom/open/likehelper/util/PhotoSelectUtil;

    new-instance v5, Lcom/open/likehelper/ui/edit/EditMomentActivity$1;

    invoke-direct {v5, p0}, Lcom/open/likehelper/ui/edit/EditMomentActivity$1;-><init>(Lcom/open/likehelper/ui/edit/EditMomentActivity;)V

    move-object v1, p0

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/open/likehelper/util/PhotoSelectUtil;-><init>(Landroid/content/Context;ZZZLcom/open/likehelper/util/PhotoSelectUtil$OnPhotoSelectListener;)V

    iput-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->d:Lcom/open/likehelper/util/PhotoSelectUtil;

    .line 252
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 5

    .prologue
    const v2, 0x7f02006a

    const/4 v3, 0x0

    .line 498
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 501
    :try_start_0
    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 502
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 503
    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 504
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x3

    aget-object v2, v0, v2

    const/4 v3, 0x3

    aget-object v3, v0, v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x3

    aget-object v4, v0, v4

    .line 505
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 504
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u00b7"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x0

    aget-object v3, v0, v3

    const-string v4, "="

    .line 506
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 507
    const-string v1, "location=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ltimber/log/Timber;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 508
    iget-object v1, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->g:Lcom/open/likehelper/bean/MomentBean;

    invoke-virtual {v1, v0}, Lcom/open/likehelper/bean/MomentBean;->setLocation(Ljava/lang/String;)V

    .line 509
    iget-object v1, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->mLocationText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 510
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->mLocationText:Landroid/widget/TextView;

    const v1, 0x7f02006b

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f02006a

    .line 511
    invoke-static {p0, v3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x0

    .line 510
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    :goto_0
    return-void

    .line 513
    :catch_0
    move-exception v0

    .line 514
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->g:Lcom/open/likehelper/bean/MomentBean;

    invoke-virtual {v0, v3}, Lcom/open/likehelper/bean/MomentBean;->setLocation(Ljava/lang/String;)V

    .line 518
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->mLocationText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 519
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->mLocationText:Landroid/widget/TextView;

    const v1, 0x7f070023

    invoke-virtual {p0, v1}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 520
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->mLocationText:Landroid/widget/TextView;

    const v1, 0x7f020069

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 521
    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 520
    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/open/likehelper/ui/edit/EditMomentActivity;)I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->k:I

    return v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 255
    new-instance v0, Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter;

    iget-object v1, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->f:Ljava/util/ArrayList;

    new-instance v2, Lcom/open/likehelper/ui/edit/EditMomentActivity$2;

    invoke-direct {v2, p0}, Lcom/open/likehelper/ui/edit/EditMomentActivity$2;-><init>(Lcom/open/likehelper/ui/edit/EditMomentActivity;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->e:Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter;

    .line 261
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->mPhotoGrid:Lcom/open/likehelper/widget/GridViewForScrollView;

    iget-object v1, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->e:Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter;

    invoke-virtual {v0, v1}, Lcom/open/likehelper/widget/GridViewForScrollView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 262
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->e:Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter;

    invoke-virtual {v0}, Lcom/open/likehelper/ui/edit/PhotoGridViewAdapter;->notifyDataSetChanged()V

    .line 264
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->mPhotoGrid:Lcom/open/likehelper/widget/GridViewForScrollView;

    new-instance v1, Lcom/open/likehelper/ui/edit/EditMomentActivity$3;

    invoke-direct {v1, p0}, Lcom/open/likehelper/ui/edit/EditMomentActivity$3;-><init>(Lcom/open/likehelper/ui/edit/EditMomentActivity;)V

    invoke-virtual {v0, v1}, Lcom/open/likehelper/widget/GridViewForScrollView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 275
    return-void
.end method

.method static synthetic f(Lcom/open/likehelper/ui/edit/EditMomentActivity;)Lcom/open/likehelper/bean/MomentBean;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->g:Lcom/open/likehelper/bean/MomentBean;

    return-object v0
.end method

.method private f()V
    .locals 4

    .prologue
    .line 278
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    .line 279
    iget-object v1, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->mNicknameEdit:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 280
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->mNicknameEdit:Landroid/widget/EditText;

    new-instance v1, Lcom/open/likehelper/ui/edit/EditMomentActivity$4;

    invoke-direct {v1, p0}, Lcom/open/likehelper/ui/edit/EditMomentActivity$4;-><init>(Lcom/open/likehelper/ui/edit/EditMomentActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 298
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->mLikeSeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/open/likehelper/ui/edit/EditMomentActivity$5;

    invoke-direct {v1, p0}, Lcom/open/likehelper/ui/edit/EditMomentActivity$5;-><init>(Lcom/open/likehelper/ui/edit/EditMomentActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 323
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->mCommentSeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/open/likehelper/ui/edit/EditMomentActivity$6;

    invoke-direct {v1, p0}, Lcom/open/likehelper/ui/edit/EditMomentActivity$6;-><init>(Lcom/open/likehelper/ui/edit/EditMomentActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 345
    return-void
.end method

.method static synthetic g(Lcom/open/likehelper/ui/edit/EditMomentActivity;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->j()V

    return-void
.end method

.method private h()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 354
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 356
    new-instance v1, Landroid/app/Dialog;

    const v2, 0x7f0900cf

    invoke-direct {v1, p0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 357
    const v2, 0x7f040024

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 359
    const v0, 0x7f0c0078

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 360
    new-instance v3, Lcom/open/likehelper/ui/edit/EditMomentActivity$7;

    invoke-direct {v3, p0, v1}, Lcom/open/likehelper/ui/edit/EditMomentActivity$7;-><init>(Lcom/open/likehelper/ui/edit/EditMomentActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    const v0, 0x7f0c0079

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 370
    new-instance v3, Lcom/open/likehelper/ui/edit/EditMomentActivity$8;

    invoke-direct {v3, p0, v1}, Lcom/open/likehelper/ui/edit/EditMomentActivity$8;-><init>(Lcom/open/likehelper/ui/edit/EditMomentActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    const v0, 0x7f0c007a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 380
    new-instance v3, Lcom/open/likehelper/ui/edit/EditMomentActivity$9;

    invoke-direct {v3, p0, v1}, Lcom/open/likehelper/ui/edit/EditMomentActivity$9;-><init>(Lcom/open/likehelper/ui/edit/EditMomentActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 391
    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 392
    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 394
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 395
    const/16 v2, 0x50

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 396
    const/4 v2, -0x1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 397
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 398
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 400
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 401
    return-void
.end method

.method static synthetic h(Lcom/open/likehelper/ui/edit/EditMomentActivity;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->k()V

    return-void
.end method

.method private i()V
    .locals 2

    .prologue
    .line 419
    invoke-virtual {p0}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/open/likehelper/base/user/UserManager;->a(Landroid/content/Context;)Lcom/open/likehelper/base/user/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/open/likehelper/base/user/UserManager;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    invoke-virtual {p0}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070035

    invoke-virtual {p0, v1}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/open/likehelper/util/ToastUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 432
    :goto_0
    return-void

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->mContentEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->f:Ljava/util/ArrayList;

    .line 425
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 426
    :cond_1
    invoke-virtual {p0}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070028

    invoke-virtual {p0, v1}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/open/likehelper/util/ToastUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 431
    :cond_2
    new-instance v0, Lcom/open/likehelper/ui/edit/EditMomentActivity$CreateMomentTask;

    invoke-direct {v0, p0}, Lcom/open/likehelper/ui/edit/EditMomentActivity$CreateMomentTask;-><init>(Lcom/open/likehelper/ui/edit/EditMomentActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/open/likehelper/ui/edit/EditMomentActivity$CreateMomentTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private j()V
    .locals 6

    .prologue
    .line 435
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->i:Lcom/google/gson/Gson;

    const-string v1, "nickname.json"

    invoke-static {p0, v1}, Lcom/open/likehelper/util/FileUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/open/likehelper/ui/edit/EditMomentActivity$10;

    invoke-direct {v2, p0}, Lcom/open/likehelper/ui/edit/EditMomentActivity$10;-><init>(Lcom/open/likehelper/ui/edit/EditMomentActivity;)V

    .line 437
    invoke-virtual {v2}, Lcom/open/likehelper/ui/edit/EditMomentActivity$10;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 435
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 439
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_2

    .line 440
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 442
    :cond_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 443
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    iget v3, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->j:I

    if-lt v2, v3, :cond_0

    .line 448
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 449
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 450
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 452
    :cond_1
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->g:Lcom/open/likehelper/bean/MomentBean;

    invoke-virtual {v0, v2}, Lcom/open/likehelper/bean/MomentBean;->setLike(Ljava/util/List;)V

    .line 453
    const-string v0, "likeNames=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ltimber/log/Timber;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 455
    :cond_2
    return-void
.end method

.method private k()V
    .locals 8

    .prologue
    .line 458
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->i:Lcom/google/gson/Gson;

    const-string v1, "nickname.json"

    invoke-static {p0, v1}, Lcom/open/likehelper/util/FileUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/open/likehelper/ui/edit/EditMomentActivity$11;

    invoke-direct {v2, p0}, Lcom/open/likehelper/ui/edit/EditMomentActivity$11;-><init>(Lcom/open/likehelper/ui/edit/EditMomentActivity;)V

    .line 460
    invoke-virtual {v2}, Lcom/open/likehelper/ui/edit/EditMomentActivity$11;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 458
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 462
    iget-object v1, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->i:Lcom/google/gson/Gson;

    const-string v2, "comment.json"

    invoke-static {p0, v2}, Lcom/open/likehelper/util/FileUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/open/likehelper/ui/edit/EditMomentActivity$12;

    invoke-direct {v3, p0}, Lcom/open/likehelper/ui/edit/EditMomentActivity$12;-><init>(Lcom/open/likehelper/ui/edit/EditMomentActivity;)V

    .line 464
    invoke-virtual {v3}, Lcom/open/likehelper/ui/edit/EditMomentActivity$12;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 462
    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 466
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_3

    if-eqz v1, :cond_3

    .line 467
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_3

    .line 468
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 470
    :cond_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v6

    double-to-int v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 471
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    iget v4, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->k:I

    if-lt v3, v4, :cond_0

    .line 476
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 478
    :cond_1
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 479
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    iget v5, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->k:I

    if-lt v4, v5, :cond_1

    .line 484
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 485
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 486
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 487
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v2, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->k:I

    if-ge v3, v2, :cond_2

    .line 488
    new-instance v7, Lcom/open/likehelper/bean/MomentBean$CommentBean;

    invoke-direct {v7}, Lcom/open/likehelper/bean/MomentBean$CommentBean;-><init>()V

    .line 489
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v7, v2}, Lcom/open/likehelper/bean/MomentBean$CommentBean;->setNickname(Ljava/lang/String;)V

    .line 490
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v7, v2}, Lcom/open/likehelper/bean/MomentBean$CommentBean;->setContent(Ljava/lang/String;)V

    .line 491
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 493
    :cond_2
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->g:Lcom/open/likehelper/bean/MomentBean;

    invoke-virtual {v0, v6}, Lcom/open/likehelper/bean/MomentBean;->setComment(Ljava/util/List;)V

    .line 495
    :cond_3
    return-void
.end method


# virtual methods
.method public chooseAvatar()V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0c0058
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 119
    iput-boolean v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->l:Z

    .line 120
    invoke-direct {p0, v0}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->a(I)V

    .line 121
    return-void
.end method

.method public chooseLocation()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0c005d
        }
    .end annotation

    .prologue
    .line 135
    const v0, 0x7f070023

    invoke-virtual {p0, v0}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://apis.map.qq.com/tools/locpicker?search=1&type=0&backurl=http://likehelper.open.com/location/callback.html&key=NRUBZ-V5SRP-C4FDM-VYCNP-BXBGT-TAFLZ&referer=likehelper"

    invoke-static {p0, v0, v1}, Lcom/open/likehelper/ui/edit/LocationActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public chooseTime()V
    .locals 0
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0c0062
        }
    .end annotation

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->h()V

    .line 141
    return-void
.end method

.method public createMoment()V
    .locals 0
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0c0064
        }
    .end annotation

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->i()V

    .line 146
    return-void
.end method

.method public getInfoFromWechat()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0c005a
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->h:Lcom/umeng/socialize/UMShareAPI;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v0, p0, v1}, Lcom/umeng/socialize/UMShareAPI;->isInstall(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    const v0, 0x7f070036

    invoke-virtual {p0, v0}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/open/likehelper/util/ToastUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 130
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->h:Lcom/umeng/socialize/UMShareAPI;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    new-instance v2, Lcom/open/likehelper/ui/edit/EditMomentActivity$LoginAuthListener;

    invoke-direct {v2, p0}, Lcom/open/likehelper/ui/edit/EditMomentActivity$LoginAuthListener;-><init>(Lcom/open/likehelper/ui/edit/EditMomentActivity;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/umeng/socialize/UMShareAPI;->getPlatformInfo(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/UMAuthListener;)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 620
    const/16 v0, 0x64

    if-ne p1, v0, :cond_2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 621
    if-eqz p3, :cond_0

    .line 622
    const-string v0, "location"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->d(Ljava/lang/String;)V

    .line 630
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->h:Lcom/umeng/socialize/UMShareAPI;

    if-eqz v0, :cond_1

    .line 631
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->h:Lcom/umeng/socialize/UMShareAPI;

    invoke-virtual {v0, p1, p2, p3}, Lcom/umeng/socialize/UMShareAPI;->onActivityResult(IILandroid/content/Intent;)V

    .line 634
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/open/likehelper/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 635
    return-void

    .line 625
    :cond_2
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->d:Lcom/open/likehelper/util/PhotoSelectUtil;

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity;->d:Lcom/open/likehelper/util/PhotoSelectUtil;

    invoke-virtual {v0, p1, p2, p3}, Lcom/open/likehelper/util/PhotoSelectUtil;->a(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 154
    invoke-super {p0, p1}, Lcom/open/likehelper/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 155
    const v0, 0x7f04001b

    invoke-virtual {p0, v0}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->setContentView(I)V

    .line 156
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 158
    invoke-direct {p0}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->a()V

    .line 160
    invoke-static {p0}, Lcom/open/likehelper/util/Utils;->a(Landroid/app/Activity;)V

    .line 161
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 639
    invoke-super {p0}, Lcom/open/likehelper/base/BaseActivity;->onDestroy()V

    .line 641
    invoke-static {}, Lcom/open/likehelper/util/ProgressUtils;->a()V

    .line 642
    return-void
.end method
