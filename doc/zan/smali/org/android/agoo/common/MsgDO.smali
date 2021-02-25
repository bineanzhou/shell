.class public Lorg/android/agoo/common/MsgDO;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field public agooFlag:Z

.field public body:Ljava/lang/String;

.field public dataId:Ljava/lang/String;

.field public errorCode:Ljava/lang/String;

.field public extData:Ljava/lang/String;

.field public fromAppkey:Ljava/lang/String;

.field public fromPkg:Ljava/lang/String;

.field public isFromCache:Z

.field public isStartProc:Z

.field public messageSource:Ljava/lang/String;

.field public msgIds:Ljava/lang/String;

.field public msgStatus:Ljava/lang/String;

.field public notifyEnable:Ljava/lang/String;

.field public pack:Ljava/lang/String;

.field public removePacks:Ljava/lang/String;

.field public reportStr:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v0, p0, Lorg/android/agoo/common/MsgDO;->isStartProc:Z

    .line 28
    iput-boolean v0, p0, Lorg/android/agoo/common/MsgDO;->isFromCache:Z

    return-void
.end method


# virtual methods
.method public getMsgInfo()Ljava/lang/String;
    .locals 3

    .prologue
    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 35
    const-string v1, "msgIds"

    iget-object v2, p0, Lorg/android/agoo/common/MsgDO;->msgIds:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v1, "extData"

    iget-object v2, p0, Lorg/android/agoo/common/MsgDO;->extData:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v1, "body"

    iget-object v2, p0, Lorg/android/agoo/common/MsgDO;->body:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v1, "dataId"

    iget-object v2, p0, Lorg/android/agoo/common/MsgDO;->dataId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v1, "pack"

    iget-object v2, p0, Lorg/android/agoo/common/MsgDO;->pack:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v1, "messageSource"

    iget-object v2, p0, Lorg/android/agoo/common/MsgDO;->messageSource:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v1, p0, Lorg/android/agoo/common/MsgDO;->removePacks:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 42
    const-string v1, "removePacks"

    iget-object v2, p0, Lorg/android/agoo/common/MsgDO;->removePacks:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :cond_0
    iget-object v1, p0, Lorg/android/agoo/common/MsgDO;->errorCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 45
    const-string v1, "errorCode"

    iget-object v2, p0, Lorg/android/agoo/common/MsgDO;->errorCode:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :cond_1
    iget-object v1, p0, Lorg/android/agoo/common/MsgDO;->type:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 48
    const-string v1, "type"

    iget-object v2, p0, Lorg/android/agoo/common/MsgDO;->type:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 51
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
