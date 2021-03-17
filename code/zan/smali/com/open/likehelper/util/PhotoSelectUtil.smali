.class public Lcom/open/likehelper/util/PhotoSelectUtil;
.super Ljava/lang/Object;
.source "PhotoSelectUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/open/likehelper/util/PhotoSelectUtil$OnPhotoSelectListener;
    }
.end annotation


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final d:I = 0x640

.field public static final e:I = 0x46

.field public static final f:I = 0x100000

.field public static final g:J = 0x200000L

.field public static final h:Ljava/lang/String; = "image/*"

.field public static final i:Ljava/lang/String; = "file:.*\\.[jpg|png|jpeg|gif]"


# instance fields
.field private j:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/io/File;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Ljava/lang/String;

.field private p:Lcom/open/likehelper/util/PhotoSelectUtil$OnPhotoSelectListener;

.field private q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private r:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZZLcom/open/likehelper/util/PhotoSelectUtil$OnPhotoSelectListener;)V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/open/likehelper/util/PhotoSelectUtil;->q:Ljava/util/ArrayList;

    .line 71
    const/16 v0, 0x9

    iput v0, p0, Lcom/open/likehelper/util/PhotoSelectUtil;->r:I

    .line 110
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/open/likehelper/util/PhotoSelectUtil;->j:Ljava/lang/ref/WeakReference;

    .line 111
    iput-boolean p2, p0, Lcom/open/likehelper/util/PhotoSelectUtil;->l:Z

    .line 112
    iput-boolean p3, p0, Lcom/open/likehelper/util/PhotoSelectUtil;->m:Z

    .line 113
    iput-boolean p4, p0, Lcom/open/likehelper/util/PhotoSelectUtil;->n:Z

    .line 114
    iput-object p5, p0, Lcom/open/likehelper/util/PhotoSelectUtil;->p:Lcom/open/likehelper/util/PhotoSelectUtil$OnPhotoSelectListener;

    .line 115
    return-void
.end method

.method private a(Landroid/content/Intent;Ljava/io/File;)Landroid/net/Uri;
    .locals 5

    .prologue
    .line 287
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 288
    iget-object v0, p0, Lcom/open/likehelper/util/PhotoSelectUtil;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "com.open.likehelper.provider"

    invoke-static {v0, v1, p2}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 289
    if-eqz p1, :cond_2

    .line 290
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 292
    iget-object v0, p0, Lcom/open/likehelper/util/PhotoSelectUtil;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v2, 0x10000

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 293
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 294
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 295
    iget-object v0, p0, Lcom/open/likehelper/util/PhotoSelectUtil;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 303
    :goto_1
    return-object v0

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/open/likehelper/util/PhotoSelectUtil;->k:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/open/likehelper/util/PhotoSelectUtil;)Lcom/open/likehelper/util/PhotoSelectUtil$OnPhotoSelectListener;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/open/likehelper/util/PhotoSelectUtil;->p:Lcom/open/likehelper/util/PhotoSelectUtil$OnPhotoSelectListener;

    return-object v0
.end method

