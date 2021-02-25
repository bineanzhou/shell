.class Lcom/open/likehelper/base/MyApplication$4;
.super Ljava/lang/Object;
.source "MyApplication.java"

# interfaces
.implements Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/open/likehelper/base/MyApplication;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/open/likehelper/base/MyApplication;


# direct methods
.method constructor <init>(Lcom/open/likehelper/base/MyApplication;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/open/likehelper/base/MyApplication$4;->a:Lcom/open/likehelper/base/MyApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoreInitFinished()V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public onViewInitFinished(Z)V
    .locals 3

    .prologue
    .line 115
    const-string v0, "app"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onViewInitFinished is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void
.end method
