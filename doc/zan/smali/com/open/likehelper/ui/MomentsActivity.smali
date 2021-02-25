.class public Lcom/open/likehelper/ui/MomentsActivity;
.super Lcom/open/likehelper/base/BaseActivity;
.source "MomentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/open/likehelper/ui/MomentsActivity$Adapter;,
        Lcom/open/likehelper/ui/MomentsActivity$ImageItemDecoration;,
        Lcom/open/likehelper/ui/MomentsActivity$OtherImageMomentsContentFactory;,
        Lcom/open/likehelper/ui/MomentsActivity$FourImageMomentsContentFactory;,
        Lcom/open/likehelper/ui/MomentsActivity$OneImageMomentsContentFactory;,
        Lcom/open/likehelper/ui/MomentsActivity$ImageMomentsContentFactory;,
        Lcom/open/likehelper/ui/MomentsActivity$MomentsContentFactory;,
        Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/open/likehelper/bean/MomentBean;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/media/MediaScannerConnection;

.field mArrowImageView:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0c0067
    .end annotation
.end field

.field mRecyclerView:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0c006a
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/open/likehelper/base/BaseActivity;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/open/likehelper/ui/MomentsActivity;->c:Ljava/util/List;

    .line 527
    return-void
.end method

.method static synthetic a(Lcom/open/likehelper/ui/MomentsActivity;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/open/likehelper/ui/MomentsActivity;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/open/likehelper/bean/MomentBean;)V
    .locals 2

    .prologue
    .line 76
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/open/likehelper/ui/MomentsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    const-string v1, "moment"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 78
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 79
    return-void
.end method

.method static synthetic b(Lcom/open/likehelper/ui/MomentsActivity;)Landroid/media/MediaScannerConnection;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/open/likehelper/ui/MomentsActivity;->d:Landroid/media/MediaScannerConnection;

    return-object v0
.end method

