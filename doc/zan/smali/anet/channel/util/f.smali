.class public Lanet/channel/util/f;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static a:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lanet/channel/util/f;->a:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .prologue
    .line 30
    sget-object v0, Lanet/channel/util/f;->a:Ljava/io/File;

    if-nez v0, :cond_0

    .line 31
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    sput-object v1, Lanet/channel/util/f;->a:Ljava/io/File;

    .line 34
    sget-object v1, Lanet/channel/util/f;->a:Ljava/io/File;

    if-nez v1, :cond_0

    .line 35
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lanet/channel/util/f;->a:Ljava/io/File;

    .line 39
    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lanet/channel/util/f;->a:Ljava/io/File;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static declared-synchronized a(Ljava/io/File;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/File;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 88
    const-class v3, Lanet/channel/util/f;

    monitor-enter v3

    const/4 v1, 0x0

    .line 92
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 93
    const/4 v2, 0x3

    invoke-static {v2}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    const-string v2, "awcn.SerializeHelper"

    const-string v4, "file not exist."

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "file"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v2, v4, v5, v6}, Lanet/channel/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 108
    :cond_0
    if-eqz v0, :cond_1

    .line 110
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    :cond_1
    :goto_0
    monitor-exit v3

    return-object v0

    .line 111
    :catch_0
    move-exception v1

    .line 112
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 99
    :cond_2
    :try_start_3
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 100
    :try_start_4
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 101
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 102
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 108
    if-eqz v2, :cond_1

    .line 110
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 111
    :catch_1
    move-exception v1

    .line 112
    :try_start_6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 103
    :catch_2
    move-exception v1

    move-object v2, v0

    .line 104
    :goto_1
    const/4 v4, 0x3

    :try_start_7
    invoke-static {v4}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 105
    const-string v4, "awcn.SerializeHelper"

    const-string v5, "restore file fail."

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v1, v7}, Lanet/channel/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 108
    :cond_3
    if-eqz v2, :cond_1

    .line 110
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    .line 111
    :catch_3
    move-exception v1

    .line 112
    :try_start_9
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_0

    .line 108
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    if-eqz v2, :cond_4

    .line 110
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 113
    :cond_4
    :goto_3
    :try_start_b
    throw v0

    .line 111
    :catch_4
    move-exception v1

    .line 112
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_3

    .line 108
    :catchall_2
    move-exception v0

    goto :goto_2

    .line 103
    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method public static declared-synchronized a(Ljava/io/Serializable;Ljava/io/File;)V
    .locals 13

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 43
    const-class v5, Lanet/channel/util/f;

    monitor-enter v5

    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 44
    :cond_0
    :try_start_0
    const-string v0, "awcn.SerializeHelper"

    const-string v1, "persist fail. Invalid parameter"

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :cond_1
    :goto_0
    monitor-exit v5

    return-void

    .line 48
    :cond_2
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    .line 55
    :try_start_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "-"

    const-string v8, ""

    invoke-virtual {v1, v3, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lanet/channel/util/f;->a(Ljava/lang/String;)Ljava/io/File;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v3

    .line 56
    :try_start_3
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 57
    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Ljava/io/File;->setReadable(Z)Z

    .line 58
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 59
    :try_start_4
    new-instance v2, Ljava/io/ObjectOutputStream;

    new-instance v8, Ljava/io/BufferedOutputStream;

    invoke-direct {v8, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v8}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 60
    invoke-virtual {v2, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 61
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V

    .line 62
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 67
    if-eqz v1, :cond_3

    .line 69
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 76
    :cond_3
    :goto_1
    if-eqz v0, :cond_1

    .line 77
    :try_start_6
    invoke-virtual {v3, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    .line 78
    if-eqz v0, :cond_5

    .line 79
    const-string v0, "awcn.SerializeHelper"

    const-string v1, "persist end."

    const/4 v2, 0x0

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v8, "file"

    aput-object v8, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v8

    aput-object v8, v3, v4

    const/4 v4, 0x2

    const-string v8, "cost"

    aput-object v8, v3, v4

    const/4 v4, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v6, v8, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0

    .line 64
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 65
    :goto_2
    :try_start_7
    const-string v3, "awcn.SerializeHelper"

    const-string v8, "persist fail. "

    const/4 v9, 0x0

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "file"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v3, v8, v9, v0, v10}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 67
    if-eqz v1, :cond_6

    .line 69
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move v0, v4

    move-object v3, v2

    .line 71
    goto :goto_1

    :catch_1
    move-exception v0

    move v0, v4

    move-object v3, v2

    goto :goto_1

    .line 67
    :catchall_1
    move-exception v0

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_4

    .line 69
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 71
    :cond_4
    :goto_4
    :try_start_a
    throw v0

    .line 81
    :cond_5
    const-string v0, "awcn.SerializeHelper"

    const-string v1, "rename failed."

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object v0

    new-instance v1, Lanet/channel/statist/ExceptionStatistic;

    const/16 v2, -0x6a

    const/4 v3, 0x0

    const-string v4, "rt"

    invoke-direct {v1, v2, v3, v4}, Lanet/channel/statist/ExceptionStatistic;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    .line 71
    :catch_2
    move-exception v1

    goto/16 :goto_1

    :catch_3
    move-exception v1

    goto :goto_4

    .line 67
    :catchall_2
    move-exception v0

    goto :goto_3

    .line 64
    :catch_4
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    :catch_5
    move-exception v0

    move-object v2, v3

    goto :goto_2

    :cond_6
    move v0, v4

    move-object v3, v2

    goto/16 :goto_1
.end method
