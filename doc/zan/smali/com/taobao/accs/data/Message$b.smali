.class public Lcom/taobao/accs/data/Message$b;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/accs/data/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final CONTROL:I = 0x0

.field public static final DATA:I = 0x1

.field public static final HANDSHAKE:I = 0x3

.field public static final INVALID:I = -0x1

.field public static final PING:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    packed-switch p0, :pswitch_data_0

    .line 63
    :goto_0
    :pswitch_0
    return v0

    .line 57
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 59
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 61
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static b(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    packed-switch p0, :pswitch_data_0

    .line 78
    const-string v0, "INVALID"

    :goto_0
    return-object v0

    .line 70
    :pswitch_0
    const-string v0, "CONTROL"

    goto :goto_0

    .line 72
    :pswitch_1
    const-string v0, "DATA"

    goto :goto_0

    .line 74
    :pswitch_2
    const-string v0, "PING"

    goto :goto_0

    .line 76
    :pswitch_3
    const-string v0, "HANDSHAKE"

    goto :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
