.class public final Lcom/umeng/message/inapp/UmengCardMessage;
.super Landroid/app/DialogFragment;
.source "UmengCardMessage.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final r:I = 0xc


# instance fields
.field private b:Landroid/app/Activity;

.field private c:Lcom/umeng/message/entity/UInAppMessage;

.field private d:Ljava/lang/String;

.field private e:Landroid/graphics/Bitmap;

.field private f:Landroid/view/ViewGroup;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Lcom/umeng/message/inapp/d;

.field private l:Lcom/umeng/message/inapp/IUmengInAppMsgCloseCallback;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/umeng/message/inapp/UmengCardMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/message/inapp/UmengCardMessage;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 37
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 52
    iput-boolean v2, p0, Lcom/umeng/message/inapp/UmengCardMessage;->m:Z

    .line 53
    iput-boolean v2, p0, Lcom/umeng/message/inapp/UmengCardMessage;->n:Z

    .line 54
    iput-boolean v2, p0, Lcom/umeng/message/inapp/UmengCardMessage;->o:Z

    .line 55
    iput-boolean v2, p0, Lcom/umeng/message/inapp/UmengCardMessage;->p:Z

    .line 57
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "18"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "16"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "16"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/umeng/message/inapp/UmengCardMessage;->q:[Ljava/lang/String;

    return-void
.end method

.method private a(Z)I
    .locals 1

    .prologue
    .line 410
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a()Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v3, -0x2

    const/4 v5, -0x1

    .line 146
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/umeng/message/inapp/UmengCardMessage;->b:Landroid/app/Activity;

    invoke-direct {v1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 147
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    const-string v0, "#33000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 152
    invoke-virtual {p0}, Lcom/umeng/message/inapp/UmengCardMessage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 154
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v6, :cond_0

    .line 155
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 165
    :goto_0
    iget-object v2, p0, Lcom/umeng/message/inapp/UmengCardMessage;->b:Landroid/app/Activity;

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-static {v2, v3}, Lcom/umeng/message/proguard/j;->a(Landroid/content/Context;F)I

    move-result v2

    .line 166
    iget-object v3, p0, Lcom/umeng/message/inapp/UmengCardMessage;->b:Landroid/app/Activity;

    const/high16 v4, 0x41700000    # 15.0f

    invoke-static {v3, v4}, Lcom/umeng/message/proguard/j;->a(Landroid/content/Context;F)I

    move-result v3

    .line 167
    invoke-virtual {v0, v2, v3, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 168
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 169
    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/umeng/message/inapp/UmengCardMessage;->b:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/umeng/message/inapp/UmengCardMessage;->f:Landroid/view/ViewGroup;

    .line 170
    iget-object v2, p0, Lcom/umeng/message/inapp/UmengCardMessage;->f:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 175
    iget-object v2, p0, Lcom/umeng/message/inapp/UmengCardMessage;->b:Landroid/app/Activity;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v2, v3}, Lcom/umeng/message/proguard/j;->a(Landroid/content/Context;F)I

    move-result v2

    .line 176
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 177
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/umeng/message/inapp/UmengCardMessage;->b:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 178
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 180
    invoke-static {}, Lcom/umeng/message/proguard/h;->c()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setId(I)V

    .line 181
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengCardMessage;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 182
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengCardMessage;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 184
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengCardMessage;->b:Landroid/app/Activity;

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-static {v0, v3}, Lcom/umeng/message/proguard/j;->a(Landroid/content/Context;F)I

    move-result v0

    .line 185
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, 0x5

    invoke-direct {v3, v0, v0, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 186
    new-instance v0, Lcom/umeng/message/view/UCloseView;

    iget-object v4, p0, Lcom/umeng/message/inapp/UmengCardMessage;->b:Landroid/app/Activity;

    invoke-direct {v0, v4}, Lcom/umeng/message/view/UCloseView;-><init>(Landroid/content/Context;)V

    .line 187
    invoke-virtual {v0, v3}, Lcom/umeng/message/view/UCloseView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    iget-object v3, p0, Lcom/umeng/message/inapp/UmengCardMessage;->f:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 190
    iget-object v3, p0, Lcom/umeng/message/inapp/UmengCardMessage;->f:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 192
    new-instance v3, Lcom/umeng/message/inapp/UmengCardMessage$1;

    invoke-direct {v3, p0}, Lcom/umeng/message/inapp/UmengCardMessage$1;-><init>(Lcom/umeng/message/inapp/UmengCardMessage;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    new-instance v2, Lcom/umeng/message/inapp/UmengCardMessage$2;

    invoke-direct {v2, p0}, Lcom/umeng/message/inapp/UmengCardMessage$2;-><init>(Lcom/umeng/message/inapp/UmengCardMessage;)V

    invoke-virtual {v0, v2}, Lcom/umeng/message/view/UCloseView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    return-object v1

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengCardMessage;->c:Lcom/umeng/message/entity/UInAppMessage;

    iget v0, v0, Lcom/umeng/message/entity/UInAppMessage;->msg_type:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 159
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/umeng/message/inapp/UmengCardMessage;->g:I

    iget v3, p0, Lcom/umeng/message/inapp/UmengCardMessage;->h:I

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto/16 :goto_0

    .line 161
    :cond_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto/16 :goto_0
.end method

.method private a(Landroid/graphics/Rect;)Landroid/view/View;
    .locals 13

    .prologue
    const/high16 v12, 0x41a00000    # 20.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 216
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/umeng/message/inapp/UmengCardMessage;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 217
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    const-string v1, "#33000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 221
    invoke-virtual {p0}, Lcom/umeng/message/inapp/UmengCardMessage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 224
    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v10, :cond_1

    .line 225
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/umeng/message/inapp/UmengCardMessage;->b:Landroid/app/Activity;

    const/high16 v3, 0x428c0000    # 70.0f

    invoke-static {v2, v3}, Lcom/umeng/message/proguard/j;->a(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/umeng/message/inapp/UmengCardMessage;->i:I

    .line 226
    iget-object v1, p0, Lcom/umeng/message/inapp/UmengCardMessage;->c:Lcom/umeng/message/entity/UInAppMessage;

    iget v1, v1, Lcom/umeng/message/entity/UInAppMessage;->msg_type:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 227
    iget v1, p0, Lcom/umeng/message/inapp/UmengCardMessage;->i:I

    div-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x5

    iput v1, p0, Lcom/umeng/message/inapp/UmengCardMessage;->j:I

    .line 235
    :goto_0
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/umeng/message/inapp/UmengCardMessage;->i:I

    iget v3, p0, Lcom/umeng/message/inapp/UmengCardMessage;->j:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 236
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 238
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/umeng/message/inapp/UmengCardMessage;->b:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 239
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 241
    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 242
    const-string v1, "#FFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 244
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v8, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 246
    iget-object v3, p0, Lcom/umeng/message/inapp/UmengCardMessage;->b:Landroid/app/Activity;

    invoke-static {v3, v12}, Lcom/umeng/message/proguard/j;->a(Landroid/content/Context;F)I

    move-result v3

    .line 247
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 249
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/umeng/message/inapp/UmengCardMessage;->b:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 250
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    const/16 v1, 0x11

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 252
    iget-object v1, p0, Lcom/umeng/message/inapp/UmengCardMessage;->c:Lcom/umeng/message/entity/UInAppMessage;

    iget-object v1, v1, Lcom/umeng/message/entity/UInAppMessage;->title:Ljava/lang/String;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 254
    const-string v1, "END"

    invoke-static {v1}, Landroid/text/TextUtils$TruncateAt;->valueOf(Ljava/lang/String;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 255
    iget-object v1, p0, Lcom/umeng/message/inapp/UmengCardMessage;->q:[Ljava/lang/String;

    aget-object v1, v1, v9

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 256
    const-string v1, "#000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 257
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 259
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 261
    invoke-virtual {v1, v3, v9, v3, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 262
    iput v11, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 264
    new-instance v5, Landroid/widget/ScrollView;

    iget-object v6, p0, Lcom/umeng/message/inapp/UmengCardMessage;->b:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 265
    invoke-virtual {v5, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    const/high16 v1, 0x1000000

    invoke-virtual {v5, v1}, Landroid/widget/ScrollView;->setScrollBarStyle(I)V

    .line 267
    invoke-virtual {v5, v9}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 269
    new-instance v1, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/umeng/message/inapp/UmengCardMessage;->b:Landroid/app/Activity;

    invoke-direct {v1, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 270
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    iget-object v6, p0, Lcom/umeng/message/inapp/UmengCardMessage;->c:Lcom/umeng/message/entity/UInAppMessage;

    iget-object v6, v6, Lcom/umeng/message/entity/UInAppMessage;->content:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v6, p0, Lcom/umeng/message/inapp/UmengCardMessage;->q:[Ljava/lang/String;

    aget-object v6, v6, v10

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 274
    const-string v6, "#000000"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 275
    invoke-virtual {v5, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 276
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 278
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 279
    invoke-virtual {v1, v9}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 280
    iget-object v5, p0, Lcom/umeng/message/inapp/UmengCardMessage;->b:Landroid/app/Activity;

    invoke-static {v5, v11}, Lcom/umeng/message/proguard/j;->a(Landroid/content/Context;F)I

    move-result v5

    const-string v6, "#D8D8D8"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 281
    invoke-virtual {v1, v12}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 282
    invoke-virtual {v1, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 284
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v6, p0, Lcom/umeng/message/inapp/UmengCardMessage;->b:Landroid/app/Activity;

    const/high16 v7, 0x420c0000    # 35.0f

    .line 285
    invoke-static {v6, v7}, Lcom/umeng/message/proguard/j;->a(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v5, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 286
    iget-object v6, p0, Lcom/umeng/message/inapp/UmengCardMessage;->b:Landroid/app/Activity;

    const/high16 v7, 0x41f00000    # 30.0f

    invoke-static {v6, v7}, Lcom/umeng/message/proguard/j;->a(Landroid/content/Context;F)I

    move-result v6

    .line 287
    invoke-virtual {v5, v3, v6, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 288
    new-instance v3, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/umeng/message/inapp/UmengCardMessage;->b:Landroid/app/Activity;

    invoke-direct {v3, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 289
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    const/16 v5, 0x11

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 291
    const-string v5, "#FFFFFF"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 292
    iget-object v5, p0, Lcom/umeng/message/inapp/UmengCardMessage;->c:Lcom/umeng/message/entity/UInAppMessage;

    iget-object v5, v5, Lcom/umeng/message/entity/UInAppMessage;->button_text:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 294
    const-string v5, "END"

    invoke-static {v5}, Landroid/text/TextUtils$TruncateAt;->valueOf(Ljava/lang/String;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 295
    iget-object v4, p0, Lcom/umeng/message/inapp/UmengCardMessage;->q:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 296
    const-string v4, "#000000"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 297
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 298
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 300
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 302
    new-instance v1, Lcom/umeng/message/inapp/UmengCardMessage$3;

    invoke-direct {v1, p0}, Lcom/umeng/message/inapp/UmengCardMessage$3;-><init>(Lcom/umeng/message/inapp/UmengCardMessage;)V

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    return-object v0

    .line 229
    :cond_0
    iget v1, p0, Lcom/umeng/message/inapp/UmengCardMessage;->i:I

    div-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/umeng/message/inapp/UmengCardMessage;->j:I

    goto/16 :goto_0

    .line 232
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v2, p0, Lcom/umeng/message/inapp/UmengCardMessage;->b:Landroid/app/Activity;

    const/high16 v3, 0x42820000    # 65.0f

    invoke-static {v2, v3}, Lcom/umeng/message/proguard/j;->a(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/umeng/message/inapp/UmengCardMessage;->j:I

    .line 233
    iget v1, p0, Lcom/umeng/message/inapp/UmengCardMessage;->j:I

    div-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x6

    iput v1, p0, Lcom/umeng/message/inapp/UmengCardMessage;->i:I

    goto/16 :goto_0
.end method

.method private a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    .line 315
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengCardMessage;->b:Landroid/app/Activity;

    .line 316
    invoke-static {v0}, Lcom/umeng/message/common/c;->a(Landroid/content/Context;)Lcom/umeng/message/common/c;

    move-result-object v0

    const-string v1, "umeng_custom_card_message"

    invoke-virtual {v0, v1}, Lcom/umeng/message/common/c;->e(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    .line 315
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 317
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengCardMessage;->b:Landroid/app/Activity;

    .line 318
    invoke-static {v0}, Lcom/umeng/message/common/c;->a(Landroid/content/Context;)Lcom/umeng/message/common/c;

    move-result-object v0

    const-string v1, "umeng_card_message_image"

    invoke-virtual {v0, v1}, Lcom/umeng/message/common/c;->b(Ljava/lang/String;)I

    move-result v0

    .line 317
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 319
    iget-object v1, p0, Lcom/umeng/message/inapp/UmengCardMessage;->b:Landroid/app/Activity;

    .line 320
    invoke-static {v1}, Lcom/umeng/message/common/c;->a(Landroid/content/Context;)Lcom/umeng/message/common/c;

    move-result-object v1

    const-string v2, "umeng_card_message_ok"

    invoke-virtual {v1, v2}, Lcom/umeng/message/common/c;->b(Ljava/lang/String;)I

    move-result v1

    .line 319
    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 321
    iget-object v2, p0, Lcom/umeng/message/inapp/UmengCardMessage;->b:Landroid/app/Activity;

    .line 322
    invoke-static {v2}, Lcom/umeng/message/common/c;->a(Landroid/content/Context;)Lcom/umeng/message/common/c;

    move-result-object v2

    const-string v4, "umeng_card_message_close"

    invoke-virtual {v2, v4}, Lcom/umeng/message/common/c;->b(Ljava/lang/String;)I

    move-result v2

    .line 321
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 323
    iget-object v4, p0, Lcom/umeng/message/inapp/UmengCardMessage;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 325
    new-instance v4, Lcom/umeng/message/inapp/UmengCardMessage$4;

    invoke-direct {v4, p0}, Lcom/umeng/message/inapp/UmengCardMessage$4;-><init>(Lcom/umeng/message/inapp/UmengCardMessage;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    new-instance v0, Lcom/umeng/message/inapp/UmengCardMessage$5;

    invoke-direct {v0, p0}, Lcom/umeng/message/inapp/UmengCardMessage$5;-><init>(Lcom/umeng/message/inapp/UmengCardMessage;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    new-instance v0, Lcom/umeng/message/inapp/UmengCardMessage$6;

    invoke-direct {v0, p0}, Lcom/umeng/message/inapp/UmengCardMessage$6;-><init>(Lcom/umeng/message/inapp/UmengCardMessage;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    return-object v3
.end method

.method static synthetic a(Lcom/umeng/message/inapp/UmengCardMessage;)Lcom/umeng/message/entity/UInAppMessage;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengCardMessage;->c:Lcom/umeng/message/entity/UInAppMessage;

    return-object v0
.end method

.method static synthetic a(Lcom/umeng/message/inapp/UmengCardMessage;Z)Z
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/umeng/message/inapp/UmengCardMessage;->n:Z

    return p1
.end method

.method static synthetic b(Lcom/umeng/message/inapp/UmengCardMessage;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengCardMessage;->b:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic b(Lcom/umeng/message/inapp/UmengCardMessage;Z)Z
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/umeng/message/inapp/UmengCardMessage;->p:Z

    return p1
.end method

.method static synthetic c(Lcom/umeng/message/inapp/UmengCardMessage;)Lcom/umeng/message/inapp/d;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengCardMessage;->k:Lcom/umeng/message/inapp/d;

    return-object v0
.end method

.method static synthetic c(Lcom/umeng/message/inapp/UmengCardMessage;Z)Z
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/umeng/message/inapp/UmengCardMessage;->o:Z

    return p1
.end method


# virtual methods
.method a(Lcom/umeng/message/inapp/IUmengInAppMsgCloseCallback;)V
    .locals 0

    .prologue
    .line 381
    iput-object p1, p0, Lcom/umeng/message/inapp/UmengCardMessage;->l:Lcom/umeng/message/inapp/IUmengInAppMsgCloseCallback;

    .line 382
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 362
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 363
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengCardMessage;->f:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 365
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 366
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 372
    :goto_0
    iget-object v1, p0, Lcom/umeng/message/inapp/UmengCardMessage;->b:Landroid/app/Activity;

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v1, v2}, Lcom/umeng/message/proguard/j;->a(Landroid/content/Context;F)I

    move-result v1

    .line 373
    iget-object v2, p0, Lcom/umeng/message/inapp/UmengCardMessage;->b:Landroid/app/Activity;

    const/high16 v3, 0x41700000    # 15.0f

    invoke-static {v2, v3}, Lcom/umeng/message/proguard/j;->a(Landroid/content/Context;F)I

    move-result v2

    .line 374
    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 375
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 376
    iget-object v1, p0, Lcom/umeng/message/inapp/UmengCardMessage;->f:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 378
    :cond_0
    return-void

    .line 369
    :cond_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const/4 v0, 0x2

    const v1, 0x1030006

    invoke-virtual {p0, v0, v1}, Lcom/umeng/message/inapp/UmengCardMessage;->setStyle(II)V

    .line 65
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/umeng/message/inapp/UmengCardMessage;->setRetainInstance(Z)V

    .line 68
    :try_start_0
    invoke-virtual {p0}, Lcom/umeng/message/inapp/UmengCardMessage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/inapp/UmengCardMessage;->b:Landroid/app/Activity;

    .line 69
    invoke-virtual {p0}, Lcom/umeng/message/inapp/UmengCardMessage;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 70
    const-string v1, "msg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    new-instance v2, Lcom/umeng/message/entity/UInAppMessage;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/umeng/message/entity/UInAppMessage;-><init>(Lorg/json/JSONObject;)V

    iput-object v2, p0, Lcom/umeng/message/inapp/UmengCardMessage;->c:Lcom/umeng/message/entity/UInAppMessage;

    .line 72
    const-string v1, "label"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/message/inapp/UmengCardMessage;->d:Ljava/lang/String;

    .line 73
    const-string v1, "bitmapByte"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 74
    if-eqz v0, :cond_0

    .line 75
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/inapp/UmengCardMessage;->e:Landroid/graphics/Bitmap;

    .line 77
    :cond_0
    new-instance v0, Lcom/umeng/message/inapp/d;

    invoke-direct {v0}, Lcom/umeng/message/inapp/d;-><init>()V

    iput-object v0, p0, Lcom/umeng/message/inapp/UmengCardMessage;->k:Lcom/umeng/message/inapp/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengCardMessage;->c:Lcom/umeng/message/entity/UInAppMessage;

    iget v0, v0, Lcom/umeng/message/entity/UInAppMessage;->msg_type:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/umeng/message/inapp/UmengCardMessage;->c:Lcom/umeng/message/entity/UInAppMessage;

    iget v0, v0, Lcom/umeng/message/entity/UInAppMessage;->msg_type:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengCardMessage;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/umeng/message/inapp/InAppMessageManager;->getInstance(Landroid/content/Context;)Lcom/umeng/message/inapp/InAppMessageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/inapp/InAppMessageManager;->b()[Ljava/lang/String;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_2

    .line 86
    iput-object v0, p0, Lcom/umeng/message/inapp/UmengCardMessage;->q:[Ljava/lang/String;

    .line 89
    :cond_2
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 140
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 141
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 142
    return-object v0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-virtual {p0}, Lcom/umeng/message/inapp/UmengCardMessage;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 95
    if-eqz v2, :cond_5

    .line 96
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 98
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 101
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, p0, Lcom/umeng/message/inapp/UmengCardMessage;->b:Landroid/app/Activity;

    const/high16 v4, 0x42820000    # 65.0f

    invoke-static {v3, v4}, Lcom/umeng/message/proguard/j;->a(Landroid/content/Context;F)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/umeng/message/inapp/UmengCardMessage;->h:I

    .line 102
    iget v2, p0, Lcom/umeng/message/inapp/UmengCardMessage;->h:I

    int-to-double v2, v2

    const-wide v4, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Lcom/umeng/message/inapp/UmengCardMessage;->g:I

    .line 105
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/umeng/message/inapp/UmengCardMessage;->b:Landroid/app/Activity;

    const/high16 v4, 0x428c0000    # 70.0f

    invoke-static {v3, v4}, Lcom/umeng/message/proguard/j;->a(Landroid/content/Context;F)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/umeng/message/inapp/UmengCardMessage;->i:I

    .line 106
    iget v2, p0, Lcom/umeng/message/inapp/UmengCardMessage;->i:I

    div-int/lit8 v2, v2, 0x2

    mul-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/umeng/message/inapp/UmengCardMessage;->j:I

    .line 109
    :goto_0
    iget-object v2, p0, Lcom/umeng/message/inapp/UmengCardMessage;->c:Lcom/umeng/message/entity/UInAppMessage;

    iget v2, v2, Lcom/umeng/message/entity/UInAppMessage;->msg_type:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/umeng/message/inapp/UmengCardMessage;->c:Lcom/umeng/message/entity/UInAppMessage;

    iget v2, v2, Lcom/umeng/message/entity/UInAppMessage;->msg_type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 111
    :cond_0
    invoke-direct {p0}, Lcom/umeng/message/inapp/UmengCardMessage;->a()Landroid/view/View;

    move-result-object v1

    .line 125
    :cond_1
    :goto_1
    return-object v1

    .line 114
    :cond_2
    iget-object v2, p0, Lcom/umeng/message/inapp/UmengCardMessage;->c:Lcom/umeng/message/entity/UInAppMessage;

    iget v2, v2, Lcom/umeng/message/entity/UInAppMessage;->msg_type:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 115
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/message/inapp/UmengCardMessage;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    .line 118
    :cond_3
    iget-object v2, p0, Lcom/umeng/message/inapp/UmengCardMessage;->c:Lcom/umeng/message/entity/UInAppMessage;

    iget v2, v2, Lcom/umeng/message/entity/UInAppMessage;->msg_type:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/umeng/message/inapp/UmengCardMessage;->c:Lcom/umeng/message/entity/UInAppMessage;

    iget v2, v2, Lcom/umeng/message/entity/UInAppMessage;->msg_type:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    .line 120
    :cond_4
    if-eqz v0, :cond_1

    .line 121
    invoke-direct {p0, v0}, Lcom/umeng/message/inapp/UmengCardMessage;->a(Landroid/graphics/Rect;)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 394
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    .line 395
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengCardMessage;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/umeng/message/inapp/e;->a(Landroid/content/Context;)Lcom/umeng/message/inapp/e;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/message/inapp/UmengCardMessage;->c:Lcom/umeng/message/entity/UInAppMessage;

    iget-object v1, v1, Lcom/umeng/message/entity/UInAppMessage;->msg_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/umeng/message/inapp/UmengCardMessage;->c:Lcom/umeng/message/entity/UInAppMessage;

    iget v2, v2, Lcom/umeng/message/entity/UInAppMessage;->msg_type:I

    iget-boolean v4, p0, Lcom/umeng/message/inapp/UmengCardMessage;->n:Z

    .line 396
    invoke-direct {p0, v4}, Lcom/umeng/message/inapp/UmengCardMessage;->a(Z)I

    move-result v4

    iget-boolean v5, p0, Lcom/umeng/message/inapp/UmengCardMessage;->p:Z

    .line 397
    invoke-direct {p0, v5}, Lcom/umeng/message/inapp/UmengCardMessage;->a(Z)I

    move-result v7

    iget-boolean v5, p0, Lcom/umeng/message/inapp/UmengCardMessage;->o:Z

    invoke-direct {p0, v5}, Lcom/umeng/message/inapp/UmengCardMessage;->a(Z)I

    move-result v9

    move v5, v3

    move v6, v3

    move v8, v3

    .line 395
    invoke-virtual/range {v0 .. v9}, Lcom/umeng/message/inapp/e;->a(Ljava/lang/String;IIIIIIII)V

    .line 399
    iput-boolean v3, p0, Lcom/umeng/message/inapp/UmengCardMessage;->p:Z

    .line 400
    iput-boolean v3, p0, Lcom/umeng/message/inapp/UmengCardMessage;->n:Z

    .line 401
    iput-boolean v3, p0, Lcom/umeng/message/inapp/UmengCardMessage;->o:Z

    .line 402
    iput-boolean v3, p0, Lcom/umeng/message/inapp/UmengCardMessage;->m:Z

    .line 404
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengCardMessage;->l:Lcom/umeng/message/inapp/IUmengInAppMsgCloseCallback;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengCardMessage;->l:Lcom/umeng/message/inapp/IUmengInAppMsgCloseCallback;

    invoke-interface {v0}, Lcom/umeng/message/inapp/IUmengInAppMsgCloseCallback;->onColse()V

    .line 407
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/umeng/message/inapp/UmengCardMessage;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/umeng/message/inapp/UmengCardMessage;->getRetainInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    invoke-virtual {p0}, Lcom/umeng/message/inapp/UmengCardMessage;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 389
    :cond_0
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    .line 390
    return-void
.end method

.method public onStart()V
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 130
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 131
    iget-boolean v0, p0, Lcom/umeng/message/inapp/UmengCardMessage;->m:Z

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengCardMessage;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/umeng/message/inapp/e;->a(Landroid/content/Context;)Lcom/umeng/message/inapp/e;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/message/inapp/UmengCardMessage;->c:Lcom/umeng/message/entity/UInAppMessage;

    iget-object v1, v1, Lcom/umeng/message/entity/UInAppMessage;->msg_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/umeng/message/inapp/UmengCardMessage;->c:Lcom/umeng/message/entity/UInAppMessage;

    iget v2, v2, Lcom/umeng/message/entity/UInAppMessage;->msg_type:I

    move v5, v4

    move v6, v4

    move v7, v4

    move v8, v4

    move v9, v4

    invoke-virtual/range {v0 .. v9}, Lcom/umeng/message/inapp/e;->a(Ljava/lang/String;IIIIIIII)V

    .line 135
    :cond_0
    iput-boolean v3, p0, Lcom/umeng/message/inapp/UmengCardMessage;->m:Z

    .line 136
    return-void
.end method
