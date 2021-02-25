.class Lcom/umeng/socialize/a/a$2;
.super Ljava/lang/Object;
.source "SocialRouter.java"

# interfaces
.implements Lcom/umeng/socialize/UMAuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/a/a;->b(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/UMAuthListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/umeng/socialize/a/a;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/a/a;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/umeng/socialize/a/a$2;->c:Lcom/umeng/socialize/a/a;

    iput p2, p0, Lcom/umeng/socialize/a/a$2;->a:I

    iput-object p3, p0, Lcom/umeng/socialize/a/a$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/umeng/socialize/bean/SHARE_MEDIA;I)V
    .locals 6

    .prologue
    .line 383
    iget-object v0, p0, Lcom/umeng/socialize/a/a$2;->c:Lcom/umeng/socialize/a/a;

    iget v1, p0, Lcom/umeng/socialize/a/a$2;->a:I

    invoke-static {v0, v1}, Lcom/umeng/socialize/a/a;->a(Lcom/umeng/socialize/a/a;I)Lcom/umeng/socialize/UMAuthListener;

    move-result-object v0

    .line 385
    if-eqz v0, :cond_0

    .line 386
    invoke-interface {v0, p1, p2}, Lcom/umeng/socialize/UMAuthListener;->onCancel(Lcom/umeng/socialize/bean/SHARE_MEDIA;I)V

    .line 389
    :cond_0
    invoke-static {}, Lcom/umeng/socialize/utils/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 390
    invoke-static {}, Lcom/umeng/socialize/utils/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "cancel"

    const-string v3, ""

    iget-object v4, p0, Lcom/umeng/socialize/a/a$2;->b:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/umeng/socialize/net/analytics/SocialAnalytics;->getInfoendt(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 392
    :cond_1
    return-void
.end method

.method public onComplete(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILjava/util/Map;)V
    .locals 6
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
    .line 347
    iget-object v0, p0, Lcom/umeng/socialize/a/a$2;->c:Lcom/umeng/socialize/a/a;

    iget v1, p0, Lcom/umeng/socialize/a/a$2;->a:I

    invoke-static {v0, v1}, Lcom/umeng/socialize/a/a;->a(Lcom/umeng/socialize/a/a;I)Lcom/umeng/socialize/UMAuthListener;

    move-result-object v0

    .line 349
    if-eqz v0, :cond_0

    .line 350
    invoke-interface {v0, p1, p2, p3}, Lcom/umeng/socialize/UMAuthListener;->onComplete(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILjava/util/Map;)V

    .line 353
    :cond_0
    invoke-static {}, Lcom/umeng/socialize/utils/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 354
    invoke-static {}, Lcom/umeng/socialize/utils/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "success"

    const-string v3, ""

    iget-object v4, p0, Lcom/umeng/socialize/a/a$2;->b:Ljava/lang/String;

    move-object v1, p1

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/umeng/socialize/net/analytics/SocialAnalytics;->getInfoendt(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 356
    :cond_1
    return-void
.end method

.method public onError(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILjava/lang/Throwable;)V
    .locals 6

    .prologue
    .line 360
    iget-object v0, p0, Lcom/umeng/socialize/a/a$2;->c:Lcom/umeng/socialize/a/a;

    iget v1, p0, Lcom/umeng/socialize/a/a$2;->a:I

    invoke-static {v0, v1}, Lcom/umeng/socialize/a/a;->a(Lcom/umeng/socialize/a/a;I)Lcom/umeng/socialize/UMAuthListener;

    move-result-object v0

    .line 362
    if-eqz v0, :cond_0

    .line 363
    invoke-interface {v0, p1, p2, p3}, Lcom/umeng/socialize/UMAuthListener;->onError(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILjava/lang/Throwable;)V

    .line 366
    :cond_0
    if-eqz p3, :cond_2

    .line 368
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->E(Ljava/lang/String;)V

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/umeng/socialize/utils/UmengText;->SOLVE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/umeng/socialize/utils/UrlUtil;->ALL_AUTHFAIL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->E(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->runtimePrint(Ljava/lang/String;)V

    .line 376
    :goto_0
    invoke-static {}, Lcom/umeng/socialize/utils/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    .line 377
    invoke-static {}, Lcom/umeng/socialize/utils/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "fail"

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/umeng/socialize/a/a$2;->b:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/umeng/socialize/net/analytics/SocialAnalytics;->getInfoendt(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 379
    :cond_1
    return-void

    .line 372
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/umeng/socialize/utils/UmengText;->SOLVE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/umeng/socialize/utils/UrlUtil;->ALL_AUTHFAIL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->E(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStart(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/umeng/socialize/a/a$2;->c:Lcom/umeng/socialize/a/a;

    iget v1, p0, Lcom/umeng/socialize/a/a$2;->a:I

    invoke-static {v0, v1}, Lcom/umeng/socialize/a/a;->a(Lcom/umeng/socialize/a/a;I)Lcom/umeng/socialize/UMAuthListener;

    move-result-object v0

    .line 340
    if-eqz v0, :cond_0

    .line 341
    invoke-interface {v0, p1}, Lcom/umeng/socialize/UMAuthListener;->onStart(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 343
    :cond_0
    return-void
.end method
