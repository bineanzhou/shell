.class public Lcom/umeng/message/entity/UMessage;
.super Ljava/lang/Object;
.source "UMessage.java"


# static fields
.field public static final DISPLAY_TYPE_AUTOUPDATE:Ljava/lang/String; = "autoupdate"

.field public static final DISPLAY_TYPE_CUSTOM:Ljava/lang/String; = "custom"

.field public static final DISPLAY_TYPE_NOTIFICATION:Ljava/lang/String; = "notification"

.field public static final DISPLAY_TYPE_NOTIFICATIONPULLAPP:Ljava/lang/String; = "notificationpullapp"

.field public static final DISPLAY_TYPE_PULLAPP:Ljava/lang/String; = "pullapp"

.field public static final NOTIFICATION_GO_ACTIVITY:Ljava/lang/String; = "go_activity"

.field public static final NOTIFICATION_GO_APP:Ljava/lang/String; = "go_app"

.field public static final NOTIFICATION_GO_APPURL:Ljava/lang/String; = "go_appurl"

.field public static final NOTIFICATION_GO_CUSTOM:Ljava/lang/String; = "go_custom"

.field public static final NOTIFICATION_GO_URL:Ljava/lang/String; = "go_url"


# instance fields
.field private a:Lorg/json/JSONObject;

.field public activity:Ljava/lang/String;

.field public after_open:Ljava/lang/String;

.field public alias:Ljava/lang/String;

.field public bar_image:Ljava/lang/String;

.field public builder_id:I

.field public clickOrDismiss:Z

.field public custom:Ljava/lang/String;

.field public display_type:Ljava/lang/String;

.field public expand_image:Ljava/lang/String;

.field public extra:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public icon:Ljava/lang/String;

.field public img:Ljava/lang/String;

.field public isAction:Z

.field public largeIcon:Ljava/lang/String;

.field public message_id:Ljava/lang/String;

.field public msg_id:Ljava/lang/String;

.field public play_lights:Z

.field public play_sound:Z

.field public play_vibrate:Z

.field public pulledWho:Ljava/lang/String;

.field public pulled_package:Ljava/lang/String;

.field public pulled_service:Ljava/lang/String;

.field public random_min:J

.field public recall:Ljava/lang/String;

.field public screen_on:Z

.field public sound:Ljava/lang/String;

.field public task_id:Ljava/lang/String;

.field public text:Ljava/lang/String;

.field public ticker:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Lcom/umeng/message/entity/UMessage;->a:Lorg/json/JSONObject;

    .line 132
    const-string v0, "msg_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/entity/UMessage;->msg_id:Ljava/lang/String;

    .line 133
    const-string v0, "display_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/entity/UMessage;->display_type:Ljava/lang/String;

    .line 134
    const-string v0, "alias"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/entity/UMessage;->alias:Ljava/lang/String;

    .line 135
    const-string v0, "random_min"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/message/entity/UMessage;->random_min:J

    .line 137
    const-string v0, "body"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 138
    const-string v1, "ticker"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/message/entity/UMessage;->ticker:Ljava/lang/String;

    .line 139
    const-string v1, "title"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/message/entity/UMessage;->title:Ljava/lang/String;

    .line 140
    const-string v1, "text"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/message/entity/UMessage;->text:Ljava/lang/String;

    .line 141
    const-string v1, "play_vibrate"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/umeng/message/entity/UMessage;->play_vibrate:Z

    .line 142
    const-string v1, "play_lights"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/umeng/message/entity/UMessage;->play_lights:Z

    .line 143
    const-string v1, "play_sound"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/umeng/message/entity/UMessage;->play_sound:Z

    .line 144
    const-string v1, "screen_on"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/umeng/message/entity/UMessage;->screen_on:Z

    .line 146
    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/message/entity/UMessage;->url:Ljava/lang/String;

    .line 147
    const-string v1, "img"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/message/entity/UMessage;->img:Ljava/lang/String;

    .line 148
    const-string v1, "sound"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/message/entity/UMessage;->sound:Ljava/lang/String;

    .line 149
    const-string v1, "icon"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/message/entity/UMessage;->icon:Ljava/lang/String;

    .line 150
    const-string v1, "after_open"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/message/entity/UMessage;->after_open:Ljava/lang/String;

    .line 151
    const-string v1, "largeIcon"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/message/entity/UMessage;->largeIcon:Ljava/lang/String;

    .line 152
    const-string v1, "activity"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/message/entity/UMessage;->activity:Ljava/lang/String;

    .line 153
    const-string v1, "custom"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/message/entity/UMessage;->custom:Ljava/lang/String;

    .line 154
    const-string v1, "recall"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/message/entity/UMessage;->recall:Ljava/lang/String;

    .line 156
    const-string v1, "bar_image"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/message/entity/UMessage;->bar_image:Ljava/lang/String;

    .line 157
    const-string v1, "expand_image"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/message/entity/UMessage;->expand_image:Ljava/lang/String;

    .line 159
    const-string v1, "builder_id"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/umeng/message/entity/UMessage;->builder_id:I

    .line 161
    const-string v1, "isAction"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/umeng/message/entity/UMessage;->isAction:Z

    .line 162
    const-string v1, "pulled_service"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/message/entity/UMessage;->pulled_service:Ljava/lang/String;

    .line 163
    const-string v1, "pulled_package"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/message/entity/UMessage;->pulled_package:Ljava/lang/String;

    .line 164
    const-string v1, "pa"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/entity/UMessage;->pulledWho:Ljava/lang/String;

    .line 166
    const-string v0, "extra"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 167
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/umeng/message/entity/UMessage;->extra:Ljava/util/Map;

    .line 169
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 170
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 172
    iget-object v3, p0, Lcom/umeng/message/entity/UMessage;->extra:Ljava/util/Map;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 175
    :cond_0
    return-void
.end method


# virtual methods
.method public getRaw()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/umeng/message/entity/UMessage;->a:Lorg/json/JSONObject;

    return-object v0
.end method

.method public hasResourceFromInternet()Z
    .locals 1

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/umeng/message/entity/UMessage;->isLargeIconFromInternet()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/umeng/message/entity/UMessage;->isSoundFromInternet()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/umeng/message/entity/UMessage;->bar_image:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/message/entity/UMessage;->expand_image:Ljava/lang/String;

    .line 183
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 182
    :goto_0
    return v0

    .line 183
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLargeIconFromInternet()Z
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/umeng/message/entity/UMessage;->img:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSoundFromInternet()Z
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/umeng/message/entity/UMessage;->sound:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/umeng/message/entity/UMessage;->sound:Ljava/lang/String;

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/umeng/message/entity/UMessage;->sound:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
