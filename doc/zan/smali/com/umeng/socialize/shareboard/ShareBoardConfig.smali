.class public Lcom/umeng/socialize/shareboard/ShareBoardConfig;
.super Ljava/lang/Object;
.source "ShareBoardConfig.java"


# static fields
.field public static BG_SHAPE_CIRCULAR:I = 0x0

.field public static BG_SHAPE_NONE:I = 0x0

.field public static BG_SHAPE_ROUNDED_SQUARE:I = 0x0

.field static final CANCEL_BTN_HEIGHT:I = 0x32

.field static final CANCEL_BTN_TEXT_SIZE_IN_SP:I = 0xf

.field static final CENTER_MENU_LEFT_PADDING:I = 0x24

.field static final INDICATOR_BOTTOM_MARGIN:I = 0x14

.field static final INDICATOR_SIZE:I = 0x3

.field static final INDICATOR_SPACE:I = 0x5

.field private static final MENU_COLUMN_NUM:I = 0x4

.field private static final MENU_COLUMN_NUM_CENTER:I = 0x3

.field private static final MENU_COLUMN_NUM_HORIZONTAL:I = 0x6

.field private static final MENU_COLUMN_NUM_HORIZONTAL_CENTER:I = 0x5

.field static final MENU_ROW_MARGIN:I = 0x14

.field static final MENU_ROW_NUM:I = 0x2

.field static final MENU_TOP_MARGIN:I = 0x14

.field public static SHAREBOARD_POSITION_BOTTOM:I = 0x0

.field public static SHAREBOARD_POSITION_CENTER:I = 0x0

.field static SHAREBOARD_POSITION_TOP:I = 0x0

.field static final TITLE_TEXT_SIZE_IN_SP:I = 0x10

.field static final TITLE_TOP_MARGIN:I = 0x14

.field static final VIEW_PAGER_LEFT_MARGIN:I = 0xa


# instance fields
.field mCancelBtnBgColor:I

.field mCancelBtnBgPressedColor:I

.field mCancelBtnColor:I

.field mCancelBtnText:Ljava/lang/String;

.field mCancelBtnVisibility:Z

.field mIndicatorNormalColor:I

.field mIndicatorSelectedColor:I

.field mIndicatorVisibility:Z

.field mMenuBgColor:I

.field mMenuBgPressedColor:I

.field mMenuBgShape:I

.field mMenuBgShapeAngle:I

.field mMenuColumnNum:I

.field mMenuIconPressedColor:I

.field mMenuTextColor:I

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private mShareBoardlistener:Lcom/umeng/socialize/utils/ShareBoardlistener;

.field mShareboardBgColor:I

.field mShareboardPosition:I

.field mTitleText:Ljava/lang/String;

.field mTitleTextColor:I

.field mTitleVisibility:Z

.field mTopMargin:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 15
    sput v1, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->SHAREBOARD_POSITION_TOP:I

    .line 16
    sput v2, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->SHAREBOARD_POSITION_CENTER:I

    .line 17
    const/4 v0, 0x3

    sput v0, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->SHAREBOARD_POSITION_BOTTOM:I

    .line 19
    const/4 v0, 0x0

    sput v0, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->BG_SHAPE_NONE:I

    .line 20
    sput v1, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->BG_SHAPE_CIRCULAR:I

    .line 21
    sput v2, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->BG_SHAPE_ROUNDED_SQUARE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-direct {p0}, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->setDefaultValue()V

    .line 83
    return-void
.end method

