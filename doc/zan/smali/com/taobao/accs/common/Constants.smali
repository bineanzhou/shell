.class public Lcom/taobao/accs/common/Constants;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/accs/common/Constants$Operate;
    }
.end annotation


# static fields
.field public static final ACCS_IMPL_NAME:Ljava/lang/String; = "com.taobao.accs.internal.ACCSManagerImpl"

.field public static final ACTION_COMMAND:Ljava/lang/String; = "com.taobao.accs.intent.action.COMMAND"

.field public static final ACTION_CONNECT_INFO:Ljava/lang/String; = "com.taobao.accs.intent.action.CONNECTINFO"

.field public static final ACTION_ELECTION:Ljava/lang/String; = "com.taobao.accs.intent.action.ELECTION"

.field public static final ACTION_GET_VERSION:Ljava/lang/String; = "com.taobao.accs.intent.action.GET_VERSION"

.field public static final ACTION_PING:Ljava/lang/String; = "org.agoo.android.intent.action.PING_V4"

.field public static final ACTION_RECEIVE:Ljava/lang/String; = "com.taobao.accs.intent.action.RECEIVE"

.field public static final ACTION_SEND:Ljava/lang/String; = "com.taobao.accs.intent.action.SEND"

.field public static final ACTION_SERVICE:Ljava/lang/String; = "com.taobao.accs.intent.action.SERVICE"

.field public static final ACTION_START_FROM_AGOO:Ljava/lang/String; = "com.taobao.accs.intent.action.START_FROM_AGOO"

.field public static final ACTION_START_SERVICE:Ljava/lang/String; = "com.taobao.accs.intent.action.START_SERVICE"

.field public static final ALIYUN_SERVICE_HOST:Ljava/lang/String; = "accscdn4public.m.taobao.com"

.field public static final ALIYUN_SERVICE_IP:Ljava/lang/String; = "140.205.166.95"

.field public static final CLIENT_FLUSH_INTERVAL:J = 0x5265c00L

.field public static final COMMAND_ANTI_BRUSH:I = 0x68

.field public static final COMMAND_BIND_APP:I = 0x1

.field public static final COMMAND_BIND_SERVICE:I = 0x5

.field public static final COMMAND_BIND_USER:I = 0x3

.field public static final COMMAND_CONNECT_INFO:I = 0x67

.field public static final COMMAND_ELECTION:I = 0x69

.field public static final COMMAND_GET_VERSION:I = 0x191

.field public static final COMMAND_HANDSHAKE:I = 0xc8

.field public static final COMMAND_PING:I = 0xc9

.field public static final COMMAND_RECEIVE_DATA:I = 0x65

.field public static final COMMAND_ROUTING_ACK:I = 0x6a

.field public static final COMMAND_SEND_DATA:I = 0x64

.field public static final COMMAND_SEND_STATIST:I = 0x66

.field public static final COMMAND_STOP_FOR_ELECTION:I = 0x12d

.field public static final COMMAND_UNBIND_APP:I = 0x2

.field public static final COMMAND_UNBIND_SERVICE:I = 0x6

.field public static final COMMAND_UNBIND_USER:I = 0x4

.field public static final COMPRESS_GZIP:I = 0x1

.field public static final COMPRESS_NONE:I = 0x0

.field public static final DB_NAME:Ljava/lang/String; = "accs.db"

.field public static final DB_VERSION:I = 0x3

.field public static final DEBUG:I = 0x2

.field public static final ELECTION_MODE_CLIENT:I = 0x0

.field public static final ELECTION_MODE_SERVER:I = 0x1

.field public static final ELECTION_VERSION:I = 0x1

.field public static final KEY_ANTI_BRUSH_COOKIE:Ljava/lang/String; = "anti_brush_cookie"

.field public static final KEY_ANTI_BRUSH_RET:Ljava/lang/String; = "anti_brush_ret"

.field public static final KEY_APPS:Ljava/lang/String; = "apps"

.field public static final KEY_APP_KEY:Ljava/lang/String; = "appKey"

.field public static final KEY_APP_SECRET:Ljava/lang/String; = "app_sercet"

.field public static final KEY_APP_VERSION:Ljava/lang/String; = "appVersion"

.field public static final KEY_APP_VERSION_CODE:Ljava/lang/String; = "appVersionCode"

.field public static final KEY_BRAND:Ljava/lang/String; = "brand"

.field public static final KEY_BUSINESSID:Ljava/lang/String; = "businessId"

