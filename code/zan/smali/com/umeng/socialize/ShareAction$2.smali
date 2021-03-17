.class Lcom/umeng/socialize/ShareAction$2;
.super Ljava/lang/Object;
.source "ShareAction.java"

# interfaces
.implements Lcom/umeng/socialize/utils/ShareBoardlistener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/ShareAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/socialize/ShareAction;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/ShareAction;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/umeng/socialize/ShareAction$2;->a:Lcom/umeng/socialize/ShareAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onclick(Lcom/umeng/socialize/shareboard/SnsPlatform;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 3

    .prologue
    .line 274
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction$2;->a:Lcom/umeng/socialize/ShareAction;

    invoke-static {v0}, Lcom/umeng/socialize/ShareAction;->a(Lcom/umeng/socialize/ShareAction;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 275
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction$2;->a:Lcom/umeng/socialize/ShareAction;

    invoke-static {v0}, Lcom/umeng/socialize/ShareAction;->b(Lcom/umeng/socialize/ShareAction;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 277
    if-eqz v0, :cond_0

    .line 278
    if-ge v1, v0, :cond_2

    .line 280
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction$2;->a:Lcom/umeng/socialize/ShareAction;

    invoke-static {v0}, Lcom/umeng/socialize/ShareAction;->b(Lcom/umeng/socialize/ShareAction;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/ShareContent;

    .line 285
    :goto_0
    iget-object v2, p0, Lcom/umeng/socialize/ShareAction$2;->a:Lcom/umeng/socialize/ShareAction;

    invoke-static {v2, v0}, Lcom/umeng/socialize/ShareAction;->a(Lcom/umeng/socialize/ShareAction;Lcom/umeng/socialize/ShareContent;)Lcom/umeng/socialize/ShareContent;

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction$2;->a:Lcom/umeng/socialize/ShareAction;

    invoke-static {v0}, Lcom/umeng/socialize/ShareAction;->c(Lcom/umeng/socialize/ShareAction;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 288
    if-eqz v0, :cond_1

    .line 289
    if-ge v1, v0, :cond_3

    .line 290
    iget-object v2, p0, Lcom/umeng/socialize/ShareAction$2;->a:Lcom/umeng/socialize/ShareAction;

    iget-object v0, p0, Lcom/umeng/socialize/ShareAction$2;->a:Lcom/umeng/socialize/ShareAction;

    invoke-static {v0}, Lcom/umeng/socialize/ShareAction;->c(Lcom/umeng/socialize/ShareAction;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/UMShareListener;

    invoke-static {v2, v0}, Lcom/umeng/socialize/ShareAction;->a(Lcom/umeng/socialize/ShareAction;Lcom/umeng/socialize/UMShareListener;)Lcom/umeng/socialize/UMShareListener;

    .line 295
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction$2;->a:Lcom/umeng/socialize/ShareAction;

    invoke-virtual {v0, p2}, Lcom/umeng/socialize/ShareAction;->setPlatform(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Lcom/umeng/socialize/ShareAction;

    .line 296
    iget-object v0, p0, Lcom/umeng/socialize/ShareAction$2;->a:Lcom/umeng/socialize/ShareAction;

    invoke-virtual {v0}, Lcom/umeng/socialize/ShareAction;->share()V

    .line 297
    return-void

    .line 282
    :cond_2
    iget-object v2, p0, Lcom/umeng/socialize/ShareAction$2;->a:Lcom/umeng/socialize/ShareAction;

    invoke-static {v2}, Lcom/umeng/socialize/ShareAction;->b(Lcom/umeng/socialize/ShareAction;)Ljava/util/List;

    move-result-object v2

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/ShareContent;

    goto :goto_0

    .line 292
    :cond_3
    iget-object v1, p0, Lcom/umeng/socialize/ShareAction$2;->a:Lcom/umeng/socialize/ShareAction;

    iget-object v2, p0, Lcom/umeng/socialize/ShareAction$2;->a:Lcom/umeng/socialize/ShareAction;

    invoke-static {v2}, Lcom/umeng/socialize/ShareAction;->c(Lcom/umeng/socialize/ShareAction;)Ljava/util/List;

    move-result-object v2

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/UMShareListener;

    invoke-static {v1, v0}, Lcom/umeng/socialize/ShareAction;->a(Lcom/umeng/socialize/ShareAction;Lcom/umeng/socialize/UMShareListener;)Lcom/umeng/socialize/UMShareListener;

    goto :goto_1
.end method
