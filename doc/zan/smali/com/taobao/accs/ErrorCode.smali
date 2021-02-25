.class public Lcom/taobao/accs/ErrorCode;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/accs/ErrorCode$INIT_ERROR;
    }
.end annotation


# static fields
.field public static final ACCS_DISABLEED:I = -0x11

.field public static final APPKEY_NULL:I = -0xe

.field public static final APPRECEIVER_NULL:I = -0x10

.field public static final APPSECRET_NULL:I = -0xf

.field public static final APP_NOT_BIND:I = 0x12c

.field public static final AUTH_EXCEPTION:I = -0x7

.field public static final AUTH_PARAM_ERROR:I = -0x6

.field public static final CON_DISCONNECTED:I = -0xa

.field public static final DM_APPKEY_INVALID:I = 0x12f

.field public static final DM_DEVICEID_INVALID:I = 0x12e

.field public static final DM_PACKAGENAME_INVALID:I = 0x130

.field public static final DM_TAIR_ERROR:I = 0x66

.field public static final MESSAGE_HOST_NULL:I = -0x5

.field public static final MESSAGE_QUEUE_FULL:I = 0x11178

.field public static final MESSAGE_TOO_LARGE:I = -0x4

.field public static final NETWORK_FAIL:I = -0x1

.field public static final NO_NETWORK:I = -0xd

.field public static final PARAMETER_ERROR:I = -0x2

.field public static final PING_TIME_OUT:I = -0xc

.field public static final REQ_TIME_OUT:I = -0x9

.field public static final SERVICE_NOT_AVAILABLE:I = -0x3

.field public static final SERVIER_ANTI_BRUSH:I = 0x11186

.field public static final SERVIER_HIGH_LIMIT:I = 0x11185

.field public static final SERVIER_HIGH_LIMIT_BRUSH:I = 0x11187

.field public static final SERVIER_LOW_LIMIT:I = 0x11184

.field public static final SESSION_NULL:I = -0xb

.field public static final SUCCESS:I = 0xc8

.field public static final UNKNOWN_ERROR:I = -0x8


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method public static convertError(I)Lcom/taobao/accs/ErrorCode$INIT_ERROR;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->UNKNOWN_ERROR:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    .line 83
    sparse-switch p0, :sswitch_data_0

    .line 126
    :goto_0
    return-object v0

    .line 85
    :sswitch_0
    sget-object v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->NO_NETWORK:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    goto :goto_0

    .line 88
    :sswitch_1
    sget-object v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->APPKEY_NULL:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    goto :goto_0

    .line 91
    :sswitch_2
    sget-object v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->APPSECRET_NULL:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    goto :goto_0

    .line 94
    :sswitch_3
    sget-object v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->APPRECEIVER_NULL:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    goto :goto_0

    .line 97
    :sswitch_4
    sget-object v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->REQ_TIME_OUT:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    goto :goto_0

    .line 100
    :sswitch_5
    sget-object v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->CONN_INVALID:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    goto :goto_0

    .line 103
    :sswitch_6
    sget-object v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->NO_CONNECTTION:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    goto :goto_0

    .line 106
    :sswitch_7
    sget-object v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->UNKNOWN_ERROR:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    goto :goto_0

    .line 109
    :sswitch_8
    sget-object v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->SERVER_TAIR_ERROR:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    goto :goto_0

    .line 112
    :sswitch_9
    sget-object v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->SERVER_DEVICEID_INVALID:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    goto :goto_0

    .line 115
    :sswitch_a
    sget-object v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->SERVER_APPKEY_INVALID:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    goto :goto_0

    .line 118
    :sswitch_b
    sget-object v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->SERVER_PACKAGENAME_INVALID:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    goto :goto_0

    .line 121
    :sswitch_c
    sget-object v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->SUCCESS:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    goto :goto_0

    .line 83
    nop

    :sswitch_data_0
    .sparse-switch
        -0x12d -> :sswitch_5
        -0x10 -> :sswitch_3
        -0xf -> :sswitch_2
        -0xe -> :sswitch_1
        -0xd -> :sswitch_0
        -0xb -> :sswitch_6
        -0x9 -> :sswitch_4
        -0x8 -> :sswitch_7
        0x66 -> :sswitch_8
        0xc8 -> :sswitch_c
        0x12e -> :sswitch_9
        0x12f -> :sswitch_a
        0x130 -> :sswitch_b
    .end sparse-switch
.end method

.method public static isChannelError(I)Z
    .locals 2

    .prologue
    .line 135
    const/4 v0, 0x0

    .line 136
    const/4 v1, -0x1

    if-eq p0, v1, :cond_0

    const/16 v1, -0x9

    if-eq p0, v1, :cond_0

    const/16 v1, -0xb

    if-eq p0, v1, :cond_0

    const/4 v1, -0x7

    if-ne p0, v1, :cond_1

    .line 140
    :cond_0
    const/4 v0, 0x1

    .line 142
    :cond_1
    return v0
.end method
