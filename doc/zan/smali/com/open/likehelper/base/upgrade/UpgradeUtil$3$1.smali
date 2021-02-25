.class Lcom/open/likehelper/base/upgrade/UpgradeUtil$3$1;
.super Ljava/lang/Object;
.source "UpgradeUtil.java"

# interfaces
.implements Lcom/open/likehelper/base/upgrade/WMDialog$OnConfirmClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/open/likehelper/base/upgrade/UpgradeUtil$3;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/open/likehelper/base/upgrade/UpgradeUtil$3;


# direct methods
.method constructor <init>(Lcom/open/likehelper/base/upgrade/UpgradeUtil$3;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/open/likehelper/base/upgrade/UpgradeUtil$3$1;->a:Lcom/open/likehelper/base/upgrade/UpgradeUtil$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 123
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->a()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/open/likehelper/event/FinishEvent;

    invoke-direct {v1}, Lcom/open/likehelper/event/FinishEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->d(Ljava/lang/Object;)V

    .line 124
    return-void
.end method