.method private setDefaultValue()V
    .locals 6

    .prologue
    .line 87
    const-string v0, "#575A5C"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 89
    const-string v1, "#ffffff"

    .line 90
    const-string v2, "#22000000"

    .line 92
    const-string v3, "#E9EFF2"

    .line 94
    const-string v4, "\u9009\u62e9\u8981\u5206\u4eab\u5230\u7684\u5e73\u53f0"

    .line 95
    const-string v5, "\u53d6\u6d88\u5206\u4eab"

    .line 97
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->setShareboardBackgroundColor(I)Lcom/umeng/socialize/shareboard/ShareBoardConfig;

    .line 98
    sget v3, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->SHAREBOARD_POSITION_BOTTOM:I

    invoke-virtual {p0, v3}, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->setShareboardPostion(I)Lcom/umeng/socialize/shareboard/ShareBoardConfig;

    .line 100
    invoke-virtual {p0, v4}, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->setTitleText(Ljava/lang/String;)Lcom/umeng/socialize/shareboard/ShareBoardConfig;

    .line 101
    invoke-virtual {p0, v0}, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->setTitleTextColor(I)Lcom/umeng/socialize/shareboard/ShareBoardConfig;

    .line 103
    const/4 v3, 0x5

    .line 104
    sget v4, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->BG_SHAPE_ROUNDED_SQUARE:I

    invoke-virtual {p0, v4, v3}, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->setMenuItemBackgroundShape(II)Lcom/umeng/socialize/shareboard/ShareBoardConfig;

    .line 105
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->setMenuItemBackgroundColor(II)Lcom/umeng/socialize/shareboard/ShareBoardConfig;

    .line 106
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->setMenuItemIconPressedColor(I)Lcom/umeng/socialize/shareboard/ShareBoardConfig;

    .line 107
    invoke-virtual {p0, v0}, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->setMenuItemTextColor(I)Lcom/umeng/socialize/shareboard/ShareBoardConfig;

    .line 109
    invoke-virtual {p0, v5}, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->setCancelButtonText(Ljava/lang/String;)Lcom/umeng/socialize/shareboard/ShareBoardConfig;

    .line 110
    invoke-virtual {p0, v0}, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->setCancelButtonTextColor(I)Lcom/umeng/socialize/shareboard/ShareBoardConfig;

    .line 111
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->setCancelButtonBackground(II)Lcom/umeng/socialize/shareboard/ShareBoardConfig;

    .line 113
    const-string v0, "#C2C9CC"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const-string v1, "#0086DC"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->setIndicatorColor(II)Lcom/umeng/socialize/shareboard/ShareBoardConfig;

    .line 114
    return-void
.end method


# virtual methods
.method calculateMenuHeightInDp(I)I
    .locals 4

    .prologue
    const/16 v3, 0x14

    const/4 v0, 0x2

    .line 417
    const/16 v1, 0x4b

    .line 422
    iget v2, p0, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->mMenuColumnNum:I

    if-gt p1, v2, :cond_1

    .line 423
    const/4 v0, 0x1

    .line 430
    :cond_0
    :goto_0
    mul-int/2addr v1, v0

    add-int/lit8 v0, v0, -0x1

    mul-int/2addr v0, v3

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    .line 431
    return v0

    .line 424
    :cond_1
    iget v2, p0, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->mMenuColumnNum:I

    mul-int/lit8 v2, v2, 0x2

    if-gt p1, v2, :cond_0

    goto :goto_0
.end method

.method getOnDismissListener()Landroid/widget/PopupWindow$OnDismissListener;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-object v0
.end method

.method getShareBoardlistener()Lcom/umeng/socialize/utils/ShareBoardlistener;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->mShareBoardlistener:Lcom/umeng/socialize/utils/ShareBoardlistener;

    return-object v0
.end method

.method public setCancelButtonBackground(I)Lcom/umeng/socialize/shareboard/ShareBoardConfig;
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->setCancelButtonBackground(II)Lcom/umeng/socialize/shareboard/ShareBoardConfig;

    .line 229
    return-object p0
.end method

.method public setCancelButtonBackground(II)Lcom/umeng/socialize/shareboard/ShareBoardConfig;
    .locals 0

    .prologue
    .line 240
    iput p1, p0, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->mCancelBtnBgColor:I

    .line 241
    iput p2, p0, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->mCancelBtnBgPressedColor:I

    .line 242
    return-object p0
.end method

.method public setCancelButtonText(Ljava/lang/String;)Lcom/umeng/socialize/shareboard/ShareBoardConfig;
    .locals 1

    .prologue
    .line 201
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->setCancelButtonVisibility(Z)Lcom/umeng/socialize/shareboard/ShareBoardConfig;

    .line 207
    :goto_0
    return-object p0

    .line 204
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->setCancelButtonVisibility(Z)Lcom/umeng/socialize/shareboard/ShareBoardConfig;

    .line 205
    iput-object p1, p0, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->mCancelBtnText:Ljava/lang/String;

    goto :goto_0
