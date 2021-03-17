.class Lcom/open/likehelper/ui/MomentsActivity$2$1;
.super Ljava/lang/Object;
.source "MomentsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/open/likehelper/ui/MomentsActivity$2;->onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/open/likehelper/ui/MomentsActivity$2;


# direct methods
.method constructor <init>(Lcom/open/likehelper/ui/MomentsActivity$2;)V
    .locals 0

    .prologue
    .line 596
    iput-object p1, p0, Lcom/open/likehelper/ui/MomentsActivity$2$1;->a:Lcom/open/likehelper/ui/MomentsActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 599
    iget-object v0, p0, Lcom/open/likehelper/ui/MomentsActivity$2$1;->a:Lcom/open/likehelper/ui/MomentsActivity$2;

    iget-object v0, v0, Lcom/open/likehelper/ui/MomentsActivity$2;->b:Lcom/open/likehelper/ui/MomentsActivity;

    iget-object v1, p0, Lcom/open/likehelper/ui/MomentsActivity$2$1;->a:Lcom/open/likehelper/ui/MomentsActivity$2;

    iget-object v1, v1, Lcom/open/likehelper/ui/MomentsActivity$2;->b:Lcom/open/likehelper/ui/MomentsActivity;

    const v2, 0x7f070026

    invoke-virtual {v1, v2}, Lcom/open/likehelper/ui/MomentsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/open/likehelper/util/ToastUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 600
    return-void
.end method
