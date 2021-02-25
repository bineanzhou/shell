.class public Lcom/umeng/socialize/ShareAction;
.super Ljava/lang/Object;
.source "ShareAction.java"


# instance fields
.field private a:Lcom/umeng/socialize/ShareContent;

.field private b:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field private c:Lcom/umeng/socialize/UMShareListener;

.field private d:Lcom/umeng/socialize/utils/ShareBoardlistener;

.field private e:Landroid/app/Activity;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/SHARE_MEDIA;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/shareboard/SnsPlatform;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/ShareContent;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/UMShareListener;",
            ">;"
        }
    .end annotation
.end field

.field private j:I

.field private k:Landroid/view/View;

.field private l:Lcom/umeng/socialize/shareboard/ShareBoard;

.field private m:Lcom/umeng/socialize/utils/ShareBoardlistener;

.field private n:Lcom/umeng/socialize/utils/ShareBoardlistener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/umeng/socialize/ShareContent;

    invoke-direct {v0}, Lcom/umeng/socialize/ShareContent;-><init>()V

    iput-object v0, p0, Lcom/umeng/socialize/ShareAction;->a:Lcom/umeng/socialize/ShareContent;

    .line 36
    iput-object v1, p0, Lcom/umeng/socialize/ShareAction;->b:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 37
    iput-object v1, p0, Lcom/umeng/socialize/ShareAction;->c:Lcom/umeng/socialize/UMShareListener;

    .line 38
    iput-object v1, p0, Lcom/umeng/socialize/ShareAction;->d:Lcom/umeng/socialize/utils/ShareBoardlistener;

    .line 40
    iput-object v1, p0, Lcom/umeng/socialize/ShareAction;->f:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/socialize/ShareAction;->g:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/socialize/ShareAction;->h:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/socialize/ShareAction;->i:Ljava/util/List;

    .line 44
    const/16 v0, 0x50

    iput v0, p0, Lcom/umeng/socialize/ShareAction;->j:I

    .line 45
    iput-object v1, p0, Lcom/umeng/socialize/ShareAction;->k:Landroid/view/View;

    .line 262
    new-instance v0, Lcom/umeng/socialize/ShareAction$1;

    invoke-direct {v0, p0}, Lcom/umeng/socialize/ShareAction$1;-><init>(Lcom/umeng/socialize/ShareAction;)V

    iput-object v0, p0, Lcom/umeng/socialize/ShareAction;->m:Lcom/umeng/socialize/utils/ShareBoardlistener;

    .line 270
    new-instance v0, Lcom/umeng/socialize/ShareAction$2;

    invoke-direct {v0, p0}, Lcom/umeng/socialize/ShareAction$2;-><init>(Lcom/umeng/socialize/ShareAction;)V

    iput-object v0, p0, Lcom/umeng/socialize/ShareAction;->n:Lcom/umeng/socialize/utils/ShareBoardlistener;

    .line 50
    if-eqz p1, :cond_0

    .line 51
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/umeng/socialize/ShareAction;->e:Landroid/app/Activity;

    .line 55
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/ShareAction;Lcom/umeng/socialize/ShareContent;)Lcom/umeng/socialize/ShareContent;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/umeng/socialize/ShareAction;->a:Lcom/umeng/socialize/ShareContent;

    return-object p1
.end method

.method static synthetic a(Lcom/umeng/socialize/ShareAction;Lcom/umeng/socialize/UMShareListener;)Lcom/umeng/socialize/UMShareListener;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/umeng/socialize/ShareAction;->c:Lcom/umeng/socialize/UMShareListener;

    return-object p1
.end method

.method static synthetic a(Lcom/umeng/socialize/ShareAction;)Ljava/util/List;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/umeng/socialize/ShareAction;)Ljava/util/List;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->h:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/umeng/socialize/ShareAction;)Ljava/util/List;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->i:Ljava/util/List;

    return-object v0
.end method

