.class Lcom/umeng/socialize/a/a$5;
.super Ljava/lang/Object;
.source "SocialRouter.java"

# interfaces
.implements Lcom/umeng/socialize/UMAuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/a/a;->a(ILjava/lang/String;Z)Lcom/umeng/socialize/UMAuthListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/umeng/socialize/a/a;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/a/a;IZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 478
    iput-object p1, p0, Lcom/umeng/socialize/a/a$5;->d:Lcom/umeng/socialize/a/a;

    iput p2, p0, Lcom/umeng/socialize/a/a$5;->a:I

    iput-boolean p3, p0, Lcom/umeng/socialize/a/a$5;->b:Z

    iput-object p4, p0, Lcom/umeng/socialize/a/a$5;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/umeng/socialize/bean/SHARE_MEDIA;I)V
    .locals 7

    .prologue
    .line 523
    iget-object v0, p0, Lcom/umeng/socialize/a/a$5;->d:Lcom/umeng/socialize/a/a;

    iget v1, p0, Lcom/umeng/socialize/a/a$5;->a:I

    invoke-static {v0, v1}, Lcom/umeng/socialize/a/a;->b(Lcom/umeng/socialize/a/a;I)Lcom/umeng/socialize/UMAuthListener;

    move-result-object v0

    .line 525
    if-eqz v0, :cond_0

    .line 526
    invoke-interface {v0, p1, p2}, Lcom/umeng/socialize/UMAuthListener;->onCancel(Lcom/umeng/socialize/bean/SHARE_MEDIA;I)V

    .line 528
    :cond_0
    invoke-static {}, Lcom/umeng/socialize/utils/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 529
    invoke-static {}, Lcom/umeng/socialize/utils/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "cancel"

    iget-boolean v3, p0, Lcom/umeng/socialize/a/a$5;->b:Z

    const-string v4, ""

    iget-object v5, p0, Lcom/umeng/socialize/a/a$5;->c:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/umeng/socialize/net/analytics/SocialAnalytics;->authendt(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 531
    :cond_1
    return-void
.end method

.method public onComplete(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILjava/util/Map;)V
    .locals 7
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
    .line 491
    iget-object v0, p0, Lcom/umeng/socialize/a/a$5;->d:Lcom/umeng/socialize/a/a;

    iget v1, p0, Lcom/umeng/socialize/a/a$5;->a:I

    invoke-static {v0, v1}, Lcom/umeng/socialize/a/a;->b(Lcom/umeng/socialize/a/a;I)Lcom/umeng/socialize/UMAuthListener;

    move-result-object v0

    .line 492
    if-eqz v0, :cond_0

    .line 493
    invoke-interface {v0, p1, p2, p3}, Lcom/umeng/socialize/UMAuthListener;->onComplete(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILjava/util/Map;)V

    .line 496
    :cond_0
    invoke-static {}, Lcom/umeng/socialize/utils/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 497
    invoke-static {}, Lcom/umeng/socialize/utils/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "success"

    iget-boolean v3, p0, Lcom/umeng/socialize/a/a$5;->b:Z

    const-string v4, ""

    iget-object v5, p0, Lcom/umeng/socialize/a/a$5;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/umeng/socialize/a/a$5;->d:Lcom/umeng/socialize/a/a;

    invoke-static {v1, p1, p3}, Lcom/umeng/socialize/a/a;->a(Lcom/umeng/socialize/a/a;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/umeng/socialize/net/analytics/SocialAnalytics;->authendt(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 499
    :cond_1
    return-void
.end method

.method public onError(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILjava/lang/Throwable;)V
    .locals 7

    .prologue
    .line 503
    iget-object v0, p0, Lcom/umeng/socialize/a/a$5;->d:Lcom/umeng/socialize/a/a;

    iget v1, p0, Lcom/umeng/socialize/a/a$5;->a:I

    invoke-static {v0, v1}, Lcom/umeng/socialize/a/a;->b(Lcom/umeng/socialize/a/a;I)Lcom/umeng/socialize/UMAuthListener;

    move-result-object v0

    .line 505
    if-eqz v0, :cond_0

    .line 506
    invoke-interface {v0, p1, p2, p3}, Lcom/umeng/socialize/UMAuthListener;->onError(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILjava/lang/Throwable;)V

    .line 509
    :cond_0
    if-eqz p3, :cond_2

    .line 510
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->E(Ljava/lang/String;)V

    .line 511
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->runtimePrint(Ljava/lang/String;)V

    .line 516
    :goto_0
    invoke-static {}, Lcom/umeng/socialize/utils/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    .line 517
    invoke-static {}, Lcom/umeng/socialize/utils/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "fail"

    iget-boolean v3, p0, Lcom/umeng/socialize/a/a$5;->b:Z

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/umeng/socialize/a/a$5;->c:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/umeng/socialize/net/analytics/SocialAnalytics;->authendt(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 519
    :cond_1
    return-void

    .line 513
    :cond_2
    const-string v0, "null"

    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->E(Ljava/lang/String;)V

    .line 514
    const-string v0, "null"

    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->runtimePrint(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStart(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 2

    .prologue
    .line 482
    iget-object v0, p0, Lcom/umeng/socialize/a/a$5;->d:Lcom/umeng/socialize/a/a;

    iget v1, p0, Lcom/umeng/socialize/a/a$5;->a:I

    invoke-static {v0, v1}, Lcom/umeng/socialize/a/a;->b(Lcom/umeng/socialize/a/a;I)Lcom/umeng/socialize/UMAuthListener;

    move-result-object v0

    .line 484
    if-eqz v0, :cond_0

    .line 485
    invoke-interface {v0, p1}, Lcom/umeng/socialize/UMAuthListener;->onStart(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 487
    :cond_0
    return-void
.end method
