.class final Lanet/channel/a/f;
.super Lanet/channel/monitor/f;
.source "Taobao"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lanet/channel/monitor/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(D)Z
    .locals 3

    .prologue
    .line 62
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
