.class public Lanet/channel/entity/c;
.super Lanet/channel/entity/d;
.source "Taobao"


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>(Lanet/channel/entity/EventType;ZILjava/lang/String;)V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0, p1, p3, p4}, Lanet/channel/entity/d;-><init>(Lanet/channel/entity/EventType;ILjava/lang/String;)V

    .line 8
    iput-boolean p2, p0, Lanet/channel/entity/c;->a:Z

    .line 9
    return-void
.end method
