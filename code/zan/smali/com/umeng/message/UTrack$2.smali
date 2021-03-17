.class Lcom/umeng/message/UTrack$2;
.super Ljava/lang/Object;
.source "UTrack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/message/UTrack;->addAlias(Ljava/lang/String;Ljava/lang/String;Lcom/umeng/message/UTrack$ICallBack;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/umeng/message/UTrack$ICallBack;

.field final synthetic d:Lcom/umeng/message/UTrack;


# direct methods
.method constructor <init>(Lcom/umeng/message/UTrack;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/message/UTrack$ICallBack;)V
    .locals 0

    .prologue
    .line 750
    iput-object p1, p0, Lcom/umeng/message/UTrack$2;->d:Lcom/umeng/message/UTrack;

    iput-object p2, p0, Lcom/umeng/message/UTrack$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/umeng/message/UTrack$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/umeng/message/UTrack$2;->c:Lcom/umeng/message/UTrack$ICallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v0, 0x0

    const/4 v10, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 754
    :try_start_0
    iget-object v1, p0, Lcom/umeng/message/UTrack$2;->d:Lcom/umeng/message/UTrack;

    invoke-static {v1}, Lcom/umeng/message/UTrack;->a(Lcom/umeng/message/UTrack;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/message/MessageSharedPrefs;->get_addAliasInterval()Ljava/lang/String;

    move-result-object v2

    .line 756
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_a

    .line 757
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 759
    :goto_0
    iget-object v2, p0, Lcom/umeng/message/UTrack$2;->d:Lcom/umeng/message/UTrack;

    iget-object v5, p0, Lcom/umeng/message/UTrack$2;->a:Ljava/lang/String;

    iget-object v6, p0, Lcom/umeng/message/UTrack$2;->b:Ljava/lang/String;

    invoke-static {v2, v5, v6, v1}, Lcom/umeng/message/UTrack;->a(Lcom/umeng/message/UTrack;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    .line 760
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 761
    iget-object v2, p0, Lcom/umeng/message/UTrack$2;->c:Lcom/umeng/message/UTrack$ICallBack;

    const/4 v5, 0x0

    invoke-interface {v2, v5, v1}, Lcom/umeng/message/UTrack$ICallBack;->onMessage(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 833
    :goto_1
    return-void

    .line 764
    :catch_0
    move-exception v1

    .line 765
    if-eqz v1, :cond_0

    .line 766
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 770
    :cond_0
    const-string v1, ""

    .line 771
    const-string v2, ""

    .line 775
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "utdid:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/umeng/message/UTrack$2;->d:Lcom/umeng/message/UTrack;

    invoke-static {v5}, Lcom/umeng/message/UTrack;->a(Lcom/umeng/message/UTrack;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/umeng/message/common/UmengMessageDeviceConfig;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ",deviceToken:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/umeng/message/UTrack$2;->d:Lcom/umeng/message/UTrack;

    invoke-static {v5}, Lcom/umeng/message/UTrack;->a(Lcom/umeng/message/UTrack;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v5

    invoke-virtual {v5}, Lcom/umeng/message/MessageSharedPrefs;->getDeviceToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ";"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 776
    iget-object v5, p0, Lcom/umeng/message/UTrack$2;->b:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/umeng/message/UTrack$2;->a:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 777
    :cond_1
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    invoke-static {}, Lcom/umeng/message/UTrack;->a()Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/String;

    const-string v7, "addAlias: type\u6216alias\u4e3a\u7a7a"

    aput-object v7, v6, v3

    invoke-interface {v0, v5, v3, v6}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 778
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "addAlias: empty type or alias;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 779
    sget-object v0, Lcom/umeng/message/UTrack$SuccessState;->d:Lcom/umeng/message/UTrack$SuccessState;

    .line 782
    :cond_2
    iget-object v5, p0, Lcom/umeng/message/UTrack$2;->d:Lcom/umeng/message/UTrack;

    invoke-static {v5}, Lcom/umeng/message/UTrack;->a(Lcom/umeng/message/UTrack;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/umeng/message/common/UmengMessageDeviceConfig;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 783
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    invoke-static {}, Lcom/umeng/message/UTrack;->a()Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/String;

    const-string v7, "UTDID\u4e3a\u7a7a"

    aput-object v7, v6, v3

    invoke-interface {v0, v5, v3, v6}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 784
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UTDID is empty;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 785
    sget-object v0, Lcom/umeng/message/UTrack$SuccessState;->d:Lcom/umeng/message/UTrack$SuccessState;

    .line 787
    :cond_3
    iget-object v5, p0, Lcom/umeng/message/UTrack$2;->d:Lcom/umeng/message/UTrack;

    invoke-static {v5}, Lcom/umeng/message/UTrack;->a(Lcom/umeng/message/UTrack;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v5

    invoke-virtual {v5}, Lcom/umeng/message/MessageSharedPrefs;->getDeviceToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 788
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    invoke-static {}, Lcom/umeng/message/UTrack;->a()Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/String;

    const-string v7, "Device token\u4e3a\u7a7a"

    aput-object v7, v6, v3

    invoke-interface {v0, v5, v3, v6}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 789
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "RegistrationId is empty;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 790
    sget-object v0, Lcom/umeng/message/UTrack$SuccessState;->d:Lcom/umeng/message/UTrack$SuccessState;

    .line 793
    :cond_4
    iget-object v5, p0, Lcom/umeng/message/UTrack$2;->d:Lcom/umeng/message/UTrack;

    invoke-static {v5}, Lcom/umeng/message/UTrack;->a(Lcom/umeng/message/UTrack;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v5

    iget-object v6, p0, Lcom/umeng/message/UTrack$2;->a:Ljava/lang/String;

    iget-object v7, p0, Lcom/umeng/message/UTrack$2;->b:Ljava/lang/String;

    invoke-virtual {v5, v3, v6, v7}, Lcom/umeng/message/MessageSharedPrefs;->isAliasSet(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 794
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    invoke-static {}, Lcom/umeng/message/UTrack;->a()Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/String;

    const-string v7, "addAlias: <%s, %s> \u5df2\u7ecf\u540c\u6b65\u81f3\u670d\u52a1\u5668\uff0c\u5ffd\u7565\u8be5\u8bf7\u6c42"

    new-array v8, v10, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/umeng/message/UTrack$2;->a:Ljava/lang/String;

    aput-object v9, v8, v3

    iget-object v9, p0, Lcom/umeng/message/UTrack$2;->b:Ljava/lang/String;

    aput-object v9, v8, v4

    .line 795
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    .line 794
    invoke-interface {v0, v5, v10, v6}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "addAlias: <%s, %s> has been synced to the server before. Ingore this request;"

    new-array v5, v10, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/umeng/message/UTrack$2;->a:Ljava/lang/String;

    aput-object v6, v5, v3

    iget-object v6, p0, Lcom/umeng/message/UTrack$2;->b:Ljava/lang/String;

    aput-object v6, v5, v4

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 800
    sget-object v0, Lcom/umeng/message/UTrack$SuccessState;->a:Lcom/umeng/message/UTrack$SuccessState;

    .line 805
    :cond_5
    :try_start_1
    iget-object v5, p0, Lcom/umeng/message/UTrack$2;->d:Lcom/umeng/message/UTrack;

    invoke-static {v5}, Lcom/umeng/message/UTrack;->b(Lcom/umeng/message/UTrack;)Lorg/json/JSONObject;

    move-result-object v5

    .line 807
    if-nez v0, :cond_7

    .line 808
    const-string v0, "alias"

    iget-object v1, p0, Lcom/umeng/message/UTrack$2;->a:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 809
    const-string v0, "type"

    iget-object v1, p0, Lcom/umeng/message/UTrack$2;->b:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 810
    const-string v0, "last_alias"

    iget-object v1, p0, Lcom/umeng/message/UTrack$2;->d:Lcom/umeng/message/UTrack;

    .line 811
    invoke-static {v1}, Lcom/umeng/message/UTrack;->a(Lcom/umeng/message/UTrack;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/umeng/message/UTrack$2;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v6}, Lcom/umeng/message/MessageSharedPrefs;->getLastAlias(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 810
    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 812
    const-string v0, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 820
    :cond_6
    :goto_2
    invoke-static {}, Lcom/umeng/message/UTrack;->b()Lcom/umeng/message/common/inter/IUtrack;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/message/UTrack$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/umeng/message/UTrack$2;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/umeng/message/UTrack$2;->c:Lcom/umeng/message/UTrack$ICallBack;

    invoke-interface {v0, v1, v2, v5, v6}, Lcom/umeng/message/common/inter/IUtrack;->addAlias(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/umeng/message/UTrack$ICallBack;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 821
    :catch_1
    move-exception v0

    move-object v5, v0

    .line 823
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 825
    iget-object v0, p0, Lcom/umeng/message/UTrack$2;->c:Lcom/umeng/message/UTrack$ICallBack;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "alias:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/message/UTrack$2;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u6dfb\u52a0\u5931\u8d25:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/umeng/message/UTrack$ICallBack;->onMessage(ZLjava/lang/String;)V

    .line 826
    iget-object v0, p0, Lcom/umeng/message/UTrack$2;->d:Lcom/umeng/message/UTrack;

    invoke-static {v0}, Lcom/umeng/message/UTrack;->a(Lcom/umeng/message/UTrack;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/message/UTrack$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/umeng/message/UTrack$2;->b:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/umeng/message/MessageSharedPrefs;->addAlias(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    goto/16 :goto_1

    .line 814
    :cond_7
    :try_start_2
    sget-object v6, Lcom/umeng/message/UTrack$SuccessState;->d:Lcom/umeng/message/UTrack$SuccessState;

    if-ne v0, v6, :cond_8

    .line 815
    const-string v0, "fail"

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 816
    :cond_8
    sget-object v1, Lcom/umeng/message/UTrack$SuccessState;->a:Lcom/umeng/message/UTrack$SuccessState;

    if-ne v0, v1, :cond_6

    .line 817
    const-string v0, "success"

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 828
    :cond_9
    iget-object v0, p0, Lcom/umeng/message/UTrack$2;->c:Lcom/umeng/message/UTrack$ICallBack;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "alias:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/message/UTrack$2;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u6dfb\u52a0\u5931\u8d25"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/umeng/message/UTrack$ICallBack;->onMessage(ZLjava/lang/String;)V

    .line 829
    iget-object v0, p0, Lcom/umeng/message/UTrack$2;->d:Lcom/umeng/message/UTrack;

    invoke-static {v0}, Lcom/umeng/message/UTrack;->a(Lcom/umeng/message/UTrack;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/message/UTrack$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/umeng/message/UTrack$2;->b:Ljava/lang/String;

    const-string v5, "\u6dfb\u52a0\u5931\u8d25"

    invoke-virtual/range {v0 .. v5}, Lcom/umeng/message/MessageSharedPrefs;->addAlias(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    move-object v1, v0

    goto/16 :goto_0
.end method
