.class public Lanet/channel/util/ErrorConstant;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field public static final ERROR_ACCS_AUTH_PARAM_INVALID:I = -0x68

.field public static final ERROR_ACCS_CUSTOM_FRAME_CB_NULL:I = -0x69

.field public static final ERROR_AUTH_EXCEPTION:I = -0x12e

.field public static final ERROR_CONNECT_EXCEPTION:I = -0x196

.field public static final ERROR_CONN_TIME_OUT:I = -0x190

.field public static final ERROR_DATA_TOO_LARGE:I = -0x12f

.field public static final ERROR_DEPULICATE_ACCS_SESSION:I = -0x6b

.field public static final ERROR_EXCEPTION:I = -0x65

.field public static final ERROR_FILE_RENAME_TO_FAIL:I = -0x6a

.field public static final ERROR_GET_PROCESS_NULL:I = -0x6c

.field public static final ERROR_HOST_NOT_VERIFY_ERROR:I = -0x193

.field public static final ERROR_IO_EXCEPTION:I = -0x194

.field public static final ERROR_NO_NETWORK:I = -0xc8

.field public static final ERROR_NO_STRATEGY:I = -0xcb

.field public static final ERROR_OPEN_CONNECTION_NULL:I = -0x197

.field public static final ERROR_PARAM_ILLEGAL:I = -0x66

.field public static final ERROR_REMOTE_CALL_FAIL:I = -0x67

.field public static final ERROR_REQUEST_CANCEL:I = -0xcc

.field public static final ERROR_REQUEST_FAIL:I = -0xc9

.field public static final ERROR_REQUEST_TIME_OUT:I = -0xca

.field public static final ERROR_SESSION_INVALID:I = -0x12d

.field public static final ERROR_SOCKET_TIME_OUT:I = -0x191

.field public static final ERROR_SSL_ERROR:I = -0x192

.field public static final ERROR_TNET_EXCEPTION:I = -0x12c

.field public static final ERROR_UNKNOWN:I = -0x64

.field public static final ERROR_UNKNOWN_HOST_EXCEPTION:I = -0x195

.field public static final SC_OK:I = 0xc8

