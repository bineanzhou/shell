.class public Lcom/umeng/commonsdk/statistics/AnalyticsConstants;
.super Ljava/lang/Object;
.source "AnalyticsConstants.java"


# static fields
.field public static APPLOG_URL_LIST:[Ljava/lang/String; = null

.field public static CHECK_DEVICE:Z = false

.field public static final LOG_TAG:Ljava/lang/String; = "MobclickAgent"

.field public static final OS:Ljava/lang/String; = "Android"

.field public static final SDK_TYPE:Ljava/lang/String; = "Android"

.field public static final UM_DEBUG:Z

.field private static commonDeviceType:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 19
    sput-boolean v3, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->CHECK_DEVICE:Z

    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/umeng/commonsdk/statistics/UMServerURL;->DEFAULT_URL:Ljava/lang/String;

    aput-object v2, v0, v1

    sget-object v1, Lcom/umeng/commonsdk/statistics/UMServerURL;->SECONDARY_URL:Ljava/lang/String;

    aput-object v1, v0, v3

    sput-object v0, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->APPLOG_URL_LIST:[Ljava/lang/String;

    .line 43
    sget-boolean v0, Lcom/umeng/commonsdk/statistics/common/e;->a:Z

    sput-boolean v0, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    .line 46
    sput v3, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->commonDeviceType:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getDeviceType()I
    .locals 2

    .prologue
    .line 61
    const-class v0, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->commonDeviceType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static setDeviceType(I)V
    .locals 0

    .prologue
    .line 53
    sput p0, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->commonDeviceType:I

    .line 54
    return-void
.end method