.end method

.method public setCancelButtonTextColor(I)Lcom/umeng/socialize/shareboard/ShareBoardConfig;
    .locals 0

    .prologue
    .line 217
    iput p1, p0, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->mCancelBtnColor:I

    .line 218
    return-object p0
.end method

.method public setCancelButtonVisibility(Z)Lcom/umeng/socialize/shareboard/ShareBoardConfig;
    .locals 0

    .prologue
    .line 190
    iput-boolean p1, p0, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->mCancelBtnVisibility:Z

    .line 191
    return-object p0
.end method

.method public setIndicatorColor(I)Lcom/umeng/socialize/shareboard/ShareBoardConfig;
    .locals 1

    .prologue
    .line 352
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->setIndicatorColor(II)Lcom/umeng/socialize/shareboard/ShareBoardConfig;

    .line 353
    return-object p0
.end method

.method public setIndicatorColor(II)Lcom/umeng/socialize/shareboard/ShareBoardConfig;
    .locals 1

    .prologue
    .line 364
    if-eqz p1, :cond_0

    .line 365
    iput p1, p0, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->mIndicatorNormalColor:I

    .line 367
    :cond_0
    if-eqz p2, :cond_1

    .line 368
    iput p2, p0, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->mIndicatorSelectedColor:I

    .line 370
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->setIndicatorVisibility(Z)Lcom/umeng/socialize/shareboard/ShareBoardConfig;

    .line 371
    return-object p0
.end method

.method public setIndicatorVisibility(Z)Lcom/umeng/socialize/shareboard/ShareBoardConfig;
    .locals 0

    .prologue
    .line 381
    iput-boolean p1, p0, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->mIndicatorVisibility:Z

    .line 382
    return-object p0
.end method

.method public setMenuItemBackgroundColor(I)Lcom/umeng/socialize/shareboard/ShareBoardConfig;
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->setMenuItemBackgroundColor(II)Lcom/umeng/socialize/shareboard/ShareBoardConfig;

    .line 307
    return-object p0
.end method

.method public setMenuItemBackgroundColor(II)Lcom/umeng/socialize/shareboard/ShareBoardConfig;
    .locals 0

    .prologue
    .line 318
    iput p1, p0, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->mMenuBgColor:I

    .line 319
    iput p2, p0, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->mMenuBgPressedColor:I

    .line 320
    return-object p0
.end method

.method public setMenuItemBackgroundShape(I)Lcom/umeng/socialize/shareboard/ShareBoardConfig;
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->setMenuItemBackgroundShape(II)Lcom/umeng/socialize/shareboard/ShareBoardConfig;

    .line 280
    return-object p0
.end method

.method public setMenuItemBackgroundShape(II)Lcom/umeng/socialize/shareboard/ShareBoardConfig;
    .locals 1

    .prologue
    .line 291
    sget v0, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->BG_SHAPE_CIRCULAR:I

    if-eq p1, v0, :cond_0

    sget v0, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->BG_SHAPE_ROUNDED_SQUARE:I

    if-eq p1, v0, :cond_0

    .line 292
    sget p1, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->BG_SHAPE_NONE:I

    .line 294
    :cond_0
    iput p1, p0, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->mMenuBgShape:I

    .line 295
    iput p2, p0, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->mMenuBgShapeAngle:I

    .line 296
    return-object p0
.end method

.method public setMenuItemIconPressedColor(I)Lcom/umeng/socialize/shareboard/ShareBoardConfig;
    .locals 0

    .prologue
    .line 341
    iput p1, p0, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->mMenuIconPressedColor:I

    .line 342
    return-object p0
.end method

.method public setMenuItemTextColor(I)Lcom/umeng/socialize/shareboard/ShareBoardConfig;
    .locals 0

    .prologue
    .line 330
    iput p1, p0, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->mMenuTextColor:I

    .line 331
    return-object p0
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)Lcom/umeng/socialize/shareboard/ShareBoardConfig;
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 393
    return-object p0
