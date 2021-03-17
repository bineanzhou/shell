.class public Lanet/channel/a;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static a:Z

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 8
    sput-boolean v0, Lanet/channel/a;->a:Z

    .line 9
    sput-boolean v0, Lanet/channel/a;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Z)V
    .locals 0

    .prologue
    .line 16
    sput-boolean p0, Lanet/channel/a;->a:Z

    .line 17
    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 12
    sget-boolean v0, Lanet/channel/a;->a:Z

    return v0
.end method

.method public static b(Z)V
    .locals 0

    .prologue
    .line 20
    sput-boolean p0, Lanet/channel/a;->b:Z

    .line 21
    return-void
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 24
    sget-boolean v0, Lanet/channel/a;->b:Z

    return v0
.end method
