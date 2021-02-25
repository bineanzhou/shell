.class public Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;
.super Lorg/greenrobot/eventbus/meta/AbstractSubscriberInfo;
.source "SimpleSubscriberInfo.java"


# instance fields
.field private final a:[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Z[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;)V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/greenrobot/eventbus/meta/AbstractSubscriberInfo;-><init>(Ljava/lang/Class;Ljava/lang/Class;Z)V

    .line 29
    iput-object p3, p0, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;->a:[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    .line 30
    return-void
.end method


# virtual methods
.method public declared-synchronized d()[Lorg/greenrobot/eventbus/SubscriberMethod;
    .locals 9

    .prologue
    .line 34
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;->a:[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    array-length v7, v0

    .line 35
    new-array v8, v7, [Lorg/greenrobot/eventbus/SubscriberMethod;

    .line 36
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v7, :cond_0

    .line 37
    iget-object v0, p0, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;->a:[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    aget-object v0, v0, v6

    .line 38
    iget-object v1, v0, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;->a:Ljava/lang/String;

    iget-object v2, v0, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;->c:Ljava/lang/Class;

    iget-object v3, v0, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;->b:Lorg/greenrobot/eventbus/ThreadMode;

    iget v4, v0, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;->d:I

    iget-boolean v5, v0, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;->e:Z

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;->a(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;IZ)Lorg/greenrobot/eventbus/SubscriberMethod;

    move-result-object v0

    aput-object v0, v8, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 41
    :cond_0
    monitor-exit p0

    return-object v8

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
