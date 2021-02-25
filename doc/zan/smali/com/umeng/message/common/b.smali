.class public Lcom/umeng/message/common/b;
.super Ljava/lang/Object;
.source "Header.java"


# static fields
.field public static final a:Ljava/lang/String; = "umid"

.field private static final ak:Ljava/lang/String; = "Android"

.field public static final b:Ljava/lang/String; = "Android"

.field private static final c:Ljava/lang/String;


# instance fields
.field private A:I

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private final I:Ljava/lang/String;

.field private final J:Ljava/lang/String;

.field private final K:Ljava/lang/String;

.field private final L:Ljava/lang/String;

.field private final M:Ljava/lang/String;

.field private final N:Ljava/lang/String;

.field private final O:Ljava/lang/String;

.field private final P:Ljava/lang/String;

.field private final Q:Ljava/lang/String;

.field private final R:Ljava/lang/String;

.field private final S:Ljava/lang/String;

.field private final T:Ljava/lang/String;

.field private final U:Ljava/lang/String;

.field private final V:Ljava/lang/String;

.field private final W:Ljava/lang/String;

.field private final X:Ljava/lang/String;

.field private final Y:Ljava/lang/String;

.field private final Z:Ljava/lang/String;

.field private final aa:Ljava/lang/String;

.field private final ab:Ljava/lang/String;

.field private final ac:Ljava/lang/String;

.field private final ad:Ljava/lang/String;

.field private final ae:Ljava/lang/String;

.field private final af:Ljava/lang/String;

.field private final ag:Ljava/lang/String;

.field private final ah:Ljava/lang/String;

.field private final ai:Ljava/lang/String;

.field private final aj:Ljava/lang/String;

.field private final al:Ljava/lang/String;

