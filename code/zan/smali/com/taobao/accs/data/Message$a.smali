.class public Lcom/taobao/accs/data/Message$a;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/accs/data/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final INVALID:I = -0x1

.field public static final NEED_ACK:I = 0x1

.field public static final NO_ACK:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)I
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 109
    packed-switch p0, :pswitch_data_0

    .line 115
    :goto_0
    :pswitch_0
    return v0

    .line 111
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    packed-switch p0, :pswitch_data_0

    .line 126
    const-string v0, "INVALID"

    :goto_0
    return-object v0

    .line 122
    :pswitch_0
    const-string v0, "NO_ACK"

    goto :goto_0

    .line 124
    :pswitch_1
    const-string v0, "NEED_ACK"

    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
