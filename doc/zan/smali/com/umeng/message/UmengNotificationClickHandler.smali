.class public Lcom/umeng/message/UmengNotificationClickHandler;
.super Ljava/lang/Object;
.source "UmengNotificationClickHandler.java"

# interfaces
.implements Lcom/umeng/message/UHandler;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/umeng/message/UmengNotificationClickHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/message/UmengNotificationClickHandler;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Intent;Lcom/umeng/message/entity/UMessage;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 255
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/umeng/message/entity/UMessage;->extra:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 264
    :cond_0
    return-object p1

    .line 258
    :cond_1
    iget-object v0, p2, Lcom/umeng/message/entity/UMessage;->extra:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 259
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 260
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 261
    if-eqz v1, :cond_2

    .line 262
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Lcom/umeng/message/entity/UMessage;)V
    .locals 15

    .prologue
    .line 122
    :try_start_0
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/umeng/message/entity/UMessage;->custom:Ljava/lang/String;

    .line 123
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 127
    const-string v1, "p"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 128
    const-string v1, "pu"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 129
    const-string v4, "ju"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 130
    const-string v5, "en"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 131
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 134
    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 135
    if-eqz v2, :cond_2

    array-length v7, v2

    const/4 v8, 0x2

    if-lt v7, v8, :cond_0

    .line 138
    :cond_2
    const/4 v7, 0x1

    aget-object v2, v2, v7

    const-string v7, "/"

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 140
    if-eqz v2, :cond_3

    array-length v7, v2

    const/4 v8, 0x1

    if-lt v7, v8, :cond_0

    .line 143
    :cond_3
    const/4 v7, 0x0

    aget-object v7, v2, v7

    .line 145
    const-string v2, ""

    .line 146
    const/4 v8, 0x1

    if-ne v5, v8, :cond_5

    .line 147
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v5

    .line 149
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    if-eqz v5, :cond_4

    array-length v8, v5

    const/4 v9, 0x2

    if-lt v8, v9, :cond_4

    .line 151
    const/4 v8, 0x1

    aget-object v8, v5, v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    :cond_4
    const-string v8, "&umessage="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual/range {p2 .. p2}, Lcom/umeng/message/entity/UMessage;->getRaw()Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    const-string v8, "&thirdkey="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-static/range {p1 .. p1}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v8

    invoke-virtual {v8}, Lcom/umeng/message/PushAgent;->getMessageAppkey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    sget-object v8, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v9, Lcom/umeng/message/UmengNotificationClickHandler;->a:Ljava/lang/String;

    const/4 v10, 0x2

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "url:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-interface {v8, v9, v10, v11}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 158
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/message/proguard/c;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    .line 162
    :goto_1
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    aget-object v5, v5, v8

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 167
    :cond_5
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 169
    invoke-virtual {v6, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const/high16 v2, 0x10000000

    invoke-virtual {v6, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 172
    invoke-static {v3}, Lcom/umeng/message/common/UmengMessageDeviceConfig;->getDataData(Ljava/lang/String;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v2

    if-eqz v2, :cond_7

    .line 175
    :try_start_3
    move-object/from16 v0, p1

    invoke-static {v0, v1, v3}, Lcom/umeng/message/common/UmengMessageDeviceConfig;->isIntentExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 177
    if-eqz v1, :cond_6

    .line 178
    invoke-static/range {p1 .. p1}, Lcom/umeng/message/UTrack;->getInstance(Landroid/content/Context;)Lcom/umeng/message/UTrack;

    move-result-object v1

    const/16 v2, 0x3e

    move-object/from16 v0, p2

    invoke-virtual {v1, v0, v2}, Lcom/umeng/message/UTrack;->trackMsgPulled(Lcom/umeng/message/entity/UMessage;I)V

    .line 180
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 192
    :catch_0
    move-exception v1

    goto/16 :goto_0

    .line 159
    :catch_1
    move-exception v1

    .line 160
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    move-object v1, v2

    goto :goto_1

    .line 182
    :cond_6
    :try_start_5
    invoke-static/range {p1 .. p1}, Lcom/umeng/message/UTrack;->getInstance(Landroid/content/Context;)Lcom/umeng/message/UTrack;

    move-result-object v1

    const/16 v2, 0x3d

    move-object/from16 v0, p2

    invoke-virtual {v1, v0, v2}, Lcom/umeng/message/UTrack;->trackMsgPulled(Lcom/umeng/message/entity/UMessage;I)V

    .line 184
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 187
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 189
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 190
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 209
    :catch_2
    move-exception v1

    .line 210
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 196
    :cond_7
    :try_start_6
    invoke-static/range {p1 .. p1}, Lcom/umeng/message/UTrack;->getInstance(Landroid/content/Context;)Lcom/umeng/message/UTrack;

    move-result-object v1

    const/16 v2, 0x3c

    move-object/from16 v0, p2

    invoke-virtual {v1, v0, v2}, Lcom/umeng/message/UTrack;->trackMsgPulled(Lcom/umeng/message/entity/UMessage;I)V

    .line 199
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 202
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 204
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 205
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0
.end method


# virtual methods
.method public autoUpdate(Landroid/content/Context;Lcom/umeng/message/entity/UMessage;)V
    .locals 7

    .prologue
    .line 106
    :try_start_0
    invoke-static {p1}, Lcom/umeng/message/proguard/l;->a(Landroid/content/Context;)Lcom/umeng/message/proguard/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/proguard/l;->g()Ljava/lang/Object;

    move-result-object v0

    .line 107
    const-string v1, "com.umeng.update.UmengUpdateAgent"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 108
    const-string v2, "com.umeng.update.UpdateResponse"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 109
    const-string v3, "showUpdateDialog"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 111
    if-eqz v0, :cond_0

    .line 112
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    .line 113
    invoke-virtual {v2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v4, v5

    .line 112
    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public dealWithCustomAction(Landroid/content/Context;Lcom/umeng/message/entity/UMessage;)V
    .locals 0

    .prologue
    .line 252
    return-void
.end method

.method public dismissNotification(Landroid/content/Context;Lcom/umeng/message/entity/UMessage;)V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public handleMessage(Landroid/content/Context;Lcom/umeng/message/entity/UMessage;)V
    .locals 2

    .prologue
    .line 46
    :try_start_0
    iget-boolean v0, p2, Lcom/umeng/message/entity/UMessage;->clickOrDismiss:Z

    if-nez v0, :cond_1

    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/UmengNotificationClickHandler;->dismissNotification(Landroid/content/Context;Lcom/umeng/message/entity/UMessage;)V

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    const-string v0, "autoupdate"

    iget-object v1, p2, Lcom/umeng/message/entity/UMessage;->display_type:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    invoke-static {p1}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/PushAgent;->isIncludesUmengUpdateSDK()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/UmengNotificationClickHandler;->autoUpdate(Landroid/content/Context;Lcom/umeng/message/entity/UMessage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 58
    :cond_2
    :try_start_1
    iget-object v0, p2, Lcom/umeng/message/entity/UMessage;->after_open:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 59
    const-string v0, "notificationpullapp"

    iget-object v1, p2, Lcom/umeng/message/entity/UMessage;->display_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 60
    const-string v0, "go_appurl"

    iget-object v1, p2, Lcom/umeng/message/entity/UMessage;->after_open:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/umeng/message/UmengNotificationClickHandler;->a(Landroid/content/Context;Lcom/umeng/message/entity/UMessage;)V

    goto :goto_0

    .line 66
    :cond_3
    const-string v0, "go_url"

    iget-object v1, p2, Lcom/umeng/message/entity/UMessage;->after_open:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/UmengNotificationClickHandler;->openUrl(Landroid/content/Context;Lcom/umeng/message/entity/UMessage;)V

    goto :goto_0

    .line 69
    :cond_4
    const-string v0, "go_activity"

    iget-object v1, p2, Lcom/umeng/message/entity/UMessage;->after_open:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 70
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/UmengNotificationClickHandler;->openActivity(Landroid/content/Context;Lcom/umeng/message/entity/UMessage;)V

    goto :goto_0

    .line 72
    :cond_5
    const-string v0, "go_custom"

    iget-object v1, p2, Lcom/umeng/message/entity/UMessage;->after_open:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/UmengNotificationClickHandler;->dealWithCustomAction(Landroid/content/Context;Lcom/umeng/message/entity/UMessage;)V

    goto :goto_0

    .line 75
    :cond_6
    const-string v0, "go_app"

    iget-object v1, p2, Lcom/umeng/message/entity/UMessage;->after_open:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 76
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/UmengNotificationClickHandler;->launchApp(Landroid/content/Context;Lcom/umeng/message/entity/UMessage;)V

    goto :goto_0

    .line 83
    :cond_7
    const-string v0, "notificationpullapp"

    iget-object v1, p2, Lcom/umeng/message/entity/UMessage;->display_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p2, Lcom/umeng/message/entity/UMessage;->url:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p2, Lcom/umeng/message/entity/UMessage;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 88
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/UmengNotificationClickHandler;->openUrl(Landroid/content/Context;Lcom/umeng/message/entity/UMessage;)V

    goto/16 :goto_0

    .line 89
    :cond_8
    iget-object v0, p2, Lcom/umeng/message/entity/UMessage;->activity:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p2, Lcom/umeng/message/entity/UMessage;->activity:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 90
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/UmengNotificationClickHandler;->openActivity(Landroid/content/Context;Lcom/umeng/message/entity/UMessage;)V

    goto/16 :goto_0

    .line 91
    :cond_9
    iget-object v0, p2, Lcom/umeng/message/entity/UMessage;->custom:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p2, Lcom/umeng/message/entity/UMessage;->custom:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 92
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/UmengNotificationClickHandler;->dealWithCustomAction(Landroid/content/Context;Lcom/umeng/message/entity/UMessage;)V

    goto/16 :goto_0

    .line 94
    :cond_a
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/UmengNotificationClickHandler;->launchApp(Landroid/content/Context;Lcom/umeng/message/entity/UMessage;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public launchApp(Landroid/content/Context;Lcom/umeng/message/entity/UMessage;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 237
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 238
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 239
    if-nez v0, :cond_0

    .line 240
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v1, Lcom/umeng/message/UmengNotificationClickHandler;->a:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u627e\u4e0d\u5230\u5e94\u7528: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v5, v2}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 249
    :goto_0
    return-void

    .line 243
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 245
    invoke-direct {p0, v0, p2}, Lcom/umeng/message/UmengNotificationClickHandler;->a(Landroid/content/Intent;Lcom/umeng/message/entity/UMessage;)Landroid/content/Intent;

    .line 246
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 247
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v1, Lcom/umeng/message/UmengNotificationClickHandler;->a:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u542f\u52a8\u5e94\u7528: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v5, v2}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public openActivity(Landroid/content/Context;Lcom/umeng/message/entity/UMessage;)V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p2, Lcom/umeng/message/entity/UMessage;->activity:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/umeng/message/entity/UMessage;->activity:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 230
    invoke-direct {p0, v0, p2}, Lcom/umeng/message/UmengNotificationClickHandler;->a(Landroid/content/Intent;Lcom/umeng/message/entity/UMessage;)Landroid/content/Intent;

    .line 231
    iget-object v1, p2, Lcom/umeng/message/entity/UMessage;->activity:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 233
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public openUrl(Landroid/content/Context;Lcom/umeng/message/entity/UMessage;)V
    .locals 7

    .prologue
    .line 215
    iget-object v0, p2, Lcom/umeng/message/entity/UMessage;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/umeng/message/entity/UMessage;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v1, Lcom/umeng/message/UmengNotificationClickHandler;->a:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u6253\u5f00\u94fe\u63a5: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Lcom/umeng/message/entity/UMessage;->url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 219
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p2, Lcom/umeng/message/entity/UMessage;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 220
    invoke-direct {p0, v0, p2}, Lcom/umeng/message/UmengNotificationClickHandler;->a(Landroid/content/Intent;Lcom/umeng/message/entity/UMessage;)Landroid/content/Intent;

    .line 221
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 222
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
