.class public Lcom/umeng/commonsdk/statistics/common/MLog;
.super Ljava/lang/Object;
.source "MLog.java"


# static fields
.field public static DEBUG:Z = false

.field private static final LEVEL_DEBUG:I = 0x2

.field private static final LEVEL_ERROR:I = 0x5

.field private static final LEVEL_INFO:I = 0x3

.field private static final LEVEL_VERBOSE:I = 0x1

.field private static final LEVEL_WARN:I = 0x4

.field private static LOG_MAXLENGTH:I

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    .line 34
    const-string v0, "MobclickAgent"

    sput-object v0, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    .line 278
    const/16 v0, 0x7d0

    sput v0, Lcom/umeng/commonsdk/statistics/common/MLog;->LOG_MAXLENGTH:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 226
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 227
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 250
    sget-boolean v0, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 251
    const/4 v0, 0x2

    invoke-static {v0, p0, p1, p2}, Lcom/umeng/commonsdk/statistics/common/MLog;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 253
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 211
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 212
    return-void
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 107
    :try_start_0
    const-string v0, ""

    .line 108
    const-string v1, "%"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    sget-object v1, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    :goto_0
    return-void

    .line 112
    :cond_0
    if-eqz p1, :cond_1

    .line 113
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    .line 115
    :cond_1
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static d(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 189
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 190
    return-void
.end method

.method public static varargs d(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 50
    :try_start_0
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0, p0}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v0, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    sget-object v1, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 238
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 239
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 268
    sget-boolean v0, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 269
    const/4 v0, 0x5

    invoke-static {v0, p0, p1, p2}, Lcom/umeng/commonsdk/statistics/common/MLog;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 271
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 215
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 217
    return-void
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 125
    :try_start_0
    const-string v0, ""

    .line 126
    const-string v1, "%"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    sget-object v1, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    :goto_0
    return-void

    .line 130
    :cond_0
    if-eqz p1, :cond_1

    .line 131
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    .line 133
    :cond_1
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static e(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 193
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 195
    return-void
.end method

.method public static varargs e(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 60
    :try_start_0
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0, p0}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v0, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    sget-object v1, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 368
    .line 370
    const-string v0, ""

    .line 372
    :try_start_0
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    :try_start_1
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 374
    :try_start_2
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 375
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 376
    invoke-virtual {v3}, Ljava/io/StringWriter;->flush()V

    .line 377
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    .line 380
    if-eqz v3, :cond_0

    .line 382
    :try_start_3
    invoke-virtual {v3}, Ljava/io/StringWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 386
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 387
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 390
    :cond_1
    :goto_1
    return-object v0

    .line 378
    :catch_0
    move-exception v1

    move-object v1, v2

    .line 380
    :goto_2
    if-eqz v2, :cond_2

    .line 382
    :try_start_4
    invoke-virtual {v2}, Ljava/io/StringWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    .line 386
    :cond_2
    :goto_3
    if-eqz v1, :cond_1

    .line 387
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    goto :goto_1

    .line 380
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_4
    if-eqz v3, :cond_3

    .line 382
    :try_start_5
    invoke-virtual {v3}, Ljava/io/StringWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    .line 386
    :cond_3
    :goto_5
    if-eqz v1, :cond_4

    .line 387
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    :cond_4
    throw v0

    .line 383
    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v2

    goto :goto_3

    :catch_3
    move-exception v2

    goto :goto_5

    .line 380
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_4

    .line 378
    :catch_4
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    :catch_5
    move-exception v2

    move-object v2, v3

    goto :goto_2
.end method

.method public static i(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 230
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/umeng/commonsdk/statistics/common/MLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 231
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 256
    sget-boolean v0, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 257
    const/4 v0, 0x3

    invoke-static {v0, p0, p1, p2}, Lcom/umeng/commonsdk/statistics/common/MLog;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 259
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 199
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 200
    return-void
.end method

.method public static varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 90
    :try_start_0
    const-string v0, ""

    .line 91
    const-string v1, "%"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    sget-object v1, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/umeng/commonsdk/statistics/common/MLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    :goto_0
    return-void

    .line 95
    :cond_0
    if-eqz p1, :cond_1

    .line 96
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    .line 98
    :cond_1
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/umeng/commonsdk/statistics/common/MLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static i(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 177
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 178
    return-void
.end method

.method public static varargs i(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 40
    :try_start_0
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0, p0}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v0, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    sget-object v1, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/umeng/commonsdk/statistics/common/MLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 282
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 283
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 285
    sget v1, Lcom/umeng/commonsdk/statistics/common/MLog;->LOG_MAXLENGTH:I

    move v2, v0

    .line 286
    :goto_0
    const/16 v4, 0x64

    if-ge v0, v4, :cond_1

    .line 288
    if-le v3, v1, :cond_0

    .line 289
    packed-switch p0, :pswitch_data_0

    .line 310
    :goto_1
    sget v2, Lcom/umeng/commonsdk/statistics/common/MLog;->LOG_MAXLENGTH:I

    add-int/2addr v2, v1

    .line 286
    add-int/lit8 v0, v0, 0x1

    move v5, v2

    move v2, v1

    move v1, v5

    goto :goto_0

    .line 291
    :pswitch_0
    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 294
    :pswitch_1
    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 297
    :pswitch_2
    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 300
    :pswitch_3
    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 303
    :pswitch_4
    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 312
    :cond_0
    packed-switch p0, :pswitch_data_1

    .line 336
    :cond_1
    :goto_2
    if-eqz p3, :cond_2

    .line 338
    invoke-static {p3}, Lcom/umeng/commonsdk/statistics/common/MLog;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 339
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 340
    packed-switch p0, :pswitch_data_2

    .line 361
    :cond_2
    :goto_3
    return-void

    .line 314
    :pswitch_5
    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 317
    :pswitch_6
    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 320
    :pswitch_7
    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 323
    :pswitch_8
    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 326
    :pswitch_9
    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 342
    :pswitch_a
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 345
    :pswitch_b
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 348
    :pswitch_c
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 351
    :pswitch_d
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 354
    :pswitch_e
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 289
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_2
    .end packed-switch

    .line 312
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_5
        :pswitch_6
        :pswitch_9
        :pswitch_7
    .end packed-switch

    .line 340
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_d
        :pswitch_a
        :pswitch_b
        :pswitch_e
        :pswitch_c
    .end packed-switch
.end method

.method public static v(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 222
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/umeng/commonsdk/statistics/common/MLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 223
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 244
    sget-boolean v0, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 245
    const/4 v0, 0x1

    invoke-static {v0, p0, p1, p2}, Lcom/umeng/commonsdk/statistics/common/MLog;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 247
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 203
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 204
    return-void
.end method

.method public static varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 142
    :try_start_0
    const-string v0, ""

    .line 143
    const-string v1, "%"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    sget-object v1, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/umeng/commonsdk/statistics/common/MLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 155
    :goto_0
    return-void

    .line 147
    :cond_0
    if-eqz p1, :cond_1

    .line 148
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    .line 150
    :cond_1
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/umeng/commonsdk/statistics/common/MLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static v(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 181
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 182
    return-void
.end method

.method public static varargs v(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 70
    :try_start_0
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0, p0}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v0, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    sget-object v1, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/umeng/commonsdk/statistics/common/MLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 234
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/umeng/commonsdk/statistics/common/MLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 235
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 262
    sget-boolean v0, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 263
    const/4 v0, 0x4

    invoke-static {v0, p0, p1, p2}, Lcom/umeng/commonsdk/statistics/common/MLog;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 265
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 207
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 208
    return-void
.end method

.method public static varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 159
    :try_start_0
    const-string v0, ""

    .line 160
    const-string v1, "%"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    sget-object v1, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/umeng/commonsdk/statistics/common/MLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 173
    :goto_0
    return-void

    .line 164
    :cond_0
    if-eqz p1, :cond_1

    .line 165
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    .line 167
    :cond_1
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/umeng/commonsdk/statistics/common/MLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static w(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 185
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 186
    return-void
.end method

.method public static varargs w(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 80
    :try_start_0
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0, p0}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v0, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    sget-object v1, Lcom/umeng/commonsdk/statistics/common/MLog;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/umeng/commonsdk/statistics/common/MLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
