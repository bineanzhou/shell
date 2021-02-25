.class public Lanet/channel/util/ALog$a;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/util/ALog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final D:I = 0x1

.field public static final E:I = 0x4

.field public static final I:I = 0x2

.field public static final L:I = 0x5

.field public static final V:I = 0x0

.field public static final W:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 32
    const/4 v0, 0x5

    :goto_0
    :sswitch_0
    return v0

    .line 24
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 26
    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 28
    :sswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 30
    :sswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 20
    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_1
        0x45 -> :sswitch_4
        0x49 -> :sswitch_2
        0x56 -> :sswitch_0
        0x57 -> :sswitch_3
    .end sparse-switch
.end method