.field private final am:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:J

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/umeng/message/common/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/message/common/b;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, "appkey"

    iput-object v0, p0, Lcom/umeng/message/common/b;->I:Ljava/lang/String;

    .line 55
    const-string v0, "channel"

    iput-object v0, p0, Lcom/umeng/message/common/b;->J:Ljava/lang/String;

    .line 56
    const-string v0, "device_id"

    iput-object v0, p0, Lcom/umeng/message/common/b;->K:Ljava/lang/String;

    .line 57
    const-string v0, "idmd5"

    iput-object v0, p0, Lcom/umeng/message/common/b;->L:Ljava/lang/String;

    .line 58
    const-string v0, "mc"

    iput-object v0, p0, Lcom/umeng/message/common/b;->M:Ljava/lang/String;

    .line 59
    const-string v0, "din"

    iput-object v0, p0, Lcom/umeng/message/common/b;->N:Ljava/lang/String;

    .line 60
    const-string v0, "push_switch"

    iput-object v0, p0, Lcom/umeng/message/common/b;->O:Ljava/lang/String;

    .line 61
    const-string v0, "req_time"

    iput-object v0, p0, Lcom/umeng/message/common/b;->P:Ljava/lang/String;

    .line 62
    const-string v0, "android_id"

    iput-object v0, p0, Lcom/umeng/message/common/b;->Q:Ljava/lang/String;

    .line 63
    const-string v0, "serial_number"

    iput-object v0, p0, Lcom/umeng/message/common/b;->R:Ljava/lang/String;

    .line 65
    const-string v0, "device_model"

    iput-object v0, p0, Lcom/umeng/message/common/b;->S:Ljava/lang/String;

    .line 66
    const-string v0, "os"

    iput-object v0, p0, Lcom/umeng/message/common/b;->T:Ljava/lang/String;

    .line 67
    const-string v0, "os_version"

    iput-object v0, p0, Lcom/umeng/message/common/b;->U:Ljava/lang/String;

    .line 68
    const-string v0, "resolution"

    iput-object v0, p0, Lcom/umeng/message/common/b;->V:Ljava/lang/String;

    .line 69
    const-string v0, "cpu"

    iput-object v0, p0, Lcom/umeng/message/common/b;->W:Ljava/lang/String;

    .line 70
    const-string v0, "gpu_vender"

    iput-object v0, p0, Lcom/umeng/message/common/b;->X:Ljava/lang/String;

    .line 71
    const-string v0, "gpu_renderer"

    iput-object v0, p0, Lcom/umeng/message/common/b;->Y:Ljava/lang/String;

    .line 73
    const-string v0, "app_version"

    iput-object v0, p0, Lcom/umeng/message/common/b;->Z:Ljava/lang/String;

    .line 74
    const-string v0, "version_code"

    iput-object v0, p0, Lcom/umeng/message/common/b;->aa:Ljava/lang/String;

    .line 75
    const-string v0, "package_name"

    iput-object v0, p0, Lcom/umeng/message/common/b;->ab:Ljava/lang/String;

    .line 77
    const-string v0, "sdk_type"

    iput-object v0, p0, Lcom/umeng/message/common/b;->ac:Ljava/lang/String;

    .line 78
    const-string v0, "sdk_version"

    iput-object v0, p0, Lcom/umeng/message/common/b;->ad:Ljava/lang/String;

    .line 80
    const-string v0, "timezone"

    iput-object v0, p0, Lcom/umeng/message/common/b;->ae:Ljava/lang/String;

    .line 81
    const-string v0, "country"

    iput-object v0, p0, Lcom/umeng/message/common/b;->af:Ljava/lang/String;

    .line 82
    const-string v0, "language"

    iput-object v0, p0, Lcom/umeng/message/common/b;->ag:Ljava/lang/String;

    .line 84
    const-string v0, "access"

    iput-object v0, p0, Lcom/umeng/message/common/b;->ah:Ljava/lang/String;

    .line 85
    const-string v0, "access_subtype"

    iput-object v0, p0, Lcom/umeng/message/common/b;->ai:Ljava/lang/String;

    .line 86
    const-string v0, "carrier"

    iput-object v0, p0, Lcom/umeng/message/common/b;->aj:Ljava/lang/String;

    .line 95
    const-string v0, "wrapper_type"

    iput-object v0, p0, Lcom/umeng/message/common/b;->al:Ljava/lang/String;

    .line 96
    const-string v0, "wrapper_version"

    iput-object v0, p0, Lcom/umeng/message/common/b;->am:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, "appkey"

    iput-object v0, p0, Lcom/umeng/message/common/b;->I:Ljava/lang/String;

    .line 55
    const-string v0, "channel"

    iput-object v0, p0, Lcom/umeng/message/common/b;->J:Ljava/lang/String;

    .line 56
    const-string v0, "device_id"

    iput-object v0, p0, Lcom/umeng/message/common/b;->K:Ljava/lang/String;

    .line 57
    const-string v0, "idmd5"

    iput-object v0, p0, Lcom/umeng/message/common/b;->L:Ljava/lang/String;

    .line 58
    const-string v0, "mc"

    iput-object v0, p0, Lcom/umeng/message/common/b;->M:Ljava/lang/String;

    .line 59
    const-string v0, "din"

    iput-object v0, p0, Lcom/umeng/message/common/b;->N:Ljava/lang/String;

    .line 60
    const-string v0, "push_switch"

    iput-object v0, p0, Lcom/umeng/message/common/b;->O:Ljava/lang/String;

    .line 61
    const-string v0, "req_time"

    iput-object v0, p0, Lcom/umeng/message/common/b;->P:Ljava/lang/String;

    .line 62
    const-string v0, "android_id"

    iput-object v0, p0, Lcom/umeng/message/common/b;->Q:Ljava/lang/String;

    .line 63
    const-string v0, "serial_number"

    iput-object v0, p0, Lcom/umeng/message/common/b;->R:Ljava/lang/String;

    .line 65
    const-string v0, "device_model"

    iput-object v0, p0, Lcom/umeng/message/common/b;->S:Ljava/lang/String;

    .line 66
    const-string v0, "os"

    iput-object v0, p0, Lcom/umeng/message/common/b;->T:Ljava/lang/String;

    .line 67
    const-string v0, "os_version"

    iput-object v0, p0, Lcom/umeng/message/common/b;->U:Ljava/lang/String;

    .line 68
    const-string v0, "resolution"

    iput-object v0, p0, Lcom/umeng/message/common/b;->V:Ljava/lang/String;

    .line 69
    const-string v0, "cpu"

    iput-object v0, p0, Lcom/umeng/message/common/b;->W:Ljava/lang/String;

    .line 70
    const-string v0, "gpu_vender"

    iput-object v0, p0, Lcom/umeng/message/common/b;->X:Ljava/lang/String;

    .line 71
    const-string v0, "gpu_renderer"

    iput-object v0, p0, Lcom/umeng/message/common/b;->Y:Ljava/lang/String;

    .line 73
    const-string v0, "app_version"

    iput-object v0, p0, Lcom/umeng/message/common/b;->Z:Ljava/lang/String;

    .line 74
    const-string v0, "version_code"

    iput-object v0, p0, Lcom/umeng/message/common/b;->aa:Ljava/lang/String;

    .line 75
    const-string v0, "package_name"

    iput-object v0, p0, Lcom/umeng/message/common/b;->ab:Ljava/lang/String;

    .line 77
    const-string v0, "sdk_type"

    iput-object v0, p0, Lcom/umeng/message/common/b;->ac:Ljava/lang/String;

    .line 78
    const-string v0, "sdk_version"

    iput-object v0, p0, Lcom/umeng/message/common/b;->ad:Ljava/lang/String;

    .line 80
    const-string v0, "timezone"

    iput-object v0, p0, Lcom/umeng/message/common/b;->ae:Ljava/lang/String;

    .line 81
    const-string v0, "country"

    iput-object v0, p0, Lcom/umeng/message/common/b;->af:Ljava/lang/String;

    .line 82
    const-string v0, "language"

    iput-object v0, p0, Lcom/umeng/message/common/b;->ag:Ljava/lang/String;

    .line 84
    const-string v0, "access"

    iput-object v0, p0, Lcom/umeng/message/common/b;->ah:Ljava/lang/String;

    .line 85
    const-string v0, "access_subtype"

    iput-object v0, p0, Lcom/umeng/message/common/b;->ai:Ljava/lang/String;

    .line 86
    const-string v0, "carrier"

    iput-object v0, p0, Lcom/umeng/message/common/b;->aj:Ljava/lang/String;

    .line 95
    const-string v0, "wrapper_type"

    iput-object v0, p0, Lcom/umeng/message/common/b;->al:Ljava/lang/String;

    .line 96
    const-string v0, "wrapper_version"

    iput-object v0, p0, Lcom/umeng/message/common/b;->am:Ljava/lang/String;

    .line 102
    iput-object p1, p0, Lcom/umeng/message/common/b;->d:Ljava/lang/String;

    .line 103
    iput-object p2, p0, Lcom/umeng/message/common/b;->e:Ljava/lang/String;

    .line 104
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 329
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/message/common/b;->o:Ljava/lang/String;

    .line 330
    const-string v0, "Android"

    iput-object v0, p0, Lcom/umeng/message/common/b;->p:Ljava/lang/String;

    .line 331
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/message/common/b;->q:Ljava/lang/String;

    .line 332
    invoke-static {p1}, Lcom/umeng/message/common/UmengMessageDeviceConfig;->getResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/common/b;->r:Ljava/lang/String;

    .line 333
    invoke-static {}, Lcom/umeng/message/common/UmengMessageDeviceConfig;->getCPU()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/common/b;->s:Ljava/lang/String;

    .line 334
    invoke-static {p1}, Lcom/umeng/message/common/UmengMessageDeviceConfig;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/common/b;->m:Ljava/lang/String;

    .line 335
    invoke-static {}, Lcom/umeng/message/common/UmengMessageDeviceConfig;->getSerial_number()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/common/b;->n:Ljava/lang/String;

    .line 336
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 339
    invoke-static {p1}, Lcom/umeng/message/common/UmengMessageDeviceConfig;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/common/b;->v:Ljava/lang/String;

    .line 340
    invoke-static {p1}, Lcom/umeng/message/common/UmengMessageDeviceConfig;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/common/b;->w:Ljava/lang/String;

    .line 341
    invoke-static {p1}, Lcom/umeng/message/common/UmengMessageDeviceConfig;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/common/b;->x:Ljava/lang/String;

    .line 342
    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 345
    const-string v0, "Android"

    iput-object v0, p0, Lcom/umeng/message/common/b;->y:Ljava/lang/String;

    .line 346
    const-string v0, "4.1.0"

    iput-object v0, p0, Lcom/umeng/message/common/b;->z:Ljava/lang/String;

    .line 347
    return-void
