.class public Lcom/taobao/accs/ACCSManager$AccsRequest;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/accs/ACCSManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccsRequest"
.end annotation


# instance fields
.field public businessId:Ljava/lang/String;

.field public data:[B

.field public dataId:Ljava/lang/String;

.field public host:Ljava/net/URL;

.field public isUnitBusiness:Z

.field public serviceId:Ljava/lang/String;

.field public tag:Ljava/lang/String;

.field public target:Ljava/lang/String;

.field public targetServiceName:Ljava/lang/String;

.field public timeout:I

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V
    .locals 1

    .prologue
    .line 503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 549
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/accs/ACCSManager$AccsRequest;->isUnitBusiness:Z

    .line 504
    iput-object p1, p0, Lcom/taobao/accs/ACCSManager$AccsRequest;->userId:Ljava/lang/String;

    .line 505
    iput-object p2, p0, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    .line 506
    iput-object p3, p0, Lcom/taobao/accs/ACCSManager$AccsRequest;->data:[B

    .line 507
    iput-object p4, p0, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    .line 508
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 549
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/accs/ACCSManager$AccsRequest;->isUnitBusiness:Z

    .line 493
    iput-object p1, p0, Lcom/taobao/accs/ACCSManager$AccsRequest;->userId:Ljava/lang/String;

    .line 494
    iput-object p2, p0, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    .line 495
    iput-object p3, p0, Lcom/taobao/accs/ACCSManager$AccsRequest;->data:[B

    .line 496
    iput-object p4, p0, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    .line 497
    iput-object p5, p0, Lcom/taobao/accs/ACCSManager$AccsRequest;->target:Ljava/lang/String;

    .line 498
    iput-object p6, p0, Lcom/taobao/accs/ACCSManager$AccsRequest;->host:Ljava/net/URL;

    .line 499
    iput-object p7, p0, Lcom/taobao/accs/ACCSManager$AccsRequest;->businessId:Ljava/lang/String;

    .line 500
    return-void
.end method


# virtual methods
.method public setBusinessId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 535
    iput-object p1, p0, Lcom/taobao/accs/ACCSManager$AccsRequest;->businessId:Ljava/lang/String;

    .line 536
    return-void
.end method

.method public setHost(Ljava/net/URL;)V
    .locals 0

    .prologue
    .line 531
    iput-object p1, p0, Lcom/taobao/accs/ACCSManager$AccsRequest;->host:Ljava/net/URL;

    .line 532
    return-void
.end method

.method public setIsUnitBusiness(Z)V
    .locals 0

    .prologue
    .line 519
    iput-boolean p1, p0, Lcom/taobao/accs/ACCSManager$AccsRequest;->isUnitBusiness:Z

    .line 520
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 511
    iput-object p1, p0, Lcom/taobao/accs/ACCSManager$AccsRequest;->tag:Ljava/lang/String;

    .line 512
    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 523
    iput-object p1, p0, Lcom/taobao/accs/ACCSManager$AccsRequest;->target:Ljava/lang/String;

    .line 524
    return-void
.end method

.method public setTargetServiceName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 527
    iput-object p1, p0, Lcom/taobao/accs/ACCSManager$AccsRequest;->targetServiceName:Ljava/lang/String;

    .line 528
    return-void
.end method

.method public setTimeOut(I)V
    .locals 0

    .prologue
    .line 515
    iput p1, p0, Lcom/taobao/accs/ACCSManager$AccsRequest;->timeout:I

    .line 516
    return-void
.end method