.field private static errorMsgMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lanet/channel/util/ErrorConstant;->errorMsgMap:Landroid/util/SparseArray;

    .line 48
    sget-object v0, Lanet/channel/util/ErrorConstant;->errorMsgMap:Landroid/util/SparseArray;

    const/16 v1, 0xc8

    const-string v2, "\u8bf7\u6c42\u6210\u529f"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 49
    sget-object v0, Lanet/channel/util/ErrorConstant;->errorMsgMap:Landroid/util/SparseArray;

    const/16 v1, -0x64

    const-string v2, "\u672a\u77e5\u9519\u8bef"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 50
    sget-object v0, Lanet/channel/util/ErrorConstant;->errorMsgMap:Landroid/util/SparseArray;

    const/16 v1, -0x65

    const-string v2, "\u53d1\u751f\u5f02\u5e38"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    sget-object v0, Lanet/channel/util/ErrorConstant;->errorMsgMap:Landroid/util/SparseArray;

    const/16 v1, -0x66

    const-string v2, "\u975e\u6cd5\u53c2\u6570"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 52
    sget-object v0, Lanet/channel/util/ErrorConstant;->errorMsgMap:Landroid/util/SparseArray;

    const/16 v1, -0x67

    const-string v2, "\u8fdc\u7a0b\u8c03\u7528\u5931\u8d25"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 53
    sget-object v0, Lanet/channel/util/ErrorConstant;->errorMsgMap:Landroid/util/SparseArray;

    const/16 v1, -0x68

    const-string v2, "ACCS\u975e\u6cd5\u9274\u6743\u53c2\u6570"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 54
    sget-object v0, Lanet/channel/util/ErrorConstant;->errorMsgMap:Landroid/util/SparseArray;

    const/16 v1, -0x69

    const-string v2, "ACCS\u81ea\u5b9a\u4e49\u5e27\u56de\u8c03\u4e3a\u7a7a"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 55
    sget-object v0, Lanet/channel/util/ErrorConstant;->errorMsgMap:Landroid/util/SparseArray;

    const/16 v1, -0x6a

    const-string v2, "\u6587\u4ef6renameTo\u5931\u8d25"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 56
    sget-object v0, Lanet/channel/util/ErrorConstant;->errorMsgMap:Landroid/util/SparseArray;

    const/16 v1, -0x6b

    const-string v2, "\u5b58\u5728\u91cd\u590d\u7684accs\u957f\u8fde"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 57
    sget-object v0, Lanet/channel/util/ErrorConstant;->errorMsgMap:Landroid/util/SparseArray;

    const/16 v1, -0x6c

    const-string v2, "\u83b7\u53d6Process\u5931\u8d25"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 59
    sget-object v0, Lanet/channel/util/ErrorConstant;->errorMsgMap:Landroid/util/SparseArray;

    const/16 v1, -0xc8

    const-string v2, "\u65e0\u7f51\u7edc"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 60
    sget-object v0, Lanet/channel/util/ErrorConstant;->errorMsgMap:Landroid/util/SparseArray;

    const/16 v1, -0xcb

    const-string v2, "\u7f51\u7edc\u5e93\u65e0\u7b56\u7565"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 61
    sget-object v0, Lanet/channel/util/ErrorConstant;->errorMsgMap:Landroid/util/SparseArray;

    const/16 v1, -0xca

    const-string v2, "\u8bf7\u6c42\u8d85\u65f6"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 62
    sget-object v0, Lanet/channel/util/ErrorConstant;->errorMsgMap:Landroid/util/SparseArray;

    const/16 v1, -0xcc

    const-string v2, "\u8bf7\u6c42\u88ab\u53d6\u6d88"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 64
    sget-object v0, Lanet/channel/util/ErrorConstant;->errorMsgMap:Landroid/util/SparseArray;

    const/16 v1, -0x12d

    const-string v2, "Session\u4e0d\u53ef\u7528"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 65
    sget-object v0, Lanet/channel/util/ErrorConstant;->errorMsgMap:Landroid/util/SparseArray;

    const/16 v1, -0x12c

    const-string v2, "tnet\u5c42\u5f02\u5e38"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 66
    sget-object v0, Lanet/channel/util/ErrorConstant;->errorMsgMap:Landroid/util/SparseArray;

    const/16 v1, -0x12e

    const-string v2, "\u9274\u6743\u5f02\u5e38"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 67
    sget-object v0, Lanet/channel/util/ErrorConstant;->errorMsgMap:Landroid/util/SparseArray;

    const/16 v1, -0x12f

    const-string v2, "\u81ea\u5b9a\u4e49\u5e27\u6570\u636e\u8fc7\u5927"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 69
    sget-object v0, Lanet/channel/util/ErrorConstant;->errorMsgMap:Landroid/util/SparseArray;

    const/16 v1, -0x190

    const-string v2, "\u8fde\u63a5\u8d85\u65f6"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 70
    sget-object v0, Lanet/channel/util/ErrorConstant;->errorMsgMap:Landroid/util/SparseArray;

    const/16 v1, -0x191

    const-string v2, "Socket\u8d85\u65f6"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 71
    sget-object v0, Lanet/channel/util/ErrorConstant;->errorMsgMap:Landroid/util/SparseArray;

    const/16 v1, -0x192

    const-string v2, "SSL\u5931\u8d25"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    sget-object v0, Lanet/channel/util/ErrorConstant;->errorMsgMap:Landroid/util/SparseArray;

    const/16 v1, -0x193

    const-string v2, "\u57df\u540d\u672a\u8ba4\u8bc1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    sget-object v0, Lanet/channel/util/ErrorConstant;->errorMsgMap:Landroid/util/SparseArray;

    const/16 v1, -0x194

    const-string v2, "IO\u5f02\u5e38"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 74
    sget-object v0, Lanet/channel/util/ErrorConstant;->errorMsgMap:Landroid/util/SparseArray;

    const/16 v1, -0x195

    const-string v2, "\u57df\u540d\u4e0d\u80fd\u89e3\u6790"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 75
    sget-object v0, Lanet/channel/util/ErrorConstant;->errorMsgMap:Landroid/util/SparseArray;

    const/16 v1, -0x196

    const-string v2, "\u8fde\u63a5\u5f02\u5e38"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 76
    sget-object v0, Lanet/channel/util/ErrorConstant;->errorMsgMap:Landroid/util/SparseArray;

    const/16 v1, -0x197

    const-string v2, "\u6253\u5f00\u8fde\u63a5\u5931\u8d25"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 77
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatMsg(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    invoke-static {p0}, Lanet/channel/util/ErrorConstant;->getErrMsg(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-static {v0, v1, p1}, Lanet/channel/util/StringUtils;->concatString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getErrMsg(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lanet/channel/util/ErrorConstant;->errorMsgMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lanet/channel/util/StringUtils;->stringNull2Empty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
