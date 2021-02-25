.class public Lanet/channel/request/TnetCancelable;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanet/channel/request/Cancelable;


# static fields
.field public static final NULL:Lanet/channel/request/TnetCancelable;


# instance fields
.field private final seq:Ljava/lang/String;

.field private final spdySession:Lorg/android/spdy/SpdySession;

.field private final streamId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 14
    new-instance v0, Lanet/channel/request/TnetCancelable;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1, v2}, Lanet/channel/request/TnetCancelable;-><init>(Lorg/android/spdy/SpdySession;ILjava/lang/String;)V

    sput-object v0, Lanet/channel/request/TnetCancelable;->NULL:Lanet/channel/request/TnetCancelable;

    return-void
.end method

.method public constructor <init>(Lorg/android/spdy/SpdySession;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lanet/channel/request/TnetCancelable;->spdySession:Lorg/android/spdy/SpdySession;

    .line 21
    iput p2, p0, Lanet/channel/request/TnetCancelable;->streamId:I

    .line 22
    iput-object p3, p0, Lanet/channel/request/TnetCancelable;->seq:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method