.method private a(Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 250
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.android.camera.action.CROP"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 251
    const-string v0, "image/*"

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    const-string v0, "crop"

    const-string v2, "true"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    const-string v0, "aspectX"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 254
    const-string v0, "aspectY"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 255
    iget-object v0, p0, Lcom/open/likehelper/util/PhotoSelectUtil;->k:Ljava/io/File;

    invoke-direct {p0, v1, v0}, Lcom/open/likehelper/util/PhotoSelectUtil;->a(Landroid/content/Intent;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 256
    const-string v2, "output"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 257
    iget-object v0, p0, Lcom/open/likehelper/util/PhotoSelectUtil;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v2, 0x3

    .line 258
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :goto_0
    return-void

    .line 259
    :catch_0
    move-exception v0

    .line 260
    invoke-direct {p0}, Lcom/open/likehelper/util/PhotoSelectUtil;->e()V

    .line 261
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 262
    iget-object v0, p0, Lcom/open/likehelper/util/PhotoSelectUtil;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f07002e

    invoke-static {v0, v1}, Lcom/open/likehelper/util/ToastUtils;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/open/likehelper/util/PhotoSelectUtil;->p:Lcom/open/likehelper/util/PhotoSelectUtil$OnPhotoSelectListener;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/open/likehelper/util/PhotoSelectUtil;->p:Lcom/open/likehelper/util/PhotoSelectUtil$OnPhotoSelectListener;

    invoke-interface {v0, p1}, Lcom/open/likehelper/util/PhotoSelectUtil$OnPhotoSelectListener;->a(Ljava/lang/String;)V

    .line 398
    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 4

    .prologue
    .line 401
    iget-object v0, p0, Lcom/open/likehelper/util/PhotoSelectUtil;->q:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/open/likehelper/util/PhotoSelectUtil;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    iget-boolean v0, p0, Lcom/open/likehelper/util/PhotoSelectUtil;->m:Z

    if-eqz v0, :cond_3

    .line 406
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 407
    iget-object v0, p0, Lcom/open/likehelper/util/PhotoSelectUtil;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/open/likehelper/util/luban/Luban;->a(Landroid/content/Context;)Lcom/open/likehelper/util/luban/Luban$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/open/likehelper/util/PhotoSelectUtil;->q:Ljava/util/ArrayList;

    .line 408
    invoke-virtual {v0, v1}, Lcom/open/likehelper/util/luban/Luban$Builder;->a(Ljava/util/List;)Lcom/open/likehelper/util/luban/Luban$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 409
    invoke-virtual {v0, v1}, Lcom/open/likehelper/util/luban/Luban$Builder;->b(I)Lcom/open/likehelper/util/luban/Luban$Builder;

    move-result-object v1

    iget-object v0, p0, Lcom/open/likehelper/util/PhotoSelectUtil;->j:Ljava/lang/ref/WeakReference;

    .line 410
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/open/likehelper/util/Utils;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/open/likehelper/util/luban/Luban$Builder;->b(Ljava/lang/String;)Lcom/open/likehelper/util/luban/Luban$Builder;

    move-result-object v0

    new-instance v1, Lcom/open/likehelper/util/PhotoSelectUtil$4;

    invoke-direct {v1, p0, v2, v3}, Lcom/open/likehelper/util/PhotoSelectUtil$4;-><init>(Lcom/open/likehelper/util/PhotoSelectUtil;J)V

    .line 411
    invoke-virtual {v0, v1}, Lcom/open/likehelper/util/luban/Luban$Builder;->a(Lcom/open/likehelper/util/luban/OnCompressListener;)Lcom/open/likehelper/util/luban/Luban$Builder;

    move-result-object v0

    .line 432
    invoke-virtual {v0}, Lcom/open/likehelper/util/luban/Luban$Builder;->a()V

    .line 439
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/open/likehelper/util/PhotoSelectUtil;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 434
    :cond_3
    iget-object v0, p0, Lcom/open/likehelper/util/PhotoSelectUtil;->p:Lcom/open/likehelper/util/PhotoSelectUtil$OnPhotoSelectListener;

    if-eqz v0, :cond_2

    .line 435
    iget-object v0, p0, Lcom/open/likehelper/util/PhotoSelectUtil;->p:Lcom/open/likehelper/util/PhotoSelectUtil$OnPhotoSelectListener;

    iget-object v1, p0, Lcom/open/likehelper/util/PhotoSelectUtil;->q:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/open/likehelper/util/PhotoSelectUtil$OnPhotoSelectListener;->a(Ljava/util/List;)V

    goto :goto_1
.end method

.method private c()Ljava/lang/String;
    .locals 6

    .prologue
    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/open/likehelper/util/PhotoSelectUtil;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/open/likehelper/util/Utils;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 270
    invoke-static {p1}, Lcom/open/likehelper/util/ImageUtils;->a(Ljava/lang/String;)I

    move-result v1

    .line 271
    if-lez v1, :cond_0

    .line 272
    iget-object v0, p0, Lcom/open/likehelper/util/PhotoSelectUtil;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 273
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v2, v2, 0x4

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v0, v0, 0x4

    invoke-static {p1, v2, v0}, Lcom/open/likehelper/util/ImageUtils;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 274
    invoke-static {v1, v0}, Lcom/open/likehelper/util/ImageUtils;->a(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 275
    invoke-static {v0, p1}, Lcom/open/likehelper/util/ImageUtils;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 276
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 277
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 280
    :cond_0
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 238
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/open/likehelper/util/PhotoSelectUtil;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/open/likehelper/util/PhotoSelectUtil;->k:Ljava/io/File;

    .line 239
    iget-object v0, p0, Lcom/open/likehelper/util/PhotoSelectUtil;->k:Ljava/io/File;

    invoke-static {v0}, Lcom/open/likehelper/util/FileUtils;->b(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    invoke-direct {p0}, Lcom/open/likehelper/util/PhotoSelectUtil;->e()V

    .line 241
    iget-object v0, p0, Lcom/open/likehelper/util/PhotoSelectUtil;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f07002e

    invoke-static {v0, v1}, Lcom/open/likehelper/util/ToastUtils;->a(Landroid/content/Context;I)V

    .line 243
    :cond_0
    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/open/likehelper/util/PhotoSelectUtil;->p:Lcom/open/likehelper/util/PhotoSelectUtil$OnPhotoSelectListener;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/open/likehelper/util/PhotoSelectUtil;->p:Lcom/open/likehelper/util/PhotoSelectUtil$OnPhotoSelectListener;

    invoke-interface {v0}, Lcom/open/likehelper/util/PhotoSelectUtil$OnPhotoSelectListener;->a()V

    .line 392
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/open/likehelper/util/PhotoSelectUtil;->a(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public a(I)V
    .locals 4

    .prologue
    .line 175
    iput p1, p0, Lcom/open/likehelper/util/PhotoSelectUtil;->r:I

    .line 177
    new-instance v2, Landroid/app/Dialog;

    iget-object v0, p0, Lcom/open/likehelper/util/PhotoSelectUtil;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f0900cf

    invoke-direct {v2, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 178
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 180
    iget-object v0, p0, Lcom/open/likehelper/util/PhotoSelectUtil;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 182
    const v1, 0x7f040023

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 184
    const v1, 0x7f0c0076

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 185
    new-instance v3, Lcom/open/likehelper/util/PhotoSelectUtil$1;

    invoke-direct {v3, p0, v2}, Lcom/open/likehelper/util/PhotoSelectUtil$1;-><init>(Lcom/open/likehelper/util/PhotoSelectUtil;Landroid/app/Dialog;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    const v1, 0x7f0c0069

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 195
    new-instance v3, Lcom/open/likehelper/util/PhotoSelectUtil$2;

    invoke-direct {v3, p0, v2}, Lcom/open/likehelper/util/PhotoSelectUtil$2;-><init>(Lcom/open/likehelper/util/PhotoSelectUtil;Landroid/app/Dialog;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    const v1, 0x7f0c0077

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 205
    new-instance v3, Lcom/open/likehelper/util/PhotoSelectUtil$3;

    invoke-direct {v3, p0, v2}, Lcom/open/likehelper/util/PhotoSelectUtil$3;-><init>(Lcom/open/likehelper/util/PhotoSelectUtil;Landroid/app/Dialog;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 216
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 218
    const/16 v3, 0x50

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 219
    const/4 v3, -0x1

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 220
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 221
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 223
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 224
    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 307
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    iget-boolean v0, p0, Lcom/open/likehelper/util/PhotoSelectUtil;->l:Z

    if-eqz v0, :cond_4

    .line 312
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 314
    :pswitch_0
    iget-object v0, p0, Lcom/open/likehelper/util/PhotoSelectUtil;->k:Ljava/io/File;

    invoke-direct {p0, v3, v0}, Lcom/open/likehelper/util/PhotoSelectUtil;->a(Landroid/content/Intent;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 315
    invoke-direct {p0, v0}, Lcom/open/likehelper/util/PhotoSelectUtil;->a(Landroid/net/Uri;)V

    goto :goto_0

    .line 318
    :pswitch_1
    invoke-direct {p0}, Lcom/open/likehelper/util/PhotoSelectUtil;->d()V

    .line 319
    iget-object v0, p0, Lcom/open/likehelper/util/PhotoSelectUtil;->k:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 320
    invoke-direct {p0}, Lcom/open/likehelper/util/PhotoSelectUtil;->e()V

    goto :goto_0

    .line 323
    :cond_2
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 324
    if-eqz v0, :cond_3

    .line 325
    invoke-direct {p0, v0}, Lcom/open/likehelper/util/PhotoSelectUtil;->a(Landroid/net/Uri;)V

    goto :goto_0

    .line 327
    :cond_3
    invoke-direct {p0}, Lcom/open/likehelper/util/PhotoSelectUtil;->e()V

    goto :goto_0

    .line 331
    :pswitch_2
    iget-object v0, p0, Lcom/open/likehelper/util/PhotoSelectUtil;->q:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/open/likehelper/util/PhotoSelectUtil;->k:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    invoke-direct {p0, v4}, Lcom/open/likehelper/util/PhotoSelectUtil;->a(Z)V

    goto :goto_0

    .line 338
    :cond_4
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 340
    :pswitch_3
    iget-object v0, p0, Lcom/open/likehelper/util/PhotoSelectUtil;->k:Ljava/io/File;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/open/likehelper/util/PhotoSelectUtil;->k:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 341
    iget-object v0, p0, Lcom/open/likehelper/util/PhotoSelectUtil;->k:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/open/likehelper/util/PhotoSelectUtil;->c(Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/open/likehelper/util/PhotoSelectUtil;->q:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/open/likehelper/util/PhotoSelectUtil;->k:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    invoke-direct {p0, v4}, Lcom/open/likehelper/util/PhotoSelectUtil;->a(Z)V

    goto :goto_0

    .line 346
    :cond_5
    invoke-direct {p0}, Lcom/open/likehelper/util/PhotoSelectUtil;->e()V

    .line 347
    iget-object v0, p0, Lcom/open/likehelper/util/PhotoSelectUtil;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f07002f

    invoke-static {v0, v1}, Lcom/open/likehelper/util/ToastUtils;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 351
    :pswitch_4
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 352
    if-eqz v1, :cond_6

    .line 353
    const-string v0, "file:.*\\.[jpg|png|jpeg|gif]"

    .line 354
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 353
    invoke-static {v0, v2, v4}, Lcom/open/likehelper/util/StringUtils;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 355
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lcom/open/likehelper/util/PhotoSelectUtil;->a(Ljava/lang/String;Z)V

    .line 374
    :cond_6
    :goto_1
    const-string v0, "photoList"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 375
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 376
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/open/likehelper/ui/pic/Photo;

    .line 377
    iget-object v2, p0, Lcom/open/likehelper/util/PhotoSelectUtil;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/open/likehelper/ui/pic/Photo;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 357
    :cond_7
    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v6

    .line 358
    iget-object v0, p0, Lcom/open/likehelper/util/PhotoSelectUtil;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    .line 359
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 360
    if-eqz v0, :cond_8

    .line 361
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 362
    aget-object v1, v2, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 363
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 364
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 366
    invoke-direct {p0, v1, v6}, Lcom/open/likehelper/util/PhotoSelectUtil;->a(Ljava/lang/String;Z)V

    goto :goto_1

    .line 368
    :cond_8
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lcom/open/likehelper/util/PhotoSelectUtil;->a(Ljava/lang/String;Z)V

    goto :goto_1

    .line 379
    :cond_9
    invoke-direct {p0, v6}, Lcom/open/likehelper/util/PhotoSelectUtil;->a(Z)V

    goto/16 :goto_0

    .line 312
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 338
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 125
    iput-object p1, p0, Lcom/open/likehelper/util/PhotoSelectUtil;->o:Ljava/lang/String;

    .line 126
    invoke-direct {p0}, Lcom/open/likehelper/util/PhotoSelectUtil;->d()V

    .line 128
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/open/likehelper/util/PhotoSelectUtil;->k:Ljava/io/File;

    invoke-direct {p0, v1, v0}, Lcom/open/likehelper/util/PhotoSelectUtil;->a(Landroid/content/Intent;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 131
    const-string v2, "output"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 132
    iget-boolean v0, p0, Lcom/open/likehelper/util/PhotoSelectUtil;->n:Z

    if-eqz v0, :cond_0

    .line 133
    const-string v0, "android.intent.extras.CAMERA_FACING"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 138
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/open/likehelper/util/PhotoSelectUtil;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v2, 0x1

    .line 139
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    invoke-direct {p0}, Lcom/open/likehelper/util/PhotoSelectUtil;->e()V

    .line 142
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 143
    iget-object v0, p0, Lcom/open/likehelper/util/PhotoSelectUtil;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f07003a

    invoke-static {v0, v1}, Lcom/open/likehelper/util/ToastUtils;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/open/likehelper/util/PhotoSelectUtil;->b(Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 155
    iput-object p1, p0, Lcom/open/likehelper/util/PhotoSelectUtil;->o:Ljava/lang/String;

    .line 168
    iget-object v0, p0, Lcom/open/likehelper/util/PhotoSelectUtil;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/open/likehelper/util/PhotoSelectUtil;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget v2, p0, Lcom/open/likehelper/util/PhotoSelectUtil;->r:I

    invoke-static {v1, v2}, Lcom/open/likehelper/ui/pic/PhotoActivity;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 169
    return-void
.end method