.field public static final KEY_CENTER_HOST:Ljava/lang/String; = "is_center_host"

.field public static final KEY_COMMAND:Ljava/lang/String; = "command"

.field public static final KEY_CONFIG_TAG:Ljava/lang/String; = "configTag"

.field public static final KEY_CONNECT_AVAILABLE:Ljava/lang/String; = "connect_avail"

.field public static final KEY_CONNECT_INFO:Ljava/lang/String; = "connect_info"

.field public static final KEY_CONN_TYPE:Ljava/lang/String; = "conn_type"

.field public static final KEY_DATA:Ljava/lang/String; = "data"

.field public static final KEY_DATA_ID:Ljava/lang/String; = "dataId"

.field public static final KEY_DEVICE_ID:Ljava/lang/String; = "deviceId"

.field public static final KEY_DEVICE_TOKEN:Ljava/lang/String; = "accsToken"

.field public static final KEY_ELECTION_MODE:Ljava/lang/String; = "election_mode"

.field public static final KEY_ELECTION_PACKS:Ljava/lang/String; = "packs"

.field public static final KEY_ELECTION_PKG:Ljava/lang/String; = "pkg"

.field public static final KEY_ELECTION_SDKV:Ljava/lang/String; = "sdkv"

.field public static final KEY_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field public static final KEY_ERROR_DETAIL:Ljava/lang/String; = "errorDetail"

.field public static final KEY_EXTS:Ljava/lang/String; = "exts"

.field public static final KEY_EXT_TAG:Ljava/lang/String; = "extTag"

.field public static final KEY_FLAGS:Ljava/lang/String; = "flags"

.field public static final KEY_FOUCE_BIND:Ljava/lang/String; = "fouce_bind"

.field public static final KEY_FOUCE_DISABLE:Ljava/lang/String; = "fouce_disable"

.field public static final KEY_HOST:Ljava/lang/String; = "host"

.field public static final KEY_HTTP_CODE:Ljava/lang/String; = "code"

.field public static final KEY_IMEI:Ljava/lang/String; = "imei"

.field public static final KEY_IMSI:Ljava/lang/String; = "imsi"

.field public static final KEY_LAST_TRY_UPLOAD_COUNT:Ljava/lang/String; = "last_try_upload_count"

.field public static final KEY_LAST_UPLOAD_TIME:Ljava/lang/String; = "lastUpload"

.field public static final KEY_MODE:Ljava/lang/String; = "mode"

.field public static final KEY_MODEL:Ljava/lang/String; = "model"

.field public static final KEY_NEED_BUSINESS_ACK:Ljava/lang/String; = "bizAck"

.field public static final KEY_OS_TYPE:Ljava/lang/String; = "osType"

.field public static final KEY_OS_VERSION:Ljava/lang/String; = "os"

.field public static final KEY_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final KEY_PACKAGE_NAMES:Ljava/lang/String; = "packageNames"

.field public static final KEY_PROXY_HOST:Ljava/lang/String; = "proxy_host"

.field public static final KEY_PROXY_PORT:Ljava/lang/String; = "proxy_port"

.field public static final KEY_SDK_VERSION:Ljava/lang/String; = "sdkVersion"

.field public static final KEY_SECURITY_SIGN:Ljava/lang/String; = "sign"

.field public static final KEY_SEND_REQDATA:Ljava/lang/String; = "reqdata"

.field public static final KEY_SEND_TYPE:Ljava/lang/String; = "send_type"

.field public static final KEY_SERVICE_ID:Ljava/lang/String; = "serviceId"

.field public static final KEY_SID:Ljava/lang/String; = "sid"

.field public static final KEY_SOURCE:Ljava/lang/String; = "source"

.field public static final KEY_TARGET:Ljava/lang/String; = "target"

.field public static final KEY_TTID:Ljava/lang/String; = "ttid"

.field public static final KEY_TYPE_INAPP:Ljava/lang/String; = "type_inapp"

.field public static final KEY_USER_ID:Ljava/lang/String; = "userInfo"

.field public static final LOG:Z = true

.field public static final NODE_FRONT:I = 0x0

.field public static final NODE_REAR:I = 0x1

.field public static final OS_ANDROID:I = 0x1

.field public static final PORT:I = 0x1bb

.field public static final PREVIEW:I = 0x1

.field public static final PROTOCOL_VERSION:B = 0x2t

.field public static final RECEIVER_IMPL_NAME:Ljava/lang/String; = "com.taobao.accs.internal.ReceiverImpl"

