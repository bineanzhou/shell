.class public Lcom/umeng/message/MessageSharedPrefs;
.super Ljava/lang/Object;
.source "MessageSharedPrefs.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static c:Lcom/umeng/message/MessageSharedPrefs; = null

.field private static final d:Ljava/lang/String; = "tempkey"

.field private static final e:Ljava/lang/String; = "tempvalue"


# instance fields
.field private b:Landroid/content/Context;

.field private f:Landroid/content/SharedPreferences;

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/umeng/message/MessageSharedPrefs;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/message/MessageSharedPrefs;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/Context;

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/message/MessageSharedPrefs;->g:I

    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-le v0, v1, :cond_0

    .line 40
    iget v0, p0, Lcom/umeng/message/MessageSharedPrefs;->g:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/umeng/message/MessageSharedPrefs;->g:I

    .line 43
    :cond_0
    const-string v0, "umeng_message_state"

    iget v1, p0, Lcom/umeng/message/MessageSharedPrefs;->g:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->f:Landroid/content/SharedPreferences;

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/umeng/message/MessageSharedPrefs;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/Context;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 291
    const-string v0, "type=? and message=? "

    .line 292
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    .line 293
    iget-object v2, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v3, Lcom/umeng/message/provider/a;->d:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 294
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 1037
    .line 1039
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1040
    const-string v1, "tempkey"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    const-string v3, "tempkey=?"

    .line 1042
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    .line 1043
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v1, Lcom/umeng/message/provider/a;->c:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "tempvalue"

    aput-object v7, v2, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1044
    if-nez v1, :cond_1

    .line 1057
    if-eqz v1, :cond_0

    .line 1058
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1062
    :cond_0
    :goto_0
    return-object p2

    .line 1047
    :cond_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    .line 1048
    if-eqz v0, :cond_2

    .line 1049
    const-string v0, "tempvalue"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object p2

    .line 1057
    :cond_2
    if-eqz v1, :cond_0

    .line 1058
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1052
    :catch_0
    move-exception v0

    move-object v1, v6

    .line 1053
    :goto_1
    if-eqz v0, :cond_3

    .line 1054
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1057
    :cond_3
    if-eqz v1, :cond_0

    .line 1058
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1057
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v6, :cond_4

    .line 1058
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 1057
    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_2

    .line 1052
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1073
    new-instance v0, Lcom/umeng/message/MessageSharedPrefs$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/umeng/message/MessageSharedPrefs$1;-><init>(Lcom/umeng/message/MessageSharedPrefs;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->execute(Ljava/lang/Runnable;)V

    .line 1112
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;
    .locals 2

    .prologue
    .line 49
    const-class v1, Lcom/umeng/message/MessageSharedPrefs;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/umeng/message/MessageSharedPrefs;->c:Lcom/umeng/message/MessageSharedPrefs;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/umeng/message/MessageSharedPrefs;

    invoke-direct {v0, p0}, Lcom/umeng/message/MessageSharedPrefs;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/umeng/message/MessageSharedPrefs;->c:Lcom/umeng/message/MessageSharedPrefs;

    .line 52
    :cond_0
    sget-object v0, Lcom/umeng/message/MessageSharedPrefs;->c:Lcom/umeng/message/MessageSharedPrefs;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method a()I
    .locals 2

    .prologue
    .line 623
    const-string v0, "KEY_NO_DISTURB_START_HOUR"

    const-string v1, "23"

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/MessageSharedPrefs;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method a(IIII)V
    .locals 3

    .prologue
    .line 615
    const-string v0, "KEY_NO_DISTURB_START_HOUR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/MessageSharedPrefs;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    const-string v0, "KEY_NO_DISTURB_START_HOUR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/MessageSharedPrefs;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    const-string v0, "KEY_NO_DISTURB_END_HOUR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/MessageSharedPrefs;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    const-string v0, "KEY_NO_DISTURB_END_MINUTE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/MessageSharedPrefs;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    return-void
.end method

.method a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 663
    const-string v1, "device_token"

    .line 667
    const/4 v0, 0x0

    .line 668
    const-string v2, ""

    invoke-direct {p0, v1, v2}, Lcom/umeng/message/MessageSharedPrefs;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 669
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 670
    const/4 v0, 0x1

    .line 673
    :cond_0
    return v0
.end method

.method public addAlias(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 8

    .prologue
    .line 235
    :try_start_0
    invoke-direct {p0, p2, p5}, Lcom/umeng/message/MessageSharedPrefs;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v3, "alias=? and type=? and exclusive=?"

    .line 238
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v0, 0x1

    aput-object p2, v4, v0

    const/4 v0, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 239
    const-string v5, "time desc"

    .line 240
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v1, Lcom/umeng/message/provider/a;->d:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "error"

    aput-object v7, v2, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 241
    if-eqz v0, :cond_2

    .line 242
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 243
    if-lez v1, :cond_1

    .line 244
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 246
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 247
    const-string v2, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 248
    const-string v2, "type"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v2, "alias"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v2, "exclusive"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 251
    const-string v2, "error"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 252
    const-string v2, "message"

    invoke-virtual {v1, v2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v2, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v5, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v5, Lcom/umeng/message/provider/a;->d:Landroid/net/Uri;

    invoke-virtual {v2, v5, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 276
    :goto_0
    if-eqz v0, :cond_0

    .line 277
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 283
    :cond_0
    :goto_1
    return-void

    .line 256
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 257
    const-string v2, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 258
    const-string v2, "type"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string v2, "alias"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string v2, "exclusive"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 261
    const-string v2, "error"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 262
    const-string v2, "message"

    invoke-virtual {v1, v2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v2, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v3, Lcom/umeng/message/provider/a;->d:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 279
    :catch_0
    move-exception v0

    .line 280
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 267
    :cond_2
    :try_start_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 268
    const-string v2, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 269
    const-string v2, "type"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v2, "alias"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string v2, "exclusive"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 272
    const-string v2, "error"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 273
    const-string v2, "message"

    invoke-virtual {v1, v2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v2, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v3, Lcom/umeng/message/provider/a;->d:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public varargs addTags([Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 391
    array-length v2, p1

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p1, v0

    .line 392
    const-string v4, "UMENG_TAG_%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 394
    const-string v4, "false"

    invoke-direct {p0, v3, v4}, Lcom/umeng/message/MessageSharedPrefs;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 396
    if-nez v4, :cond_0

    .line 398
    const-string v4, "true"

    invoke-direct {p0, v3, v4}, Lcom/umeng/message/MessageSharedPrefs;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    invoke-virtual {p0}, Lcom/umeng/message/MessageSharedPrefs;->getTagCount()I

    move-result v3

    .line 401
    add-int/lit8 v3, v3, 0x1

    .line 403
    const-string v4, "UMENG_TAG_COUNT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v4, v3}, Lcom/umeng/message/MessageSharedPrefs;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 407
    :cond_1
    return-void
.end method

.method public add_addAliasInterval(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 512
    if-eqz p1, :cond_0

    .line 513
    const-string v0, "addAlias"

    invoke-direct {p0, v0, p1}, Lcom/umeng/message/MessageSharedPrefs;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    :cond_0
    return-void
.end method

.method public add_addTagsInterval(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 452
    if-eqz p1, :cond_0

    .line 453
    const-string v0, "addTags"

    invoke-direct {p0, v0, p1}, Lcom/umeng/message/MessageSharedPrefs;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    :cond_0
    return-void
.end method

.method public add_deleteAliasInterval(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 533
    if-eqz p1, :cond_0

    .line 534
    const-string v0, "deleteAlias"

    invoke-direct {p0, v0, p1}, Lcom/umeng/message/MessageSharedPrefs;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    :cond_0
    return-void
.end method

.method public add_deleteTagsInterval(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 462
    if-eqz p1, :cond_0

    .line 463
    const-string v0, "deleteTags"

    invoke-direct {p0, v0, p1}, Lcom/umeng/message/MessageSharedPrefs;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    :cond_0
    return-void
.end method

.method public add_getTagsInteral(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 472
    if-eqz p1, :cond_0

    .line 473
    const-string v0, "getTags"

    invoke-direct {p0, v0, p1}, Lcom/umeng/message/MessageSharedPrefs;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    :cond_0
    return-void
.end method

.method public add_setAliasInterval(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 522
    if-eqz p1, :cond_0

    .line 523
    const-string v0, "setAlias"

    invoke-direct {p0, v0, p1}, Lcom/umeng/message/MessageSharedPrefs;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    :cond_0
    return-void
.end method

.method b()I
    .locals 2

    .prologue
    .line 628
    const-string v0, "KEY_NO_DISTURB_START_MINUTE"

    const-string v1, "0"

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/MessageSharedPrefs;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 965
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->f:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "KEY_NOTIFICATION_CHANNEL"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 966
    return-void
.end method

.method c()I
    .locals 2

    .prologue
    .line 633
    const-string v0, "KEY_NO_DISTURB_END_HOUR"

    const-string v1, "7"

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/MessageSharedPrefs;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method d()I
    .locals 2

    .prologue
    .line 638
    const-string v0, "KEY_NO_DISTURB_END_MINUTE"

    const-string v1, "0"

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/MessageSharedPrefs;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method e()V
    .locals 2

    .prologue
    .line 643
    const-string v0, "KEY_ENEABLED"

    const-string v1, "true"

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/MessageSharedPrefs;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    return-void
.end method

.method f()V
    .locals 2

    .prologue
    .line 649
    const-string v0, "KEY_ENEABLED"

    const-string v1, "false"

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/MessageSharedPrefs;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    return-void
.end method

.method public finishTransferedCacheFileDataToSQL()Z
    .locals 3

    .prologue
    .line 731
    const/4 v0, 0x0

    .line 732
    const-string v1, "KEY_CACHE_FILE_TRANSFER_TO_SQL"

    const-string v2, "true"

    invoke-direct {p0, v1, v2}, Lcom/umeng/message/MessageSharedPrefs;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 733
    const/4 v0, 0x1

    .line 735
    :cond_0
    return v0
.end method

.method g()Z
    .locals 3

    .prologue
    .line 654
    const-string v0, "KEY_ENEABLED"

    const-string v1, "false"

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/MessageSharedPrefs;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 655
    const/4 v0, 0x0

    .line 656
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 657
    const/4 v0, 0x1

    .line 659
    :cond_0
    return v0
.end method

.method public getAddWeightedTagsInterval()Ljava/lang/String;
    .locals 2

    .prologue
    .line 488
    const-string v0, "addWeightedTags"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/MessageSharedPrefs;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppLaunchLogSendPolicy()I
    .locals 2

    .prologue
    .line 211
    const-string v0, "KEY_APP_LAUNCH_LOG_SEND_POLICY"

    const-string v1, "-1"

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/MessageSharedPrefs;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 932
    const-string v0, "app_version"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/MessageSharedPrefs;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDaRegisterSendPolicy()I
    .locals 2

    .prologue
    .line 194
    const-string v0, "KEY_APP_DAREGISTER_LOG_SEND_POLICY"

    const-string v1, "-1"

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/MessageSharedPrefs;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getDeleteWeightedTagsInterval()Ljava/lang/String;
    .locals 2

    .prologue
    .line 498
    const-string v0, "deleteWeightedTags"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/MessageSharedPrefs;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 947
    const-string v0, "device_token"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/MessageSharedPrefs;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 953
    return-object v0
.end method

.method public getDisplayNotificationNumber()I
    .locals 2

    .prologue
    .line 121
    const-string v0, "KEY_NOTIFICATION_NUMBER"

    const-string v1, "1"

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/MessageSharedPrefs;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getHasRegister()Z
    .locals 3

    .prologue
    .line 1005
    const/4 v0, 0x0

    .line 1006
    const-string v1, "has_register"

    const-string v2, "false"

    invoke-direct {p0, v1, v2}, Lcom/umeng/message/MessageSharedPrefs;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1007
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1008
    const/4 v0, 0x1

    .line 1010
    :cond_0
    return v0
.end method

.method public getLastAlias(ILjava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    .line 322
    const-string v6, ""

    .line 324
    :try_start_0
    const-string v3, "type=? and exclusive=? and (error=? or error = ?)"

    .line 325
    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    const-string v1, "0"

    aput-object v1, v4, v0

    const/4 v0, 0x3

    const-string v1, "2"

    aput-object v1, v4, v0

    .line 326
    const-string v5, "time desc"

    .line 327
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v1, Lcom/umeng/message/provider/a;->d:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "alias"

    aput-object v8, v2, v7

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 328
    if-eqz v1, :cond_1

    .line 329
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 330
    if-lez v0, :cond_1

    .line 331
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 332
    const-string v0, "alias"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v0, v6

    .line 335
    :goto_0
    if-eqz v1, :cond_0

    .line 336
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 341
    :cond_0
    :goto_1
    return-object v0

    .line 338
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v6

    .line 339
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 338
    :catch_1
    move-exception v1

    goto :goto_2

    :cond_1
    move-object v0, v6

    goto :goto_0
.end method

.method public getLastMessageMsgID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 804
    const-string v0, "last_msg_id"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/MessageSharedPrefs;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getListWeightedTagsInterval()Ljava/lang/String;
    .locals 2

    .prologue
    .line 508
    const-string v0, "listWeightedTags"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/MessageSharedPrefs;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocationInterval()I
    .locals 2

    .prologue
    .line 987
    const-string v0, "interval"

    const-string v1, "600"

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/MessageSharedPrefs;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getMessageAppKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->f:Landroid/content/SharedPreferences;

    const-string v1, "KEY_UMENG_MESSAGE_APP_KEY"

    const-string v2, ""

    .line 142
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    return-object v0
.end method

.method public getMessageAppSecret()Ljava/lang/String;
    .locals 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->f:Landroid/content/SharedPreferences;

    const-string v1, "KEY_UMENG_MESSAGE_APP_SECRET"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageChannel()Ljava/lang/String;
    .locals 3

    .prologue
    .line 176
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->f:Landroid/content/SharedPreferences;

    const-string v1, "KEY_UMENG_MESSAGE_APP_CHANNEL"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMuteDuration()I
    .locals 2

    .prologue
    .line 818
    const-string v0, "mute_duration"

    const-string v1, "60"

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/MessageSharedPrefs;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getNotificaitonOnForeground()Z
    .locals 3

    .prologue
    .line 844
    const/4 v0, 0x0

    .line 845
    const-string v1, "KEY_SET_NOTIFICATION_ON_FOREGROUND"

    const-string v2, "true"

    invoke-direct {p0, v1, v2}, Lcom/umeng/message/MessageSharedPrefs;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 846
    const/4 v0, 0x1

    .line 848
    :cond_0
    return v0
.end method

.method public getNotificationPlayLights()I
    .locals 2

    .prologue
    .line 896
    const-string v0, "KEY_SET_NOTIFICATION_PLAY_LIGHTS"

    const-string v1, "0"

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/MessageSharedPrefs;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getNotificationPlaySound()I
    .locals 2

    .prologue
    .line 912
    const-string v0, "KEY_SET_NOTIFICATION_PLAY_SOUND"

    const-string v1, "0"

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/MessageSharedPrefs;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getNotificationPlayVibrate()I
    .locals 2

    .prologue
    .line 881
    const-string v0, "KEY_SET_NOTIFICATION_PLAY_VIBRATE"

    const-string v1, "0"

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/MessageSharedPrefs;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getPushIntentServiceClass()Ljava/lang/String;
    .locals 2

    .prologue
    .line 750
    const-string v0, "KEY_PUSH_INTENT_SERVICE_CLASSNAME"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/MessageSharedPrefs;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 752
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 753
    const-string v0, ""

    .line 761
    :goto_0
    return-object v0

    .line 756
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 757
    :catch_0
    move-exception v0

    .line 758
    const-string v0, ""

    goto :goto_0
.end method

.method public getRegisterTimes()I
    .locals 3

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    const-string v1, "KEY_REGISTER_TIMES"

    const-string v2, "0"

    .line 1015
    invoke-direct {v0, v1, v2}, Lcom/umeng/message/MessageSharedPrefs;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1014
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getResourcePackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 864
    const-string v0, "KEY_SET_RESOURCE_PACKAGENAME"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/MessageSharedPrefs;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSerialNo()I
    .locals 2

    .prologue
    .line 837
    const-string v0, "serial_no"

    const-string v1, "1"

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/MessageSharedPrefs;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTagCount()I
    .locals 2

    .prologue
    .line 448
    const-string v0, "UMENG_TAG_COUNT"

    const-string v1, "0"

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/MessageSharedPrefs;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTagRemain()I
    .locals 2

    .prologue
    .line 553
    const-string v0, "UMENG_TAG_REMAIN"

    const-string v1, "64"

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/MessageSharedPrefs;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTagSendPolicy()I
    .locals 2

    .prologue
    .line 221
    const-string v0, "KEY_TAG_SEND_POLICY"

    const-string v1, "-1"

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/MessageSharedPrefs;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getUcode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    const-string v1, "ucode"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/umeng/message/MessageSharedPrefs;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUmid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 961
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->f:Landroid/content/SharedPreferences;

    const-string v1, "KEY_SET_UMID"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get_addAliasInterval()Ljava/lang/String;
    .locals 2

    .prologue
    .line 518
    const-string v0, "addAlias"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/MessageSharedPrefs;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get_addTagsInterval()Ljava/lang/String;
    .locals 2

    .prologue
    .line 458
    const-string v0, "addTags"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/MessageSharedPrefs;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get_deleteALiasInterval()Ljava/lang/String;
    .locals 2

    .prologue
    .line 539
    const-string v0, "deleteAlias"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/MessageSharedPrefs;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get_deleteTagsInterval()Ljava/lang/String;
    .locals 2

    .prologue
    .line 468
    const-string v0, "deleteTags"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/MessageSharedPrefs;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get_getTagsInterval()Ljava/lang/String;
    .locals 2

    .prologue
    .line 478
    const-string v0, "getTags"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/MessageSharedPrefs;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get_setAliasInterval()Ljava/lang/String;
    .locals 2

    .prologue
    .line 529
    const-string v0, "setAlias"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/MessageSharedPrefs;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method h()Ljava/lang/String;
    .locals 3

    .prologue
    .line 969
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->f:Landroid/content/SharedPreferences;

    const-string v1, "KEY_NOTIFICATION_CHANNEL"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasAppLaunchLogSentToday()Z
    .locals 7

    .prologue
    const/4 v6, 0x6

    const/4 v0, 0x1

    .line 90
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/message/proguard/l;->a(Landroid/content/Context;)Lcom/umeng/message/proguard/l;

    move-result-object v1

    .line 94
    invoke-virtual {v1}, Lcom/umeng/message/proguard/l;->f()J

    move-result-wide v4

    .line 93
    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 100
    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 101
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 102
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v2, v1, :cond_0

    .line 105
    :goto_1
    return v0

    .line 95
    :catch_0
    move-exception v1

    .line 96
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 97
    sget-object v3, Lcom/umeng/message/MessageSharedPrefs;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 105
    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public hasMessageResourceDownloaded(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 768
    const/4 v0, 0x0

    .line 769
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KEY_MSG_RESOURCE_DOWNLOAD_PREFIX"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "false"

    invoke-direct {p0, v1, v2}, Lcom/umeng/message/MessageSharedPrefs;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 770
    const/4 v0, 0x1

    .line 772
    :cond_0
    return v0
.end method

.method public hasTransferedCacheFileDataToSQL()Z
    .locals 3

    .prologue
    .line 719
    const/4 v0, 0x0

    .line 720
    const-string v1, "KEY_CACHE_FILE_TRANSFER_TO_SQL"

    const-string v2, "false"

    invoke-direct {p0, v1, v2}, Lcom/umeng/message/MessageSharedPrefs;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 721
    const/4 v0, 0x1

    .line 723
    :cond_0
    return v0
.end method

.method public isAliasSet(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 353
    .line 356
    :try_start_0
    const-string v3, "type=? and alias=? and exclusive=? and (error=? or error = ?)"

    .line 358
    const/4 v0, 0x5

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p3, v4, v0

    const/4 v0, 0x1

    aput-object p2, v4, v0

    const/4 v0, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x3

    const-string v1, "0"

    aput-object v1, v4, v0

    const/4 v0, 0x4

    const-string v1, "2"

    aput-object v1, v4, v0

    .line 359
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v1, Lcom/umeng/message/MessageSharedPrefs;->a:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "type:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",alias:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",exclusive:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v8

    invoke-interface {v0, v1, v2, v5}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v1, Lcom/umeng/message/provider/a;->d:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "type"

    aput-object v8, v2, v5

    const/4 v5, 0x1

    const-string v8, "alias"

    aput-object v8, v2, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 361
    if-eqz v1, :cond_1

    .line 362
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 363
    sget-object v2, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v3, Lcom/umeng/message/MessageSharedPrefs;->a:Ljava/lang/String;

    const/4 v4, 0x2

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "count:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v8

    invoke-interface {v2, v3, v4, v5}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 364
    if-lez v0, :cond_1

    .line 365
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 366
    const-string v0, "type"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 367
    const-string v2, "alias"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 368
    sget-object v3, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v4, Lcom/umeng/message/MessageSharedPrefs;->a:Ljava/lang/String;

    const/4 v5, 0x2

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "typeTmp:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",aliasTmp:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",type:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",alis:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-interface {v3, v4, v5, v8}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 369
    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    move v0, v7

    .line 374
    :goto_0
    if-eqz v1, :cond_0

    .line 375
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 380
    :cond_0
    :goto_1
    return v0

    .line 377
    :catch_0
    move-exception v0

    move v0, v6

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    :cond_1
    move v0, v6

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 3

    .prologue
    .line 686
    const/4 v0, 0x0

    .line 687
    const-string v1, "is_register"

    .line 688
    const-string v2, ""

    invoke-direct {p0, v1, v2}, Lcom/umeng/message/MessageSharedPrefs;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 689
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 690
    :cond_0
    const/4 v0, 0x1

    .line 692
    :cond_1
    return v0
.end method

.method public isTagSet(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 440
    const-string v0, "UMENG_TAG_%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 442
    const-string v1, "false"

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/MessageSharedPrefs;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 443
    return v0
.end method

.method public removeAlias(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 305
    :try_start_0
    const-string v0, "type=? and alias=? and exclusive=? "

    .line 306
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 307
    iget-object v2, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v3, Lcom/umeng/message/provider/a;->d:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    :goto_0
    return-void

    .line 308
    :catch_0
    move-exception v0

    .line 309
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public removeKeyAndValue(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1120
    new-instance v0, Lcom/umeng/message/MessageSharedPrefs$2;

    invoke-direct {v0, p0, p1}, Lcom/umeng/message/MessageSharedPrefs$2;-><init>(Lcom/umeng/message/MessageSharedPrefs;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->execute(Ljava/lang/Runnable;)V

    .line 1145
    return-void
.end method

.method public removeMessageAppKey()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->f:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "KEY_UMENG_MESSAGE_APP_KEY"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 138
    return-void
.end method

.method public removeMessageAppSecret()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->f:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "KEY_UMENG_MESSAGE_APP_SECRET"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 160
    return-void
.end method

.method public removeMessageResouceRecord(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 789
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KEY_MSG_RESOURCE_DOWNLOAD_PREFIX"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/umeng/message/MessageSharedPrefs;->removeKeyAndValue(Ljava/lang/String;)V

    .line 790
    return-void
.end method

.method public varargs removeTags([Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 416
    array-length v2, p1

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p1, v0

    .line 417
    const-string v4, "UMENG_TAG_%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 419
    const-string v4, "false"

    invoke-direct {p0, v3, v4}, Lcom/umeng/message/MessageSharedPrefs;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 420
    if-eqz v4, :cond_0

    .line 422
    invoke-virtual {p0, v3}, Lcom/umeng/message/MessageSharedPrefs;->removeKeyAndValue(Ljava/lang/String;)V

    .line 424
    invoke-virtual {p0}, Lcom/umeng/message/MessageSharedPrefs;->getTagCount()I

    move-result v3

    .line 425
    add-int/lit8 v3, v3, -0x1

    .line 427
    const-string v4, "UMENG_TAG_COUNT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v4, v3}, Lcom/umeng/message/MessageSharedPrefs;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 431
    :cond_1
    return-void
.end method

.method public resetTags()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 570
    .line 572
    :try_start_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 573
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v1, Lcom/umeng/message/provider/a;->c:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 574
    if-eqz v1, :cond_3

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 575
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 576
    const-string v0, "tempkey"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 577
    const-string v2, "UMENG_TAG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 578
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 575
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 587
    :catch_0
    move-exception v0

    .line 588
    :goto_1
    if-eqz v0, :cond_1

    .line 589
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 592
    :cond_1
    if-eqz v1, :cond_2

    .line 593
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 596
    :cond_2
    :goto_2
    return-void

    :cond_3
    move v2, v7

    .line 582
    :goto_3
    :try_start_3
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 583
    const-string v3, "tempkey=?"

    .line 584
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v4, v5

    .line 585
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v5, p0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v5, Lcom/umeng/message/provider/a;->c:Landroid/net/Uri;

    invoke-virtual {v0, v5, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 582
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 592
    :cond_4
    if-eqz v1, :cond_2

    .line 593
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 592
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_4
    if-eqz v1, :cond_5

    .line 593
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 592
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 587
    :catch_1
    move-exception v0

    move-object v1, v6

    goto :goto_1
.end method

.method public setAddWeightedTagsInterval(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 482
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 483
    const-string v0, "addWeightedTags"

    invoke-direct {p0, v0, p1}, Lcom/umeng/message/MessageSharedPrefs;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    :cond_0
    return-void
.end method

.method public setAppLaunchLogSendPolicy(I)V
    .locals 3

    .prologue
    .line 186
    const-string v0, "KEY_APP_LAUNCH_LOG_SEND_POLICY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/MessageSharedPrefs;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 924
    if-nez p1, :cond_0

    .line 925
    const-string v0, "app_version"

    invoke-virtual {p0, v0}, Lcom/umeng/message/MessageSharedPrefs;->removeKeyAndValue(Ljava/lang/String;)V

    .line 929
    :goto_0
    return-void

    .line 927
    :cond_0
    const-string v0, "app_version"

    invoke-direct {p0, v0, p1}, Lcom/umeng/message/MessageSharedPrefs;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDaRegisterSendPolicy(I)V
    .locals 3

    .prologue
    .line 190
    const-string v0, "KEY_APP_DAREGISTER_LOG_SEND_POLICY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/MessageSharedPrefs;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public setDeleteWeightedTagsInterval(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 492
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 493
    const-string v0, "deleteWeightedTags"

    invoke-direct {p0, v0, p1}, Lcom/umeng/message/MessageSharedPrefs;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    :cond_0
    return-void
.end method

.method public setDeviceToken(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 936
    if-nez p1, :cond_0

    .line 937
    const-string v0, "device_token"

    invoke-virtual {p0, v0}, Lcom/umeng/message/MessageSharedPrefs;->removeKeyAndValue(Ljava/lang/String;)V

    .line 941
    :goto_0
    return-void

    .line 939
    :cond_0
    const-string v0, "device_token"

    invoke-direct {p0, v0, p1}, Lcom/umeng/message/MessageSharedPrefs;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDisplayNotificationNumber(I)V
    .locals 3

    .prologue
    .line 114
    const-string v0, "KEY_NOTIFICATION_NUMBER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/MessageSharedPrefs;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public setHasResgister(Z)V
    .locals 2

    .prologue
    .line 996
    const-string v0, "has_register"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/MessageSharedPrefs;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    return-void
.end method

.method public setIsEnabled(Z)V
    .locals 2

    .prologue
    .line 682
    const-string v0, "is_register"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/MessageSharedPrefs;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    return-void
.end method

.method public setLastMessageMsgID(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 799
    const-string v0, "last_msg_id"

    invoke-direct {p0, v0, p1}, Lcom/umeng/message/MessageSharedPrefs;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    return-void
.end method

.method public setListWeightedTagsInterval(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 502
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 503
    const-string v0, "listWeightedTags"

    invoke-direct {p0, v0, p1}, Lcom/umeng/message/MessageSharedPrefs;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    :cond_0
    return-void
.end method

.method public setLocationInterval(I)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 977
    if-lt p1, v5, :cond_0

    const/16 v0, 0x708

    if-gt p1, v0, :cond_0

    .line 978
    const-string v0, "interval"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/MessageSharedPrefs;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    :goto_0
    return-void

    .line 980
    :cond_0
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "LBS"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "LBS\u7684\u8bf7\u6c42\u95f4\u9694\u5e94\u8be5\u57282\u81f31800\u79d2\u4e4b\u95f4"

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v5, v2}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setMessageAppKey(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 126
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->f:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "KEY_UMENG_MESSAGE_APP_KEY"

    .line 130
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 131
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public setMessageAppSecret(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 148
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->f:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "KEY_UMENG_MESSAGE_APP_SECRET"

    .line 152
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 153
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public setMessageChannel(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->f:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "KEY_UMENG_MESSAGE_APP_CHANNEL"

    .line 170
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 171
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 173
    return-void
.end method

.method public setMessageResourceDownloaded(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KEY_MSG_RESOURCE_DOWNLOAD_PREFIX"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/MessageSharedPrefs;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    return-void
.end method

.method public setMuteDuration(I)V
    .locals 3

    .prologue
    .line 813
    const-string v0, "mute_duration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/MessageSharedPrefs;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    return-void
.end method

.method public setNotificaitonOnForeground(Z)V
    .locals 2

    .prologue
    .line 857
    const-string v0, "KEY_SET_NOTIFICATION_ON_FOREGROUND"

    .line 858
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 857
    invoke-direct {p0, v0, v1}, Lcom/umeng/message/MessageSharedPrefs;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    return-void
.end method

.method public setNotificationPlayLights(I)V
    .locals 3

    .prologue
    .line 904
    const-string v0, "KEY_SET_NOTIFICATION_PLAY_LIGHTS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/MessageSharedPrefs;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    return-void
.end method

.method public setNotificationPlaySound(I)V
    .locals 3

    .prologue
    .line 920
    const-string v0, "KEY_SET_NOTIFICATION_PLAY_SOUND"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/MessageSharedPrefs;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    return-void
.end method

.method public setNotificationPlayVibrate(I)V
    .locals 3

    .prologue
    .line 889
    const-string v0, "KEY_SET_NOTIFICATION_PLAY_VIBRATE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/MessageSharedPrefs;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    return-void
.end method

.method public setPushIntentServiceClass(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Lcom/umeng/message/UmengMessageService;",
            ">(",
            "Ljava/lang/Class",
            "<TU;>;)V"
        }
    .end annotation

    .prologue
    .line 740
    if-nez p1, :cond_0

    .line 741
    const-string v0, "KEY_PUSH_INTENT_SERVICE_CLASSNAME"

    invoke-virtual {p0, v0}, Lcom/umeng/message/MessageSharedPrefs;->removeKeyAndValue(Ljava/lang/String;)V

    .line 747
    :goto_0
    return-void

    .line 743
    :cond_0
    const-string v0, "KEY_PUSH_INTENT_SERVICE_CLASSNAME"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/MessageSharedPrefs;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setRegisterTimes(I)V
    .locals 3

    .prologue
    .line 1019
    const-string v0, "KEY_REGISTER_TIMES"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/MessageSharedPrefs;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    return-void
.end method

.method public setResourcePackageName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 874
    const-string v0, "KEY_SET_RESOURCE_PACKAGENAME"

    invoke-direct {p0, v0, p1}, Lcom/umeng/message/MessageSharedPrefs;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    return-void
.end method

.method public setSerialNo(I)V
    .locals 3

    .prologue
    .line 829
    const-string v0, "serial_no"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/MessageSharedPrefs;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    return-void
.end method

.method public setTagRemain(I)V
    .locals 3

    .prologue
    .line 547
    const-string v0, "UMENG_TAG_REMAIN"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/MessageSharedPrefs;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    return-void
.end method

.method public setTagSendPolicy(I)V
    .locals 3

    .prologue
    .line 200
    const-string v0, "KEY_TAG_SEND_POLICY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/umeng/message/MessageSharedPrefs;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method public setUcode(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1027
    const-string v0, "ucode"

    invoke-direct {p0, v0, p1}, Lcom/umeng/message/MessageSharedPrefs;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    return-void
.end method

.method public setUmid(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 957
    iget-object v0, p0, Lcom/umeng/message/MessageSharedPrefs;->f:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "KEY_SET_UMID"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 958
    return-void
.end method
