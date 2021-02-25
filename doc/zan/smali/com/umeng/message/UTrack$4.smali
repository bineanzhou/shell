.class Lcom/umeng/message/UTrack$4;
.super Ljava/lang/Object;
.source "UTrack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/message/UTrack;->deleteAlias(Ljava/lang/String;Ljava/lang/String;Lcom/umeng/message/UTrack$ICallBack;)V
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
    .line 965
    iput-object p1, p0, Lcom/umeng/message/UTrack$4;->d:Lcom/umeng/message/UTrack;

    iput-object p2, p0, Lcom/umeng/message/UTrack$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/umeng/message/UTrack$4;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/umeng/message/UTrack$4;->c:Lcom/umeng/message/UTrack$ICallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 970
    :try_start_0
    iget-object v1, p0, Lcom/umeng/message/UTrack$4;->d:Lcom/umeng/message/UTrack;

    invoke-static {v1}, Lcom/umeng/message/UTrack;->a(Lcom/umeng/message/UTrack;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/message/MessageSharedPrefs;->get_deleteALiasInterval()Ljava/lang/String;

    move-result-object v2

    .line 972
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    .line 973
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 976
    :goto_0
    iget-object v2, p0, Lcom/umeng/message/UTrack$4;->d:Lcom/umeng/message/UTrack;

    iget-object v3, p0, Lcom/umeng/message/UTrack$4;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/umeng/message/UTrack$4;->b:Ljava/lang/String;

    invoke-static {v2, v3, v4, v1}, Lcom/umeng/message/UTrack;->a(Lcom/umeng/message/UTrack;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    .line 977
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 978
    iget-object v2, p0, Lcom/umeng/message/UTrack$4;->c:Lcom/umeng/message/UTrack$ICallBack;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v1}, Lcom/umeng/message/UTrack$ICallBack;->onMessage(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1031
    :goto_1
    return-void

    .line 981
    :catch_0
    move-exception v1

    .line 982
    if-eqz v1, :cond_0

    .line 983
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 987
    :cond_0
    const-string v1, ""

    .line 988
    const-string v2, ""

    .line 991
    iget-object v3, p0, Lcom/umeng/message/UTrack$4;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 992
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    invoke-static {}, Lcom/umeng/message/UTrack;->a()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "removeAlias: type\u4e3a\u7a7a"

    aput-object v5, v4, v6

    invoke-interface {v0, v3, v6, v4}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 993
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "removeAlias: empty type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 994
    sget-object v0, Lcom/umeng/message/UTrack$SuccessState;->d:Lcom/umeng/message/UTrack$SuccessState;

    .line 996
    :cond_1
    iget-object v3, p0, Lcom/umeng/message/UTrack$4;->d:Lcom/umeng/message/UTrack;

    invoke-static {v3}, Lcom/umeng/message/UTrack;->a(Lcom/umeng/message/UTrack;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/message/common/UmengMessageDeviceConfig;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 997
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    invoke-static {}, Lcom/umeng/message/UTrack;->a()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "UTDID\u4e3a\u7a7a"

    aput-object v5, v4, v6

    invoke-interface {v0, v3, v6, v4}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 998
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UTDID is empty;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 999
    sget-object v0, Lcom/umeng/message/UTrack$SuccessState;->d:Lcom/umeng/message/UTrack$SuccessState;

    .line 1002
    :cond_2
    iget-object v3, p0, Lcom/umeng/message/UTrack$4;->d:Lcom/umeng/message/UTrack;

    invoke-static {v3}, Lcom/umeng/message/UTrack;->a(Lcom/umeng/message/UTrack;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/umeng/message/MessageSharedPrefs;->getDeviceToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1003
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    invoke-static {}, Lcom/umeng/message/UTrack;->a()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "Device token\u4e3a\u7a7a"

    aput-object v5, v4, v6

    invoke-interface {v0, v3, v6, v4}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 1004
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "RegistrationId is empty;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1005
    sget-object v0, Lcom/umeng/message/UTrack$SuccessState;->d:Lcom/umeng/message/UTrack$SuccessState;

    .line 1010
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/umeng/message/UTrack$4;->d:Lcom/umeng/message/UTrack;

    invoke-static {v3}, Lcom/umeng/message/UTrack;->b(Lcom/umeng/message/UTrack;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1011
    if-nez v0, :cond_5

    .line 1012
    const-string v0, "alias"

    iget-object v1, p0, Lcom/umeng/message/UTrack$4;->a:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1013
    const-string v0, "type"

    iget-object v1, p0, Lcom/umeng/message/UTrack$4;->b:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1014
    const-string v0, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1022
    :cond_4
    :goto_2
    invoke-static {}, Lcom/umeng/message/UTrack;->b()Lcom/umeng/message/common/inter/IUtrack;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/message/UTrack$4;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/umeng/message/UTrack$4;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/umeng/message/UTrack$4;->c:Lcom/umeng/message/UTrack$ICallBack;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/umeng/message/common/inter/IUtrack;->deleteAlias(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/umeng/message/UTrack$ICallBack;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 1023
    :catch_1
    move-exception v0

    .line 1025
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 1026
    iget-object v1, p0, Lcom/umeng/message/UTrack$4;->c:Lcom/umeng/message/UTrack$ICallBack;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "alias:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/message/UTrack$4;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u79fb\u9664\u5931\u8d25:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v6, v0}, Lcom/umeng/message/UTrack$ICallBack;->onMessage(ZLjava/lang/String;)V

    goto/16 :goto_1

    .line 1016
    :cond_5
    :try_start_2
    sget-object v4, Lcom/umeng/message/UTrack$SuccessState;->d:Lcom/umeng/message/UTrack$SuccessState;

    if-ne v0, v4, :cond_6

    .line 1017
    const-string v0, "fail"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 1018
    :cond_6
    sget-object v1, Lcom/umeng/message/UTrack$SuccessState;->a:Lcom/umeng/message/UTrack$SuccessState;

    if-ne v0, v1, :cond_4

    .line 1019
    const-string v0, "success"

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 1028
    :cond_7
    iget-object v0, p0, Lcom/umeng/message/UTrack$4;->c:Lcom/umeng/message/UTrack$ICallBack;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "alias:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/message/UTrack$4;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u79fb\u9664\u5931\u8d25"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Lcom/umeng/message/UTrack$ICallBack;->onMessage(ZLjava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    move-object v1, v0

    goto/16 :goto_0
.end method
