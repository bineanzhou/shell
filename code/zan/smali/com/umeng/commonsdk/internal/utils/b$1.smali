.class Lcom/umeng/commonsdk/internal/utils/b$1;
.super Landroid/telephony/PhoneStateListener;
.source "BaseStationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/internal/utils/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/commonsdk/internal/utils/b;


# direct methods
.method constructor <init>(Lcom/umeng/commonsdk/internal/utils/b;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/umeng/commonsdk/internal/utils/b$1;->a:Lcom/umeng/commonsdk/internal/utils/b;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 6

    .prologue
    const/16 v4, 0x9

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 65
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    .line 67
    const-string v0, "BaseStationUtils"

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "base station onSignalStrengthsChanged"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/statistics/common/e;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/umeng/commonsdk/internal/utils/b$1;->a:Lcom/umeng/commonsdk/internal/utils/b;

    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/b;->d()Landroid/content/Context;

    move-result-object v0

    const-string v2, "phone"

    .line 71
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 70
    invoke-static {v1, v0}, Lcom/umeng/commonsdk/internal/utils/b;->a(Lcom/umeng/commonsdk/internal/utils/b;Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;

    .line 73
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 76
    const/4 v0, 0x0

    .line 78
    iget-object v2, p0, Lcom/umeng/commonsdk/internal/utils/b$1;->a:Lcom/umeng/commonsdk/internal/utils/b;

    invoke-static {v2}, Lcom/umeng/commonsdk/internal/utils/b;->a(Lcom/umeng/commonsdk/internal/utils/b;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_2

    .line 80
    const/16 v0, 0x9

    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    :cond_0
    :goto_0
    const-string v1, "BaseStationUtils"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stationStrength is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/umeng/commonsdk/statistics/common/e;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_1

    .line 117
    :try_start_1
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/b;->d()Landroid/content/Context;

    move-result-object v1

    const v2, 0x8004

    .line 118
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/b;->d()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/commonsdk/internal/b;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/internal/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/umeng/commonsdk/internal/b;->a()Lcom/umeng/commonsdk/internal/c;

    move-result-object v3

    .line 117
    invoke-static {v1, v2, v3, v0}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 126
    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/umeng/commonsdk/internal/utils/b$1;->a:Lcom/umeng/commonsdk/internal/utils/b;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/internal/utils/b;->c()V

    .line 130
    :goto_2
    return-void

    .line 83
    :cond_2
    iget-object v1, p0, Lcom/umeng/commonsdk/internal/utils/b$1;->a:Lcom/umeng/commonsdk/internal/utils/b;

    invoke-static {v1}, Lcom/umeng/commonsdk/internal/utils/b;->a(Lcom/umeng/commonsdk/internal/utils/b;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/umeng/commonsdk/internal/utils/b$1;->a:Lcom/umeng/commonsdk/internal/utils/b;

    .line 84
    invoke-static {v1}, Lcom/umeng/commonsdk/internal/utils/b;->a(Lcom/umeng/commonsdk/internal/utils/b;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/umeng/commonsdk/internal/utils/b$1;->a:Lcom/umeng/commonsdk/internal/utils/b;

    .line 85
    invoke-static {v1}, Lcom/umeng/commonsdk/internal/utils/b;->a(Lcom/umeng/commonsdk/internal/utils/b;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    if-eq v1, v4, :cond_3

    iget-object v1, p0, Lcom/umeng/commonsdk/internal/utils/b$1;->a:Lcom/umeng/commonsdk/internal/utils/b;

    .line 86
    invoke-static {v1}, Lcom/umeng/commonsdk/internal/utils/b;->a(Lcom/umeng/commonsdk/internal/utils/b;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    .line 89
    :cond_3
    iget-object v1, p0, Lcom/umeng/commonsdk/internal/utils/b$1;->a:Lcom/umeng/commonsdk/internal/utils/b;

    invoke-static {v1}, Lcom/umeng/commonsdk/internal/utils/b;->b(Lcom/umeng/commonsdk/internal/utils/b;)Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "\u4e2d\u56fd\u79fb\u52a8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 93
    const-string v0, "0"

    goto/16 :goto_0

    .line 94
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "\u4e2d\u56fd\u8054\u901a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 95
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 99
    :cond_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "\u4e2d\u56fd\u7535\u4fe1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 107
    :cond_6
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 108
    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x71

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto/16 :goto_0

    .line 127
    :catch_0
    move-exception v0

    goto/16 :goto_2

    .line 121
    :catch_1
    move-exception v0

    goto/16 :goto_1
.end method
