.class public abstract Lorg/greenrobot/eventbus/meta/AbstractSubscriberInfo;
.super Ljava/lang/Object;
.source "AbstractSubscriberInfo.java"

# interfaces
.implements Lorg/greenrobot/eventbus/meta/SubscriberInfo;


# instance fields
.field private final a:Ljava/lang/Class;

.field private final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lorg/greenrobot/eventbus/meta/SubscriberInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Z


# direct methods
.method protected constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/greenrobot/eventbus/meta/SubscriberInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/greenrobot/eventbus/meta/AbstractSubscriberInfo;->a:Ljava/lang/Class;

    .line 33
    iput-object p2, p0, Lorg/greenrobot/eventbus/meta/AbstractSubscriberInfo;->b:Ljava/lang/Class;

    .line 34
    iput-boolean p3, p0, Lorg/greenrobot/eventbus/meta/AbstractSubscriberInfo;->c:Z

    .line 35
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/greenrobot/eventbus/meta/AbstractSubscriberInfo;->a:Ljava/lang/Class;

    return-object v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/Class;)Lorg/greenrobot/eventbus/SubscriberMethod;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/greenrobot/eventbus/SubscriberMethod;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 62
    sget-object v3, Lorg/greenrobot/eventbus/ThreadMode;->POSTING:Lorg/greenrobot/eventbus/ThreadMode;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/greenrobot/eventbus/meta/AbstractSubscriberInfo;->a(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;IZ)Lorg/greenrobot/eventbus/SubscriberMethod;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)Lorg/greenrobot/eventbus/SubscriberMethod;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/greenrobot/eventbus/ThreadMode;",
            ")",
            "Lorg/greenrobot/eventbus/SubscriberMethod;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 66
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/greenrobot/eventbus/meta/AbstractSubscriberInfo;->a(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;IZ)Lorg/greenrobot/eventbus/SubscriberMethod;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;IZ)Lorg/greenrobot/eventbus/SubscriberMethod;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/greenrobot/eventbus/ThreadMode;",
            "IZ)",
            "Lorg/greenrobot/eventbus/SubscriberMethod;"
        }
    .end annotation

    .prologue
    .line 72
    :try_start_0
    iget-object v0, p0, Lorg/greenrobot/eventbus/meta/AbstractSubscriberInfo;->a:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 73
    new-instance v0, Lorg/greenrobot/eventbus/SubscriberMethod;

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/greenrobot/eventbus/SubscriberMethod;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;IZ)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    new-instance v1, Lorg/greenrobot/eventbus/EventBusException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find subscriber method in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/greenrobot/eventbus/meta/AbstractSubscriberInfo;->a:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Maybe a missing ProGuard rule?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/greenrobot/eventbus/EventBusException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public b()Lorg/greenrobot/eventbus/meta/SubscriberInfo;
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lorg/greenrobot/eventbus/meta/AbstractSubscriberInfo;->b:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 45
    const/4 v0, 0x0

    .line 48
    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/greenrobot/eventbus/meta/AbstractSubscriberInfo;->b:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/meta/SubscriberInfo;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 51
    :catch_1
    move-exception v0

    .line 52
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lorg/greenrobot/eventbus/meta/AbstractSubscriberInfo;->c:Z

    return v0
.end method
