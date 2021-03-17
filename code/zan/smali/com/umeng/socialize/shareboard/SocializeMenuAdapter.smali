.class Lcom/umeng/socialize/shareboard/SocializeMenuAdapter;
.super Lcom/umeng/socialize/shareboard/widgets/SocializePagerAdapter;
.source "SocializeMenuAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMenuHelper:Lcom/umeng/socialize/shareboard/ShareBoardMenuHelper;

.field private mPageData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[[",
            "Lcom/umeng/socialize/shareboard/SnsPlatform;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/umeng/socialize/shareboard/ShareBoardConfig;)V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/umeng/socialize/shareboard/SocializeMenuAdapter;-><init>(Landroid/content/Context;Lcom/umeng/socialize/shareboard/ShareBoardConfig;Ljava/util/List;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/umeng/socialize/shareboard/ShareBoardConfig;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/umeng/socialize/shareboard/ShareBoardConfig;",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/shareboard/SnsPlatform;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/umeng/socialize/shareboard/widgets/SocializePagerAdapter;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/socialize/shareboard/SocializeMenuAdapter;->mPageData:Ljava/util/List;

    .line 29
    iput-object p1, p0, Lcom/umeng/socialize/shareboard/SocializeMenuAdapter;->mContext:Landroid/content/Context;

    .line 30
    new-instance v0, Lcom/umeng/socialize/shareboard/ShareBoardMenuHelper;

    invoke-direct {v0, p2}, Lcom/umeng/socialize/shareboard/ShareBoardMenuHelper;-><init>(Lcom/umeng/socialize/shareboard/ShareBoardConfig;)V

    iput-object v0, p0, Lcom/umeng/socialize/shareboard/SocializeMenuAdapter;->mMenuHelper:Lcom/umeng/socialize/shareboard/ShareBoardMenuHelper;

    .line 31
    invoke-virtual {p0, p3}, Lcom/umeng/socialize/shareboard/SocializeMenuAdapter;->setData(Ljava/util/List;)V

    .line 32
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 61
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 62
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/umeng/socialize/shareboard/SocializeMenuAdapter;->mPageData:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/shareboard/SocializeMenuAdapter;->mPageData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 54
    iget-object v1, p0, Lcom/umeng/socialize/shareboard/SocializeMenuAdapter;->mMenuHelper:Lcom/umeng/socialize/shareboard/ShareBoardMenuHelper;

    iget-object v2, p0, Lcom/umeng/socialize/shareboard/SocializeMenuAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/umeng/socialize/shareboard/SocializeMenuAdapter;->mPageData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/umeng/socialize/shareboard/SnsPlatform;

    invoke-virtual {v1, v2, v0}, Lcom/umeng/socialize/shareboard/ShareBoardMenuHelper;->createPageLayout(Landroid/content/Context;[[Lcom/umeng/socialize/shareboard/SnsPlatform;)Landroid/view/View;

    move-result-object v0

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 56
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 49
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/shareboard/SnsPlatform;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/umeng/socialize/shareboard/SocializeMenuAdapter;->mPageData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 36
    if-eqz p1, :cond_0

    .line 37
    iget-object v0, p0, Lcom/umeng/socialize/shareboard/SocializeMenuAdapter;->mPageData:Ljava/util/List;

    iget-object v1, p0, Lcom/umeng/socialize/shareboard/SocializeMenuAdapter;->mMenuHelper:Lcom/umeng/socialize/shareboard/ShareBoardMenuHelper;

    invoke-virtual {v1, p1}, Lcom/umeng/socialize/shareboard/ShareBoardMenuHelper;->formatPageData(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/umeng/socialize/shareboard/SocializeMenuAdapter;->notifyDataSetChanged()V

    .line 40
    return-void
.end method
