.class public Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportWifiOnly;
.super Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;
.source "ReportPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/common/ReportPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReportWifiOnly"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;-><init>()V

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportWifiOnly;->mContext:Landroid/content/Context;

    .line 177
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportWifiOnly;->mContext:Landroid/content/Context;

    .line 178
    return-void
.end method


# virtual methods
.method public shouldSendMessage(Z)Z
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportWifiOnly;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->isWiFiAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
