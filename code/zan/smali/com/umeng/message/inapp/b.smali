.class final Lcom/umeng/message/inapp/b;
.super Ljava/lang/Object;
.source "UmengCardMessageBuilder.java"

# interfaces
.implements Lcom/umeng/message/inapp/IUmengInAppMessageCallback;
.implements Lcom/umeng/message/inapp/UImageLoadTask$ImageLoaderCallback;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final f:I = 0xa


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Lcom/umeng/message/entity/UInAppMessage;

.field private g:Lcom/umeng/message/inapp/IUmengInAppMsgCloseCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/umeng/message/inapp/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/message/inapp/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/umeng/message/inapp/IUmengInAppMsgCloseCallback;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/umeng/message/inapp/b;->b:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/umeng/message/inapp/b;->c:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/umeng/message/inapp/b;->g:Lcom/umeng/message/inapp/IUmengInAppMsgCloseCallback;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/inapp/b;->b:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/umeng/message/inapp/b;->c:Ljava/lang/String;

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/message/inapp/b;->d:Z

    .line 46
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 5

    .prologue
    .line 144
    if-nez p1, :cond_0

    .line 164
    :goto_0
    return-void

    .line 148
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 149
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 150
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 151
    new-instance v1, Lcom/umeng/message/inapp/UmengCardMessage;

    invoke-direct {v1}, Lcom/umeng/message/inapp/UmengCardMessage;-><init>()V

    .line 152
    iget-object v2, p0, Lcom/umeng/message/inapp/b;->g:Lcom/umeng/message/inapp/IUmengInAppMsgCloseCallback;

    invoke-virtual {v1, v2}, Lcom/umeng/message/inapp/UmengCardMessage;->a(Lcom/umeng/message/inapp/IUmengInAppMsgCloseCallback;)V

    .line 153
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 154
    const-string v3, "label"

    iget-object v4, p0, Lcom/umeng/message/inapp/b;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v3, "msg"

    iget-object v4, p0, Lcom/umeng/message/inapp/b;->e:Lcom/umeng/message/entity/UInAppMessage;

    invoke-virtual {v4}, Lcom/umeng/message/entity/UInAppMessage;->getRaw()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v3, "bitmapByte"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 157
    invoke-virtual {v1, v2}, Lcom/umeng/message/inapp/UmengCardMessage;->setArguments(Landroid/os/Bundle;)V

    .line 158
    iget-object v0, p0, Lcom/umeng/message/inapp/b;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v2, p0, Lcom/umeng/message/inapp/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/umeng/message/inapp/UmengCardMessage;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/umeng/message/inapp/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/inapp/InAppMessageManager;->getInstance(Landroid/content/Context;)Lcom/umeng/message/inapp/InAppMessageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/message/inapp/b;->e:Lcom/umeng/message/entity/UInAppMessage;

    iget-object v1, v1, Lcom/umeng/message/entity/UInAppMessage;->msg_id:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/umeng/message/inapp/InAppMessageManager;->a(Ljava/lang/String;I)V

    .line 160
    iget-object v0, p0, Lcom/umeng/message/inapp/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/inapp/InAppMessageManager;->getInstance(Landroid/content/Context;)Lcom/umeng/message/inapp/InAppMessageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/message/inapp/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/message/inapp/InAppMessageManager;->f(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 52
    iget-object v1, p0, Lcom/umeng/message/inapp/b;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/message/common/UmengMessageDeviceConfig;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/message/inapp/b;->b:Landroid/content/Context;

    .line 53
    invoke-static {v2}, Lcom/umeng/message/inapp/InAppMessageManager;->getInstance(Landroid/content/Context;)Lcom/umeng/message/inapp/InAppMessageManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/message/inapp/InAppMessageManager;->g()Ljava/lang/String;

    move-result-object v2

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 54
    iget-object v1, p0, Lcom/umeng/message/inapp/b;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/message/inapp/InAppMessageManager;->getInstance(Landroid/content/Context;)Lcom/umeng/message/inapp/InAppMessageManager;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/umeng/message/inapp/InAppMessageManager;->d(Ljava/lang/String;)V

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/umeng/message/inapp/b;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/message/inapp/InAppMessageManager;->getInstance(Landroid/content/Context;)Lcom/umeng/message/inapp/InAppMessageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/message/inapp/b;->b:Landroid/content/Context;

    .line 57
    invoke-static {v2}, Lcom/umeng/message/common/UmengMessageDeviceConfig;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-virtual {v1, v2}, Lcom/umeng/message/inapp/InAppMessageManager;->e(Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/umeng/message/inapp/b;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/message/inapp/InAppMessageManager;->getInstance(Landroid/content/Context;)Lcom/umeng/message/inapp/InAppMessageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/message/inapp/InAppMessageManager;->f()Ljava/lang/String;

    move-result-object v3

    .line 60
    const/4 v2, 0x0

    .line 61
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 63
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    if-nez v1, :cond_3

    .line 70
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 71
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 72
    iget-object v2, p0, Lcom/umeng/message/inapp/b;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/message/inapp/InAppMessageManager;->getInstance(Landroid/content/Context;)Lcom/umeng/message/inapp/InAppMessageManager;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/umeng/message/inapp/InAppMessageManager;->d(Ljava/lang/String;)V

    .line 81
    :cond_1
    :goto_1
    return v0

    .line 64
    :catch_0
    move-exception v1

    .line 65
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    move-object v1, v2

    goto :goto_0

    .line 74
    :cond_3
    invoke-direct {p0, v1, p1}, Lcom/umeng/message/inapp/b;->a(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 76
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_4

    .line 77
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 78
    iget-object v2, p0, Lcom/umeng/message/inapp/b;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/message/inapp/InAppMessageManager;->getInstance(Landroid/content/Context;)Lcom/umeng/message/inapp/InAppMessageManager;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/umeng/message/inapp/InAppMessageManager;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 81
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(Lorg/json/JSONArray;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 87
    move v1, v0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 88
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    const/4 v0, 0x1

    .line 95
    :cond_0
    :goto_1
    return v0

    .line 87
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    :catch_0
    move-exception v1

    .line 93
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private b()V
    .locals 4

    .prologue
    .line 172
    :try_start_0
    new-instance v1, Lcom/umeng/message/inapp/UmengCardMessage;

    invoke-direct {v1}, Lcom/umeng/message/inapp/UmengCardMessage;-><init>()V

    .line 173
    iget-object v0, p0, Lcom/umeng/message/inapp/b;->g:Lcom/umeng/message/inapp/IUmengInAppMsgCloseCallback;

    invoke-virtual {v1, v0}, Lcom/umeng/message/inapp/UmengCardMessage;->a(Lcom/umeng/message/inapp/IUmengInAppMsgCloseCallback;)V

    .line 174
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 175
    const-string v2, "label"

    iget-object v3, p0, Lcom/umeng/message/inapp/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v2, "msg"

    iget-object v3, p0, Lcom/umeng/message/inapp/b;->e:Lcom/umeng/message/entity/UInAppMessage;

    invoke-virtual {v3}, Lcom/umeng/message/entity/UInAppMessage;->getRaw()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-virtual {v1, v0}, Lcom/umeng/message/inapp/UmengCardMessage;->setArguments(Landroid/os/Bundle;)V

    .line 178
    iget-object v0, p0, Lcom/umeng/message/inapp/b;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v2, p0, Lcom/umeng/message/inapp/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/umeng/message/inapp/UmengCardMessage;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/umeng/message/inapp/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/inapp/InAppMessageManager;->getInstance(Landroid/content/Context;)Lcom/umeng/message/inapp/InAppMessageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/message/inapp/b;->e:Lcom/umeng/message/entity/UInAppMessage;

    iget-object v1, v1, Lcom/umeng/message/entity/UInAppMessage;->msg_id:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/umeng/message/inapp/InAppMessageManager;->a(Ljava/lang/String;I)V

    .line 180
    iget-object v0, p0, Lcom/umeng/message/inapp/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/inapp/InAppMessageManager;->getInstance(Landroid/content/Context;)Lcom/umeng/message/inapp/InAppMessageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/message/inapp/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/message/inapp/InAppMessageManager;->f(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_0
    return-void

    .line 181
    :catch_0
    move-exception v0

    .line 182
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v4, 0x6

    const/4 v0, 0x1

    .line 249
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 250
    iget-object v2, p0, Lcom/umeng/message/inapp/b;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/message/inapp/InAppMessageManager;->getInstance(Landroid/content/Context;)Lcom/umeng/message/inapp/InAppMessageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/umeng/message/inapp/InAppMessageManager;->g(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 251
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 252
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 253
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 252
    :goto_0
    return v0

    .line 253
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 99
    iget-object v0, p0, Lcom/umeng/message/inapp/b;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    sget-boolean v0, Lcom/umeng/message/PushAgent;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/umeng/message/inapp/b;->b:Landroid/content/Context;

    const-string v1, "\u63d2\u5c4f\u6d88\u606f\u7684\u6807\u7b7e\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 104
    :cond_0
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v1, Lcom/umeng/message/inapp/b;->a:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u63d2\u5c4f\u6d88\u606f\u7684\u6807\u7b7e\u4e0d\u80fd\u4e3a\u7a7a"

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v4, v2}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 122
    :goto_0
    return-void

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/umeng/message/inapp/b;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/umeng/message/inapp/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 109
    sget-boolean v0, Lcom/umeng/message/inapp/InAppMessageManager;->a:Z

    if-eqz v0, :cond_2

    .line 110
    iget-object v0, p0, Lcom/umeng/message/inapp/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/inapp/e;->a(Landroid/content/Context;)Lcom/umeng/message/inapp/e;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/message/inapp/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/umeng/message/inapp/e;->a(Ljava/lang/String;Lcom/umeng/message/inapp/IUmengInAppMessageCallback;)V

    goto :goto_0

    .line 112
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/umeng/message/inapp/b;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/message/inapp/InAppMessageManager;->getInstance(Landroid/content/Context;)Lcom/umeng/message/inapp/InAppMessageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/message/inapp/b;->c:Ljava/lang/String;

    .line 113
    invoke-virtual {v2, v3}, Lcom/umeng/message/inapp/InAppMessageManager;->b(Ljava/lang/String;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget v2, Lcom/umeng/message/inapp/InAppMessageManager;->b:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 114
    iget-object v0, p0, Lcom/umeng/message/inapp/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/inapp/e;->a(Landroid/content/Context;)Lcom/umeng/message/inapp/e;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/message/inapp/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/umeng/message/inapp/e;->a(Ljava/lang/String;Lcom/umeng/message/inapp/IUmengInAppMessageCallback;)V

    goto :goto_0

    .line 116
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/umeng/message/inapp/b;->onCardMessage(Lcom/umeng/message/entity/UInAppMessage;)V

    goto :goto_0

    .line 120
    :cond_4
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v1, Lcom/umeng/message/inapp/b;->a:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u63d2\u5c4f\u6d88\u606f\u7684\u6700\u5927\u6807\u7b7e\u6570\u4e3a 10"

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v4, v2}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCardMessage(Lcom/umeng/message/entity/UInAppMessage;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 193
    const/4 v1, 0x0

    .line 194
    iget-object v0, p0, Lcom/umeng/message/inapp/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/inapp/InAppMessageManager;->getInstance(Landroid/content/Context;)Lcom/umeng/message/inapp/InAppMessageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/umeng/message/inapp/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/umeng/message/inapp/InAppMessageManager;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 195
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 197
    :try_start_0
    new-instance v0, Lcom/umeng/message/entity/UInAppMessage;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Lcom/umeng/message/entity/UInAppMessage;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_0
    if-eqz p1, :cond_4

    .line 204
    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/umeng/message/entity/UInAppMessage;->msg_id:Ljava/lang/String;

    iget-object v2, v0, Lcom/umeng/message/entity/UInAppMessage;->msg_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 205
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/umeng/message/inapp/b;->b:Landroid/content/Context;

    iget-object v0, v0, Lcom/umeng/message/entity/UInAppMessage;->msg_id:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/umeng/message/proguard/h;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/umeng/message/inapp/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/inapp/InAppMessageManager;->getInstance(Landroid/content/Context;)Lcom/umeng/message/inapp/InAppMessageManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/umeng/message/inapp/InAppMessageManager;->a(Ljava/io/File;)V

    .line 208
    :cond_0
    iput-object p1, p0, Lcom/umeng/message/inapp/b;->e:Lcom/umeng/message/entity/UInAppMessage;

    .line 216
    :goto_1
    iget-object v0, p0, Lcom/umeng/message/inapp/b;->e:Lcom/umeng/message/entity/UInAppMessage;

    iget v0, v0, Lcom/umeng/message/entity/UInAppMessage;->show_type:I

    if-ne v0, v5, :cond_1

    iget-object v0, p0, Lcom/umeng/message/inapp/b;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/umeng/message/inapp/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/umeng/message/inapp/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/inapp/InAppMessageManager;->getInstance(Landroid/content/Context;)Lcom/umeng/message/inapp/InAppMessageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/message/inapp/b;->e:Lcom/umeng/message/entity/UInAppMessage;

    iget-object v1, v1, Lcom/umeng/message/entity/UInAppMessage;->msg_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lcom/umeng/message/inapp/InAppMessageManager;->a(Ljava/lang/String;I)V

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/umeng/message/inapp/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/inapp/InAppMessageManager;->getInstance(Landroid/content/Context;)Lcom/umeng/message/inapp/InAppMessageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/message/inapp/b;->e:Lcom/umeng/message/entity/UInAppMessage;

    invoke-virtual {v0, v1}, Lcom/umeng/message/inapp/InAppMessageManager;->b(Lcom/umeng/message/entity/UInAppMessage;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/umeng/message/inapp/b;->b:Landroid/content/Context;

    .line 222
    invoke-static {v0}, Lcom/umeng/message/inapp/InAppMessageManager;->getInstance(Landroid/content/Context;)Lcom/umeng/message/inapp/InAppMessageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/message/inapp/b;->e:Lcom/umeng/message/entity/UInAppMessage;

    invoke-virtual {v0, v1}, Lcom/umeng/message/inapp/InAppMessageManager;->c(Lcom/umeng/message/entity/UInAppMessage;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 235
    :cond_2
    :goto_2
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 199
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_3
    move-object v0, v1

    goto :goto_0

    .line 209
    :cond_4
    if-eqz v0, :cond_2

    .line 210
    iput-object v0, p0, Lcom/umeng/message/inapp/b;->e:Lcom/umeng/message/entity/UInAppMessage;

    goto :goto_1

    .line 226
    :cond_5
    iget-object v0, p0, Lcom/umeng/message/inapp/b;->e:Lcom/umeng/message/entity/UInAppMessage;

    iget v0, v0, Lcom/umeng/message/entity/UInAppMessage;->msg_type:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/umeng/message/inapp/b;->e:Lcom/umeng/message/entity/UInAppMessage;

    iget v0, v0, Lcom/umeng/message/entity/UInAppMessage;->msg_type:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    .line 228
    :cond_6
    iget-object v0, p0, Lcom/umeng/message/inapp/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/inapp/InAppMessageManager;->getInstance(Landroid/content/Context;)Lcom/umeng/message/inapp/InAppMessageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/message/inapp/b;->e:Lcom/umeng/message/entity/UInAppMessage;

    iget-object v2, p0, Lcom/umeng/message/inapp/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/umeng/message/inapp/InAppMessageManager;->a(Lcom/umeng/message/entity/UInAppMessage;Ljava/lang/String;)V

    .line 229
    invoke-direct {p0}, Lcom/umeng/message/inapp/b;->b()V

    goto :goto_2

    .line 231
    :cond_7
    new-instance v0, Lcom/umeng/message/inapp/UImageLoadTask;

    iget-object v1, p0, Lcom/umeng/message/inapp/b;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/umeng/message/inapp/b;->e:Lcom/umeng/message/entity/UInAppMessage;

    invoke-direct {v0, v1, v2}, Lcom/umeng/message/inapp/UImageLoadTask;-><init>(Landroid/content/Context;Lcom/umeng/message/entity/UInAppMessage;)V

    .line 232
    invoke-virtual {v0, p0}, Lcom/umeng/message/inapp/UImageLoadTask;->a(Lcom/umeng/message/inapp/UImageLoadTask$ImageLoaderCallback;)V

    .line 233
    new-array v1, v5, [Ljava/lang/String;

    iget-object v2, p0, Lcom/umeng/message/inapp/b;->e:Lcom/umeng/message/entity/UInAppMessage;

    iget-object v2, v2, Lcom/umeng/message/entity/UInAppMessage;->image_url:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/umeng/message/inapp/UImageLoadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2
.end method

.method public onLoadImage([Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/umeng/message/inapp/b;->d:Z

    if-nez v0, :cond_0

    .line 240
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lcom/umeng/message/inapp/b;->a(Landroid/graphics/Bitmap;)V

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/umeng/message/inapp/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/inapp/InAppMessageManager;->getInstance(Landroid/content/Context;)Lcom/umeng/message/inapp/InAppMessageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/message/inapp/b;->e:Lcom/umeng/message/entity/UInAppMessage;

    iget-object v2, p0, Lcom/umeng/message/inapp/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/umeng/message/inapp/InAppMessageManager;->a(Lcom/umeng/message/entity/UInAppMessage;Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method public onSplashMessage(Lcom/umeng/message/entity/UInAppMessage;)V
    .locals 0

    .prologue
    .line 189
    return-void
.end method
