.class public Lcom/bumptech/glide/request/target/NotificationTarget;
.super Lcom/bumptech/glide/request/target/SimpleTarget;
.source "NotificationTarget.java"


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
.field private final b:Landroid/widget/RemoteViews;

.field private final c:Landroid/content/Context;

.field private final d:I

.field private final e:Landroid/app/Notification;

.field private final f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/RemoteViews;IIILandroid/app/Notification;I)V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0, p4, p5}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>(II)V

    .line 60
    if-nez p1, :cond_0

    .line 61
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    if-nez p6, :cond_1

    .line 64
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Notification object can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_1
    if-nez p2, :cond_2

    .line 67
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "RemoteViews object can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_2
    iput-object p1, p0, Lcom/bumptech/glide/request/target/NotificationTarget;->c:Landroid/content/Context;

    .line 70
    iput p3, p0, Lcom/bumptech/glide/request/target/NotificationTarget;->f:I

    .line 71
    iput-object p6, p0, Lcom/bumptech/glide/request/target/NotificationTarget;->e:Landroid/app/Notification;

    .line 72
    iput p7, p0, Lcom/bumptech/glide/request/target/NotificationTarget;->d:I

    .line 73
    iput-object p2, p0, Lcom/bumptech/glide/request/target/NotificationTarget;->b:Landroid/widget/RemoteViews;

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/RemoteViews;ILandroid/app/Notification;I)V
    .locals 8

    .prologue
    const/high16 v4, -0x80000000

    .line 40
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, v4

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/bumptech/glide/request/target/NotificationTarget;-><init>(Landroid/content/Context;Landroid/widget/RemoteViews;IIILandroid/app/Notification;I)V

    .line 41
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/bumptech/glide/request/target/NotificationTarget;->c:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 82
    iget v1, p0, Lcom/bumptech/glide/request/target/NotificationTarget;->d:I

    iget-object v2, p0, Lcom/bumptech/glide/request/target/NotificationTarget;->e:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 83
    return-void
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
    .line 87
    iget-object v0, p0, Lcom/bumptech/glide/request/target/NotificationTarget;->b:Landroid/widget/RemoteViews;

    iget v1, p0, Lcom/bumptech/glide/request/target/NotificationTarget;->f:I

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 88
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/NotificationTarget;->a()V

    .line 89
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/request/target/NotificationTarget;->a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/animation/GlideAnimation;)V

    return-void
.end method
