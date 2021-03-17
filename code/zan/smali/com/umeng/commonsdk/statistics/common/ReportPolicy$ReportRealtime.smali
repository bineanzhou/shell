.class public Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportRealtime;
.super Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;
.source "ReportPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/common/ReportPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReportRealtime"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;-><init>()V

    .line 86
    return-void
.end method


# virtual methods
.method public shouldSendMessage(Z)Z
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    return v0
.end method
