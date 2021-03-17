.class public Lcom/tencent/wxop/stat/event/a;
.super Lcom/tencent/wxop/stat/event/e;


# instance fields
.field private a:Lcom/tencent/wxop/stat/StatAccount;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/tencent/wxop/stat/StatAccount;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V
    .locals 1

    invoke-direct {p0, p1, p2, p4}, Lcom/tencent/wxop/stat/event/e;-><init>(Landroid/content/Context;ILcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/wxop/stat/event/a;->a:Lcom/tencent/wxop/stat/StatAccount;

    iput-object p3, p0, Lcom/tencent/wxop/stat/event/a;->a:Lcom/tencent/wxop/stat/StatAccount;

    return-void
.end method


# virtual methods
.method public a()Lcom/tencent/wxop/stat/event/EventType;
    .locals 1

    sget-object v0, Lcom/tencent/wxop/stat/event/EventType;->ADDITION:Lcom/tencent/wxop/stat/event/EventType;

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Z
    .locals 2

    const-string v0, "qq"

    iget-object v1, p0, Lcom/tencent/wxop/stat/event/a;->a:Lcom/tencent/wxop/stat/StatAccount;

    invoke-virtual {v1}, Lcom/tencent/wxop/stat/StatAccount;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/tencent/wxop/stat/common/r;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "acc"

    iget-object v1, p0, Lcom/tencent/wxop/stat/event/a;->a:Lcom/tencent/wxop/stat/StatAccount;

    invoke-virtual {v1}, Lcom/tencent/wxop/stat/StatAccount;->toJsonString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v0, 0x1

    return v0
.end method
