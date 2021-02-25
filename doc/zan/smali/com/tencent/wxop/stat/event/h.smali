.class public Lcom/tencent/wxop/stat/event/h;
.super Lcom/tencent/wxop/stat/event/e;


# static fields
.field public static final a:Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;

    invoke-direct {v0}, Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;-><init>()V

    sput-object v0, Lcom/tencent/wxop/stat/event/h;->a:Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;

    const-string v1, "A9VH9B8L4GX4"

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;->setAppKey(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/tencent/wxop/stat/event/h;->a:Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;

    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/wxop/stat/event/e;-><init>(Landroid/content/Context;ILcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/tencent/wxop/stat/event/EventType;
    .locals 1

    sget-object v0, Lcom/tencent/wxop/stat/event/EventType;->NETWORK_DETECTOR:Lcom/tencent/wxop/stat/event/EventType;

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Z
    .locals 2

    const-string v0, "actky"

    iget-object v1, p0, Lcom/tencent/wxop/stat/event/h;->l:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/wxop/stat/StatConfig;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/tencent/wxop/stat/common/r;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
