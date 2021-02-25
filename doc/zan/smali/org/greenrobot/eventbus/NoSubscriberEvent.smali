.class public final Lorg/greenrobot/eventbus/NoSubscriberEvent;
.super Ljava/lang/Object;
.source "NoSubscriberEvent.java"


# instance fields
.field public final a:Lorg/greenrobot/eventbus/EventBus;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/greenrobot/eventbus/EventBus;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/greenrobot/eventbus/NoSubscriberEvent;->a:Lorg/greenrobot/eventbus/EventBus;

    .line 32
    iput-object p2, p0, Lorg/greenrobot/eventbus/NoSubscriberEvent;->b:Ljava/lang/Object;

    .line 33
    return-void
.end method
