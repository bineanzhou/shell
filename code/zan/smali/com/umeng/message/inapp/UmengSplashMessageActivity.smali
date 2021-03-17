.class public Lcom/umeng/message/inapp/UmengSplashMessageActivity;
.super Landroid/app/Activity;
.source "UmengSplashMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/message/inapp/UmengSplashMessageActivity$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static s:I

.field private static t:I


# instance fields
.field private b:Landroid/app/Activity;

.field private c:Lcom/umeng/message/inapp/UImageLoadTask;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/TextView;

.field private g:Z

.field private h:Z

.field private i:Lcom/umeng/message/inapp/UmengSplashMessageActivity$a;

.field private j:Lcom/umeng/message/inapp/UmengSplashMessageActivity$a;

.field private k:Lcom/umeng/message/entity/UInAppMessage;

.field private l:Lcom/umeng/message/inapp/d;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:J

.field private r:J

.field private u:Lcom/umeng/message/inapp/UImageLoadTask$ImageLoaderCallback;

.field private v:Lcom/umeng/message/inapp/IUmengInAppMessageCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->a:Ljava/lang/String;

    .line 56
    const/16 v0, 0x7d0

    sput v0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->s:I

    .line 58
    const/16 v0, 0x3e8

    sput v0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->t:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    iput-boolean v1, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->g:Z

    .line 43
    iput-boolean v1, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->h:Z

    .line 48
    iput-boolean v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->m:Z

    .line 49
    iput-boolean v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->n:Z

    .line 50
    iput-boolean v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->o:Z

    .line 52
    iput-boolean v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->p:Z

    .line 60
    new-instance v0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;

    invoke-direct {v0, p0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity$1;-><init>(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)V

    iput-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->u:Lcom/umeng/message/inapp/UImageLoadTask$ImageLoaderCallback;

    .line 162
    new-instance v0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$2;

    invoke-direct {v0, p0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity$2;-><init>(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)V

    iput-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->v:Lcom/umeng/message/inapp/IUmengInAppMessageCallback;

    return-void
.end method

.method static synthetic a()I
    .locals 1

    .prologue
    .line 33
    sget v0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->t:I

    return v0
.end method

.method private a(Z)I
    .locals 1

    .prologue
    .line 422
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/umeng/message/inapp/UmengSplashMessageActivity;J)J
    .locals 1

    .prologue
    .line 33
    iput-wide p1, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->r:J

    return-wide p1
.end method

.method static synthetic a(Lcom/umeng/message/inapp/UmengSplashMessageActivity;Lcom/umeng/message/entity/UInAppMessage;)Lcom/umeng/message/entity/UInAppMessage;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->k:Lcom/umeng/message/entity/UInAppMessage;

    return-object p1
.end method

.method static synthetic a(Lcom/umeng/message/inapp/UmengSplashMessageActivity;Lcom/umeng/message/inapp/UImageLoadTask;)Lcom/umeng/message/inapp/UImageLoadTask;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->c:Lcom/umeng/message/inapp/UImageLoadTask;

    return-object p1
.end method

.method static synthetic a(Lcom/umeng/message/inapp/UmengSplashMessageActivity;Lcom/umeng/message/inapp/UmengSplashMessageActivity$a;)Lcom/umeng/message/inapp/UmengSplashMessageActivity$a;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->i:Lcom/umeng/message/inapp/UmengSplashMessageActivity$a;

    return-object p1
.end method

.method private a(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 366
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3e99999a    # 0.3f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 367
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 368
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 369
    return-void
.end method

.method static synthetic a(Lcom/umeng/message/inapp/UmengSplashMessageActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Z
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->e()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/umeng/message/inapp/UmengSplashMessageActivity;Z)Z
    .locals 0

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->m:Z

    return p1
.end method

.method static synthetic b(Lcom/umeng/message/inapp/UmengSplashMessageActivity;J)J
    .locals 1

    .prologue
    .line 33
    iput-wide p1, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->q:J

    return-wide p1
.end method

.method static synthetic b(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Lcom/umeng/message/inapp/UmengSplashMessageActivity$a;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->i:Lcom/umeng/message/inapp/UmengSplashMessageActivity$a;

    return-object v0
.end method

.method static synthetic b(Lcom/umeng/message/inapp/UmengSplashMessageActivity;Lcom/umeng/message/inapp/UmengSplashMessageActivity$a;)Lcom/umeng/message/inapp/UmengSplashMessageActivity$a;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->j:Lcom/umeng/message/inapp/UmengSplashMessageActivity$a;

    return-object p1
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/umeng/message/inapp/UmengSplashMessageActivity;Z)Z
    .locals 0

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->n:Z

    return p1
.end method

.method static synthetic c(Lcom/umeng/message/inapp/UmengSplashMessageActivity;Z)I
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->a(Z)I

    move-result v0

    return v0
.end method

.method private c()Landroid/view/View;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x2

    const/4 v5, -0x1

    .line 241
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 242
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->b:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 246
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 250
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x41500000    # 13.0f

    invoke-direct {v2, v5, v7, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 252
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->b:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->d:Landroid/widget/ImageView;

    .line 253
    iget-object v3, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    iget-object v2, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->d:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 255
    iget-object v2, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 257
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x40400000    # 3.0f

    invoke-direct {v2, v5, v7, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 259
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->b:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->e:Landroid/widget/ImageView;

    .line 260
    iget-object v3, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    iget-object v2, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->e:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 262
    iget-object v2, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 264
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 266
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 268
    const/4 v2, 0x5

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 269
    iget-object v2, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->b:Landroid/app/Activity;

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-static {v2, v3}, Lcom/umeng/message/proguard/j;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 270
    iget-object v2, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->b:Landroid/app/Activity;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v2, v3}, Lcom/umeng/message/proguard/j;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 271
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->b:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->f:Landroid/widget/TextView;

    .line 272
    iget-object v2, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    iget-object v1, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->b:Landroid/app/Activity;

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v1, v2}, Lcom/umeng/message/proguard/j;->a(Landroid/content/Context;F)I

    move-result v1

    .line 274
    div-int/lit8 v2, v1, 0x3

    .line 275
    iget-object v3, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v3, v1, v2, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 276
    iget-object v1, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->f:Landroid/widget/TextView;

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 277
    iget-object v1, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->f:Landroid/widget/TextView;

    const-string v2, "#80000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 278
    iget-object v1, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 279
    iget-object v1, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->f:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 280
    iget-object v1, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 282
    return-object v0
.end method

.method static synthetic c(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Lcom/umeng/message/entity/UInAppMessage;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->k:Lcom/umeng/message/entity/UInAppMessage;

    return-object v0
.end method

.method static synthetic d(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)J
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->r:J

    return-wide v0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 286
    sget-boolean v0, Lcom/umeng/message/inapp/InAppMessageManager;->a:Z

    if-eqz v0, :cond_0

    .line 287
    invoke-static {p0}, Lcom/umeng/message/inapp/e;->a(Landroid/content/Context;)Lcom/umeng/message/inapp/e;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->v:Lcom/umeng/message/inapp/IUmengInAppMessageCallback;

    invoke-virtual {v0, v1}, Lcom/umeng/message/inapp/e;->a(Lcom/umeng/message/inapp/IUmengInAppMessageCallback;)V

    .line 296
    :goto_0
    return-void

    .line 289
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->b:Landroid/app/Activity;

    invoke-static {v2}, Lcom/umeng/message/inapp/InAppMessageManager;->getInstance(Landroid/content/Context;)Lcom/umeng/message/inapp/InAppMessageManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/message/inapp/InAppMessageManager;->d()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget v2, Lcom/umeng/message/inapp/InAppMessageManager;->b:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 291
    invoke-static {p0}, Lcom/umeng/message/inapp/e;->a(Landroid/content/Context;)Lcom/umeng/message/inapp/e;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->v:Lcom/umeng/message/inapp/IUmengInAppMessageCallback;

    invoke-virtual {v0, v1}, Lcom/umeng/message/inapp/e;->a(Lcom/umeng/message/inapp/IUmengInAppMessageCallback;)V

    goto :goto_0

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->v:Lcom/umeng/message/inapp/IUmengInAppMessageCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/umeng/message/inapp/IUmengInAppMessageCallback;->onSplashMessage(Lcom/umeng/message/entity/UInAppMessage;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/umeng/message/inapp/UmengSplashMessageActivity;Z)Z
    .locals 0

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->o:Z

    return p1
.end method

.method static synthetic e(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)J
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->q:J

    return-wide v0
.end method

.method private declared-synchronized e()Z
    .locals 2

    .prologue
    .line 332
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->p:Z

    .line 333
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    monitor-exit p0

    return v0

    .line 332
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic e(Lcom/umeng/message/inapp/UmengSplashMessageActivity;Z)Z
    .locals 0

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->g:Z

    return p1
.end method

.method static synthetic f(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->b:Landroid/app/Activity;

    return-object v0
.end method

.method private declared-synchronized f()V
    .locals 3

    .prologue
    .line 338
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 346
    :goto_0
    monitor-exit p0

    return-void

    .line 341
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->h:Z

    .line 342
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 343
    iget-object v1, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->b:Landroid/app/Activity;

    invoke-static {p0}, Lcom/umeng/message/inapp/InAppMessageManager;->getInstance(Landroid/content/Context;)Lcom/umeng/message/inapp/InAppMessageManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/message/inapp/InAppMessageManager;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 345
    iget-object v1, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 338
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic g(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->f()V

    return-void
.end method

.method private g()Z
    .locals 5

    .prologue
    const/4 v4, 0x6

    const/4 v0, 0x1

    .line 354
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 355
    iget-object v2, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->b:Landroid/app/Activity;

    invoke-static {v2}, Lcom/umeng/message/inapp/InAppMessageManager;->getInstance(Landroid/content/Context;)Lcom/umeng/message/inapp/InAppMessageManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/message/inapp/InAppMessageManager;->i()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 356
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 357
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 358
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 357
    :goto_0
    return v0

    .line 358
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic h(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Lcom/umeng/message/inapp/d;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->l:Lcom/umeng/message/inapp/d;

    return-object v0
.end method

.method static synthetic i(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic j(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic k(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->o:Z

    return v0
.end method

.method static synthetic l(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->n:Z

    return v0
.end method

.method static synthetic m(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic n(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->m:Z

    return v0
.end method

.method static synthetic o(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Lcom/umeng/message/inapp/UmengSplashMessageActivity$a;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->j:Lcom/umeng/message/inapp/UmengSplashMessageActivity$a;

    return-object v0
.end method

.method static synthetic p(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Z
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->g()Z

    move-result v0

    return v0
.end method

.method static synthetic q(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Lcom/umeng/message/inapp/UImageLoadTask$ImageLoaderCallback;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->u:Lcom/umeng/message/inapp/UImageLoadTask$ImageLoaderCallback;

    return-object v0
.end method

.method static synthetic r(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Lcom/umeng/message/inapp/UImageLoadTask;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->c:Lcom/umeng/message/inapp/UImageLoadTask;

    return-object v0
.end method

.method static synthetic s(Lcom/umeng/message/inapp/UmengSplashMessageActivity;)Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->g:Z

    return v0
.end method


# virtual methods
.method public final onBackPressed()V
    .locals 0

    .prologue
    .line 329
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 218
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 219
    iput-object p0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->b:Landroid/app/Activity;

    .line 220
    invoke-virtual {p0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-lez v0, :cond_1

    .line 221
    invoke-virtual {p0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->finish()V

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    invoke-virtual {p0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->onCustomPretreatment()Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->setRequestedOrientation(I)V

    .line 228
    invoke-direct {p0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->c()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->setContentView(Landroid/view/View;)V

    .line 229
    invoke-direct {p0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->d()V

    .line 230
    new-instance v0, Lcom/umeng/message/inapp/d;

    invoke-direct {v0}, Lcom/umeng/message/inapp/d;-><init>()V

    iput-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->l:Lcom/umeng/message/inapp/d;

    .line 231
    new-instance v0, Lcom/umeng/message/inapp/UmengSplashMessageActivity$a;

    sget v1, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->s:I

    int-to-long v2, v1

    sget v1, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->t:I

    int-to-long v4, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/umeng/message/inapp/UmengSplashMessageActivity$a;-><init>(Lcom/umeng/message/inapp/UmengSplashMessageActivity;JJ)V

    iput-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->i:Lcom/umeng/message/inapp/UmengSplashMessageActivity$a;

    .line 232
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->i:Lcom/umeng/message/inapp/UmengSplashMessageActivity$a;

    invoke-virtual {v0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity$a;->b()Lcom/umeng/message/inapp/c;

    goto :goto_0
.end method

.method public final onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0

    .prologue
    .line 237
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 238
    return-void
.end method

.method public onCustomPretreatment()Z
    .locals 1

    .prologue
    .line 362
    const/4 v0, 0x0

    return v0
.end method

.method protected final onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 403
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->i:Lcom/umeng/message/inapp/UmengSplashMessageActivity$a;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->i:Lcom/umeng/message/inapp/UmengSplashMessageActivity$a;

    invoke-virtual {v0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity$a;->a()V

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->j:Lcom/umeng/message/inapp/UmengSplashMessageActivity$a;

    if-eqz v0, :cond_1

    .line 407
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->j:Lcom/umeng/message/inapp/UmengSplashMessageActivity$a;

    invoke-virtual {v0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity$a;->a()V

    .line 409
    :cond_1
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->c:Lcom/umeng/message/inapp/UImageLoadTask;

    if-eqz v0, :cond_2

    .line 410
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->c:Lcom/umeng/message/inapp/UImageLoadTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/umeng/message/inapp/UImageLoadTask;->a(Lcom/umeng/message/inapp/UImageLoadTask$ImageLoaderCallback;)V

    .line 413
    :cond_2
    iput-boolean v2, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->p:Z

    .line 414
    iput-boolean v2, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->m:Z

    .line 415
    iput-boolean v2, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->n:Z

    .line 416
    iput-boolean v2, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->o:Z

    .line 418
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 419
    return-void
.end method

.method protected final onPause()V
    .locals 6

    .prologue
    .line 317
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 318
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->i:Lcom/umeng/message/inapp/UmengSplashMessageActivity$a;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->i:Lcom/umeng/message/inapp/UmengSplashMessageActivity$a;

    invoke-virtual {v0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity$a;->c()Lcom/umeng/message/inapp/c;

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->j:Lcom/umeng/message/inapp/UmengSplashMessageActivity$a;

    if-eqz v0, :cond_1

    .line 322
    iget-wide v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->r:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->q:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->r:J

    .line 323
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->j:Lcom/umeng/message/inapp/UmengSplashMessageActivity$a;

    invoke-virtual {v0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity$a;->c()Lcom/umeng/message/inapp/c;

    .line 325
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 305
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 306
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->i:Lcom/umeng/message/inapp/UmengSplashMessageActivity$a;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->i:Lcom/umeng/message/inapp/UmengSplashMessageActivity$a;

    invoke-virtual {v0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity$a;->d()Lcom/umeng/message/inapp/c;

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->j:Lcom/umeng/message/inapp/UmengSplashMessageActivity$a;

    if-eqz v0, :cond_1

    .line 310
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->q:J

    .line 311
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengSplashMessageActivity;->j:Lcom/umeng/message/inapp/UmengSplashMessageActivity$a;

    invoke-virtual {v0}, Lcom/umeng/message/inapp/UmengSplashMessageActivity$a;->d()Lcom/umeng/message/inapp/c;

    .line 313
    :cond_1
    return-void
.end method

.method protected final onStart()V
    .locals 0

    .prologue
    .line 300
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 301
    return-void
.end method
