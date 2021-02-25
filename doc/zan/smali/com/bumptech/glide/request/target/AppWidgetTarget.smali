.class public Lcom/bumptech/glide/request/target/AppWidgetTarget;
.super Lcom/bumptech/glide/request/target/SimpleTarget;
.source "AppWidgetTarget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/SimpleTarget",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:[I

.field private final c:Landroid/content/ComponentName;

.field private final d:Landroid/widget/RemoteViews;

.field private final e:Landroid/content/Context;

.field private final f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/RemoteViews;IIILandroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 90
    invoke-direct {p0, p4, p5}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>(II)V

    .line 91
    if-nez p1, :cond_0

    .line 92
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    if-nez p6, :cond_1

    .line 95
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ComponentName can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_1
    if-nez p2, :cond_2

    .line 98
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "RemoteViews object can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_2
    iput-object p1, p0, Lcom/bumptech/glide/request/target/AppWidgetTarget;->e:Landroid/content/Context;

    .line 101
    iput-object p2, p0, Lcom/bumptech/glide/request/target/AppWidgetTarget;->d:Landroid/widget/RemoteViews;

    .line 102
    iput p3, p0, Lcom/bumptech/glide/request/target/AppWidgetTarget;->f:I

    .line 103
    iput-object p6, p0, Lcom/bumptech/glide/request/target/AppWidgetTarget;->c:Landroid/content/ComponentName;

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/request/target/AppWidgetTarget;->b:[I

    .line 105
    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;Landroid/widget/RemoteViews;III[I)V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0, p4, p5}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>(II)V

    .line 44
    if-nez p1, :cond_0

    .line 45
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    if-nez p6, :cond_1

    .line 48
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "WidgetIds can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_1
    array-length v0, p6

    if-nez v0, :cond_2

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "WidgetIds must have length > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_2
    if-nez p2, :cond_3

    .line 54
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "RemoteViews object can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_3
    iput-object p1, p0, Lcom/bumptech/glide/request/target/AppWidgetTarget;->e:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/bumptech/glide/request/target/AppWidgetTarget;->d:Landroid/widget/RemoteViews;

    .line 58
    iput p3, p0, Lcom/bumptech/glide/request/target/AppWidgetTarget;->f:I

    .line 59
    iput-object p6, p0, Lcom/bumptech/glide/request/target/AppWidgetTarget;->b:[I

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/request/target/AppWidgetTarget;->c:Landroid/content/ComponentName;

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/RemoteViews;ILandroid/content/ComponentName;)V
    .locals 7

    .prologue
    const/high16 v4, -0x80000000

    .line 117
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, v4

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/bumptech/glide/request/target/AppWidgetTarget;-><init>(Landroid/content/Context;Landroid/widget/RemoteViews;IIILandroid/content/ComponentName;)V

    .line 118
    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;Landroid/widget/RemoteViews;I[I)V
    .locals 7

    .prologue
    const/high16 v4, -0x80000000

    .line 73
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, v4

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/bumptech/glide/request/target/AppWidgetTarget;-><init>(Landroid/content/Context;Landroid/widget/RemoteViews;III[I)V

    .line 74
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/bumptech/glide/request/target/AppWidgetTarget;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/bumptech/glide/request/target/AppWidgetTarget;->c:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/bumptech/glide/request/target/AppWidgetTarget;->c:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/bumptech/glide/request/target/AppWidgetTarget;->d:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 130
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/request/target/AppWidgetTarget;->b:[I

    iget-object v2, p0, Lcom/bumptech/glide/request/target/AppWidgetTarget;->d:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/request/animation/GlideAnimation",
            "<-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/bumptech/glide/request/target/AppWidgetTarget;->d:Landroid/widget/RemoteViews;

    iget v1, p0, Lcom/bumptech/glide/request/target/AppWidgetTarget;->f:I

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 135
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/AppWidgetTarget;->a()V

    .line 136
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/request/target/AppWidgetTarget;->a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/animation/GlideAnimation;)V

    return-void
.end method
