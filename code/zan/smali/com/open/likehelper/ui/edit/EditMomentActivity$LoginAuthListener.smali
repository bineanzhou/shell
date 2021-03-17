.class Lcom/open/likehelper/ui/edit/EditMomentActivity$LoginAuthListener;
.super Ljava/lang/Object;
.source "EditMomentActivity.java"

# interfaces
.implements Lcom/umeng/socialize/UMAuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/open/likehelper/ui/edit/EditMomentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoginAuthListener"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field final synthetic f:Lcom/open/likehelper/ui/edit/EditMomentActivity;


# direct methods
.method constructor <init>(Lcom/open/likehelper/ui/edit/EditMomentActivity;)V
    .locals 0

    .prologue
    .line 533
    iput-object p1, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity$LoginAuthListener;->f:Lcom/open/likehelper/ui/edit/EditMomentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 534
    return-void
.end method


# virtual methods
.method public onCancel(Lcom/umeng/socialize/bean/SHARE_MEDIA;I)V
    .locals 2

    .prologue
    .line 568
    const-string v0, "onCancel"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 569
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity$LoginAuthListener;->f:Lcom/open/likehelper/ui/edit/EditMomentActivity;

    const v1, 0x7f070041

    invoke-static {v0, v1}, Lcom/open/likehelper/util/ToastUtils;->a(Landroid/content/Context;I)V

    .line 570
    return-void
.end method

.method public onComplete(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILjava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/umeng/socialize/bean/SHARE_MEDIA;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 543
    const-string v0, "onComplete"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 544
    if-nez p3, :cond_0

    .line 545
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity$LoginAuthListener;->f:Lcom/open/likehelper/ui/edit/EditMomentActivity;

    const v1, 0x7f070042

    invoke-static {v0, v1}, Lcom/open/likehelper/util/ToastUtils;->a(Landroid/content/Context;I)V

    .line 558
    :goto_0
    return-void

    .line 549
    :cond_0
    const-string v0, "accessToken"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity$LoginAuthListener;->a:Ljava/lang/String;

    .line 550
    const-string v0, "uid"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity$LoginAuthListener;->b:Ljava/lang/String;

    .line 551
    const-string v0, "iconurl"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity$LoginAuthListener;->c:Ljava/lang/String;

    .line 552
    const-string v0, "name"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity$LoginAuthListener;->d:Ljava/lang/String;

    .line 553
    const-string v0, "gender"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity$LoginAuthListener;->e:Ljava/lang/String;

    .line 554
    const-string v0, "getPlatformInfo accessToken=%s"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity$LoginAuthListener;->a:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ltimber/log/Timber;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 555
    const-string v0, "getPlatformInfo oath map=%s"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ltimber/log/Timber;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 556
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity$LoginAuthListener;->f:Lcom/open/likehelper/ui/edit/EditMomentActivity;

    iget-object v1, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity$LoginAuthListener;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->b(Lcom/open/likehelper/ui/edit/EditMomentActivity;Ljava/lang/String;)V

    .line 557
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity$LoginAuthListener;->f:Lcom/open/likehelper/ui/edit/EditMomentActivity;

    iget-object v1, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity$LoginAuthListener;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/open/likehelper/ui/edit/EditMomentActivity;->a(Lcom/open/likehelper/ui/edit/EditMomentActivity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onError(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILjava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 562
    const-string v0, "onError"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 563
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/EditMomentActivity$LoginAuthListener;->f:Lcom/open/likehelper/ui/edit/EditMomentActivity;

    const v1, 0x7f070042

    invoke-static {v0, v1}, Lcom/open/likehelper/util/ToastUtils;->a(Landroid/content/Context;I)V

    .line 564
    return-void
.end method

.method public onStart(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 2

    .prologue
    .line 538
    const-string v0, "onStart"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 539
    return-void
.end method
