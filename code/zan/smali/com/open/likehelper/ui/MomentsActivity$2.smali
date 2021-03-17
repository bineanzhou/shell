.class Lcom/open/likehelper/ui/MomentsActivity$2;
.super Ljava/lang/Object;
.source "MomentsActivity.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/open/likehelper/ui/MomentsActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/open/likehelper/ui/MomentsActivity;


# direct methods
.method constructor <init>(Lcom/open/likehelper/ui/MomentsActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 585
    iput-object p1, p0, Lcom/open/likehelper/ui/MomentsActivity$2;->b:Lcom/open/likehelper/ui/MomentsActivity;

    iput-object p2, p0, Lcom/open/likehelper/ui/MomentsActivity$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 4

    .prologue
    .line 588
    const-string v0, "onMediaScannerConnected path:%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/open/likehelper/ui/MomentsActivity$2;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ltimber/log/Timber;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 589
    iget-object v0, p0, Lcom/open/likehelper/ui/MomentsActivity$2;->b:Lcom/open/likehelper/ui/MomentsActivity;

    invoke-static {v0}, Lcom/open/likehelper/ui/MomentsActivity;->b(Lcom/open/likehelper/ui/MomentsActivity;)Landroid/media/MediaScannerConnection;

    move-result-object v0

    iget-object v1, p0, Lcom/open/likehelper/ui/MomentsActivity$2;->a:Ljava/lang/String;

    const-string v2, "image/*"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 594
    const-string v0, "onScanCompleted"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 595
    iget-object v0, p0, Lcom/open/likehelper/ui/MomentsActivity$2;->b:Lcom/open/likehelper/ui/MomentsActivity;

    invoke-static {v0}, Lcom/open/likehelper/ui/MomentsActivity;->b(Lcom/open/likehelper/ui/MomentsActivity;)Landroid/media/MediaScannerConnection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 596
    iget-object v0, p0, Lcom/open/likehelper/ui/MomentsActivity$2;->b:Lcom/open/likehelper/ui/MomentsActivity;

    new-instance v1, Lcom/open/likehelper/ui/MomentsActivity$2$1;

    invoke-direct {v1, p0}, Lcom/open/likehelper/ui/MomentsActivity$2$1;-><init>(Lcom/open/likehelper/ui/MomentsActivity$2;)V

    invoke-virtual {v0, v1}, Lcom/open/likehelper/ui/MomentsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 602
    return-void
.end method
