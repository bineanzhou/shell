.class public Lcom/open/likehelper/base/BaseActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "BaseActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 28
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0, p1}, Lcom/open/likehelper/base/BaseActivity;->a(Landroid/os/Bundle;)V

    .line 24
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->a()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->a(Ljava/lang/Object;)V

    .line 25
    invoke-virtual {p0}, Lcom/open/likehelper/base/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/PushAgent;->onAppStart()V

    .line 26
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 34
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->a()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->c(Ljava/lang/Object;)V

    .line 35
    return-void
.end method

.method public onEvent(Lcom/open/likehelper/event/FinishEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/open/likehelper/base/BaseActivity;->finish()V

    .line 40
    return-void
.end method