.method public static locateView(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 301
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 302
    if-nez p0, :cond_0

    .line 314
    :goto_0
    return-object v0

    .line 304
    :cond_0
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 310
    const/4 v2, 0x0

    aget v2, v1, v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 311
    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 312
    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 313
    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 305
    :catch_0
    move-exception v1

    .line 306
    invoke-static {v1}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public addButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/socialize/ShareAction;
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->g:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {p1, p2, p3, p4, v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->createSnsPlatform(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/umeng/socialize/shareboard/SnsPlatform;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    return-object p0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->l:Lcom/umeng/socialize/shareboard/ShareBoard;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->l:Lcom/umeng/socialize/shareboard/ShareBoard;

    invoke-virtual {v0}, Lcom/umeng/socialize/shareboard/ShareBoard;->dismiss()V

    .line 258
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/ShareAction;->l:Lcom/umeng/socialize/shareboard/ShareBoard;

    .line 260
    :cond_0
    return-void
.end method

.method public getPlatform()Lcom/umeng/socialize/bean/SHARE_MEDIA;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->b:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    return-object v0
.end method

.method public getShareContent()Lcom/umeng/socialize/ShareContent;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->a:Lcom/umeng/socialize/ShareContent;

    return-object v0
.end method

.method public getUrlValid()Z
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->a:Lcom/umeng/socialize/ShareContent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->a:Lcom/umeng/socialize/ShareContent;

    iget-object v0, v0, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->a:Lcom/umeng/socialize/ShareContent;

    iget-object v0, v0, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    instance-of v0, v0, Lcom/umeng/socialize/media/UMWeb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->a:Lcom/umeng/socialize/ShareContent;

    iget-object v0, v0, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    invoke-interface {v0}, Lcom/umeng/socialize/media/UMediaObject;->toUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->a:Lcom/umeng/socialize/ShareContent;

    iget-object v0, v0, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    invoke-interface {v0}, Lcom/umeng/socialize/media/UMediaObject;->toUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    const/4 v0, 0x0

    .line 67
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public open()V
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/ShareAction;->open(Lcom/umeng/socialize/shareboard/ShareBoardConfig;)V

    .line 250
    return-void
.end method

.method public open(Lcom/umeng/socialize/shareboard/ShareBoardConfig;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 204
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 205
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 206
    const-string v1, "listener"

    iget-object v2, p0, Lcom/umeng/socialize/ShareAction;->c:Lcom/umeng/socialize/UMShareListener;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string v1, "content"

    iget-object v2, p0, Lcom/umeng/socialize/ShareAction;->a:Lcom/umeng/socialize/ShareContent;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    :try_start_0
    new-instance v0, Lcom/umeng/socialize/shareboard/ShareBoard;

    iget-object v1, p0, Lcom/umeng/socialize/ShareAction;->e:Landroid/app/Activity;

    iget-object v2, p0, Lcom/umeng/socialize/ShareAction;->g:Ljava/util/List;

    invoke-direct {v0, v1, v2, p1}, Lcom/umeng/socialize/shareboard/ShareBoard;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/umeng/socialize/shareboard/ShareBoardConfig;)V

    iput-object v0, p0, Lcom/umeng/socialize/ShareAction;->l:Lcom/umeng/socialize/shareboard/ShareBoard;

    .line 210
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->d:Lcom/umeng/socialize/utils/ShareBoardlistener;

    if-nez v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->l:Lcom/umeng/socialize/shareboard/ShareBoard;

    iget-object v1, p0, Lcom/umeng/socialize/ShareAction;->n:Lcom/umeng/socialize/utils/ShareBoardlistener;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/shareboard/ShareBoard;->setShareBoardlistener(Lcom/umeng/socialize/utils/ShareBoardlistener;)V

    .line 215
    :goto_0
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->l:Lcom/umeng/socialize/shareboard/ShareBoard;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/shareboard/ShareBoard;->setFocusable(Z)V

    .line 216
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->l:Lcom/umeng/socialize/shareboard/ShareBoard;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/shareboard/ShareBoard;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 217
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->k:Landroid/view/View;

    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/ShareAction;->k:Landroid/view/View;

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->l:Lcom/umeng/socialize/shareboard/ShareBoard;

    iget-object v1, p0, Lcom/umeng/socialize/ShareAction;->k:Landroid/view/View;

    iget v2, p0, Lcom/umeng/socialize/ShareAction;->j:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/umeng/socialize/shareboard/ShareBoard;->showAtLocation(Landroid/view/View;III)V

    .line 246
    :goto_1
    return-void

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->l:Lcom/umeng/socialize/shareboard/ShareBoard;

    iget-object v1, p0, Lcom/umeng/socialize/ShareAction;->d:Lcom/umeng/socialize/utils/ShareBoardlistener;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/shareboard/ShareBoard;->setShareBoardlistener(Lcom/umeng/socialize/utils/ShareBoardlistener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 225
    :cond_2
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->g:Ljava/util/List;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toSnsPlatform()Lcom/umeng/socialize/shareboard/SnsPlatform;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->g:Ljava/util/List;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN_CIRCLE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toSnsPlatform()Lcom/umeng/socialize/shareboard/SnsPlatform;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->g:Ljava/util/List;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->SINA:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toSnsPlatform()Lcom/umeng/socialize/shareboard/SnsPlatform;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->g:Ljava/util/List;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QQ:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toSnsPlatform()Lcom/umeng/socialize/shareboard/SnsPlatform;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 230
    const-string v1, "listener"

    iget-object v2, p0, Lcom/umeng/socialize/ShareAction;->c:Lcom/umeng/socialize/UMShareListener;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    const-string v1, "content"

    iget-object v2, p0, Lcom/umeng/socialize/ShareAction;->a:Lcom/umeng/socialize/ShareContent;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    new-instance v0, Lcom/umeng/socialize/shareboard/ShareBoard;

    iget-object v1, p0, Lcom/umeng/socialize/ShareAction;->e:Landroid/app/Activity;

    iget-object v2, p0, Lcom/umeng/socialize/ShareAction;->g:Ljava/util/List;

    invoke-direct {v0, v1, v2, p1}, Lcom/umeng/socialize/shareboard/ShareBoard;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/umeng/socialize/shareboard/ShareBoardConfig;)V

    iput-object v0, p0, Lcom/umeng/socialize/ShareAction;->l:Lcom/umeng/socialize/shareboard/ShareBoard;

    .line 233
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->d:Lcom/umeng/socialize/utils/ShareBoardlistener;

    if-nez v0, :cond_4

    .line 234
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->l:Lcom/umeng/socialize/shareboard/ShareBoard;

    iget-object v1, p0, Lcom/umeng/socialize/ShareAction;->m:Lcom/umeng/socialize/utils/ShareBoardlistener;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/shareboard/ShareBoard;->setShareBoardlistener(Lcom/umeng/socialize/utils/ShareBoardlistener;)V

    .line 238
    :goto_2
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->l:Lcom/umeng/socialize/shareboard/ShareBoard;

    invoke-virtual {v0, v4}, Lcom/umeng/socialize/shareboard/ShareBoard;->setFocusable(Z)V

    .line 239
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->l:Lcom/umeng/socialize/shareboard/ShareBoard;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/shareboard/ShareBoard;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 240
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->k:Landroid/view/View;

    if-nez v0, :cond_3

    .line 241
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/ShareAction;->k:Landroid/view/View;

    .line 243
    :cond_3
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->l:Lcom/umeng/socialize/shareboard/ShareBoard;

    iget-object v1, p0, Lcom/umeng/socialize/ShareAction;->k:Landroid/view/View;

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/umeng/socialize/shareboard/ShareBoard;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_1

    .line 236
    :cond_4
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->l:Lcom/umeng/socialize/shareboard/ShareBoard;

    iget-object v1, p0, Lcom/umeng/socialize/ShareAction;->d:Lcom/umeng/socialize/utils/ShareBoardlistener;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/shareboard/ShareBoard;->setShareBoardlistener(Lcom/umeng/socialize/utils/ShareBoardlistener;)V

    goto :goto_2
.end method

.method public setCallback(Lcom/umeng/socialize/UMShareListener;)Lcom/umeng/socialize/ShareAction;
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/umeng/socialize/ShareAction;->c:Lcom/umeng/socialize/UMShareListener;

    .line 85
    return-object p0
.end method

.method public varargs setContentList([Lcom/umeng/socialize/ShareContent;)Lcom/umeng/socialize/ShareAction;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 113
    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 114
    :cond_0
    new-instance v0, Lcom/umeng/socialize/ShareContent;

    invoke-direct {v0}, Lcom/umeng/socialize/ShareContent;-><init>()V

    .line 115
    const-string v1, "empty"

    iput-object v1, v0, Lcom/umeng/socialize/ShareContent;->mText:Ljava/lang/String;

    .line 116
    iget-object v1, p0, Lcom/umeng/socialize/ShareAction;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    :goto_0
    return-object p0

    .line 118
    :cond_1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/ShareAction;->h:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs setDisplayList([Lcom/umeng/socialize/bean/SHARE_MEDIA;)Lcom/umeng/socialize/ShareAction;
    .locals 3

    .prologue
    .line 99
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/ShareAction;->f:Ljava/util/List;

    .line 100
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 101
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 102
    iget-object v2, p0, Lcom/umeng/socialize/ShareAction;->g:Ljava/util/List;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toSnsPlatform()Lcom/umeng/socialize/shareboard/SnsPlatform;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 104
    :cond_0
    return-object p0
.end method

.method public varargs setListenerList([Lcom/umeng/socialize/UMShareListener;)Lcom/umeng/socialize/ShareAction;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 108
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/ShareAction;->i:Ljava/util/List;

    .line 109
    return-object p0
.end method

.method public setPlatform(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Lcom/umeng/socialize/ShareAction;
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/umeng/socialize/ShareAction;->b:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 80
    return-object p0
.end method

.method public setShareContent(Lcom/umeng/socialize/ShareContent;)Lcom/umeng/socialize/ShareAction;
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/umeng/socialize/ShareAction;->a:Lcom/umeng/socialize/ShareContent;

    .line 95
    return-object p0
.end method

.method public setShareboardclickCallback(Lcom/umeng/socialize/utils/ShareBoardlistener;)Lcom/umeng/socialize/ShareAction;
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/umeng/socialize/ShareAction;->d:Lcom/umeng/socialize/utils/ShareBoardlistener;

    .line 90
    return-object p0
.end method

.method public share()V
    .locals 3

    .prologue
    .line 199
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->e:Landroid/app/Activity;

    invoke-static {v0}, Lcom/umeng/socialize/UMShareAPI;->get(Landroid/content/Context;)Lcom/umeng/socialize/UMShareAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/ShareAction;->e:Landroid/app/Activity;

    iget-object v2, p0, Lcom/umeng/socialize/ShareAction;->c:Lcom/umeng/socialize/UMShareListener;

    invoke-virtual {v0, v1, p0, v2}, Lcom/umeng/socialize/UMShareAPI;->doShare(Landroid/app/Activity;Lcom/umeng/socialize/ShareAction;Lcom/umeng/socialize/UMShareListener;)V

    .line 200
    return-void
.end method

.method public withApp(Ljava/io/File;)Lcom/umeng/socialize/ShareAction;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->a:Lcom/umeng/socialize/ShareContent;

    iput-object p1, v0, Lcom/umeng/socialize/ShareContent;->app:Ljava/io/File;

    .line 153
    return-object p0
.end method

.method public withExtra(Lcom/umeng/socialize/media/UMImage;)Lcom/umeng/socialize/ShareAction;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->a:Lcom/umeng/socialize/ShareContent;

    iput-object p1, v0, Lcom/umeng/socialize/ShareContent;->mExtra:Lcom/umeng/socialize/media/UMediaObject;

    .line 179
    return-object p0
.end method

.method public withFile(Ljava/io/File;)Lcom/umeng/socialize/ShareAction;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->a:Lcom/umeng/socialize/ShareContent;

    iput-object p1, v0, Lcom/umeng/socialize/ShareContent;->file:Ljava/io/File;

    .line 148
    return-object p0
.end method

.method public withFollow(Ljava/lang/String;)Lcom/umeng/socialize/ShareAction;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->a:Lcom/umeng/socialize/ShareContent;

    iput-object p1, v0, Lcom/umeng/socialize/ShareContent;->mFollow:Ljava/lang/String;

    .line 174
    return-object p0
.end method

.method public withMedia(Lcom/umeng/socialize/media/UMEmoji;)Lcom/umeng/socialize/ShareAction;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->a:Lcom/umeng/socialize/ShareContent;

    iput-object p1, v0, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    .line 166
    return-object p0
.end method

.method public withMedia(Lcom/umeng/socialize/media/UMImage;)Lcom/umeng/socialize/ShareAction;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->a:Lcom/umeng/socialize/ShareContent;

    iput-object p1, v0, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    .line 158
    return-object p0
.end method

.method public withMedia(Lcom/umeng/socialize/media/UMMin;)Lcom/umeng/socialize/ShareAction;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->a:Lcom/umeng/socialize/ShareContent;

    iput-object p1, v0, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    .line 162
    return-object p0
.end method

.method public withMedia(Lcom/umeng/socialize/media/UMVideo;)Lcom/umeng/socialize/ShareAction;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->a:Lcom/umeng/socialize/ShareContent;

    iput-object p1, v0, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    .line 189
    return-object p0
.end method

.method public withMedia(Lcom/umeng/socialize/media/UMWeb;)Lcom/umeng/socialize/ShareAction;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->a:Lcom/umeng/socialize/ShareContent;

    iput-object p1, v0, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    .line 170
    return-object p0
.end method

.method public withMedia(Lcom/umeng/socialize/media/UMusic;)Lcom/umeng/socialize/ShareAction;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->a:Lcom/umeng/socialize/ShareContent;

    iput-object p1, v0, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    .line 184
    return-object p0
.end method

.method public withShareBoardDirection(Landroid/view/View;I)Lcom/umeng/socialize/ShareAction;
    .locals 0

    .prologue
    .line 193
    iput p2, p0, Lcom/umeng/socialize/ShareAction;->j:I

    .line 194
    iput-object p1, p0, Lcom/umeng/socialize/ShareAction;->k:Landroid/view/View;

    .line 195
    return-object p0
.end method

.method public withSubject(Ljava/lang/String;)Lcom/umeng/socialize/ShareAction;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->a:Lcom/umeng/socialize/ShareContent;

    iput-object p1, v0, Lcom/umeng/socialize/ShareContent;->subject:Ljava/lang/String;

    .line 134
    return-object p0
.end method

.method public withText(Ljava/lang/String;)Lcom/umeng/socialize/ShareAction;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction;->a:Lcom/umeng/socialize/ShareContent;

    iput-object p1, v0, Lcom/umeng/socialize/ShareContent;->mText:Ljava/lang/String;

    .line 130
    return-object p0
.end method
