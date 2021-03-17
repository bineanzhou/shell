.class public Lcom/umeng/commonsdk/statistics/idtracking/j;
.super Lcom/umeng/commonsdk/statistics/idtracking/a;
.source "SerialTracker.java"


# static fields
.field private static final a:Ljava/lang/String; = "serial"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "serial"

    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/statistics/idtracking/a;-><init>(Ljava/lang/String;)V

    .line 16
    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getSerial()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
