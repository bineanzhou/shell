.class public Lcom/taobao/accs/data/Message;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/accs/data/Message$a;,
        Lcom/taobao/accs/data/Message$ReqType;,
        Lcom/taobao/accs/data/Message$b;
    }
.end annotation


# static fields
.field public static final EXT_HEADER_VALUE_MAX_LEN:I = 0x3ff

.field public static final FLAG_ACK_TYPE:I = 0x20

.field public static final FLAG_BIZ_RET:I = 0x40

.field public static final FLAG_DATA_TYPE:I = 0x8000

.field public static final FLAG_ERR:I = 0x1000

.field public static final FLAG_REQ_BIT1:I = 0x4000

.field public static final FLAG_REQ_BIT2:I = 0x2000

.field public static final FLAG_RET:I = 0x800

.field public static final KEY_BINDAPP:Ljava/lang/String; = "ctrl_bindapp"

.field public static final KEY_BINDSERVICE:Ljava/lang/String; = "ctrl_bindservice"

.field public static final KEY_BINDUSER:Ljava/lang/String; = "ctrl_binduser"

.field public static final KEY_UNBINDAPP:Ljava/lang/String; = "ctrl_unbindapp"

.field public static final KEY_UNBINDSERVICE:Ljava/lang/String; = "ctrl_unbindservice"

.field public static final KEY_UNBINDUSER:Ljava/lang/String; = "ctrl_unbinduser"

.field public static final MAX_RETRY_TIMES:I = 0x3

.field public static a:I

.field static b:J


# instance fields
.field A:Ljava/lang/String;

.field B:Ljava/lang/Integer;

.field C:Ljava/lang/String;

.field D:Ljava/lang/String;

.field public E:Ljava/lang/String;

.field public F:Ljava/lang/String;

.field G:Ljava/lang/String;

.field H:Ljava/lang/String;

.field I:Ljava/lang/String;

.field J:Ljava/lang/String;

.field K:Ljava/lang/String;

