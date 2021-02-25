.class public Lcom/umeng/message/inapp/InAppMessageManager;
.super Ljava/lang/Object;
.source "InAppMessageManager.java"


# static fields
.field static a:Z = false

.field static b:I = 0x0

.field static c:I = 0x0

.field private static final d:Ljava/lang/String;

.field private static e:Lcom/umeng/message/inapp/InAppMessageManager; = null
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static final h:Ljava/lang/String; = "tempkey"

.field private static final i:Ljava/lang/String; = "tempvalue"


# instance fields
.field private f:Landroid/content/Context;

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/umeng/message/inapp/InAppMessageManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/message/inapp/InAppMessageManager;->d:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    sput-boolean v0, Lcom/umeng/message/inapp/InAppMessageManager;->a:Z

    .line 35
    const v0, 0x1b7740

    sput v0, Lcom/umeng/message/inapp/InAppMessageManager;->b:I

    .line 36
    const/16 v0, 0x3e8

    sput v0, Lcom/umeng/message/inapp/InAppMessageManager;->c:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/umeng/message/inapp/InAppMessageManager;->f:Landroid/content/Context;

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/umeng/message/inapp/InAppMessageManager;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/umeng/message/inapp/InAppMessageManager;->f:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/umeng/message/inapp/InAppMessageManager;Ljava/lang/String;)Lcom/umeng/message/inapp/a;
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/umeng/message/inapp/InAppMessageManager;->k(Ljava/lang/String;)Lcom/umeng/message/inapp/a;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 314
    .line 316
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 317
    const-string v1, "tempkey"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v3, "tempkey=?"

    .line 319
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    .line 320
    iget-object v0, p0, Lcom/umeng/message/inapp/InAppMessageManager;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/message/inapp/InAppMessageManager;->f:Landroid/content/Context;

    .line 321
    invoke-static {v1}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v1, Lcom/umeng/message/provider/a;->c:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "tempvalue"

    aput-object v7, v2, v5

    const/4 v5, 0x0

    .line 320
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 323
    if-nez v1, :cond_1

    .line 336
    if-eqz v1, :cond_0

    .line 337
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 341
    :cond_0
    :goto_0
    return-object p2

    .line 326
    :cond_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    .line 327
    if-eqz v0, :cond_2

    .line 328
    const-string v0, "tempvalue"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object p2

    .line 336
    :cond_2
    if-eqz v1, :cond_0

    .line 337
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 331
    :catch_0
    move-exception v0

    move-object v1, v6

    .line 332
    :goto_1
    if-eqz v0, :cond_3

    .line 333
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 336
    :cond_3
    if-eqz v1, :cond_0

    .line 337
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 336
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v6, :cond_4

    .line 337
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 336
    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_2

    .line 331
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 351
    new-instance v0, Lcom/umeng/message/inapp/InAppMessageManager$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/umeng/message/inapp/InAppMessageManager$2;-><init>(Lcom/umeng/message/inapp/InAppMessageManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/umeng/message/common/d;->a(Ljava/lang/Runnable;)V

    .line 398
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/umeng/message/inapp/InAppMessageManager;
    .locals 3

    .prologue
    .line 43
    sget-object v0, Lcom/umeng/message/inapp/InAppMessageManager;->e:Lcom/umeng/message/inapp/InAppMessageManager;

    if-nez v0, :cond_1

    .line 44
    const-class v1, Lcom/umeng/message/inapp/InAppMessageManager;

    monitor-enter v1

    .line 45
    :try_start_0
    sget-object v0, Lcom/umeng/message/inapp/InAppMessageManager;->e:Lcom/umeng/message/inapp/InAppMessageManager;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/umeng/message/inapp/InAppMessageManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/umeng/message/inapp/InAppMessageManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/umeng/message/inapp/InAppMessageManager;->e:Lcom/umeng/message/inapp/InAppMessageManager;

    .line 48
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :cond_1
    sget-object v0, Lcom/umeng/message/inapp/InAppMessageManager;->e:Lcom/umeng/message/inapp/InAppMessageManager;

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private j(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 148
    const-string v0, "0"

    invoke-direct {p0, p1, v0}, Lcom/umeng/message/inapp/InAppMessageManager;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private k(Ljava/lang/String;)Lcom/umeng/message/inapp/a;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 254
    const-string v3, "MsgId=?"

    .line 255
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    .line 256
    iget-object v0, p0, Lcom/umeng/message/inapp/InAppMessageManager;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/message/inapp/InAppMessageManager;->f:Landroid/content/Context;

    .line 257
    invoke-static {v1}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v1, Lcom/umeng/message/provider/a;->k:Landroid/net/Uri;

    move-object v5, v2

    .line 256
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 259
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    .line 261
    if-eqz v1, :cond_0

    .line 262
    new-instance v2, Lcom/umeng/message/inapp/a;

    invoke-direct {v2, v0}, Lcom/umeng/message/inapp/a;-><init>(Landroid/database/Cursor;)V

    .line 264
    :cond_0
    if-eqz v0, :cond_1

    .line 265
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 267
    :cond_1
    return-object v2
.end method

.method static synthetic k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/umeng/message/inapp/InAppMessageManager;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/umeng/message/inapp/InAppMessageManager;->g:Ljava/lang/String;

    return-object v0
.end method

.method a(Lcom/umeng/message/entity/UInAppMessage;)V
    .locals 2

    .prologue
    .line 110
    if-nez p1, :cond_1

    .line 111
    const-string v0, "KEY_LAST_SPLASH_ID"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/inapp/InAppMessageManager;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    invoke-virtual {p1}, Lcom/umeng/message/entity/UInAppMessage;->getRaw()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    const-string v0, "KEY_LAST_SPLASH_ID"

    invoke-virtual {p1}, Lcom/umeng/message/entity/UInAppMessage;->getRaw()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/inapp/InAppMessageManager;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method a(Lcom/umeng/message/entity/UInAppMessage;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 124
    if-nez p1, :cond_1

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KEY_LAST_CARD_ID_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/inapp/InAppMessageManager;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    invoke-virtual {p1}, Lcom/umeng/message/entity/UInAppMessage;->getRaw()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KEY_LAST_CARD_ID_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/umeng/message/entity/UInAppMessage;->getRaw()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/inapp/InAppMessageManager;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method a(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 438
    new-instance v0, Lcom/umeng/message/inapp/InAppMessageManager$4;

    invoke-direct {v0, p0, p1}, Lcom/umeng/message/inapp/InAppMessageManager$4;-><init>(Lcom/umeng/message/inapp/InAppMessageManager;Ljava/io/File;)V

    invoke-static {v0}, Lcom/umeng/message/common/d;->a(Ljava/lang/Runnable;)V

    .line 453
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KEY_CARD_TS_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/inapp/InAppMessageManager;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method a(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 138
    if-nez p2, :cond_0

    .line 139
    const-string v0, "0"

    invoke-direct {p0, p1, v0}, Lcom/umeng/message/inapp/InAppMessageManager;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 142
    invoke-direct {p0, p1}, Lcom/umeng/message/inapp/InAppMessageManager;->j(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/umeng/message/inapp/InAppMessageManager;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_1
    return-void
.end method

.method a(Ljava/lang/String;IIIIIIII)V
    .locals 11

    .prologue
    .line 219
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    :goto_0
    return-void

    .line 221
    :cond_0
    new-instance v0, Lcom/umeng/message/inapp/InAppMessageManager$1;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/umeng/message/inapp/InAppMessageManager$1;-><init>(Lcom/umeng/message/inapp/InAppMessageManager;Ljava/lang/String;IIIIIIII)V

    invoke-static {v0}, Lcom/umeng/message/common/d;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method b(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KEY_CARD_TS_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/inapp/InAppMessageManager;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method b(Lcom/umeng/message/entity/UInAppMessage;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 191
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 192
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v1, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 193
    iget-object v4, p1, Lcom/umeng/message/entity/UInAppMessage;->expire_time:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 194
    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    const/4 v0, 0x1

    .line 198
    :cond_0
    :goto_0
    return v0

    .line 195
    :catch_0
    move-exception v1

    .line 196
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method b()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    const-string v0, "KEY_PLAIN_TEXT_SIZE"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/inapp/InAppMessageManager;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 90
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KEY_LAST_CARD_ID_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/inapp/InAppMessageManager;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method c()V
    .locals 4

    .prologue
    .line 94
    const-string v0, "KEY_SPLASH_TS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/inapp/InAppMessageManager;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method c(Lcom/umeng/message/entity/UInAppMessage;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 208
    iget v1, p1, Lcom/umeng/message/entity/UInAppMessage;->show_times:I

    if-nez v1, :cond_1

    .line 212
    :cond_0
    :goto_0
    return v0

    .line 211
    :cond_1
    iget-object v1, p1, Lcom/umeng/message/entity/UInAppMessage;->msg_id:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/umeng/message/inapp/InAppMessageManager;->j(Ljava/lang/String;)I

    move-result v1

    .line 212
    iget v2, p1, Lcom/umeng/message/entity/UInAppMessage;->show_times:I

    if-lt v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method d()J
    .locals 2

    .prologue
    .line 98
    const-string v0, "KEY_SPLASH_TS"

    const-string v1, "0"

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/inapp/InAppMessageManager;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 152
    const-string v0, "KEY_CARD_LABEL_LIST"

    invoke-direct {p0, v0, p1}, Lcom/umeng/message/inapp/InAppMessageManager;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    const-string v0, "KEY_LAST_SPLASH_ID"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/inapp/InAppMessageManager;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 160
    const-string v0, "KEY_LAST_VERSION_CODE"

    invoke-direct {p0, v0, p1}, Lcom/umeng/message/inapp/InAppMessageManager;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 156
    const-string v0, "KEY_CARD_LABEL_LIST"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/inapp/InAppMessageManager;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method f(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KEY_LAST_SHOW_CARD_TS_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/inapp/InAppMessageManager;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method g(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KEY_LAST_SHOW_CARD_TS_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/inapp/InAppMessageManager;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 164
    const-string v0, "KEY_LAST_VERSION_CODE"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/inapp/InAppMessageManager;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method h()V
    .locals 4

    .prologue
    .line 168
    const-string v0, "KEY_LAST_SHOW_SPLASH_TS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/inapp/InAppMessageManager;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method h(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 299
    const-string v2, "MsgId=?"

    .line 300
    new-array v3, v0, [Ljava/lang/String;

    aput-object p1, v3, v1

    .line 301
    iget-object v4, p0, Lcom/umeng/message/inapp/InAppMessageManager;->f:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/umeng/message/inapp/InAppMessageManager;->f:Landroid/content/Context;

    .line 302
    invoke-static {v5}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v5, Lcom/umeng/message/provider/a;->k:Landroid/net/Uri;

    .line 301
    invoke-virtual {v4, v5, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 304
    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method i()J
    .locals 2

    .prologue
    .line 172
    const-string v0, "KEY_LAST_SHOW_SPLASH_TS"

    const-string v1, "0"

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/inapp/InAppMessageManager;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method i(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 406
    new-instance v0, Lcom/umeng/message/inapp/InAppMessageManager$3;

    invoke-direct {v0, p0, p1}, Lcom/umeng/message/inapp/InAppMessageManager$3;-><init>(Lcom/umeng/message/inapp/InAppMessageManager;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/umeng/message/common/d;->a(Ljava/lang/Runnable;)V

    .line 435
    return-void
.end method

.method j()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/umeng/message/inapp/a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 271
    .line 272
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 274
    :try_start_0
    iget-object v0, p0, Lcom/umeng/message/inapp/InAppMessageManager;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/message/inapp/InAppMessageManager;->f:Landroid/content/Context;

    .line 275
    invoke-static {v1}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v1, Lcom/umeng/message/provider/a;->k:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 274
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 277
    const/4 v0, 0x0

    .line 278
    if-eqz v1, :cond_0

    .line 279
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    .line 281
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 282
    new-instance v0, Lcom/umeng/message/inapp/a;

    invoke-direct {v0, v1}, Lcom/umeng/message/inapp/a;-><init>(Landroid/database/Cursor;)V

    .line 283
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    goto :goto_0

    .line 291
    :cond_1
    if-eqz v1, :cond_2

    .line 292
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 295
    :cond_2
    :goto_1
    return-object v7

    .line 286
    :catch_0
    move-exception v0

    move-object v1, v6

    .line 287
    :goto_2
    if-eqz v0, :cond_3

    .line 288
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 291
    :cond_3
    if-eqz v1, :cond_2

    .line 292
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 291
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_3
    if-eqz v1, :cond_4

    .line 292
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 291
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 286
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public setInAppMsgDebugMode(Z)V
    .locals 0

    .prologue
    .line 64
    sput-boolean p1, Lcom/umeng/message/inapp/InAppMessageManager;->a:Z

    .line 65
    return-void
.end method

.method public setMainActivityPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/umeng/message/inapp/InAppMessageManager;->g:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setPlainTextSize(III)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 78
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    if-gtz p3, :cond_1

    .line 79
    :cond_0
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v1, Lcom/umeng/message/inapp/InAppMessageManager;->d:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u7eaf\u6587\u672c\u5b57\u4f53\u5927\u5c0f\u4e0d\u80fd\u5c0f\u4e8e0"

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v4, v2}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 83
    :goto_0
    return-void

    .line 82
    :cond_1
    const-string v0, "KEY_PLAIN_TEXT_SIZE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/inapp/InAppMessageManager;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showCardMessage(Landroid/app/Activity;Ljava/lang/String;Lcom/umeng/message/inapp/IUmengInAppMsgCloseCallback;)V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/umeng/message/inapp/b;

    invoke-direct {v0, p1, p2, p3}, Lcom/umeng/message/inapp/b;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/umeng/message/inapp/IUmengInAppMsgCloseCallback;)V

    .line 55
    invoke-virtual {v0}, Lcom/umeng/message/inapp/b;->a()V

    .line 56
    return-void
.end method