.method private b()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/open/likehelper/bean/MomentBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    const-string v0, "2\u5c0f\u65f6\u524d"

    .line 123
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 124
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_6

    .line 125
    new-instance v2, Lcom/open/likehelper/bean/MomentBean;

    invoke-direct {v2}, Lcom/open/likehelper/bean/MomentBean;-><init>()V

    .line 126
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 127
    if-nez v0, :cond_0

    .line 128
    const-string v4, "file:///android_asset/avatar/avatar1.jpg"

    invoke-virtual {v2, v4}, Lcom/open/likehelper/bean/MomentBean;->setAvatar(Ljava/lang/String;)V

    .line 129
    const-string v4, "Yameta"

    invoke-virtual {v2, v4}, Lcom/open/likehelper/bean/MomentBean;->setNickname(Ljava/lang/String;)V

    .line 130
    const-string v4, "\u6444\u5f71\u6280\u672f\u4e86\u89e3\u4e00\u4e0b"

    invoke-virtual {v2, v4}, Lcom/open/likehelper/bean/MomentBean;->setDescription(Ljava/lang/String;)V

    .line 131
    const-string v4, "\u5e0c\u814a\u00b7\u5723\u6258\u91cc\u5c3c"

    invoke-virtual {v2, v4}, Lcom/open/likehelper/bean/MomentBean;->setLocation(Ljava/lang/String;)V

    .line 132
    const-string v4, "2\u5c0f\u65f6\u524d"

    invoke-virtual {v2, v4}, Lcom/open/likehelper/bean/MomentBean;->setTimes(Ljava/lang/String;)V

    .line 133
    const-string v4, "file:///android_asset/image/image1.jpg"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    const-string v4, "file:///android_asset/image/image2.jpg"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_0
    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    .line 137
    const-string v4, "file:///android_asset/avatar/avatar2.jpg"

    invoke-virtual {v2, v4}, Lcom/open/likehelper/bean/MomentBean;->setAvatar(Ljava/lang/String;)V

    .line 138
    const-string v4, "Hito"

    invoke-virtual {v2, v4}, Lcom/open/likehelper/bean/MomentBean;->setNickname(Ljava/lang/String;)V

    .line 139
    const-string v4, "\u6c38\u8fdc\u7684\u5076\u50cf"

    invoke-virtual {v2, v4}, Lcom/open/likehelper/bean/MomentBean;->setDescription(Ljava/lang/String;)V

    .line 140
    const-string v4, "2\u5c0f\u65f6\u524d"

    invoke-virtual {v2, v4}, Lcom/open/likehelper/bean/MomentBean;->setTimes(Ljava/lang/String;)V

    .line 141
    const-string v4, "file:///android_asset/image/image3.jpg"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_1
    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    .line 144
    const-string v4, "file:///android_asset/avatar/avatar3.jpg"

    invoke-virtual {v2, v4}, Lcom/open/likehelper/bean/MomentBean;->setAvatar(Ljava/lang/String;)V

    .line 145
    const-string v4, "Luo"

    invoke-virtual {v2, v4}, Lcom/open/likehelper/bean/MomentBean;->setNickname(Ljava/lang/String;)V

    .line 146
    const-string v4, "\u7f8e\u5473\u4e0e\u5065\u5eb7\u540c\u5728"

    invoke-virtual {v2, v4}, Lcom/open/likehelper/bean/MomentBean;->setDescription(Ljava/lang/String;)V

    .line 147
    const-string v4, "\u5317\u4eac\u00b7\u7acb\u6c34\u6865"

    invoke-virtual {v2, v4}, Lcom/open/likehelper/bean/MomentBean;->setLocation(Ljava/lang/String;)V

    .line 148
    const-string v4, "2\u5c0f\u65f6\u524d"

    invoke-virtual {v2, v4}, Lcom/open/likehelper/bean/MomentBean;->setTimes(Ljava/lang/String;)V

    .line 149
    const-string v4, "file:///android_asset/image/image4.jpg"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_2
    const/4 v4, 0x3

    if-ne v0, v4, :cond_3

    .line 152
    const-string v4, "file:///android_asset/avatar/avatar4.jpg"

    invoke-virtual {v2, v4}, Lcom/open/likehelper/bean/MomentBean;->setAvatar(Ljava/lang/String;)V

    .line 153
    const-string v4, "234\u98de"

    invoke-virtual {v2, v4}, Lcom/open/likehelper/bean/MomentBean;->setNickname(Ljava/lang/String;)V

    .line 154
    const-string v4, "\u8d77\u98ce\u4e86\uff0c\u597d\u591a\u571f\uff0c\u8fd8\u5439\u5012\u4e86\u4e00\u4e2a\u4e0b\u697c\u68af\u7684\u540c\u4e8b\uff0c\u770b\u89c1\u4e86\u4e00\u4e2a\u7f8e\u5973\u7684\u80cc\u5f71\uff01"

    invoke-virtual {v2, v4}, Lcom/open/likehelper/bean/MomentBean;->setDescription(Ljava/lang/String;)V

    .line 155
    const-string v4, "2\u5c0f\u65f6\u524d"

    invoke-virtual {v2, v4}, Lcom/open/likehelper/bean/MomentBean;->setTimes(Ljava/lang/String;)V

    .line 157
    :cond_3
    const/4 v4, 0x4

    if-ne v0, v4, :cond_4

    .line 158
    const-string v4, "file:///android_asset/avatar/avatar5.jpg"

    invoke-virtual {v2, v4}, Lcom/open/likehelper/bean/MomentBean;->setAvatar(Ljava/lang/String;)V

    .line 159
    const-string v4, "\u5a01"

    invoke-virtual {v2, v4}, Lcom/open/likehelper/bean/MomentBean;->setNickname(Ljava/lang/String;)V

    .line 160
    const-string v4, "god is a dog"

    invoke-virtual {v2, v4}, Lcom/open/likehelper/bean/MomentBean;->setDescription(Ljava/lang/String;)V

    .line 161
    const-string v4, "\u5317\u4eac\u00b7\u5927\u5c6f"

    invoke-virtual {v2, v4}, Lcom/open/likehelper/bean/MomentBean;->setLocation(Ljava/lang/String;)V

    .line 162
    const-string v4, "2\u5c0f\u65f6\u524d"

    invoke-virtual {v2, v4}, Lcom/open/likehelper/bean/MomentBean;->setTimes(Ljava/lang/String;)V

    .line 164
    :cond_4
    const/4 v4, 0x5

    if-ne v0, v4, :cond_5

    .line 165
    const-string v4, "file:///android_asset/avatar/avatar6.jpg"

    invoke-virtual {v2, v4}, Lcom/open/likehelper/bean/MomentBean;->setAvatar(Ljava/lang/String;)V

    .line 166
    const-string v4, "zhouli"

    invoke-virtual {v2, v4}, Lcom/open/likehelper/bean/MomentBean;->setNickname(Ljava/lang/String;)V

    .line 167
    const-string v4, "\u522b\u4eba\u5bb6\u7684\u71ac\u591c\u8d8a\u71ac\u8d8a\u7626\uff0c\u6211\u7684\u71ac\u591c\u8d8a\u71ac\u8d8a\u80d6\u3002\u5176\u5b9e\u6211\u61c2\u4e2d\u95f4\u771f\u6b63\u7684\u5dee\u522b\uff0c\u6211\u7684\u71ac\u591c\u5176\u5b9e\u5c31\u4e3a\u4e86\u5403\u90a3\u4e48\u70b9\u96f6\u98df\uff0c\u522b\u7684\u4e8b\u60c5\u90fd\u662f\u9644\u5e26\u7684"

    invoke-virtual {v2, v4}, Lcom/open/likehelper/bean/MomentBean;->setDescription(Ljava/lang/String;)V

    .line 168
    const-string v4, "\u6df1\u5733\u00b7\u6bd4\u514b\u79d1\u6280\u5927\u53a6"

    invoke-virtual {v2, v4}, Lcom/open/likehelper/bean/MomentBean;->setLocation(Ljava/lang/String;)V

    .line 169
    const-string v4, "2\u5c0f\u65f6\u524d"

    invoke-virtual {v2, v4}, Lcom/open/likehelper/bean/MomentBean;->setTimes(Ljava/lang/String;)V

    .line 171
    :cond_5
    invoke-virtual {v2, v3}, Lcom/open/likehelper/bean/MomentBean;->setImages(Ljava/util/List;)V

    .line 184
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 187
    :cond_6
    return-object v1
