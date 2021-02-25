.class public Lcom/umeng/message/entity/UInAppMessage;
.super Ljava/lang/Object;
.source "UInAppMessage.java"


# static fields
.field public static final CARD_A:I = 0x2

.field public static final CARD_B:I = 0x3

.field public static final CLOSE:Ljava/lang/String; = "go_app"

.field public static final CUSTOM_CARD:I = 0x4

.field public static final GO_ACTIVITY:Ljava/lang/String; = "go_activity"

.field public static final GO_URL:Ljava/lang/String; = "go_url"

.field public static final NONE:Ljava/lang/String; = "none"

.field public static final PLAIN_TAXT_A:I = 0x5

.field public static final PLAIN_TAXT_B:I = 0x6

.field public static final SPLASH_A:I = 0x0

.field public static final SPLASH_B:I = 0x1

.field public static final VIEW_BOTTOM_IMAGE:I = 0x11

.field public static final VIEW_CUSTOM_BUTTON:I = 0x13

.field public static final VIEW_IMAGE:I = 0x10

.field public static final VIEW_PLAIN_TEXT:I = 0x12


# instance fields
.field private a:Lorg/json/JSONObject;

.field public action_activity:Ljava/lang/String;

.field public action_type:Ljava/lang/String;

.field public action_url:Ljava/lang/String;

.field public bottom_action_activity:Ljava/lang/String;

.field public bottom_action_type:Ljava/lang/String;

.field public bottom_action_url:Ljava/lang/String;

.field public bottom_height:I

.field public bottom_image_url:Ljava/lang/String;

.field public bottom_width:I

.field public button_text:Ljava/lang/String;

.field public check_num:Ljava/lang/String;

.field public content:Ljava/lang/String;

.field public customButtonActionType:Ljava/lang/String;

.field public customButtonActivity:Ljava/lang/String;

.field public customButtonUrl:Ljava/lang/String;

.field public display_button:Z

.field public display_name:Ljava/lang/String;

.field public display_time:I

.field public expire_time:Ljava/lang/String;

.field public height:I

.field public image_url:Ljava/lang/String;

.field public msg_id:Ljava/lang/String;

.field public msg_type:I

.field public pduration:I

.field public plainTextActionType:Ljava/lang/String;

.field public plainTextActivity:Ljava/lang/String;

.field public plainTextUrl:Ljava/lang/String;

.field public sduration:I

.field public show_times:I

.field public show_type:I

.field public start_time:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public width:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x5

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lcom/umeng/message/entity/UInAppMessage;->a:Lorg/json/JSONObject;

    .line 117
    const-string v0, "msg_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/entity/UInAppMessage;->msg_id:Ljava/lang/String;

    .line 118
    const-string v0, "msg_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/message/entity/UInAppMessage;->msg_type:I

    .line 119
    const-string v0, "msg_info"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 120
    const-string v1, "display_button"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/umeng/message/entity/UInAppMessage;->display_button:Z

    .line 121
    const-string v1, "display_name"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/message/entity/UInAppMessage;->display_name:Ljava/lang/String;

    .line 122
    const-string v1, "display_time"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/umeng/message/entity/UInAppMessage;->display_time:I

    .line 124
    iget v1, p0, Lcom/umeng/message/entity/UInAppMessage;->msg_type:I

    if-eq v1, v3, :cond_0

    iget v1, p0, Lcom/umeng/message/entity/UInAppMessage;->msg_type:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 125
    :cond_0
    const-string v1, "plain_text"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 126
    const-string v2, "title"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/umeng/message/entity/UInAppMessage;->title:Ljava/lang/String;

    .line 127
    const-string v2, "content"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/umeng/message/entity/UInAppMessage;->content:Ljava/lang/String;

    .line 128
    const-string v2, "button_text"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/umeng/message/entity/UInAppMessage;->button_text:Ljava/lang/String;

    .line 129
    const-string v2, "action_type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/umeng/message/entity/UInAppMessage;->plainTextActionType:Ljava/lang/String;

    .line 130
    const-string v2, "activity"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/umeng/message/entity/UInAppMessage;->plainTextActivity:Ljava/lang/String;

    .line 131
    const-string v2, "url"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/message/entity/UInAppMessage;->plainTextUrl:Ljava/lang/String;

    .line 134
    :cond_1
    const-string v1, "image"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 135
    const-string v1, "image"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 136
    const-string v2, "imageurl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/umeng/message/entity/UInAppMessage;->image_url:Ljava/lang/String;

    .line 137
    const-string v2, "width"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/umeng/message/entity/UInAppMessage;->width:I

    .line 138
    const-string v2, "height"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/umeng/message/entity/UInAppMessage;->height:I

    .line 139
    const-string v2, "action_type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/umeng/message/entity/UInAppMessage;->action_type:Ljava/lang/String;

    .line 140
    const-string v2, "activity"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/umeng/message/entity/UInAppMessage;->action_activity:Ljava/lang/String;

    .line 141
    const-string v2, "url"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/message/entity/UInAppMessage;->action_url:Ljava/lang/String;

    .line 144
    :cond_2
    const-string v1, "bottom_image"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 145
    const-string v1, "bottom_image"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 146
    const-string v2, "imageurl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/umeng/message/entity/UInAppMessage;->bottom_image_url:Ljava/lang/String;

    .line 147
    const-string v2, "width"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/umeng/message/entity/UInAppMessage;->bottom_width:I

    .line 148
    const-string v2, "height"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/umeng/message/entity/UInAppMessage;->bottom_height:I

    .line 149
    const-string v2, "action_type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/umeng/message/entity/UInAppMessage;->bottom_action_type:Ljava/lang/String;

    .line 150
    const-string v2, "activity"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/umeng/message/entity/UInAppMessage;->bottom_action_activity:Ljava/lang/String;

    .line 151
    const-string v2, "url"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/message/entity/UInAppMessage;->bottom_action_url:Ljava/lang/String;

    .line 154
    :cond_3
    const-string v1, "custom_button"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 155
    const-string v1, "custom_button"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 156
    const-string v1, "action_type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/message/entity/UInAppMessage;->customButtonActionType:Ljava/lang/String;

    .line 157
    const-string v1, "activity"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/message/entity/UInAppMessage;->customButtonActivity:Ljava/lang/String;

    .line 158
    const-string v1, "url"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/entity/UInAppMessage;->customButtonUrl:Ljava/lang/String;

    .line 161
    :cond_4
    const-string v0, "policy"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 162
    const-string v1, "show_type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/umeng/message/entity/UInAppMessage;->show_type:I

    .line 163
    const-string v1, "show_times"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/umeng/message/entity/UInAppMessage;->show_times:I

    .line 164
    const-string v1, "start_time"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/message/entity/UInAppMessage;->start_time:Ljava/lang/String;

    .line 165
    const-string v1, "expire_time"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/entity/UInAppMessage;->expire_time:Ljava/lang/String;

    .line 170
    return-void
.end method


# virtual methods
.method public getRaw()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/umeng/message/entity/UInAppMessage;->a:Lorg/json/JSONObject;

    return-object v0
.end method
