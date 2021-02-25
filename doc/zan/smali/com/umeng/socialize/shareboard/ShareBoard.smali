.class public Lcom/umeng/socialize/shareboard/ShareBoard;
.super Landroid/widget/PopupWindow;
.source "ShareBoard.java"


# instance fields
.field private mShareBoardConfig:Lcom/umeng/socialize/shareboard/ShareBoardConfig;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/shareboard/SnsPlatform;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/umeng/socialize/shareboard/ShareBoard;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/umeng/socialize/shareboard/ShareBoardConfig;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/umeng/socialize/shareboard/ShareBoardConfig;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/shareboard/SnsPlatform;",
            ">;",
            "Lcom/umeng/socialize/shareboard/ShareBoardConfig;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v4, -0x1

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-virtual {p0, v4, v4}, Lcom/umeng/socialize/shareboard/ShareBoard;->setWindowLayoutMode(II)V

    .line 41
    const/4 v0, 0x0

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    move v0, v1

    .line 46
    :cond_0
    if-nez p3, :cond_1

    .line 47
    new-instance p3, Lcom/umeng/socialize/shareboard/ShareBoardConfig;

    invoke-direct {p3}, Lcom/umeng/socialize/shareboard/ShareBoardConfig;-><init>()V

    .line 49
    :cond_1
    iput-object p3, p0, Lcom/umeng/socialize/shareboard/ShareBoard;->mShareBoardConfig:Lcom/umeng/socialize/shareboard/ShareBoardConfig;

    .line 50
    invoke-virtual {p3, v0}, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->setOrientation(Z)V

    .line 52
    new-instance v0, Lcom/umeng/socialize/shareboard/UMActionFrame;

    invoke-direct {v0, p1}, Lcom/umeng/socialize/shareboard/UMActionFrame;-><init>(Landroid/content/Context;)V

    .line 53
    invoke-virtual {v0, p2, p3}, Lcom/umeng/socialize/shareboard/UMActionFrame;->setSnsPlatformData(Ljava/util/List;Lcom/umeng/socialize/shareboard/ShareBoardConfig;)V

    .line 54
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 55
    invoke-virtual {v0, v2}, Lcom/umeng/socialize/shareboard/UMActionFrame;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    new-instance v2, Lcom/umeng/socialize/shareboard/ShareBoard$1;

    invoke-direct {v2, p0}, Lcom/umeng/socialize/shareboard/ShareBoard$1;-><init>(Lcom/umeng/socialize/shareboard/ShareBoard;)V

    invoke-virtual {v0, v2}, Lcom/umeng/socialize/shareboard/UMActionFrame;->setDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 63
    new-instance v2, Lcom/umeng/socialize/shareboard/ShareBoard$2;

    invoke-direct {v2, p0}, Lcom/umeng/socialize/shareboard/ShareBoard$2;-><init>(Lcom/umeng/socialize/shareboard/ShareBoard;)V

    invoke-virtual {p0, v2}, Lcom/umeng/socialize/shareboard/ShareBoard;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 74
    invoke-virtual {p0, v0}, Lcom/umeng/socialize/shareboard/ShareBoard;->setContentView(Landroid/view/View;)V

    .line 75
    invoke-virtual {p0, v1}, Lcom/umeng/socialize/shareboard/ShareBoard;->setFocusable(Z)V

    .line 77
    invoke-direct {p0, p1, p3}, Lcom/umeng/socialize/shareboard/ShareBoard;->saveShareboardConfig(Landroid/content/Context;Lcom/umeng/socialize/shareboard/ShareBoardConfig;)V

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/umeng/socialize/shareboard/ShareBoard;)Lcom/umeng/socialize/shareboard/ShareBoardConfig;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/umeng/socialize/shareboard/ShareBoard;->mShareBoardConfig:Lcom/umeng/socialize/shareboard/ShareBoardConfig;

    return-object v0
.end method

.method private saveShareboardConfig(Landroid/content/Context;Lcom/umeng/socialize/shareboard/ShareBoardConfig;)V
    .locals 4

    .prologue
    .line 81
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    iget v0, p2, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->mShareboardPosition:I

    sget v1, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->SHAREBOARD_POSITION_BOTTOM:I

    if-ne v0, v1, :cond_4

    const-string v0, "0"

    .line 86
    :goto_1
    const/4 v1, 0x0

    .line 87
    iget v2, p2, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->mMenuBgShape:I

    sget v3, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->BG_SHAPE_NONE:I

    if-ne v2, v3, :cond_5

    .line 88
    const-string v1, "0"

    .line 98
    :cond_2
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 99
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/umeng/socialize/utils/SocializeSpUtils;->putShareBoardConfig(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    .line 85
    :cond_4
    const-string v0, "1"

    goto :goto_1

    .line 89
    :cond_5
    iget v2, p2, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->mMenuBgShape:I

    sget v3, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->BG_SHAPE_CIRCULAR:I

    if-ne v2, v3, :cond_6

    .line 90
    const-string v1, "1"

    goto :goto_2

    .line 91
    :cond_6
    iget v2, p2, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->mMenuBgShape:I

    sget v3, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->BG_SHAPE_ROUNDED_SQUARE:I

    if-ne v2, v3, :cond_2

    .line 92
    iget v1, p2, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->mMenuBgShapeAngle:I

    if-eqz v1, :cond_7

    .line 93
    const-string v1, "2"

    goto :goto_2

    .line 95
    :cond_7
    const-string v1, "3"

    goto :goto_2
.end method


# virtual methods
.method public setShareBoardlistener(Lcom/umeng/socialize/utils/ShareBoardlistener;)V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/umeng/socialize/shareboard/ShareBoard;->mShareBoardConfig:Lcom/umeng/socialize/shareboard/ShareBoardConfig;

    if-nez v0, :cond_0

    .line 118
    :goto_0
    return-void

    .line 107
    :cond_0
    new-instance v0, Lcom/umeng/socialize/shareboard/ShareBoard$3;

    invoke-direct {v0, p0, p1}, Lcom/umeng/socialize/shareboard/ShareBoard$3;-><init>(Lcom/umeng/socialize/shareboard/ShareBoard;Lcom/umeng/socialize/utils/ShareBoardlistener;)V

    .line 117
    iget-object v1, p0, Lcom/umeng/socialize/shareboard/ShareBoard;->mShareBoardConfig:Lcom/umeng/socialize/shareboard/ShareBoardConfig;

    invoke-virtual {v1, v0}, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->setShareBoardlistener(Lcom/umeng/socialize/utils/ShareBoardlistener;)V

    goto :goto_0
.end method
