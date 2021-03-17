.class Lcom/open/likehelper/util/PhotoSelectUtil$4;
.super Ljava/lang/Object;
.source "PhotoSelectUtil.java"

# interfaces
.implements Lcom/open/likehelper/util/luban/OnCompressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/open/likehelper/util/PhotoSelectUtil;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:J

.field b:J

.field final synthetic c:J

.field final synthetic d:Lcom/open/likehelper/util/PhotoSelectUtil;


# direct methods
.method constructor <init>(Lcom/open/likehelper/util/PhotoSelectUtil;J)V
    .locals 0

    .prologue
    .line 411
    iput-object p1, p0, Lcom/open/likehelper/util/PhotoSelectUtil$4;->d:Lcom/open/likehelper/util/PhotoSelectUtil;

    iput-wide p2, p0, Lcom/open/likehelper/util/PhotoSelectUtil$4;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 416
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/open/likehelper/util/PhotoSelectUtil$4;->a:J

    .line 417
    return-void
.end method

.method public a(Ljava/io/File;)V
    .locals 6

    .prologue
    .line 421
    iget-object v0, p0, Lcom/open/likehelper/util/PhotoSelectUtil$4;->d:Lcom/open/likehelper/util/PhotoSelectUtil;

    invoke-static {v0}, Lcom/open/likehelper/util/PhotoSelectUtil;->a(Lcom/open/likehelper/util/PhotoSelectUtil;)Lcom/open/likehelper/util/PhotoSelectUtil$OnPhotoSelectListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/open/likehelper/util/PhotoSelectUtil$4;->d:Lcom/open/likehelper/util/PhotoSelectUtil;

    invoke-static {v0}, Lcom/open/likehelper/util/PhotoSelectUtil;->a(Lcom/open/likehelper/util/PhotoSelectUtil;)Lcom/open/likehelper/util/PhotoSelectUtil$OnPhotoSelectListener;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/open/likehelper/util/PhotoSelectUtil$OnPhotoSelectListener;->a(Ljava/lang/String;)V

    .line 424
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/open/likehelper/util/PhotoSelectUtil$4;->b:J

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "n-m="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/open/likehelper/util/PhotoSelectUtil$4;->b:J

    iget-wide v4, p0, Lcom/open/likehelper/util/PhotoSelectUtil$4;->a:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " m-e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/open/likehelper/util/PhotoSelectUtil$4;->a:J

    iget-wide v4, p0, Lcom/open/likehelper/util/PhotoSelectUtil$4;->c:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 426
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 431
    return-void
.end method