.field public static final RELEASE:I = 0x0

.field public static final SDK_VERSION_CODE:I = 0xdd

.field public static final SEND_TYPE_RES:Ljava/lang/String; = "res"

.field public static final SERVICE_HOST:Ljava/lang/String; = "accscdn.m.taobao.com"

.field public static final SERVICE_IMPL_NAME:Ljava/lang/String; = "com.taobao.accs.internal.ServiceImpl"

.field public static final SHARED_FOLDER:Ljava/lang/String; = "accs"

.field public static final SHARED_MESSAGE_ID_FILE:Ljava/lang/String; = "message"

.field public static final SHARED_VERSION_FILE:Ljava/lang/String; = "version"

.field public static final SOCKET_PORT:Ljava/lang/String; = "73B5B6060CA4F42C20EA4C5501EBCCBA"

.field public static final SP_APPKEY_FILE_NAME:Ljava/lang/String; = "ACCS_SDK_APPKEY"

.field public static final SP_APP_SECRET:Ljava/lang/String; = "app_sercet"

.field public static final SP_CHANNEL_FILE_NAME:Ljava/lang/String; = "ACCS_SDK_CHANNEL"

.field public static final SP_COOKIE_FILE_NAME:Ljava/lang/String; = "ACCS_COOKIE"

.field public static final SP_FILE_NAME:Ljava/lang/String; = "ACCS_SDK"

.field public static final SP_KEY_APPKEY:Ljava/lang/String; = "appkey"

.field public static final SP_KEY_COOKIE_EXPIRED:Ljava/lang/String; = "cookie_expired"

.field public static final SP_KEY_COOKIE_SEC:Ljava/lang/String; = "cookie_sec"

.field public static final SP_KEY_DEBUG_MODE:Ljava/lang/String; = "debug_mode"

.field public static final SP_KEY_DEFAULT_APPKEY:Ljava/lang/String; = "defaultAppkey"

.field public static final SP_KEY_DEFAULT_CONFIG:Ljava/lang/String; = "defaultConfig"

.field public static final SP_KEY_ELECTION_ENABLE:Ljava/lang/String; = "election_enable"

.field public static final SP_KEY_ELECTION_RESULT:Ljava/lang/String; = "election_result"

.field public static final SP_KEY_ELECTION_VERSION:Ljava/lang/String; = "election_version"

.field public static final SP_KEY_HB_SMART_ENABLE:Ljava/lang/String; = "smart_hb_enable"

.field public static final SP_KEY_LOAD_SO_TIMES:Ljava/lang/String; = "load_so_times"

.field public static final SP_KEY_SERVICE_END:Ljava/lang/String; = "service_end"

.field public static final SP_KEY_SERVICE_START:Ljava/lang/String; = "service_start"

.field public static final SP_KEY_TNET_LOG_OFF:Ljava/lang/String; = "tnet_log_off"

.field public static final SP_KEY_UPDATE_DONE:Ljava/lang/String; = "update_done"

.field public static final SP_KEY_UPDATE_FOLDER:Ljava/lang/String; = "update_folder"

.field public static final SP_KEY_UPDATE_VERSION:Ljava/lang/String; = "update_verion"

.field public static final SP_KEY_UTDID:Ljava/lang/String; = "utdid"

.field public static final SP_KEY_VERSION:Ljava/lang/String; = "version"

.field public static final SP_LOAD_SO_FILE_NAME:Ljava/lang/String; = "ACCS_LOAD_SO"

.field public static final SP_UPLOAD_ACCS_POLICY:Ljava/lang/String; = "upload_accs_policy"

.field public static final ST_TRY_UPLOAD_MAX_COUNT:I = 0xa

.field public static final ST_UPLOAD_MAX_COUNT:J = 0xc8L

.field public static final ST_UPLOAD_TIME_INTERVAL:J = 0xdbba00L

.field public static final TARGET_CONTROL:Ljava/lang/String; = "3|dm|"

.field public static final TARGET_ELECTION:Ljava/lang/String; = "4|sal|el"

.field public static final TARGET_SERVICE_PRE:Ljava/lang/String; = "2|"

.field public static final TARGET_STATIST:Ljava/lang/String; = "4|sal|st"

.field public static final UPDATE_DEXOPT_FILE:Ljava/lang/String; = "accs.dex"

.field public static final UPDATE_DEX_FILE:Ljava/lang/String; = "accs.zip"

.field public static final UT_OFF:Z = false

.field public static final WJAS_OFF:Z = true


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    return-void
.end method