.end method

.method setOrientation(Z)V
    .locals 2

    .prologue
    .line 130
    if-eqz p1, :cond_2

    .line 131
    iget v0, p0, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->mShareboardPosition:I

    sget v1, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->SHAREBOARD_POSITION_BOTTOM:I

    if-ne v0, v1, :cond_1

    .line 132
    const/4 v0, 0x6

    iput v0, p0, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->mMenuColumnNum:I

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    iget v0, p0, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->mShareboardPosition:I

    sget v1, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->SHAREBOARD_POSITION_CENTER:I

    if-ne v0, v1, :cond_0

    .line 134
    const/4 v0, 0x5

    iput v0, p0, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->mMenuColumnNum:I

    goto :goto_0

    .line 137
    :cond_2
    iget v0, p0, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->mShareboardPosition:I

    sget v1, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->SHAREBOARD_POSITION_BOTTOM:I

    if-ne v0, v1, :cond_3

    .line 138
    const/4 v0, 0x4

    iput v0, p0, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->mMenuColumnNum:I

    goto :goto_0

    .line 139
    :cond_3
    iget v0, p0, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->mShareboardPosition:I

    sget v1, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->SHAREBOARD_POSITION_CENTER:I

    if-ne v0, v1, :cond_0

    .line 140
    const/4 v0, 0x3

    iput v0, p0, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->mMenuColumnNum:I

    goto :goto_0
.end method

.method setShareBoardlistener(Lcom/umeng/socialize/utils/ShareBoardlistener;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->mShareBoardlistener:Lcom/umeng/socialize/utils/ShareBoardlistener;

    .line 118
    return-void
.end method

.method public setShareboardBackgroundColor(I)Lcom/umeng/socialize/shareboard/ShareBoardConfig;
    .locals 0

    .prologue
    .line 253
    iput p1, p0, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->mShareboardBgColor:I

    .line 254
    return-object p0
.end method

.method public setShareboardPostion(I)Lcom/umeng/socialize/shareboard/ShareBoardConfig;
    .locals 1

    .prologue
    .line 264
    sget v0, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->SHAREBOARD_POSITION_BOTTOM:I

    if-eq p1, v0, :cond_0

    sget v0, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->SHAREBOARD_POSITION_CENTER:I

    if-eq p1, v0, :cond_0

    sget v0, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->SHAREBOARD_POSITION_TOP:I

    if-eq p1, v0, :cond_0

    .line 266
    sget p1, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->SHAREBOARD_POSITION_BOTTOM:I

    .line 268
    :cond_0
    iput p1, p0, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->mShareboardPosition:I

    .line 269
    return-object p0
.end method

.method public setStatusBarHeight(I)Lcom/umeng/socialize/shareboard/ShareBoardConfig;
    .locals 0

    .prologue
    .line 407
    iput p1, p0, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->mTopMargin:I

    .line 408
    return-object p0
.end method

.method public setTitleText(Ljava/lang/String;)Lcom/umeng/socialize/shareboard/ShareBoardConfig;
    .locals 1

    .prologue
    .line 163
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->setTitleVisibility(Z)Lcom/umeng/socialize/shareboard/ShareBoardConfig;

    .line 169
    :goto_0
    return-object p0

    .line 166
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->setTitleVisibility(Z)Lcom/umeng/socialize/shareboard/ShareBoardConfig;

    .line 167
    iput-object p1, p0, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->mTitleText:Ljava/lang/String;

    goto :goto_0
.end method

.method public setTitleTextColor(I)Lcom/umeng/socialize/shareboard/ShareBoardConfig;
    .locals 0

    .prologue
    .line 179
    iput p1, p0, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->mTitleTextColor:I

    .line 180
    return-object p0
.end method

.method public setTitleVisibility(Z)Lcom/umeng/socialize/shareboard/ShareBoardConfig;
    .locals 0

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->mTitleVisibility:Z

    .line 153
    return-object p0
.end method
