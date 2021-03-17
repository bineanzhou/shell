.class Lcom/open/likehelper/base/MyApplication$2;
.super Ljava/lang/Object;
.source "MyApplication.java"

# interfaces
.implements Lcom/umeng/message/IUmengRegisterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/open/likehelper/base/MyApplication;->c()V
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
    .line 81
    iput-object p1, p0, Lcom/open/likehelper/base/MyApplication$2;->a:Lcom/open/likehelper/base/MyApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 90
    const-string v0, "onFailure s=%s, s1=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ltimber/log/Timber;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 85
    const-string v0, "onSuccess deviceToken=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ltimber/log/Timber;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    return-void
.end method
