.class public Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/accs/base/TaoBaseService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectInfo"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7c8c728e063e8a6aL


# instance fields
.field public connected:Z

.field public errorCode:I

.field public errordetail:Ljava/lang/String;

.field public host:Ljava/lang/String;

.field public isCenterHost:Z

.field public isInapp:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;->host:Ljava/lang/String;

    .line 74
    iput-boolean p2, p0, Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;->isInapp:Z

    .line 75
    iput-boolean p3, p0, Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;->isCenterHost:Z

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZILjava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;->host:Ljava/lang/String;

    .line 82
    iput-boolean p2, p0, Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;->isInapp:Z

    .line 83
    iput-boolean p3, p0, Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;->isCenterHost:Z

    .line 84
    iput p4, p0, Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;->errorCode:I

    .line 85
    iput-object p5, p0, Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;->errordetail:Ljava/lang/String;

    .line 86
    return-void
.end method
