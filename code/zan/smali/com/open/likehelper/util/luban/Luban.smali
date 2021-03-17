.class public Lcom/open/likehelper/util/luban/Luban;
.super Ljava/lang/Object;
.source "Luban.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/open/likehelper/util/luban/Luban$Builder;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "Luban"

.field private static final b:Ljava/lang/String; = "luban_disk_cache"

.field private static final c:I = 0x0

.field private static final d:I = 0x1

.field private static final e:I = 0x2


# instance fields
.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:I

.field private j:Lcom/open/likehelper/util/luban/OnCompressListener;

.field private k:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Lcom/open/likehelper/util/luban/Luban$Builder;)V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {p1}, Lcom/open/likehelper/util/luban/Luban$Builder;->a(Lcom/open/likehelper/util/luban/Luban$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/open/likehelper/util/luban/Luban;->h:Ljava/util/List;

    .line 44
    invoke-static {p1}, Lcom/open/likehelper/util/luban/Luban$Builder;->b(Lcom/open/likehelper/util/luban/Luban$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/open/likehelper/util/luban/Luban;->f:Ljava/lang/String;

    .line 45
    invoke-static {p1}, Lcom/open/likehelper/util/luban/Luban$Builder;->c(Lcom/open/likehelper/util/luban/Luban$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/open/likehelper/util/luban/Luban;->g:Ljava/lang/String;

    .line 46
    invoke-static {p1}, Lcom/open/likehelper/util/luban/Luban$Builder;->d(Lcom/open/likehelper/util/luban/Luban$Builder;)Lcom/open/likehelper/util/luban/OnCompressListener;

    move-result-object v0

    iput-object v0, p0, Lcom/open/likehelper/util/luban/Luban;->j:Lcom/open/likehelper/util/luban/OnCompressListener;

    .line 47
    invoke-static {p1}, Lcom/open/likehelper/util/luban/Luban$Builder;->e(Lcom/open/likehelper/util/luban/Luban$Builder;)I

    move-result v0

    iput v0, p0, Lcom/open/likehelper/util/luban/Luban;->i:I

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/open/likehelper/util/luban/Luban;->k:Landroid/os/Handler;

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Lcom/open/likehelper/util/luban/Luban$Builder;Lcom/open/likehelper/util/luban/Luban$1;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/open/likehelper/util/luban/Luban;-><init>(Lcom/open/likehelper/util/luban/Luban$Builder;)V

    return-void
.end method

.method static synthetic a(Lcom/open/likehelper/util/luban/Luban;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/open/likehelper/util/luban/Luban;->k:Landroid/os/Handler;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/open/likehelper/util/luban/Luban$Builder;
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/open/likehelper/util/luban/Luban$Builder;

    invoke-direct {v0, p0}, Lcom/open/likehelper/util/luban/Luban$Builder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 6

    .prologue
    .line 62
    iget-object v0, p0, Lcom/open/likehelper/util/luban/Luban;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/open/likehelper/util/luban/Luban;->g:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-static {v0}, Lcom/open/likehelper/util/FileUtils;->b(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    :goto_0
    return-object v0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/open/likehelper/util/luban/Luban;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    invoke-direct {p0, p1}, Lcom/open/likehelper/util/luban/Luban;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/open/likehelper/util/luban/Luban;->f:Ljava/lang/String;

    .line 73
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/open/likehelper/util/luban/Luban;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 75
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    double-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 76
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p2, ".jpg"

    :cond_2
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 78
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/open/likehelper/util/luban/Luban;Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/open/likehelper/util/luban/Luban;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/open/likehelper/util/luban/Luban;Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/open/likehelper/util/luban/Luban;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    new-instance v0, Lcom/open/likehelper/util/luban/Engine;

    invoke-static {p1}, Lcom/open/likehelper/util/luban/Checker;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/open/likehelper/util/luban/Luban;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/open/likehelper/util/luban/Engine;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v0}, Lcom/open/likehelper/util/luban/Engine;->a()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/open/likehelper/util/luban/Luban;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/open/likehelper/util/luban/Luban;->c(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic b(Lcom/open/likehelper/util/luban/Luban;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/open/likehelper/util/luban/Luban;->i:I

    return v0
.end method

.method private b(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 92
    const-string v0, "luban_disk_cache"

    invoke-direct {p0, p1, v0}, Lcom/open/likehelper/util/luban/Luban;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    .line 109
    if-eqz v2, :cond_2

    .line 110
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 111
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    .line 115
    goto :goto_0

    .line 117
    :cond_2
    const-string v1, "Luban"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    const-string v1, "Luban"

    const-string v2, "default disk cache dir is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic b(Lcom/open/likehelper/util/luban/Luban;Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/open/likehelper/util/luban/Luban;->d(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private c(Landroid/content/Context;)V
    .locals 6
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/open/likehelper/util/luban/Luban;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/open/likehelper/util/luban/Luban;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/open/likehelper/util/luban/Luban;->j:Lcom/open/likehelper/util/luban/OnCompressListener;

    if-eqz v0, :cond_1

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/open/likehelper/util/luban/Luban;->j:Lcom/open/likehelper/util/luban/OnCompressListener;

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "image file cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/open/likehelper/util/luban/OnCompressListener;->a(Ljava/lang/Throwable;)V

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/open/likehelper/util/luban/Luban;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 133
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 134
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 135
    invoke-static {v0}, Lcom/open/likehelper/util/luban/Checker;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 136
    sget-object v2, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/open/likehelper/util/luban/Luban$1;

    invoke-direct {v3, p0, v0, p1}, Lcom/open/likehelper/util/luban/Luban$1;-><init>(Lcom/open/likehelper/util/luban/Luban;Ljava/lang/String;Landroid/content/Context;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 155
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 153
    :cond_2
    iget-object v2, p0, Lcom/open/likehelper/util/luban/Luban;->j:Lcom/open/likehelper/util/luban/OnCompressListener;

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can not read the path : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/open/likehelper/util/luban/OnCompressListener;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 157
    :cond_3
    return-void
.end method

.method private d(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 169
    iget-object v0, p0, Lcom/open/likehelper/util/luban/Luban;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 171
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 173
    invoke-static {v0}, Lcom/open/likehelper/util/luban/Checker;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 174
    new-instance v3, Lcom/open/likehelper/util/luban/Engine;

    invoke-static {v0}, Lcom/open/likehelper/util/luban/Checker;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/open/likehelper/util/luban/Luban;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/open/likehelper/util/luban/Engine;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v3}, Lcom/open/likehelper/util/luban/Engine;->a()Ljava/io/File;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 179
    :cond_1
    return-object v1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 184
    iget-object v0, p0, Lcom/open/likehelper/util/luban/Luban;->j:Lcom/open/likehelper/util/luban/OnCompressListener;

    if-nez v0, :cond_0

    .line 197
    :goto_0
    return v2

    .line 186
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 191
    :pswitch_0
    iget-object v1, p0, Lcom/open/likehelper/util/luban/Luban;->j:Lcom/open/likehelper/util/luban/OnCompressListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    invoke-interface {v1, v0}, Lcom/open/likehelper/util/luban/OnCompressListener;->a(Ljava/io/File;)V

    goto :goto_0

    .line 188
    :pswitch_1
    iget-object v0, p0, Lcom/open/likehelper/util/luban/Luban;->j:Lcom/open/likehelper/util/luban/OnCompressListener;

    invoke-interface {v0}, Lcom/open/likehelper/util/luban/OnCompressListener;->a()V

    goto :goto_0

    .line 194
    :pswitch_2
    iget-object v1, p0, Lcom/open/likehelper/util/luban/Luban;->j:Lcom/open/likehelper/util/luban/OnCompressListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {v1, v0}, Lcom/open/likehelper/util/luban/OnCompressListener;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 186
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
