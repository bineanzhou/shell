.class Lorg/greenrobot/eventbus/util/AsyncExecutor$1;
.super Ljava/lang/Object;
.source "AsyncExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/greenrobot/eventbus/util/AsyncExecutor;->a(Lorg/greenrobot/eventbus/util/AsyncExecutor$RunnableEx;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/greenrobot/eventbus/util/AsyncExecutor$RunnableEx;

.field final synthetic b:Lorg/greenrobot/eventbus/util/AsyncExecutor;


# direct methods
.method constructor <init>(Lorg/greenrobot/eventbus/util/AsyncExecutor;Lorg/greenrobot/eventbus/util/AsyncExecutor$RunnableEx;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lorg/greenrobot/eventbus/util/AsyncExecutor$1;->b:Lorg/greenrobot/eventbus/util/AsyncExecutor;

    iput-object p2, p0, Lorg/greenrobot/eventbus/util/AsyncExecutor$1;->a:Lorg/greenrobot/eventbus/util/AsyncExecutor$RunnableEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 110
    :try_start_0
    iget-object v0, p0, Lorg/greenrobot/eventbus/util/AsyncExecutor$1;->a:Lorg/greenrobot/eventbus/util/AsyncExecutor$RunnableEx;

    invoke-interface {v0}, Lorg/greenrobot/eventbus/util/AsyncExecutor$RunnableEx;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 114
    :try_start_1
    iget-object v1, p0, Lorg/greenrobot/eventbus/util/AsyncExecutor$1;->b:Lorg/greenrobot/eventbus/util/AsyncExecutor;

    invoke-static {v1}, Lorg/greenrobot/eventbus/util/AsyncExecutor;->a(Lorg/greenrobot/eventbus/util/AsyncExecutor;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 119
    instance-of v0, v1, Lorg/greenrobot/eventbus/util/HasExecutionScope;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 120
    check-cast v0, Lorg/greenrobot/eventbus/util/HasExecutionScope;

    iget-object v2, p0, Lorg/greenrobot/eventbus/util/AsyncExecutor$1;->b:Lorg/greenrobot/eventbus/util/AsyncExecutor;

    invoke-static {v2}, Lorg/greenrobot/eventbus/util/AsyncExecutor;->c(Lorg/greenrobot/eventbus/util/AsyncExecutor;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/greenrobot/eventbus/util/HasExecutionScope;->a(Ljava/lang/Object;)V

    .line 122
    :cond_0
    iget-object v0, p0, Lorg/greenrobot/eventbus/util/AsyncExecutor$1;->b:Lorg/greenrobot/eventbus/util/AsyncExecutor;

    invoke-static {v0}, Lorg/greenrobot/eventbus/util/AsyncExecutor;->b(Lorg/greenrobot/eventbus/util/AsyncExecutor;)Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->d(Ljava/lang/Object;)V

    goto :goto_0

    .line 115
    :catch_1
    move-exception v1

    .line 116
    iget-object v2, p0, Lorg/greenrobot/eventbus/util/AsyncExecutor$1;->b:Lorg/greenrobot/eventbus/util/AsyncExecutor;

    invoke-static {v2}, Lorg/greenrobot/eventbus/util/AsyncExecutor;->b(Lorg/greenrobot/eventbus/util/AsyncExecutor;)Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/eventbus/EventBus;->f()Lorg/greenrobot/eventbus/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v4, "Original exception:"

    invoke-interface {v2, v3, v4, v0}, Lorg/greenrobot/eventbus/Logger;->a(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Could not create failure event"

    invoke-direct {v0, v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