.end method

.method private d(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 350
    invoke-static {p1}, Lcom/umeng/message/common/UmengMessageDeviceConfig;->getTimeZone(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/umeng/message/common/b;->A:I

    .line 351
    invoke-static {p1}, Lcom/umeng/message/common/UmengMessageDeviceConfig;->getLocaleInfo(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 352
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/umeng/message/common/b;->B:Ljava/lang/String;

    .line 353
    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/umeng/message/common/b;->C:Ljava/lang/String;

    .line 354
    return-void
.end method

.method private d(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 107
    const-string v0, "appkey"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/common/b;->d:Ljava/lang/String;

    .line 108
    const-string v0, "device_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/common/b;->f:Ljava/lang/String;

    .line 109
    const-string v0, "idmd5"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/common/b;->g:Ljava/lang/String;

    .line 111
    const-string v0, "mc"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    const-string v0, "mc"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/common/b;->h:Ljava/lang/String;

    .line 115
    :cond_0
    const-string v0, "channel"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    const-string v0, "channel"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/common/b;->e:Ljava/lang/String;

    .line 119
    :cond_1
    const-string v0, "req_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 120
    const-string v0, "req_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/message/common/b;->l:J

    .line 122
    :cond_2
    return-void
.end method

.method private e(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 357
    invoke-static {p1}, Lcom/umeng/message/common/UmengMessageDeviceConfig;->getNetworkAccessMode(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 358
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/umeng/message/common/b;->D:Ljava/lang/String;

    .line 359
    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/umeng/message/common/b;->E:Ljava/lang/String;

    .line 360
    invoke-static {p1}, Lcom/umeng/message/common/UmengMessageDeviceConfig;->getOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/common/b;->F:Ljava/lang/String;

    .line 361
    return-void
.end method

.method private e(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 125
    const-string v0, "device_model"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "device_model"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/umeng/message/common/b;->o:Ljava/lang/String;

    .line 126
    const-string v0, "os"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "os"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/umeng/message/common/b;->p:Ljava/lang/String;

    .line 127
    const-string v0, "os_version"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "os_version"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/umeng/message/common/b;->q:Ljava/lang/String;

    .line 128
    const-string v0, "resolution"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "resolution"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/umeng/message/common/b;->r:Ljava/lang/String;

    .line 129
    const-string v0, "cpu"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "cpu"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    iput-object v0, p0, Lcom/umeng/message/common/b;->s:Ljava/lang/String;

    .line 130
    const-string v0, "gpu_vender"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "gpu_vender"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    iput-object v0, p0, Lcom/umeng/message/common/b;->t:Ljava/lang/String;

    .line 131
    const-string v0, "gpu_renderer"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "gpu_renderer"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    iput-object v0, p0, Lcom/umeng/message/common/b;->u:Ljava/lang/String;

    .line 132
    const-string v0, "android_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "android_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_7
    iput-object v0, p0, Lcom/umeng/message/common/b;->m:Ljava/lang/String;

    .line 133
    const-string v0, "serial_number"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "serial_number"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lcom/umeng/message/common/b;->n:Ljava/lang/String;

    .line 134
    return-void

    :cond_1
    move-object v0, v1

    .line 125
    goto/16 :goto_0

    :cond_2
    move-object v0, v1

    .line 126
    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 127
    goto :goto_2

    :cond_4
    move-object v0, v1

    .line 128
    goto :goto_3

    :cond_5
    move-object v0, v1

    .line 129
    goto :goto_4

    :cond_6
    move-object v0, v1

    .line 130
    goto :goto_5

    :cond_7
    move-object v0, v1

    .line 131
    goto :goto_6

    :cond_8
    move-object v0, v1

    .line 132
    goto :goto_7
.end method

.method private f(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 137
    const-string v0, "app_version"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "app_version"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/umeng/message/common/b;->v:Ljava/lang/String;

    .line 138
    const-string v0, "version_code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "version_code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/umeng/message/common/b;->w:Ljava/lang/String;

    .line 139
    const-string v0, "package_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "package_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lcom/umeng/message/common/b;->x:Ljava/lang/String;

    .line 140
    return-void

    :cond_1
    move-object v0, v1

    .line 137
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 138
    goto :goto_1
.end method

.method private g(Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 143
    const-string v0, "sdk_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/common/b;->y:Ljava/lang/String;

    .line 144
    const-string v0, "sdk_version"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/common/b;->z:Ljava/lang/String;

    .line 145
    return-void
.end method

.method private h(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 148
    const-string v0, "timezone"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "timezone"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/umeng/message/common/b;->A:I

    .line 149
    const-string v0, "country"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "country"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/umeng/message/common/b;->B:Ljava/lang/String;

    .line 150
    const-string v0, "language"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "language"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lcom/umeng/message/common/b;->C:Ljava/lang/String;

    .line 151
    return-void

    .line 148
    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 149
    goto :goto_1
.end method

.method private i(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 154
    const-string v0, "access"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "access"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/umeng/message/common/b;->D:Ljava/lang/String;

    .line 155
    const-string v0, "access_subtype"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "access_subtype"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/umeng/message/common/b;->E:Ljava/lang/String;

    .line 156
    const-string v0, "carrier"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "carrier"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lcom/umeng/message/common/b;->F:Ljava/lang/String;

    .line 157
    return-void

    :cond_1
    move-object v0, v1

    .line 154
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 155
    goto :goto_1
.end method

.method private j(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 160
    const-string v0, "wrapper_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "wrapper_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/umeng/message/common/b;->G:Ljava/lang/String;

    .line 161
    const-string v0, "wrapper_version"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "wrapper_version"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lcom/umeng/message/common/b;->H:Ljava/lang/String;

    .line 162
    return-void

    :cond_1
    move-object v0, v1

    .line 160
    goto :goto_0
.end method

.method private k(Lorg/json/JSONObject;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v6, 0x10

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 177
    const-string v0, "appkey"

    iget-object v1, p0, Lcom/umeng/message/common/b;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    iget-object v0, p0, Lcom/umeng/message/common/b;->d:Ljava/lang/String;

    if-eqz v0, :cond_5

    const/16 v0, 0x18

    iget-object v1, p0, Lcom/umeng/message/common/b;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 180
    new-array v0, v5, [Ljava/lang/String;

    iget-object v1, p0, Lcom/umeng/message/common/b;->f:Ljava/lang/String;

    aput-object v1, v0, v2

    const-string v1, "utf-8"

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/umeng/message/common/b;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/umeng/message/proguard/c;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/common/b;->f:Ljava/lang/String;

    .line 181
    new-array v0, v5, [Ljava/lang/String;

    iget-object v1, p0, Lcom/umeng/message/common/b;->j:Ljava/lang/String;

    aput-object v1, v0, v2

    const-string v1, "utf-8"

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/umeng/message/common/b;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/umeng/message/proguard/c;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/common/b;->j:Ljava/lang/String;

    .line 187
    :goto_0
    const-string v0, "device_id"

    iget-object v1, p0, Lcom/umeng/message/common/b;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 188
    const-string v0, "idmd5"

    iget-object v1, p0, Lcom/umeng/message/common/b;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    iget-object v0, p0, Lcom/umeng/message/common/b;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "channel"

    iget-object v1, p0, Lcom/umeng/message/common/b;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/umeng/message/common/b;->h:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "mc"

    iget-object v1, p0, Lcom/umeng/message/common/b;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    :cond_1
    iget-wide v0, p0, Lcom/umeng/message/common/b;->l:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    const-string v0, "req_time"

    iget-wide v2, p0, Lcom/umeng/message/common/b;->l:J

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 194
    :cond_2
    iget-object v0, p0, Lcom/umeng/message/common/b;->m:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 195
    const-string v0, "android_id"

    iget-object v1, p0, Lcom/umeng/message/common/b;->m:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    :cond_3
    iget-object v0, p0, Lcom/umeng/message/common/b;->n:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 199
    const-string v0, "serial_number"

    iget-object v1, p0, Lcom/umeng/message/common/b;->n:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 201
    :cond_4
    const-string v0, "umid"

    iget-object v1, p0, Lcom/umeng/message/common/b;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 202
    const-string v0, "din"

    iget-object v1, p0, Lcom/umeng/message/common/b;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 203
    const-string v0, "push_switch"

    iget-object v1, p0, Lcom/umeng/message/common/b;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 204
    return-void

    .line 183
    :cond_5
    new-array v0, v4, [Ljava/lang/String;

    iget-object v1, p0, Lcom/umeng/message/common/b;->f:Ljava/lang/String;

    aput-object v1, v0, v2

    const-string v1, "utf-8"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/umeng/message/proguard/c;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/common/b;->f:Ljava/lang/String;

    .line 184
    new-array v0, v4, [Ljava/lang/String;

    iget-object v1, p0, Lcom/umeng/message/common/b;->j:Ljava/lang/String;

    aput-object v1, v0, v2

    const-string v1, "utf-8"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/umeng/message/proguard/c;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/common/b;->j:Ljava/lang/String;

    goto :goto_0
.end method

.method private l(Lorg/json/JSONObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 208
    const-string v0, "appkey"

    iget-object v1, p0, Lcom/umeng/message/common/b;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 209
    iget-object v0, p0, Lcom/umeng/message/common/b;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/16 v0, 0x18

    iget-object v1, p0, Lcom/umeng/message/common/b;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 210
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/umeng/message/common/b;->j:Ljava/lang/String;

    aput-object v1, v0, v3

    const-string v1, "utf-8"

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/umeng/message/common/b;->d:Ljava/lang/String;

    const/16 v2, 0x10

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/umeng/message/proguard/c;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/common/b;->j:Ljava/lang/String;

    .line 215
    :goto_0
    iget-object v0, p0, Lcom/umeng/message/common/b;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 216
    const-string v0, "channel"

    iget-object v1, p0, Lcom/umeng/message/common/b;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 219
    :cond_0
    const-string v0, "umid"

    iget-object v1, p0, Lcom/umeng/message/common/b;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 220
    const-string v0, "din"

    iget-object v1, p0, Lcom/umeng/message/common/b;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 221
    const-string v0, "push_switch"

    iget-object v1, p0, Lcom/umeng/message/common/b;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 222
    return-void

    .line 212
    :cond_1
    new-array v0, v4, [Ljava/lang/String;

    iget-object v1, p0, Lcom/umeng/message/common/b;->j:Ljava/lang/String;

    aput-object v1, v0, v3

    const-string v1, "utf-8"

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/umeng/message/proguard/c;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/common/b;->j:Ljava/lang/String;

    goto :goto_0
.end method

.method private m(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 225
    iget-object v0, p0, Lcom/umeng/message/common/b;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "device_model"

    iget-object v1, p0, Lcom/umeng/message/common/b;->o:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/umeng/message/common/b;->p:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "os"

    iget-object v1, p0, Lcom/umeng/message/common/b;->p:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/umeng/message/common/b;->q:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "os_version"

    iget-object v1, p0, Lcom/umeng/message/common/b;->q:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    :cond_2
    iget-object v0, p0, Lcom/umeng/message/common/b;->r:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, "resolution"

    iget-object v1, p0, Lcom/umeng/message/common/b;->r:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 229
    :cond_3
    iget-object v0, p0, Lcom/umeng/message/common/b;->s:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v0, "cpu"

    iget-object v1, p0, Lcom/umeng/message/common/b;->s:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 230
    :cond_4
    iget-object v0, p0, Lcom/umeng/message/common/b;->t:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v0, "gpu_vender"

    iget-object v1, p0, Lcom/umeng/message/common/b;->t:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 231
    :cond_5
    iget-object v0, p0, Lcom/umeng/message/common/b;->u:Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string v0, "gpu_vender"

    iget-object v1, p0, Lcom/umeng/message/common/b;->u:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 232
    :cond_6
    return-void
.end method

.method private n(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lcom/umeng/message/common/b;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "device_model"

    iget-object v1, p0, Lcom/umeng/message/common/b;->o:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/umeng/message/common/b;->p:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "os"

    iget-object v1, p0, Lcom/umeng/message/common/b;->p:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/umeng/message/common/b;->q:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "os_version"

    iget-object v1, p0, Lcom/umeng/message/common/b;->q:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 239
    :cond_2
    return-void
.end method

.method private o(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Lcom/umeng/message/common/b;->v:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "app_version"

    iget-object v1, p0, Lcom/umeng/message/common/b;->v:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/umeng/message/common/b;->w:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "version_code"

    iget-object v1, p0, Lcom/umeng/message/common/b;->w:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/umeng/message/common/b;->x:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "package_name"

    iget-object v1, p0, Lcom/umeng/message/common/b;->x:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 245
    :cond_2
    return-void
.end method

.method private p(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 249
    iget-object v0, p0, Lcom/umeng/message/common/b;->v:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "app_version"

    iget-object v1, p0, Lcom/umeng/message/common/b;->v:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/umeng/message/common/b;->w:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "version_code"

    iget-object v1, p0, Lcom/umeng/message/common/b;->w:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 251
    :cond_1
    return-void
.end method

.method private q(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 254
    const-string v0, "sdk_type"

    iget-object v1, p0, Lcom/umeng/message/common/b;->y:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 255
    const-string v0, "sdk_version"

    iget-object v1, p0, Lcom/umeng/message/common/b;->z:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 256
    return-void
.end method

.method private r(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 259
    const-string v0, "timezone"

    iget v1, p0, Lcom/umeng/message/common/b;->A:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 260
    iget-object v0, p0, Lcom/umeng/message/common/b;->B:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "country"

    iget-object v1, p0, Lcom/umeng/message/common/b;->B:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/umeng/message/common/b;->C:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "language"

    iget-object v1, p0, Lcom/umeng/message/common/b;->C:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 262
    :cond_1
    return-void
.end method

.method private s(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 265
    iget-object v0, p0, Lcom/umeng/message/common/b;->D:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "access"

    iget-object v1, p0, Lcom/umeng/message/common/b;->D:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/umeng/message/common/b;->E:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "access_subtype"

    iget-object v1, p0, Lcom/umeng/message/common/b;->E:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/umeng/message/common/b;->F:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "carrier"

    iget-object v1, p0, Lcom/umeng/message/common/b;->F:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 268
    :cond_2
    return-void
.end method

.method private t(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 271
    iget-object v0, p0, Lcom/umeng/message/common/b;->G:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "wrapper_type"

    iget-object v1, p0, Lcom/umeng/message/common/b;->G:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/umeng/message/common/b;->H:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "wrapper_version"

    iget-object v1, p0, Lcom/umeng/message/common/b;->H:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 273
    :cond_1
    return-void
.end method


# virtual methods
.method public varargs a(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 309
    if-eqz p2, :cond_0

    array-length v0, p2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 310
    aget-object v0, p2, v3

    iput-object v0, p0, Lcom/umeng/message/common/b;->d:Ljava/lang/String;

    .line 311
    const/4 v0, 0x1

    aget-object v0, p2, v0

    iput-object v0, p0, Lcom/umeng/message/common/b;->e:Ljava/lang/String;

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/umeng/message/common/b;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/PushAgent;->getMessageAppkey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/common/b;->d:Ljava/lang/String;

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/umeng/message/common/b;->e:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/PushAgent;->getMessageChannel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/common/b;->e:Ljava/lang/String;

    .line 317
    :cond_2
    invoke-static {p1}, Lcom/umeng/message/common/UmengMessageDeviceConfig;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/common/b;->f:Ljava/lang/String;

    .line 318
    invoke-static {p1}, Lcom/umeng/message/common/UmengMessageDeviceConfig;->getDeviceIdMD5(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/common/b;->g:Ljava/lang/String;

    .line 319
    invoke-static {p1}, Lcom/umeng/message/common/UmengMessageDeviceConfig;->getMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/common/b;->h:Ljava/lang/String;

    .line 320
    invoke-static {p1}, Lcom/umeng/message/common/UmengMessageDeviceConfig;->getDIN(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/common/b;->j:Ljava/lang/String;

    .line 321
    invoke-static {p1}, Lcom/umeng/message/common/UmengMessageDeviceConfig;->getUmid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/common/b;->i:Ljava/lang/String;

    .line 322
    invoke-static {p1}, Lcom/umeng/message/common/UmengMessageDeviceConfig;->isNotificationEnabled(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/common/b;->k:Ljava/lang/String;

    .line 323
    const-string v0, "false"

    iget-object v1, p0, Lcom/umeng/message/common/b;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 324
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "P_10006"

    const-string v2, "\\|"

    invoke-interface {v0, v1, v3, v2}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 326
    :cond_3
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 165
    if-nez p1, :cond_0

    .line 174
    :goto_0
    return-void

    .line 167
    :cond_0
    invoke-direct {p0, p1}, Lcom/umeng/message/common/b;->d(Lorg/json/JSONObject;)V

    .line 168
    invoke-direct {p0, p1}, Lcom/umeng/message/common/b;->e(Lorg/json/JSONObject;)V

    .line 169
    invoke-direct {p0, p1}, Lcom/umeng/message/common/b;->f(Lorg/json/JSONObject;)V

    .line 170
    invoke-direct {p0, p1}, Lcom/umeng/message/common/b;->g(Lorg/json/JSONObject;)V

    .line 171
    invoke-direct {p0, p1}, Lcom/umeng/message/common/b;->h(Lorg/json/JSONObject;)V

    .line 172
    invoke-direct {p0, p1}, Lcom/umeng/message/common/b;->i(Lorg/json/JSONObject;)V

    .line 173
    invoke-direct {p0, p1}, Lcom/umeng/message/common/b;->j(Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public a()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 295
    iget-object v2, p0, Lcom/umeng/message/common/b;->d:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 296
    sget-object v2, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v3, Lcom/umeng/message/common/b;->c:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/String;

    const-string v4, "missing appkey"

    aput-object v4, v1, v0

    invoke-interface {v2, v3, v0, v1}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 305
    :goto_0
    return v0

    .line 300
    :cond_0
    iget-object v2, p0, Lcom/umeng/message/common/b;->f:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/umeng/message/common/b;->g:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 301
    :cond_1
    sget-object v2, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v3, Lcom/umeng/message/common/b;->c:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/String;

    const-string v4, "missing device id"

    aput-object v4, v1, v0

    invoke-interface {v2, v3, v0, v1}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 305
    goto :goto_0
.end method

.method public varargs b(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 364
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/common/b;->a(Landroid/content/Context;[Ljava/lang/String;)V

    .line 365
    invoke-direct {p0, p1}, Lcom/umeng/message/common/b;->a(Landroid/content/Context;)V

    .line 366
    invoke-direct {p0, p1}, Lcom/umeng/message/common/b;->b(Landroid/content/Context;)V

    .line 367
    invoke-direct {p0, p1}, Lcom/umeng/message/common/b;->c(Landroid/content/Context;)V

    .line 368
    invoke-direct {p0, p1}, Lcom/umeng/message/common/b;->d(Landroid/content/Context;)V

    .line 369
    invoke-direct {p0, p1}, Lcom/umeng/message/common/b;->e(Landroid/content/Context;)V

    .line 370
    return-void
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 276
    invoke-direct {p0, p1}, Lcom/umeng/message/common/b;->k(Lorg/json/JSONObject;)V

    .line 277
    invoke-direct {p0, p1}, Lcom/umeng/message/common/b;->m(Lorg/json/JSONObject;)V

    .line 278
    invoke-direct {p0, p1}, Lcom/umeng/message/common/b;->o(Lorg/json/JSONObject;)V

    .line 279
    invoke-direct {p0, p1}, Lcom/umeng/message/common/b;->q(Lorg/json/JSONObject;)V

    .line 280
    invoke-direct {p0, p1}, Lcom/umeng/message/common/b;->r(Lorg/json/JSONObject;)V

    .line 281
    invoke-direct {p0, p1}, Lcom/umeng/message/common/b;->s(Lorg/json/JSONObject;)V

    .line 282
    invoke-direct {p0, p1}, Lcom/umeng/message/common/b;->t(Lorg/json/JSONObject;)V

    .line 283
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/umeng/message/common/b;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/message/common/b;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs c(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 374
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/common/b;->a(Landroid/content/Context;[Ljava/lang/String;)V

    .line 375
    invoke-direct {p0, p1}, Lcom/umeng/message/common/b;->a(Landroid/content/Context;)V

    .line 376
    invoke-direct {p0, p1}, Lcom/umeng/message/common/b;->b(Landroid/content/Context;)V

    .line 377
    invoke-direct {p0, p1}, Lcom/umeng/message/common/b;->c(Landroid/content/Context;)V

    .line 378
    invoke-direct {p0, p1}, Lcom/umeng/message/common/b;->e(Landroid/content/Context;)V

    .line 379
    return-void
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 287
    invoke-direct {p0, p1}, Lcom/umeng/message/common/b;->l(Lorg/json/JSONObject;)V

    .line 288
    invoke-direct {p0, p1}, Lcom/umeng/message/common/b;->n(Lorg/json/JSONObject;)V

    .line 289
    invoke-direct {p0, p1}, Lcom/umeng/message/common/b;->p(Lorg/json/JSONObject;)V

    .line 290
    invoke-direct {p0, p1}, Lcom/umeng/message/common/b;->q(Lorg/json/JSONObject;)V

    .line 291
    invoke-direct {p0, p1}, Lcom/umeng/message/common/b;->s(Lorg/json/JSONObject;)V

    .line 292
    return-void
.end method
