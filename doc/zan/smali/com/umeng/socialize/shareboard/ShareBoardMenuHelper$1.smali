.class Lcom/umeng/socialize/shareboard/ShareBoardMenuHelper$1;
.super Ljava/lang/Object;
.source "ShareBoardMenuHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/shareboard/ShareBoardMenuHelper;->createBtnView(Landroid/content/Context;Lcom/umeng/socialize/shareboard/SnsPlatform;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/umeng/socialize/shareboard/ShareBoardMenuHelper;

.field final synthetic val$snsPlatform:Lcom/umeng/socialize/shareboard/SnsPlatform;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/shareboard/ShareBoardMenuHelper;Lcom/umeng/socialize/shareboard/SnsPlatform;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/umeng/socialize/shareboard/ShareBoardMenuHelper$1;->this$0:Lcom/umeng/socialize/shareboard/ShareBoardMenuHelper;

    iput-object p2, p0, Lcom/umeng/socialize/shareboard/ShareBoardMenuHelper$1;->val$snsPlatform:Lcom/umeng/socialize/shareboard/SnsPlatform;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 186
    iget-object v0, p0, Lcom/umeng/socialize/shareboard/ShareBoardMenuHelper$1;->val$snsPlatform:Lcom/umeng/socialize/shareboard/SnsPlatform;

    iget-object v0, v0, Lcom/umeng/socialize/shareboard/SnsPlatform;->mPlatform:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 187
    iget-object v1, p0, Lcom/umeng/socialize/shareboard/ShareBoardMenuHelper$1;->this$0:Lcom/umeng/socialize/shareboard/ShareBoardMenuHelper;

    invoke-static {v1}, Lcom/umeng/socialize/shareboard/ShareBoardMenuHelper;->access$000(Lcom/umeng/socialize/shareboard/ShareBoardMenuHelper;)Lcom/umeng/socialize/shareboard/ShareBoardConfig;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/umeng/socialize/shareboard/ShareBoardMenuHelper$1;->this$0:Lcom/umeng/socialize/shareboard/ShareBoardMenuHelper;

    invoke-static {v1}, Lcom/umeng/socialize/shareboard/ShareBoardMenuHelper;->access$000(Lcom/umeng/socialize/shareboard/ShareBoardMenuHelper;)Lcom/umeng/socialize/shareboard/ShareBoardConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->getShareBoardlistener()Lcom/umeng/socialize/utils/ShareBoardlistener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/umeng/socialize/shareboard/ShareBoardMenuHelper$1;->this$0:Lcom/umeng/socialize/shareboard/ShareBoardMenuHelper;

    invoke-static {v1}, Lcom/umeng/socialize/shareboard/ShareBoardMenuHelper;->access$000(Lcom/umeng/socialize/shareboard/ShareBoardMenuHelper;)Lcom/umeng/socialize/shareboard/ShareBoardConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/socialize/shareboard/ShareBoardConfig;->getShareBoardlistener()Lcom/umeng/socialize/utils/ShareBoardlistener;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/socialize/shareboard/ShareBoardMenuHelper$1;->val$snsPlatform:Lcom/umeng/socialize/shareboard/SnsPlatform;

    invoke-interface {v1, v2, v0}, Lcom/umeng/socialize/utils/ShareBoardlistener;->onclick(Lcom/umeng/socialize/shareboard/SnsPlatform;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 190
    :cond_0
    return-void
.end method
