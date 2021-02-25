.class public Lanet/channel/entity/d;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field c:Lanet/channel/entity/EventType;

.field public d:I

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lanet/channel/entity/EventType;)V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lanet/channel/entity/d;->c:Lanet/channel/entity/EventType;

    .line 9
    return-void
.end method

.method public constructor <init>(Lanet/channel/entity/EventType;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lanet/channel/entity/d;->c:Lanet/channel/entity/EventType;

    .line 13
    iput p2, p0, Lanet/channel/entity/d;->d:I

    .line 14
    iput-object p3, p0, Lanet/channel/entity/d;->e:Ljava/lang/String;

    .line 15
    return-void
.end method
