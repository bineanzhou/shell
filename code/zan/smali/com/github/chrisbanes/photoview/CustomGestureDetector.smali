.class Lcom/github/chrisbanes/photoview/CustomGestureDetector;
.super Ljava/lang/Object;
.source "CustomGestureDetector.java"


# static fields
.field private static final a:I = -0x1


# instance fields
.field private b:I

.field private c:I

.field private final d:Landroid/view/ScaleGestureDetector;

.field private e:Landroid/view/VelocityTracker;

.field private f:Z

.field private g:F

.field private h:F

.field private final i:F

.field private final j:F

.field private k:Lcom/github/chrisbanes/photoview/OnGestureListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/github/chrisbanes/photoview/OnGestureListener;)V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->b:I

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->c:I

    .line 45
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->j:F

    .line 47
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->i:F

    .line 49
    iput-object p2, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->k:Lcom/github/chrisbanes/photoview/OnGestureListener;

    .line 50
    new-instance v0, Lcom/github/chrisbanes/photoview/CustomGestureDetector$1;

    invoke-direct {v0, p0}, Lcom/github/chrisbanes/photoview/CustomGestureDetector$1;-><init>(Lcom/github/chrisbanes/photoview/CustomGestureDetector;)V

    .line 74
    new-instance v1, Landroid/view/ScaleGestureDetector;

    invoke-direct {v1, p1, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->d:Landroid/view/ScaleGestureDetector;

    .line 75
    return-void
.end method

.method static synthetic a(Lcom/github/chrisbanes/photoview/CustomGestureDetector;)Lcom/github/chrisbanes/photoview/OnGestureListener;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->k:Lcom/github/chrisbanes/photoview/OnGestureListener;

    return-object v0
.end method

.method private b(Landroid/view/MotionEvent;)F
    .locals 1

    .prologue
    .line 79
    :try_start_0
    iget v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->c:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 81
    :goto_0
    return v0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    goto :goto_0
.end method

.method private c(Landroid/view/MotionEvent;)F
    .locals 1

    .prologue
    .line 87
    :try_start_0
    iget v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->c:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 89
    :goto_0
    return v0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    goto :goto_0
.end method

.method private d(Landroid/view/MotionEvent;)Z
    .locals 13

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v12, -0x1

    const/4 v2, 0x0

    .line 112
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 113
    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 198
    :cond_0
    :goto_0
    :pswitch_0
    iget v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->b:I

    if-eq v0, v12, :cond_1

    iget v2, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->b:I

    .line 199
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    iput v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->c:I

    .line 201
    return v1

    .line 115
    :pswitch_1
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->b:I

    .line 117
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->e:Landroid/view/VelocityTracker;

    .line 118
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->e:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_2

    .line 119
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->e:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 122
    :cond_2
    invoke-direct {p0, p1}, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->b(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->g:F

    .line 123
    invoke-direct {p0, p1}, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->c(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->h:F

    .line 124
    iput-boolean v2, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->f:Z

    goto :goto_0

    .line 127
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->b(Landroid/view/MotionEvent;)F

    move-result v3

    .line 128
    invoke-direct {p0, p1}, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->c(Landroid/view/MotionEvent;)F

    move-result v4

    .line 129
    iget v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->g:F

    sub-float v5, v3, v0

    iget v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->h:F

    sub-float v6, v4, v0

    .line 131
    iget-boolean v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->f:Z

    if-nez v0, :cond_3

    .line 134
    mul-float v0, v5, v5

    mul-float v7, v6, v6

    add-float/2addr v0, v7

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    iget v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->i:F

    float-to-double v10, v0

    cmpl-double v0, v8, v10

    if-ltz v0, :cond_4

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->f:Z

    .line 137
    :cond_3
    iget-boolean v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->f:Z

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->k:Lcom/github/chrisbanes/photoview/OnGestureListener;

    invoke-interface {v0, v5, v6}, Lcom/github/chrisbanes/photoview/OnGestureListener;->a(FF)V

    .line 139
    iput v3, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->g:F

    .line 140
    iput v4, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->h:F

    .line 142
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->e:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->e:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_4
    move v0, v2

    .line 134
    goto :goto_1

    .line 148
    :pswitch_3
    iput v12, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->b:I

    .line 150
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->e:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->e:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 152
    iput-object v7, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->e:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 156
    :pswitch_4
    iput v12, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->b:I

    .line 157
    iget-boolean v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->f:Z

    if-eqz v0, :cond_5

    .line 158
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->e:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_5

    .line 159
    invoke-direct {p0, p1}, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->b(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->g:F

    .line 160
    invoke-direct {p0, p1}, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->c(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->h:F

    .line 163
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->e:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 164
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->e:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 166
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->e:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    iget-object v3, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->e:Landroid/view/VelocityTracker;

    .line 167
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v3

    .line 171
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget v5, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->j:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_5

    .line 172
    iget-object v4, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->k:Lcom/github/chrisbanes/photoview/OnGestureListener;

    iget v5, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->g:F

    iget v6, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->h:F

    neg-float v0, v0

    neg-float v3, v3

    invoke-interface {v4, v5, v6, v0, v3}, Lcom/github/chrisbanes/photoview/OnGestureListener;->a(FFFF)V

    .line 179
    :cond_5
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->e:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->e:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 181
    iput-object v7, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->e:Landroid/view/VelocityTracker;

    goto/16 :goto_0

    .line 185
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-static {v0}, Lcom/github/chrisbanes/photoview/Util;->a(I)I

    move-result v0

    .line 186
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 187
    iget v4, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->b:I

    if-ne v3, v4, :cond_0

    .line 190
    if-nez v0, :cond_6

    move v0, v1

    .line 191
    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->b:I

    .line 192
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->g:F

    .line 193
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->h:F

    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 190
    goto :goto_2

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->d:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->d:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 104
    invoke-direct {p0, p1}, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->d(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 107
    :goto_0
    return v0

    .line 105
    :catch_0
    move-exception v0

    .line 107
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->f:Z

    return v0
.end method