.field L:[B

.field public M:Ljava/lang/String;

.field N:I

.field public O:J

.field public P:I

.field public Q:I

.field public R:J

.field S:J

.field public T:Ljava/lang/String;

.field transient U:Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

.field V:Ljava/lang/String;

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Ljava/net/URL;

.field g:B

.field h:B

.field i:S

.field j:S

.field k:S

.field l:B

.field m:B

.field n:Ljava/lang/String;

.field o:Ljava/lang/String;

.field p:I

.field public q:Ljava/lang/String;

.field r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field s:Ljava/lang/String;

.field public t:Ljava/lang/Integer;

.field u:Ljava/lang/Integer;

.field v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field x:Ljava/lang/Integer;

.field y:Ljava/lang/String;

.field z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 133
    const/4 v0, 0x5

    sput v0, Lcom/taobao/accs/data/Message;->a:I

    .line 142
    const-wide/16 v0, 0x1

    sput-wide v0, Lcom/taobao/accs/data/Message;->b:J

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-boolean v3, p0, Lcom/taobao/accs/data/Message;->c:Z

    .line 146
    iput-boolean v3, p0, Lcom/taobao/accs/data/Message;->d:Z

    .line 148
    iput-boolean v3, p0, Lcom/taobao/accs/data/Message;->e:Z

    .line 152
    iput-byte v3, p0, Lcom/taobao/accs/data/Message;->g:B

    .line 154
    iput-byte v3, p0, Lcom/taobao/accs/data/Message;->h:B

    .line 172
    const/4 v0, -0x1

    iput v0, p0, Lcom/taobao/accs/data/Message;->p:I

    .line 179
    iput-object v2, p0, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    .line 181
    iput-object v2, p0, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    .line 183
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/data/Message;->u:Ljava/lang/Integer;

    .line 185
    iput-object v2, p0, Lcom/taobao/accs/data/Message;->v:Ljava/lang/String;

    .line 187
    iput-object v2, p0, Lcom/taobao/accs/data/Message;->w:Ljava/lang/String;

    .line 189
    iput-object v2, p0, Lcom/taobao/accs/data/Message;->x:Ljava/lang/Integer;

    .line 191
    iput-object v2, p0, Lcom/taobao/accs/data/Message;->y:Ljava/lang/String;

    .line 193
    iput-object v2, p0, Lcom/taobao/accs/data/Message;->z:Ljava/lang/String;

    .line 195
    iput-object v2, p0, Lcom/taobao/accs/data/Message;->A:Ljava/lang/String;

    .line 197
    iput-object v2, p0, Lcom/taobao/accs/data/Message;->B:Ljava/lang/Integer;

    .line 199
    iput-object v2, p0, Lcom/taobao/accs/data/Message;->C:Ljava/lang/String;

    .line 201
    iput-object v2, p0, Lcom/taobao/accs/data/Message;->D:Ljava/lang/String;

    .line 203
    iput-object v2, p0, Lcom/taobao/accs/data/Message;->E:Ljava/lang/String;

    .line 205
    iput-object v2, p0, Lcom/taobao/accs/data/Message;->F:Ljava/lang/String;

    .line 207
    iput-object v2, p0, Lcom/taobao/accs/data/Message;->G:Ljava/lang/String;

    .line 209
    iput-object v2, p0, Lcom/taobao/accs/data/Message;->H:Ljava/lang/String;

    .line 211
    iput-object v2, p0, Lcom/taobao/accs/data/Message;->I:Ljava/lang/String;

    .line 213
    iput-object v2, p0, Lcom/taobao/accs/data/Message;->J:Ljava/lang/String;

    .line 215
    iput-object v2, p0, Lcom/taobao/accs/data/Message;->K:Ljava/lang/String;

    .line 223
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/taobao/accs/data/Message;->O:J

    .line 225
    iput v3, p0, Lcom/taobao/accs/data/Message;->P:I

    .line 227
    const v0, 0x9c40

    iput v0, p0, Lcom/taobao/accs/data/Message;->Q:I

    .line 231
    iput-object v2, p0, Lcom/taobao/accs/data/Message;->T:Ljava/lang/String;

    .line 237
    iput-object v2, p0, Lcom/taobao/accs/data/Message;->V:Ljava/lang/String;

    .line 241
    const-class v1, Lcom/taobao/accs/data/Message;

    monitor-enter v1

    .line 242
    :try_start_0
    sget-wide v2, Lcom/taobao/accs/data/Message;->b:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    sput-wide v4, Lcom/taobao/accs/data/Message;->b:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/data/Message;->q:Ljava/lang/String;

    .line 243
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/data/Message;->R:J

    .line 245
    return-void

    .line 243
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 628
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 662
    :goto_0
    return-object v0

    .line 631
    :cond_0
    new-instance v2, Lcom/taobao/accs/data/Message;

    invoke-direct {v2}, Lcom/taobao/accs/data/Message;-><init>()V

    .line 633
    const/4 v0, 0x1

    :try_start_0
    iput v0, v2, Lcom/taobao/accs/data/Message;->N:I

    .line 634
    const/4 v0, 0x1

    sget-object v3, Lcom/taobao/accs/data/Message$ReqType;->DATA:Lcom/taobao/accs/data/Message$ReqType;

    const/4 v4, 0x1

    invoke-direct {v2, v0, v3, v4}, Lcom/taobao/accs/data/Message;->a(ILcom/taobao/accs/data/Message$ReqType;I)V

    .line 635
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lcom/taobao/accs/data/Message;->x:Ljava/lang/Integer;

    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/taobao/accs/data/Message;->y:Ljava/lang/String;

    .line 637
    iput-object p4, v2, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    .line 638
    const-string v0, "3|dm|"

    iput-object v0, v2, Lcom/taobao/accs/data/Message;->n:Ljava/lang/String;

    .line 639
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    .line 640
    iput-object p2, v2, Lcom/taobao/accs/data/Message;->v:Ljava/lang/String;

    .line 641
    invoke-static {p0}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p2, p3, v0, p1}, Lcom/taobao/accs/utl/UtilityImpl;->getAppsign(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/taobao/accs/data/Message;->w:Ljava/lang/String;

    .line 642
    const/16 v0, 0xdd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lcom/taobao/accs/data/Message;->B:Ljava/lang/Integer;

    .line 643
    iput-object p6, v2, Lcom/taobao/accs/data/Message;->A:Ljava/lang/String;

    .line 644
    iput-object p4, v2, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    .line 645
    iput-object p5, v2, Lcom/taobao/accs/data/Message;->C:Ljava/lang/String;

    .line 646
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, v2, Lcom/taobao/accs/data/Message;->G:Ljava/lang/String;

    .line 647
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v0, v2, Lcom/taobao/accs/data/Message;->H:Ljava/lang/String;

    .line 648
    const-string v0, "ctrl_bindapp"

    iput-object v0, v2, Lcom/taobao/accs/data/Message;->M:Ljava/lang/String;

    .line 649
    iput-object p1, v2, Lcom/taobao/accs/data/Message;->V:Ljava/lang/String;

    .line 650
    new-instance v0, Lcom/taobao/accs/utl/e$a;

    invoke-direct {v0}, Lcom/taobao/accs/utl/e$a;-><init>()V

    const-string v3, "notifyEnable"

    invoke-static {p0}, Lcom/taobao/accs/utl/UtilityImpl;->isNotificationEnabled(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/taobao/accs/utl/e$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/e$a;

    move-result-object v0

    const-string v3, "romInfo"

    .line 2012
    new-instance v4, Lcom/taobao/accs/utl/d;

    invoke-direct {v4}, Lcom/taobao/accs/utl/d;-><init>()V

    .line 650
    invoke-virtual {v4}, Lcom/taobao/accs/utl/j;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/taobao/accs/utl/e$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/accs/utl/e$a;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/taobao/accs/data/Message;->z:Ljava/lang/String;

    .line 654
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 655
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    :goto_1
    iput-object v3, v2, Lcom/taobao/accs/data/Message;->I:Ljava/lang/String;

    .line 656
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    :cond_1
    iput-object v1, v2, Lcom/taobao/accs/data/Message;->J:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move-object v0, v2

    .line 662
    goto/16 :goto_0

    :cond_2
    move-object v3, v1

    .line 655
    goto :goto_1

    .line 658
    :catch_0
    move-exception v0

    .line 659
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static a(Lcom/taobao/accs/net/b;Landroid/content/Context;Landroid/content/Intent;)Lcom/taobao/accs/data/Message;
    .locals 8

    .prologue
    .line 593
    const/4 v7, 0x0

    .line 595
    :try_start_0
    const-string v0, "packageName"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 597
    const-string v0, "userInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 599
    const-string v0, "appKey"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 601
    const-string v0, "ttid"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 602
    const-string v0, "sid"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 603
    const-string v0, "anti_brush_cookie"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 604
    const-string v0, "appVersion"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 605
    const-string v0, "app_sercet"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 606
    iget-object v1, p0, Lcom/taobao/accs/net/b;->m:Ljava/lang/String;

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/taobao/accs/data/Message;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 619
    :try_start_1
    invoke-static {p0, v0}, Lcom/taobao/accs/data/Message;->a(Lcom/taobao/accs/net/b;Lcom/taobao/accs/data/Message;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 624
    :goto_0
    return-object v0

    .line 620
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v7

    .line 621
    :goto_1
    const-string v2, "Msg_"

    const-string v3, "buildBindApp"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 622
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 620
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static a(Lcom/taobao/accs/net/b;Landroid/content/Context;Ljava/lang/String;Lcom/taobao/accs/ACCSManager$AccsRequest;)Lcom/taobao/accs/data/Message;
    .locals 1

    .prologue
    .line 940
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/taobao/accs/data/Message;->a(Lcom/taobao/accs/net/b;Landroid/content/Context;Ljava/lang/String;Lcom/taobao/accs/ACCSManager$AccsRequest;Z)Lcom/taobao/accs/data/Message;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/taobao/accs/net/b;Landroid/content/Context;Ljava/lang/String;Lcom/taobao/accs/ACCSManager$AccsRequest;Z)Lcom/taobao/accs/data/Message;
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 945
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 946
    const/4 v0, 0x0

    .line 984
    :goto_0
    return-object v0

    .line 948
    :cond_0
    new-instance v0, Lcom/taobao/accs/data/Message;

    invoke-direct {v0}, Lcom/taobao/accs/data/Message;-><init>()V

    .line 949
    iput v2, v0, Lcom/taobao/accs/data/Message;->N:I

    .line 950
    sget-object v1, Lcom/taobao/accs/data/Message$ReqType;->DATA:Lcom/taobao/accs/data/Message$ReqType;

    invoke-direct {v0, v2, v1, v2}, Lcom/taobao/accs/data/Message;->a(ILcom/taobao/accs/data/Message$ReqType;I)V

    .line 951
    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    .line 952
    iput-object p2, v0, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    .line 954
    iget-object v1, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->F:Ljava/lang/String;

    .line 955
    iget-object v1, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->userId:Ljava/lang/String;

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->E:Ljava/lang/String;

    .line 956
    iget-object v1, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->data:[B

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->L:[B

    .line 957
    iget-object v1, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->targetServiceName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    .line 958
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "2|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->target:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string v1, ""

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->n:Ljava/lang/String;

    .line 960
    iget-object v1, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->M:Ljava/lang/String;

    .line 961
    iget-object v1, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->businessId:Ljava/lang/String;

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->T:Ljava/lang/String;

    .line 962
    iget v1, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->timeout:I

    if-lez v1, :cond_1

    .line 963
    iget v1, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->timeout:I

    iput v1, v0, Lcom/taobao/accs/data/Message;->Q:I

    .line 966
    :cond_1
    if-eqz p4, :cond_4

    .line 967
    invoke-static {p0, v0, p3}, Lcom/taobao/accs/data/Message;->a(Lcom/taobao/accs/net/b;Lcom/taobao/accs/data/Message;Lcom/taobao/accs/ACCSManager$AccsRequest;)V

    .line 972
    :goto_3
    invoke-static {p1}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/accs/net/b;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/taobao/accs/client/GlobalClientInfo;->getUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 973
    invoke-static {p1}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object v1

    iget-object v3, p0, Lcom/taobao/accs/net/b;->m:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/taobao/accs/client/GlobalClientInfo;->getSid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 974
    sget-object v3, Lcom/taobao/accs/client/GlobalClientInfo;->c:Ljava/lang/String;

    .line 975
    iget-object v4, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->businessId:Ljava/lang/String;

    iget-object v5, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->tag:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/taobao/accs/data/Message;->a(Lcom/taobao/accs/data/Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    new-instance v1, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    invoke-direct {v1}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;-><init>()V

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->U:Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    .line 978
    iget-object v1, v0, Lcom/taobao/accs/data/Message;->U:Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    iget-object v2, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setDataId(Ljava/lang/String;)V

    .line 979
    iget-object v1, v0, Lcom/taobao/accs/data/Message;->U:Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    iget-object v2, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setServiceId(Ljava/lang/String;)V

    .line 980
    iget-object v1, v0, Lcom/taobao/accs/data/Message;->U:Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    iget-object v2, v0, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setHost(Ljava/lang/String;)V

    .line 981
    iget-object v1, p0, Lcom/taobao/accs/net/b;->m:Ljava/lang/String;

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->V:Ljava/lang/String;

    goto/16 :goto_0

    .line 957
    :cond_2
    iget-object v1, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->targetServiceName:Ljava/lang/String;

    goto :goto_1

    .line 958
    :cond_3
    iget-object v1, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->target:Ljava/lang/String;

    goto :goto_2

    .line 969
    :cond_4
    iget-object v1, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->host:Ljava/net/URL;

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;

    goto :goto_3
.end method

.method public static a(Lcom/taobao/accs/net/b;Landroid/content/Intent;)Lcom/taobao/accs/data/Message;
    .locals 6

    .prologue
    .line 716
    const/4 v1, 0x0

    .line 718
    :try_start_0
    const-string v0, "packageName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 720
    const-string v2, "serviceId"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 722
    const-string v3, "userInfo"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 724
    const-string v3, "appKey"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 726
    const-string v3, "sid"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 727
    const-string v3, "anti_brush_cookie"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 728
    invoke-static {v0, v2}, Lcom/taobao/accs/data/Message;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 730
    :try_start_1
    iget-object v1, p0, Lcom/taobao/accs/net/b;->m:Ljava/lang/String;

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->V:Ljava/lang/String;

    .line 733
    invoke-static {p0, v0}, Lcom/taobao/accs/data/Message;->a(Lcom/taobao/accs/net/b;Lcom/taobao/accs/data/Message;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 738
    :goto_0
    return-object v0

    .line 734
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 735
    :goto_1
    const-string v2, "Msg_"

    const-string v3, "buildBindService"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 736
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 734
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static a(Lcom/taobao/accs/net/b;Ljava/lang/String;)Lcom/taobao/accs/data/Message;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 688
    .line 690
    :try_start_0
    const-string v0, "Msg_"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buildUnbindApp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v3}, Lcom/taobao/accs/utl/UtilityImpl;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 691
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 711
    :goto_0
    return-object v0

    .line 694
    :cond_0
    new-instance v0, Lcom/taobao/accs/data/Message;

    invoke-direct {v0}, Lcom/taobao/accs/data/Message;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 695
    const/4 v1, 0x1

    :try_start_1
    iput v1, v0, Lcom/taobao/accs/data/Message;->N:I

    .line 696
    const/4 v1, 0x1

    sget-object v2, Lcom/taobao/accs/data/Message$ReqType;->DATA:Lcom/taobao/accs/data/Message$ReqType;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/taobao/accs/data/Message;->a(ILcom/taobao/accs/data/Message$ReqType;I)V

    .line 697
    iput-object p1, v0, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    .line 698
    const-string v1, "3|dm|"

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->n:Ljava/lang/String;

    .line 699
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    .line 700
    iput-object p1, v0, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    .line 701
    const/16 v1, 0xdd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->B:Ljava/lang/Integer;

    .line 702
    const-string v1, "ctrl_unbindapp"

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->M:Ljava/lang/String;

    .line 705
    invoke-static {p0, v0}, Lcom/taobao/accs/data/Message;->a(Lcom/taobao/accs/net/b;Lcom/taobao/accs/data/Message;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 707
    :catch_0
    move-exception v1

    .line 708
    :goto_1
    const-string v2, "Msg_"

    const-string v3, "buildUnbindApp"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 709
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 707
    :catch_1
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_1
.end method

.method public static a(Lcom/taobao/accs/net/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZSLjava/lang/String;Ljava/util/Map;)Lcom/taobao/accs/data/Message;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/accs/net/b;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZS",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/taobao/accs/data/Message;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 1104
    new-instance v1, Lcom/taobao/accs/data/Message;

    invoke-direct {v1}, Lcom/taobao/accs/data/Message;-><init>()V

    .line 1105
    iput v0, v1, Lcom/taobao/accs/data/Message;->N:I

    .line 1107
    invoke-direct {v1, p5, p4}, Lcom/taobao/accs/data/Message;->a(SZ)V

    .line 1108
    iput-object p1, v1, Lcom/taobao/accs/data/Message;->o:Ljava/lang/String;

    .line 1109
    iput-object p2, v1, Lcom/taobao/accs/data/Message;->n:Ljava/lang/String;

    .line 1110
    iput-object p3, v1, Lcom/taobao/accs/data/Message;->q:Ljava/lang/String;

    .line 1111
    iput-boolean v0, v1, Lcom/taobao/accs/data/Message;->c:Z

    .line 1112
    iput-object p7, v1, Lcom/taobao/accs/data/Message;->r:Ljava/util/Map;

    .line 1114
    :try_start_0
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1115
    new-instance v0, Ljava/net/URL;

    invoke-static {}, Lcom/taobao/accs/client/GlobalClientInfo;->getContext()Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/taobao/accs/net/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;

    .line 1120
    :goto_0
    iget-object v0, p0, Lcom/taobao/accs/net/b;->m:Ljava/lang/String;

    iput-object v0, v1, Lcom/taobao/accs/data/Message;->V:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1124
    iget-object v0, v1, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;

    if-nez v0, :cond_0

    .line 1126
    :try_start_1
    new-instance v0, Ljava/net/URL;

    invoke-static {}, Lcom/taobao/accs/client/GlobalClientInfo;->getContext()Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/taobao/accs/net/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1133
    :cond_0
    :goto_1
    return-object v1

    .line 1118
    :cond_1
    :try_start_2
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1121
    :catch_0
    move-exception v0

    .line 1122
    :try_start_3
    const-string v2, "Msg_"

    const-string v3, "buildPushAck"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v0, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1124
    iget-object v0, v1, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;

    if-nez v0, :cond_0

    .line 1126
    :try_start_4
    new-instance v0, Ljava/net/URL;

    invoke-static {}, Lcom/taobao/accs/client/GlobalClientInfo;->getContext()Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/taobao/accs/net/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 1128
    :catch_1
    move-exception v0

    .line 1129
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_1

    .line 1128
    :catch_2
    move-exception v0

    .line 1129
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_1

    .line 1124
    :catchall_0
    move-exception v0

    iget-object v2, v1, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;

    if-nez v2, :cond_2

    .line 1126
    :try_start_5
    new-instance v2, Ljava/net/URL;

    invoke-static {}, Lcom/taobao/accs/client/GlobalClientInfo;->getContext()Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/taobao/accs/net/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1130
    :cond_2
    :goto_2
    throw v0

    .line 1128
    :catch_3
    move-exception v1

    .line 1129
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;)Lcom/taobao/accs/data/Message;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 878
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 879
    const/4 v0, 0x0

    .line 891
    :goto_0
    return-object v0

    .line 881
    :cond_0
    new-instance v0, Lcom/taobao/accs/data/Message;

    invoke-direct {v0}, Lcom/taobao/accs/data/Message;-><init>()V

    .line 882
    iput v2, v0, Lcom/taobao/accs/data/Message;->N:I

    .line 883
    sget-object v1, Lcom/taobao/accs/data/Message$ReqType;->DATA:Lcom/taobao/accs/data/Message$ReqType;

    invoke-direct {v0, v2, v1, v2}, Lcom/taobao/accs/data/Message;->a(ILcom/taobao/accs/data/Message$ReqType;I)V

    .line 884
    iput-object p0, v0, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    .line 886
    const-string v1, "3|dm|"

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->n:Ljava/lang/String;

    .line 887
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    .line 888
    const/16 v1, 0xdd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->B:Ljava/lang/Integer;

    .line 889
    const-string v1, "ctrl_unbinduser"

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->M:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;I)Lcom/taobao/accs/data/Message;
    .locals 4

    .prologue
    .line 1137
    new-instance v0, Lcom/taobao/accs/data/Message;

    invoke-direct {v0}, Lcom/taobao/accs/data/Message;-><init>()V

    .line 1138
    const/4 v1, 0x1

    sget-object v2, Lcom/taobao/accs/data/Message$ReqType;->ACK:Lcom/taobao/accs/data/Message$ReqType;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/taobao/accs/data/Message;->a(ILcom/taobao/accs/data/Message$ReqType;I)V

    .line 1139
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    .line 1140
    iput-object p0, v0, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    .line 1141
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 742
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 743
    :cond_0
    const/4 v0, 0x0

    .line 758
    :goto_0
    return-object v0

    .line 745
    :cond_1
    new-instance v0, Lcom/taobao/accs/data/Message;

    invoke-direct {v0}, Lcom/taobao/accs/data/Message;-><init>()V

    .line 746
    iput v2, v0, Lcom/taobao/accs/data/Message;->N:I

    .line 747
    sget-object v1, Lcom/taobao/accs/data/Message$ReqType;->DATA:Lcom/taobao/accs/data/Message$ReqType;

    invoke-direct {v0, v2, v1, v2}, Lcom/taobao/accs/data/Message;->a(ILcom/taobao/accs/data/Message$ReqType;I)V

    .line 748
    iput-object p0, v0, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    .line 749
    iput-object p1, v0, Lcom/taobao/accs/data/Message;->F:Ljava/lang/String;

    .line 750
    const-string v1, "3|dm|"

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->n:Ljava/lang/String;

    .line 751
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    .line 752
    iput-object p0, v0, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    .line 754
    iput-object p1, v0, Lcom/taobao/accs/data/Message;->F:Ljava/lang/String;

    .line 755
    const/16 v1, 0xdd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->B:Ljava/lang/Integer;

    .line 756
    const-string v1, "ctrl_bindservice"

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->M:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;)Lcom/taobao/accs/data/Message;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/taobao/accs/data/Message;"
        }
    .end annotation

    .prologue
    .line 896
    if-nez p1, :cond_0

    .line 897
    const/4 v0, 0x0

    .line 920
    :goto_0
    return-object v0

    .line 899
    :cond_0
    new-instance v1, Lcom/taobao/accs/data/Message;

    invoke-direct {v1}, Lcom/taobao/accs/data/Message;-><init>()V

    .line 901
    const/4 v0, 0x1

    :try_start_0
    sget-object v2, Lcom/taobao/accs/data/Message$ReqType;->DATA:Lcom/taobao/accs/data/Message$ReqType;

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3}, Lcom/taobao/accs/data/Message;->a(ILcom/taobao/accs/data/Message$ReqType;I)V

    .line 902
    const/4 v0, 0x1

    iput v0, v1, Lcom/taobao/accs/data/Message;->N:I

    .line 903
    iput-object p0, v1, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    .line 904
    const-string v0, "4|sal|el"

    iput-object v0, v1, Lcom/taobao/accs/data/Message;->n:Ljava/lang/String;

    .line 905
    const/16 v0, 0x69

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    .line 907
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 908
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 909
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 910
    const-string v5, "pkg"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 911
    const-string v5, "sdkv"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 912
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 917
    :catch_0
    move-exception v0

    .line 918
    const-string v2, "Msg_"

    const-string v3, "buildElection"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v0, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_2
    move-object v0, v1

    .line 920
    goto :goto_0

    .line 914
    :cond_1
    :try_start_1
    new-instance v0, Lcom/taobao/accs/utl/e$a;

    invoke-direct {v0}, Lcom/taobao/accs/utl/e$a;-><init>()V

    const-string v3, "sdkv"

    const/16 v4, 0xdd

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/taobao/accs/utl/e$a;->a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/taobao/accs/utl/e$a;

    move-result-object v0

    const-string v3, "packs"

    invoke-virtual {v0, v3, v2}, Lcom/taobao/accs/utl/e$a;->a(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/taobao/accs/utl/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/accs/utl/e$a;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "utf-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, v1, Lcom/taobao/accs/data/Message;->L:[B
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public static a(ZI)Lcom/taobao/accs/data/Message;
    .locals 4

    .prologue
    .line 574
    new-instance v0, Lcom/taobao/accs/data/Message;

    invoke-direct {v0}, Lcom/taobao/accs/data/Message;-><init>()V

    .line 575
    const/4 v1, 0x2

    iput v1, v0, Lcom/taobao/accs/data/Message;->p:I

    .line 576
    const/16 v1, 0xc9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    .line 577
    iput-boolean p0, v0, Lcom/taobao/accs/data/Message;->d:Z

    .line 578
    int-to-long v2, p1

    iput-wide v2, v0, Lcom/taobao/accs/data/Message;->O:J

    .line 579
    return-object v0
.end method

.method private a(ILcom/taobao/accs/data/Message$ReqType;I)V
    .locals 2

    .prologue
    .line 1170
    iput p1, p0, Lcom/taobao/accs/data/Message;->p:I

    .line 1171
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 1172
    and-int/lit8 v0, p1, 0x1

    shl-int/lit8 v0, v0, 0x4

    invoke-virtual {p2}, Lcom/taobao/accs/data/Message$ReqType;->ordinal()I

    move-result v1

    shl-int/lit8 v1, v1, 0x2

    or-int/2addr v0, v1

    or-int/2addr v0, p3

    shl-int/lit8 v0, v0, 0xb

    int-to-short v0, v0

    iput-short v0, p0, Lcom/taobao/accs/data/Message;->k:S

    .line 1174
    :cond_0
    return-void
.end method

.method private static a(Lcom/taobao/accs/data/Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/16 v2, 0x3ff

    .line 1145
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_5

    .line 1150
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/accs/data/Message;->r:Ljava/util/Map;

    .line 1151
    if-eqz p4, :cond_1

    invoke-static {p4}, Lcom/taobao/accs/utl/UtilityImpl;->getByteLen(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v2, :cond_1

    .line 1152
    iget-object v0, p0, Lcom/taobao/accs/data/Message;->r:Ljava/util/Map;

    sget-object v1, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_BUSINESS:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    invoke-virtual {v1}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1154
    :cond_1
    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->getByteLen(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v2, :cond_2

    .line 1155
    iget-object v0, p0, Lcom/taobao/accs/data/Message;->r:Ljava/util/Map;

    sget-object v1, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_SID:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    invoke-virtual {v1}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1157
    :cond_2
    if-eqz p2, :cond_3

    invoke-static {p2}, Lcom/taobao/accs/utl/UtilityImpl;->getByteLen(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v2, :cond_3

    .line 1158
    iget-object v0, p0, Lcom/taobao/accs/data/Message;->r:Ljava/util/Map;

    sget-object v1, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_USERID:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    invoke-virtual {v1}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1160
    :cond_3
    if-eqz p5, :cond_4

    invoke-static {p5}, Lcom/taobao/accs/utl/UtilityImpl;->getByteLen(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v2, :cond_4

    .line 1161
    iget-object v0, p0, Lcom/taobao/accs/data/Message;->r:Ljava/util/Map;

    sget-object v1, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_TAG:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    invoke-virtual {v1}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1163
    :cond_4
    if-eqz p3, :cond_5

    invoke-static {p3}, Lcom/taobao/accs/utl/UtilityImpl;->getByteLen(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v2, :cond_5

    .line 1164
    iget-object v0, p0, Lcom/taobao/accs/data/Message;->r:Ljava/util/Map;

    sget-object v1, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_COOKIE:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    invoke-virtual {v1}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1168
    :cond_5
    return-void
.end method

.method private static a(Lcom/taobao/accs/net/b;Lcom/taobao/accs/data/Message;)V
    .locals 4

    .prologue
    .line 1096
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/taobao/accs/net/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1097
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p1, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1101
    :goto_0
    return-void

    .line 1098
    :catch_0
    move-exception v0

    .line 1099
    const-string v1, "Msg_"

    const-string v2, "setControlHost"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static a(Lcom/taobao/accs/net/b;Lcom/taobao/accs/data/Message;Lcom/taobao/accs/ACCSManager$AccsRequest;)V
    .locals 4

    .prologue
    .line 1062
    iget-object v0, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->host:Ljava/net/URL;

    if-nez v0, :cond_0

    .line 1064
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/taobao/accs/net/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p1, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1074
    :goto_0
    return-void

    .line 1066
    :catch_0
    move-exception v0

    .line 1067
    const-string v1, "Msg_"

    const-string v2, "setUnit"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 1068
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 1071
    :cond_0
    iget-object v0, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->host:Ljava/net/URL;

    iput-object v0, p1, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;

    goto :goto_0
.end method

.method private a(SZ)V
    .locals 1

    .prologue
    .line 1185
    const/4 v0, 0x1

    iput v0, p0, Lcom/taobao/accs/data/Message;->p:I

    .line 1187
    iput-short p1, p0, Lcom/taobao/accs/data/Message;->k:S

    .line 1188
    iget-short v0, p0, Lcom/taobao/accs/data/Message;->k:S

    and-int/lit16 v0, v0, -0x4001

    int-to-short v0, v0

    iput-short v0, p0, Lcom/taobao/accs/data/Message;->k:S

    .line 1189
    iget-short v0, p0, Lcom/taobao/accs/data/Message;->k:S

    or-int/lit16 v0, v0, 0x2000

    int-to-short v0, v0

    iput-short v0, p0, Lcom/taobao/accs/data/Message;->k:S

    .line 1190
    iget-short v0, p0, Lcom/taobao/accs/data/Message;->k:S

    and-int/lit16 v0, v0, -0x801

    int-to-short v0, v0

    iput-short v0, p0, Lcom/taobao/accs/data/Message;->k:S

    .line 1191
    iget-short v0, p0, Lcom/taobao/accs/data/Message;->k:S

    and-int/lit8 v0, v0, -0x41

    int-to-short v0, v0

    iput-short v0, p0, Lcom/taobao/accs/data/Message;->k:S

    .line 1194
    if-eqz p2, :cond_0

    .line 1195
    iget-short v0, p0, Lcom/taobao/accs/data/Message;->k:S

    or-int/lit8 v0, v0, 0x20

    int-to-short v0, v0

    iput-short v0, p0, Lcom/taobao/accs/data/Message;->k:S

    .line 1197
    :cond_0
    return-void
.end method

.method public static b(Lcom/taobao/accs/net/b;Landroid/content/Context;Landroid/content/Intent;)Lcom/taobao/accs/data/Message;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 666
    const/4 v1, 0x0

    .line 667
    const-string v0, "Msg_"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buildUnbindApp1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v3}, Lcom/taobao/accs/utl/UtilityImpl;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 669
    :try_start_0
    const-string v0, "packageName"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 671
    const-string v2, "userInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 673
    const-string v2, "sid"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 674
    const-string v2, "anti_brush_cookie"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 675
    invoke-static {p0, v0}, Lcom/taobao/accs/data/Message;->a(Lcom/taobao/accs/net/b;Ljava/lang/String;)Lcom/taobao/accs/data/Message;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 678
    :try_start_1
    invoke-static {p0, v0}, Lcom/taobao/accs/data/Message;->a(Lcom/taobao/accs/net/b;Lcom/taobao/accs/data/Message;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 684
    :goto_0
    return-object v0

    .line 680
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 681
    :goto_1
    const-string v2, "Msg_"

    const-string v3, "buildUnbindApp1"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 682
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 680
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static b(Lcom/taobao/accs/net/b;Landroid/content/Context;Ljava/lang/String;Lcom/taobao/accs/ACCSManager$AccsRequest;Z)Lcom/taobao/accs/data/Message;
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 989
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 990
    const/4 v0, 0x0

    .line 1030
    :goto_0
    return-object v0

    .line 992
    :cond_0
    new-instance v0, Lcom/taobao/accs/data/Message;

    invoke-direct {v0}, Lcom/taobao/accs/data/Message;-><init>()V

    .line 993
    iput v2, v0, Lcom/taobao/accs/data/Message;->N:I

    .line 994
    sget-object v1, Lcom/taobao/accs/data/Message$ReqType;->REQ:Lcom/taobao/accs/data/Message$ReqType;

    invoke-direct {v0, v2, v1, v2}, Lcom/taobao/accs/data/Message;->a(ILcom/taobao/accs/data/Message$ReqType;I)V

    .line 995
    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    .line 996
    iput-object p2, v0, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    .line 997
    iget-object v1, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->F:Ljava/lang/String;

    .line 998
    iget-object v1, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->userId:Ljava/lang/String;

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->E:Ljava/lang/String;

    .line 1000
    iget-object v1, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->data:[B

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->L:[B

    .line 1001
    iget-object v1, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->targetServiceName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    .line 1002
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "2|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->target:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string v1, ""

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->n:Ljava/lang/String;

    .line 1004
    iget-object v1, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->M:Ljava/lang/String;

    .line 1005
    iget-object v1, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->businessId:Ljava/lang/String;

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->T:Ljava/lang/String;

    .line 1006
    iget-object v1, p0, Lcom/taobao/accs/net/b;->m:Ljava/lang/String;

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->V:Ljava/lang/String;

    .line 1007
    iget v1, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->timeout:I

    if-lez v1, :cond_1

    .line 1008
    iget v1, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->timeout:I

    iput v1, v0, Lcom/taobao/accs/data/Message;->Q:I

    .line 1011
    :cond_1
    if-eqz p4, :cond_4

    .line 1012
    invoke-static {p0, v0, p3}, Lcom/taobao/accs/data/Message;->a(Lcom/taobao/accs/net/b;Lcom/taobao/accs/data/Message;Lcom/taobao/accs/ACCSManager$AccsRequest;)V

    .line 1017
    :goto_3
    invoke-static {p1}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/accs/net/b;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/taobao/accs/client/GlobalClientInfo;->getUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1018
    invoke-static {p1}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object v1

    iget-object v3, p0, Lcom/taobao/accs/net/b;->m:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/taobao/accs/client/GlobalClientInfo;->getSid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1020
    sget-object v3, Lcom/taobao/accs/client/GlobalClientInfo;->c:Ljava/lang/String;

    .line 1021
    iget-object v4, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->businessId:Ljava/lang/String;

    iget-object v5, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->tag:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/taobao/accs/data/Message;->a(Lcom/taobao/accs/data/Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    new-instance v1, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    invoke-direct {v1}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;-><init>()V

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->U:Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    .line 1024
    iget-object v1, v0, Lcom/taobao/accs/data/Message;->U:Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    iget-object v2, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setDataId(Ljava/lang/String;)V

    .line 1025
    iget-object v1, v0, Lcom/taobao/accs/data/Message;->U:Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    iget-object v2, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setServiceId(Ljava/lang/String;)V

    .line 1026
    iget-object v1, v0, Lcom/taobao/accs/data/Message;->U:Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    iget-object v2, v0, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setHost(Ljava/lang/String;)V

    .line 1027
    iget-object v1, p0, Lcom/taobao/accs/net/b;->m:Ljava/lang/String;

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->V:Ljava/lang/String;

    goto/16 :goto_0

    .line 1001
    :cond_2
    iget-object v1, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->targetServiceName:Ljava/lang/String;

    goto/16 :goto_1

    .line 1002
    :cond_3
    iget-object v1, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->target:Ljava/lang/String;

    goto :goto_2

    .line 1014
    :cond_4
    iget-object v1, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->host:Ljava/net/URL;

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;

    goto :goto_3
.end method

.method public static b(Lcom/taobao/accs/net/b;Landroid/content/Intent;)Lcom/taobao/accs/data/Message;
    .locals 6

    .prologue
    .line 763
    const/4 v1, 0x0

    .line 765
    :try_start_0
    const-string v0, "packageName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 767
    const-string v2, "serviceId"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 769
    const-string v3, "userInfo"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 771
    const-string v3, "appKey"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 773
    const-string v3, "sid"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 774
    const-string v3, "anti_brush_cookie"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 775
    invoke-static {v0, v2}, Lcom/taobao/accs/data/Message;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 777
    :try_start_1
    iget-object v1, p0, Lcom/taobao/accs/net/b;->m:Ljava/lang/String;

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->V:Ljava/lang/String;

    .line 780
    invoke-static {p0, v0}, Lcom/taobao/accs/data/Message;->a(Lcom/taobao/accs/net/b;Lcom/taobao/accs/data/Message;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 785
    :goto_0
    return-object v0

    .line 781
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 782
    :goto_1
    const-string v2, "Msg_"

    const-string v3, "buildUnbindService"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 783
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 781
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 789
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 790
    :cond_0
    const/4 v0, 0x0

    .line 805
    :goto_0
    return-object v0

    .line 792
    :cond_1
    new-instance v0, Lcom/taobao/accs/data/Message;

    invoke-direct {v0}, Lcom/taobao/accs/data/Message;-><init>()V

    .line 793
    iput v2, v0, Lcom/taobao/accs/data/Message;->N:I

    .line 794
    sget-object v1, Lcom/taobao/accs/data/Message$ReqType;->DATA:Lcom/taobao/accs/data/Message$ReqType;

    invoke-direct {v0, v2, v1, v2}, Lcom/taobao/accs/data/Message;->a(ILcom/taobao/accs/data/Message$ReqType;I)V

    .line 795
    iput-object p0, v0, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    .line 797
    iput-object p1, v0, Lcom/taobao/accs/data/Message;->F:Ljava/lang/String;

    .line 798
    const-string v1, "3|dm|"

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->n:Ljava/lang/String;

    .line 799
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    .line 800
    iput-object p0, v0, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    .line 801
    iput-object p1, v0, Lcom/taobao/accs/data/Message;->F:Ljava/lang/String;

    .line 802
    const/16 v1, 0xdd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->B:Ljava/lang/Integer;

    .line 803
    const-string v1, "ctrl_unbindservice"

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->M:Ljava/lang/String;

    goto :goto_0
.end method

.method public static c(Lcom/taobao/accs/net/b;Landroid/content/Intent;)Lcom/taobao/accs/data/Message;
    .locals 6

    .prologue
    .line 810
    const/4 v1, 0x0

    .line 812
    :try_start_0
    const-string v0, "packageName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 814
    const-string v2, "userInfo"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 816
    const-string v3, "appKey"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 818
    const-string v3, "sid"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 819
    const-string v3, "anti_brush_cookie"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 820
    invoke-static {v0, v2}, Lcom/taobao/accs/data/Message;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 822
    :try_start_1
    iget-object v1, p0, Lcom/taobao/accs/net/b;->m:Ljava/lang/String;

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->V:Ljava/lang/String;

    .line 825
    invoke-static {p0, v0}, Lcom/taobao/accs/data/Message;->a(Lcom/taobao/accs/net/b;Lcom/taobao/accs/data/Message;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 830
    :goto_0
    return-object v0

    .line 826
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 827
    :goto_1
    const-string v2, "Msg_"

    const-string v3, "buildBindUser"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 828
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 826
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 834
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 835
    :cond_0
    const/4 v0, 0x0

    .line 850
    :goto_0
    return-object v0

    .line 837
    :cond_1
    new-instance v0, Lcom/taobao/accs/data/Message;

    invoke-direct {v0}, Lcom/taobao/accs/data/Message;-><init>()V

    .line 838
    iput v2, v0, Lcom/taobao/accs/data/Message;->N:I

    .line 839
    sget-object v1, Lcom/taobao/accs/data/Message$ReqType;->DATA:Lcom/taobao/accs/data/Message$ReqType;

    invoke-direct {v0, v2, v1, v2}, Lcom/taobao/accs/data/Message;->a(ILcom/taobao/accs/data/Message$ReqType;I)V

    .line 840
    iput-object p0, v0, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    .line 842
    iput-object p1, v0, Lcom/taobao/accs/data/Message;->E:Ljava/lang/String;

    .line 843
    const-string v1, "3|dm|"

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->n:Ljava/lang/String;

    .line 844
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    .line 845
    iput-object p0, v0, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    .line 846
    iput-object p1, v0, Lcom/taobao/accs/data/Message;->E:Ljava/lang/String;

    .line 847
    const/16 v1, 0xdd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->B:Ljava/lang/Integer;

    .line 848
    const-string v1, "ctrl_binduser"

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->M:Ljava/lang/String;

    goto :goto_0
.end method

.method public static d(Lcom/taobao/accs/net/b;Landroid/content/Intent;)Lcom/taobao/accs/data/Message;
    .locals 6

    .prologue
    .line 854
    const/4 v1, 0x0

    .line 856
    :try_start_0
    const-string v0, "packageName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 858
    const-string v2, "userInfo"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 860
    const-string v2, "appKey"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 862
    const-string v2, "sid"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 863
    const-string v2, "anti_brush_cookie"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 864
    invoke-static {v0}, Lcom/taobao/accs/data/Message;->a(Ljava/lang/String;)Lcom/taobao/accs/data/Message;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 866
    :try_start_1
    iget-object v1, p0, Lcom/taobao/accs/net/b;->m:Ljava/lang/String;

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->V:Ljava/lang/String;

    .line 869
    invoke-static {p0, v0}, Lcom/taobao/accs/data/Message;->a(Lcom/taobao/accs/net/b;Lcom/taobao/accs/data/Message;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 874
    :goto_0
    return-object v0

    .line 870
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 871
    :goto_1
    const-string v2, "Msg_"

    const-string v3, "buildUnbindUser"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 872
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 870
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private j()Ljava/lang/String;
    .locals 2

    .prologue
    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Msg_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/accs/data/Message;->V:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lcom/taobao/accs/data/Message;->p:I

    return v0
.end method

.method a(Ljava/util/Map;)S
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)S"
        }
    .end annotation

    .prologue
    .line 480
    const/4 v1, 0x0

    .line 482
    if-eqz p1, :cond_0

    .line 483
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 484
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 485
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 486
    const-string v3, "utf-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v0, v0, 0x3ff

    int-to-short v0, v0

    .line 487
    add-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    int-to-short v0, v0

    :goto_1
    move v1, v0

    .line 489
    goto :goto_0

    .line 491
    :catch_0
    move-exception v0

    .line 492
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 495
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 279
    iput-wide p1, p0, Lcom/taobao/accs/data/Message;->S:J

    .line 280
    return-void
.end method

.method a([B)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 560
    const-string v0, ""

    .line 561
    sget-object v2, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v2}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 562
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "len:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 563
    array-length v2, p1

    const/16 v3, 0x200

    if-ge v2, v3, :cond_1

    move-object v2, v0

    move v0, v1

    .line 564
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 565
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 564
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 567
    :cond_0
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 571
    :cond_1
    return-void
.end method

.method public a(Landroid/content/Context;I)[B
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 317
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/accs/data/Message;->i()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    .line 325
    :goto_0
    iget-object v0, p0, Lcom/taobao/accs/data/Message;->L:[B

    if-eqz v0, :cond_d

    .line 326
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/taobao/accs/data/Message;->L:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    move-object v1, v0

    .line 331
    :goto_1
    invoke-virtual {p0}, Lcom/taobao/accs/data/Message;->h()V

    .line 333
    iget-boolean v0, p0, Lcom/taobao/accs/data/Message;->c:Z

    if-nez v0, :cond_0

    .line 334
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 335
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "|"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "|"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/taobao/accs/data/Message;->F:Ljava/lang/String;

    if-nez v0, :cond_e

    const-string v0, ""

    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "|"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/taobao/accs/data/Message;->E:Ljava/lang/String;

    if-nez v0, :cond_f

    const-string v0, ""

    :goto_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/data/Message;->o:Ljava/lang/String;

    .line 344
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/taobao/accs/data/Message;->q:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "utf-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 345
    iget-object v2, p0, Lcom/taobao/accs/data/Message;->o:Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/taobao/accs/data/Message;->m:B

    .line 346
    iget-object v2, p0, Lcom/taobao/accs/data/Message;->n:Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/taobao/accs/data/Message;->l:B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 356
    :goto_4
    iget-object v2, p0, Lcom/taobao/accs/data/Message;->r:Ljava/util/Map;

    invoke-virtual {p0, v2}, Lcom/taobao/accs/data/Message;->a(Ljava/util/Map;)S

    move-result v4

    .line 358
    iget-byte v2, p0, Lcom/taobao/accs/data/Message;->l:B

    add-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0x1

    iget-byte v5, p0, Lcom/taobao/accs/data/Message;->m:B

    add-int/2addr v2, v5

    add-int/lit8 v2, v2, 0x1

    array-length v5, v0

    add-int/2addr v5, v2

    iget-object v2, p0, Lcom/taobao/accs/data/Message;->L:[B

    if-nez v2, :cond_10

    move v2, v3

    :goto_5
    add-int/2addr v2, v5

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x2

    int-to-short v2, v2

    iput-short v2, p0, Lcom/taobao/accs/data/Message;->j:S

    .line 360
    iget-short v2, p0, Lcom/taobao/accs/data/Message;->j:S

    add-int/lit8 v2, v2, 0x2

    int-to-short v2, v2

    iput-short v2, p0, Lcom/taobao/accs/data/Message;->i:S

    .line 362
    new-instance v2, Lcom/taobao/accs/utl/g;

    iget-short v5, p0, Lcom/taobao/accs/data/Message;->i:S

    add-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x4

    invoke-direct {v2, v5}, Lcom/taobao/accs/utl/g;-><init>(I)V

    .line 364
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Build Message"

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 372
    :try_start_2
    iget-byte v5, p0, Lcom/taobao/accs/data/Message;->g:B

    or-int/lit8 v5, v5, 0x20

    int-to-byte v5, v5

    invoke-virtual {v2, v5}, Lcom/taobao/accs/utl/g;->a(B)Lcom/taobao/accs/utl/g;

    .line 373
    sget-object v5, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v5}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 374
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\tversion:2 compress:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-byte v7, p0, Lcom/taobao/accs/data/Message;->g:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 376
    :cond_1
    if-nez p2, :cond_11

    .line 377
    const/16 v5, -0x80

    invoke-virtual {v2, v5}, Lcom/taobao/accs/utl/g;->a(B)Lcom/taobao/accs/utl/g;

    .line 378
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\tflag: 0x80"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 385
    :goto_6
    iget-short v5, p0, Lcom/taobao/accs/data/Message;->i:S

    invoke-virtual {v2, v5}, Lcom/taobao/accs/utl/g;->a(S)Lcom/taobao/accs/utl/g;

    .line 386
    sget-object v5, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v5}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 387
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\ttotalLength:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-short v7, p0, Lcom/taobao/accs/data/Message;->i:S

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 389
    :cond_2
    iget-short v5, p0, Lcom/taobao/accs/data/Message;->j:S

    invoke-virtual {v2, v5}, Lcom/taobao/accs/utl/g;->a(S)Lcom/taobao/accs/utl/g;

    .line 390
    sget-object v5, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v5}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 391
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\tdataLength:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-short v7, p0, Lcom/taobao/accs/data/Message;->j:S

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 393
    :cond_3
    iget-short v5, p0, Lcom/taobao/accs/data/Message;->k:S

    invoke-virtual {v2, v5}, Lcom/taobao/accs/utl/g;->a(S)Lcom/taobao/accs/utl/g;

    .line 395
    sget-object v5, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v5}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 396
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\tflags:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-short v7, p0, Lcom/taobao/accs/data/Message;->k:S

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 399
    :cond_4
    iget-byte v5, p0, Lcom/taobao/accs/data/Message;->l:B

    invoke-virtual {v2, v5}, Lcom/taobao/accs/utl/g;->a(B)Lcom/taobao/accs/utl/g;

    .line 401
    sget-object v5, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v5}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 402
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\ttargetLength:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-byte v7, p0, Lcom/taobao/accs/data/Message;->l:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 405
    :cond_5
    iget-object v5, p0, Lcom/taobao/accs/data/Message;->n:Ljava/lang/String;

    const-string v6, "utf-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/taobao/accs/utl/g;->write([B)V

    .line 406
    sget-object v5, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v5}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 407
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\ttarget:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    iget-object v8, p0, Lcom/taobao/accs/data/Message;->n:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 410
    :cond_6
    iget-byte v5, p0, Lcom/taobao/accs/data/Message;->m:B

    invoke-virtual {v2, v5}, Lcom/taobao/accs/utl/g;->a(B)Lcom/taobao/accs/utl/g;

    .line 411
    sget-object v5, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v5}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 412
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\tsourceLength:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-byte v7, p0, Lcom/taobao/accs/data/Message;->m:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 415
    :cond_7
    iget-object v5, p0, Lcom/taobao/accs/data/Message;->o:Ljava/lang/String;

    const-string v6, "utf-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/taobao/accs/utl/g;->write([B)V

    .line 416
    sget-object v5, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v5}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 417
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\tsource:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    iget-object v8, p0, Lcom/taobao/accs/data/Message;->o:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 421
    :cond_8
    array-length v5, v0

    int-to-byte v5, v5

    invoke-virtual {v2, v5}, Lcom/taobao/accs/utl/g;->a(B)Lcom/taobao/accs/utl/g;

    .line 422
    sget-object v5, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v5}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 423
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\tdataIdLength:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 427
    :cond_9
    invoke-virtual {v2, v0}, Lcom/taobao/accs/utl/g;->write([B)V

    .line 428
    sget-object v5, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v5}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 429
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\tdataId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v0, v6}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 432
    :cond_a
    invoke-virtual {v2, v4}, Lcom/taobao/accs/utl/g;->a(S)Lcom/taobao/accs/utl/g;

    .line 433
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 434
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\textHeader len:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 437
    :cond_b
    iget-object v0, p0, Lcom/taobao/accs/data/Message;->r:Ljava/util/Map;

    if-eqz v0, :cond_12

    .line 438
    iget-object v0, p0, Lcom/taobao/accs/data/Message;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 439
    iget-object v0, p0, Lcom/taobao/accs/data/Message;->r:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 440
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 441
    int-to-short v6, v5

    .line 442
    const-string v7, "utf-8"

    invoke-virtual {v0, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    array-length v7, v7

    and-int/lit16 v7, v7, 0x3ff

    int-to-short v7, v7

    .line 443
    shl-int/lit8 v6, v6, 0xa

    or-int/2addr v6, v7

    int-to-short v6, v6

    invoke-virtual {v2, v6}, Lcom/taobao/accs/utl/g;->a(S)Lcom/taobao/accs/utl/g;

    .line 444
    const-string v6, "utf-8"

    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/taobao/accs/utl/g;->write([B)V

    .line 445
    sget-object v6, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v6}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 446
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\textHeader key:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " value:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v6, v0, v5}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_7

    .line 463
    :catch_0
    move-exception v0

    .line 464
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object v1

    const-string v4, "build4"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v1, v4, v0, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 467
    :goto_8
    invoke-virtual {v2}, Lcom/taobao/accs/utl/g;->toByteArray()[B

    move-result-object v0

    .line 469
    invoke-virtual {p0, v0}, Lcom/taobao/accs/data/Message;->a([B)V

    .line 472
    :try_start_3
    invoke-virtual {v2}, Lcom/taobao/accs/utl/g;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 476
    :goto_9
    return-object v0

    .line 318
    :catch_1
    move-exception v0

    .line 319
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object v1

    const-string v2, "build1"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 320
    :catch_2
    move-exception v0

    .line 321
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object v1

    const-string v2, "build2"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 328
    :cond_d
    const-string v0, ""

    move-object v1, v0

    goto/16 :goto_1

    .line 335
    :cond_e
    iget-object v0, p0, Lcom/taobao/accs/data/Message;->F:Ljava/lang/String;

    goto/16 :goto_2

    :cond_f
    iget-object v0, p0, Lcom/taobao/accs/data/Message;->E:Ljava/lang/String;

    goto/16 :goto_3

    .line 347
    :catch_3
    move-exception v0

    .line 348
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 349
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object v2

    const-string v4, "build3"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v2, v4, v0, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/taobao/accs/data/Message;->q:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 351
    iget-object v2, p0, Lcom/taobao/accs/data/Message;->o:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/taobao/accs/data/Message;->m:B

    .line 352
    iget-object v2, p0, Lcom/taobao/accs/data/Message;->n:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/taobao/accs/data/Message;->l:B

    goto/16 :goto_4

    .line 358
    :cond_10
    iget-object v2, p0, Lcom/taobao/accs/data/Message;->L:[B

    array-length v2, v2

    goto/16 :goto_5

    .line 380
    :cond_11
    const/16 v5, 0x40

    :try_start_4
    invoke-virtual {v2, v5}, Lcom/taobao/accs/utl/g;->a(B)Lcom/taobao/accs/utl/g;

    .line 381
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\tflag: 0x40"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 453
    :cond_12
    iget-object v0, p0, Lcom/taobao/accs/data/Message;->L:[B

    if-eqz v0, :cond_13

    .line 454
    iget-object v0, p0, Lcom/taobao/accs/data/Message;->L:[B

    invoke-virtual {v2, v0}, Lcom/taobao/accs/utl/g;->write([B)V

    .line 457
    :cond_13
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 458
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\toriData:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 462
    :cond_14
    invoke-virtual {v2}, Lcom/taobao/accs/utl/g;->flush()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_8

    .line 473
    :catch_4
    move-exception v1

    .line 474
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object v2

    const-string v4, "build5"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v4, v1, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_9
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/taobao/accs/data/Message;->q:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 260
    const-string v0, "3|dm|"

    iget-object v1, p0, Lcom/taobao/accs/data/Message;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public d()I
    .locals 4

    .prologue
    .line 264
    const/4 v0, -0x1

    .line 266
    :try_start_0
    iget-boolean v1, p0, Lcom/taobao/accs/data/Message;->c:Z

    if-nez v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/taobao/accs/data/Message;->q:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 275
    :goto_0
    return v0

    .line 269
    :cond_0
    sget-wide v0, Lcom/taobao/accs/data/Message;->b:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v0, v0

    neg-int v0, v0

    goto :goto_0

    .line 273
    :catch_0
    move-exception v1

    const-string v1, "Msg_"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse int dataId error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/accs/data/Message;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/taobao/accs/data/Message;->U:Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/data/Message;->s:Ljava/lang/String;

    goto :goto_0
.end method

.method public g()Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 305
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/taobao/accs/data/Message;->R:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/taobao/accs/data/Message;->O:J

    add-long/2addr v2, v4

    iget v0, p0, Lcom/taobao/accs/data/Message;->Q:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    .line 306
    :goto_0
    if-eqz v0, :cond_0

    .line 307
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delay time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/taobao/accs/data/Message;->O:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " beforeSendTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/taobao/accs/data/Message;->R:J

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " timeout"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/taobao/accs/data/Message;->Q:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    :cond_0
    return v0

    :cond_1
    move v0, v1

    .line 305
    goto :goto_0
.end method

.method h()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 499
    const/4 v0, 0x0

    .line 500
    const/4 v1, 0x0

    .line 502
    :try_start_0
    iget-object v3, p0, Lcom/taobao/accs/data/Message;->L:[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_2

    .line 520
    if-eqz v2, :cond_0

    .line 521
    :try_start_1
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 523
    :cond_0
    if-eqz v2, :cond_1

    .line 524
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 530
    :cond_1
    :goto_0
    return-void

    .line 505
    :cond_2
    :try_start_2
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 506
    :try_start_3
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 507
    :try_start_4
    iget-object v0, p0, Lcom/taobao/accs/data/Message;->L:[B

    invoke-virtual {v1, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 508
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 510
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 511
    if-eqz v0, :cond_3

    array-length v2, v0

    iget-object v4, p0, Lcom/taobao/accs/data/Message;->L:[B

    array-length v4, v4

    if-ge v2, v4, :cond_3

    .line 512
    iput-object v0, p0, Lcom/taobao/accs/data/Message;->L:[B

    .line 513
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/taobao/accs/data/Message;->g:B
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 520
    :cond_3
    if-eqz v1, :cond_4

    .line 521
    :try_start_5
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 523
    :cond_4
    if-eqz v3, :cond_1

    .line 524
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 529
    :catch_0
    move-exception v0

    goto :goto_0

    .line 515
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 516
    :goto_1
    :try_start_6
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 520
    if-eqz v1, :cond_5

    .line 521
    :try_start_7
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 523
    :cond_5
    if-eqz v2, :cond_1

    .line 524
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_0

    .line 529
    :catch_2
    move-exception v0

    goto :goto_0

    .line 519
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 520
    :goto_2
    if-eqz v1, :cond_6

    .line 521
    :try_start_8
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 523
    :cond_6
    if-eqz v3, :cond_7

    .line 524
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 528
    :cond_7
    :goto_3
    throw v0

    :catch_3
    move-exception v1

    goto :goto_3

    .line 519
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_2

    .line 515
    :catch_4
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_1

    :catch_5
    move-exception v0

    move-object v2, v3

    goto :goto_1

    :catch_6
    move-exception v0

    goto :goto_0
.end method

.method i()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x64

    .line 533
    iget-object v0, p0, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x66

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x69

    if-ne v0, v1, :cond_1

    .line 557
    :cond_0
    :goto_0
    return-void

    .line 537
    :cond_1
    new-instance v1, Lcom/taobao/accs/utl/e$a;

    invoke-direct {v1}, Lcom/taobao/accs/utl/e$a;-><init>()V

    const-string v2, "command"

    iget-object v0, p0, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/taobao/accs/utl/e$a;->a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/taobao/accs/utl/e$a;

    move-result-object v0

    const-string v1, "appKey"

    iget-object v2, p0, Lcom/taobao/accs/data/Message;->v:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/taobao/accs/utl/e$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/e$a;

    move-result-object v0

    const-string v1, "osType"

    iget-object v2, p0, Lcom/taobao/accs/data/Message;->x:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/taobao/accs/utl/e$a;->a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/taobao/accs/utl/e$a;

    move-result-object v0

    const-string v1, "sign"

    iget-object v2, p0, Lcom/taobao/accs/data/Message;->w:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/taobao/accs/utl/e$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/e$a;

    move-result-object v0

    const-string v1, "sdkVersion"

    iget-object v2, p0, Lcom/taobao/accs/data/Message;->B:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/taobao/accs/utl/e$a;->a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/taobao/accs/utl/e$a;

    move-result-object v0

    const-string v1, "appVersion"

    iget-object v2, p0, Lcom/taobao/accs/data/Message;->A:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/taobao/accs/utl/e$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/e$a;

    move-result-object v0

    const-string v1, "ttid"

    iget-object v2, p0, Lcom/taobao/accs/data/Message;->C:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/taobao/accs/utl/e$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/e$a;

    move-result-object v0

    const-string v1, "model"

    iget-object v2, p0, Lcom/taobao/accs/data/Message;->G:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/taobao/accs/utl/e$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/e$a;

    move-result-object v0

    const-string v1, "brand"

    iget-object v2, p0, Lcom/taobao/accs/data/Message;->H:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/taobao/accs/utl/e$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/e$a;

    move-result-object v0

    const-string v1, "imei"

    iget-object v2, p0, Lcom/taobao/accs/data/Message;->I:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/taobao/accs/utl/e$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/e$a;

    move-result-object v0

    const-string v1, "imsi"

    iget-object v2, p0, Lcom/taobao/accs/data/Message;->J:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/taobao/accs/utl/e$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/e$a;

    move-result-object v0

    const-string v1, "os"

    iget-object v2, p0, Lcom/taobao/accs/data/Message;->y:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/taobao/accs/utl/e$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/e$a;

    move-result-object v0

    const-string v1, "exts"

    iget-object v2, p0, Lcom/taobao/accs/data/Message;->z:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/taobao/accs/utl/e$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/accs/utl/e$a;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/data/Message;->L:[B

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    goto :goto_1
.end method
