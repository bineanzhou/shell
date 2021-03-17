.class Lanet/channel/monitor/b$a;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/monitor/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static a:Lanet/channel/monitor/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lanet/channel/monitor/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lanet/channel/monitor/b;-><init>(Lanet/channel/monitor/c;)V

    sput-object v0, Lanet/channel/monitor/b$a;->a:Lanet/channel/monitor/b;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