.end method


# virtual methods
.method public a()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 564
    invoke-virtual {p0}, Lcom/open/likehelper/ui/MomentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 565
    invoke-virtual {v1, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 566
    invoke-virtual {v1}, Landroid/view/View;->buildDrawingCache()V

    .line 568
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 569
    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 571
    invoke-virtual {v1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 572
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 571
    invoke-static {v2, v5, v3, v4, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 573
    if-eqz v0, :cond_1

    .line 575
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 576
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/open/likehelper/util/Utils;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 577
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 578
    invoke-static {v3}, Lcom/open/likehelper/util/FileUtils;->b(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 579
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 580
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x5a

    invoke-virtual {v0, v3, v5, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 581
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 582
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 585
    new-instance v0, Landroid/media/MediaScannerConnection;

    new-instance v3, Lcom/open/likehelper/ui/MomentsActivity$2;

    invoke-direct {v3, p0, v2}, Lcom/open/likehelper/ui/MomentsActivity$2;-><init>(Lcom/open/likehelper/ui/MomentsActivity;Ljava/lang/String;)V

    invoke-direct {v0, p0, v3}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/open/likehelper/ui/MomentsActivity;->d:Landroid/media/MediaScannerConnection;

    .line 604
    iget-object v0, p0, Lcom/open/likehelper/ui/MomentsActivity;->d:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    .line 606
    :cond_0
    const-string v0, "Saved path=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v0, v3}, Ltimber/log/Timber;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 611
    :cond_1
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->destroyDrawingCache()V

    .line 612
    return-void

    .line 607
    :catch_0
    move-exception v0

    .line 608
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method capture()V
    .locals 0
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0c0069
        }
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/open/likehelper/ui/MomentsActivity;->a()V

    .line 73
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-super {p0, p1}, Lcom/open/likehelper/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/open/likehelper/ui/MomentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 86
    const/16 v1, 0x500

    .line 88
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 89
    invoke-virtual {p0}, Lcom/open/likehelper/ui/MomentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 90
    const v0, 0x7f0b002f

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/open/likehelper/util/StatusBarUtils;->a(Landroid/app/Activity;I)V

    .line 93
    :cond_0
    const v0, 0x7f04001d

    invoke-virtual {p0, v0}, Lcom/open/likehelper/ui/MomentsActivity;->setContentView(I)V

    .line 94
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 95
    iput-object p0, p0, Lcom/open/likehelper/ui/MomentsActivity;->a:Landroid/content/Context;

    .line 97
    iget-object v1, p0, Lcom/open/likehelper/ui/MomentsActivity;->c:Ljava/util/List;

    invoke-virtual {p0}, Lcom/open/likehelper/ui/MomentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "moment"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/open/likehelper/bean/MomentBean;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-direct {p0}, Lcom/open/likehelper/ui/MomentsActivity;->b()Ljava/util/List;

    move-result-object v3

    .line 99
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    move v1, v2

    .line 100
    :goto_0
    const/4 v0, 0x3

    if-ge v1, v0, :cond_1

    .line 101
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    .line 102
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/open/likehelper/bean/MomentBean;

    .line 103
    invoke-interface {v3, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 104
    iget-object v5, p0, Lcom/open/likehelper/ui/MomentsActivity;->c:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/open/likehelper/ui/MomentsActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v3, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 107
    new-instance v0, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter;

    invoke-direct {v0, p0}, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter;-><init>(Lcom/open/likehelper/ui/MomentsActivity;)V

    iput-object v0, p0, Lcom/open/likehelper/ui/MomentsActivity;->b:Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter;

    .line 108
    iget-object v0, p0, Lcom/open/likehelper/ui/MomentsActivity;->b:Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter;

    iget-object v1, p0, Lcom/open/likehelper/ui/MomentsActivity;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter;->a(Ljava/util/List;)V

    .line 109
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04002b

    iget-object v3, p0, Lcom/open/likehelper/ui/MomentsActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lcom/open/likehelper/ui/MomentsActivity;->b:Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter;

    invoke-virtual {v1, v0}, Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter;->a(Landroid/view/View;)V

    .line 111
    iget-object v0, p0, Lcom/open/likehelper/ui/MomentsActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/open/likehelper/ui/MomentsActivity;->b:Lcom/open/likehelper/ui/MomentsActivity$HeaderAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 113
    iget-object v0, p0, Lcom/open/likehelper/ui/MomentsActivity;->mArrowImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/open/likehelper/ui/MomentsActivity$1;

    invoke-direct {v1, p0}, Lcom/open/likehelper/ui/MomentsActivity$1;-><init>(Lcom/open/likehelper/ui/MomentsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    return-void
.end method
