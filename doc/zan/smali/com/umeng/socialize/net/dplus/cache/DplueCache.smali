.class public Lcom/umeng/socialize/net/dplus/cache/DplueCache;
.super Ljava/lang/Object;
.source "DplueCache.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 58
    if-eqz p0, :cond_0

    .line 59
    const-string v0, "content"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_0

    .line 61
    const-string v1, "share"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 65
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/io/File;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 71
    .line 73
    const/4 v3, 0x0

    .line 75
    :try_start_0
    invoke-static {}, Lcom/umeng/socialize/utils/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 76
    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 77
    new-instance v2, Ljava/io/BufferedWriter;

    invoke-direct {v2, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :try_start_1
    invoke-virtual {v2, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 79
    const/4 v0, 0x1

    .line 84
    if-eqz v2, :cond_0

    .line 85
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 91
    :cond_0
    :goto_0
    return v0

    .line 87
    :catch_0
    move-exception v1

    .line 88
    sget-object v2, Lcom/umeng/socialize/utils/UmengText$CACHE;->CLOSE:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 80
    :catch_1
    move-exception v1

    move-object v2, v3

    .line 81
    :goto_1
    :try_start_3
    sget-object v3, Lcom/umeng/socialize/utils/UmengText$CACHE;->CACHEFILE:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 84
    if-eqz v2, :cond_0

    .line 85
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 87
    :catch_2
    move-exception v1

    .line 88
    sget-object v2, Lcom/umeng/socialize/utils/UmengText$CACHE;->CLOSE:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    .line 84
    :goto_2
    if-eqz v3, :cond_1

    .line 85
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 90
    :cond_1
    :goto_3
    throw v0

    .line 87
    :catch_3
    move-exception v1

    .line 88
    sget-object v2, Lcom/umeng/socialize/utils/UmengText$CACHE;->CLOSE:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 83
    :catchall_1
    move-exception v0

    move-object v3, v2

    goto :goto_2

    .line 80
    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method public static deleteFile(Ljava/io/File;)Z
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 132
    return v0
.end method

.method public static getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    const-string v0, "dpluscache"

    return-object v0
.end method

.method public static getFilePath(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 143
    invoke-static {}, Lcom/umeng/socialize/utils/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-object v0

    .line 146
    :cond_1
    invoke-static {}, Lcom/umeng/socialize/utils/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 147
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "files"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 155
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 159
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move-object v0, v1

    .line 164
    goto :goto_0
.end method

.method public static readFile(Ljava/io/File;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 94
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 95
    const-string v0, ""

    .line 122
    :cond_0
    :goto_0
    return-object v0

    .line 99
    :cond_1
    const/4 v2, 0x0

    .line 103
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    invoke-static {}, Lcom/umeng/socialize/utils/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 105
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 106
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 108
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 111
    :catch_0
    move-exception v0

    .line 112
    :goto_2
    :try_start_2
    sget-object v2, Lcom/umeng/socialize/utils/UmengText$CACHE;->CACHEFILE:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 115
    if-eqz v1, :cond_2

    .line 116
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 122
    :cond_2
    :goto_3
    const-string v0, ""

    goto :goto_0

    .line 110
    :cond_3
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    .line 115
    if-eqz v1, :cond_0

    .line 116
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 118
    :catch_1
    move-exception v1

    .line 119
    sget-object v2, Lcom/umeng/socialize/utils/UmengText$CACHE;->CACHEFILE:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 118
    :catch_2
    move-exception v0

    .line 119
    sget-object v1, Lcom/umeng/socialize/utils/UmengText$CACHE;->CACHEFILE:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 114
    :catchall_0
    move-exception v0

    .line 115
    :goto_4
    if-eqz v2, :cond_4

    .line 116
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 121
    :cond_4
    :goto_5
    throw v0

    .line 118
    :catch_3
    move-exception v1

    .line 119
    sget-object v2, Lcom/umeng/socialize/utils/UmengText$CACHE;->CACHEFILE:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 114
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_4

    .line 111
    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method public static save(Lorg/json/JSONObject;Ljava/io/File;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-static {p1}, Lcom/umeng/socialize/net/dplus/cache/DplueCache;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-static {v0, p1}, Lcom/umeng/socialize/net/dplus/cache/DplueCache;->a(Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    .line 51
    :goto_0
    return v0

    .line 48
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 51
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/umeng/socialize/net/dplus/cache/DplueCache;->a(Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    goto :goto_0
.end method
