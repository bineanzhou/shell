.class Lcom/open/likehelper/base/MyApplication$3;
.super Lcom/umeng/message/UmengNotificationClickHandler;
.source "MyApplication.java"


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
    .line 94
    iput-object p1, p0, Lcom/open/likehelper/base/MyApplication$3;->a:Lcom/open/likehelper/base/MyApplication;

    invoke-direct {p0}, Lcom/umeng/message/UmengNotificationClickHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public dealWithCustomAction(Landroid/content/Context;Lcom/umeng/message/entity/UMessage;)V
    .locals 4

    .prologue
    .line 97
    const-string v0, "dealWithCustomAction msg=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ltimber/log/Timber;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    return-void
.end method
