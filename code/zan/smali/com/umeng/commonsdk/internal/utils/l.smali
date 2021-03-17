.class public Lcom/umeng/commonsdk/internal/utils/l;
.super Ljava/lang/Object;
.source "UMProbe.java"


# static fields
.field public static final a:Ljava/lang/String; = "UM_PROBE_DATA"

.field public static final b:Ljava/lang/String; = "_dsk_s"

.field public static final c:Ljava/lang/String; = "_thm_z"

.field public static final d:Ljava/lang/String; = "_gdf_r"

.field private static e:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/internal/utils/l;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 122
    .line 123
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    .line 124
    invoke-virtual {v1, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 127
    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 128
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 129
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 131
    const-string v3, ""

    .line 134
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 135
    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 136
    const/4 v1, 0x1

    .line 142
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    .line 149
    :goto_1
    return v0

    .line 146
    :catch_0
    move-exception v1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method public static a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 158
    const-string v0, "unknown"

    .line 159
    const-string v2, "ls /sys/class/thermal"

    .line 160
    const/4 v1, -0x1

    .line 162
    :try_start_0
    const-string v3, "thermal_zone"

    invoke-static {v2, v3}, Lcom/umeng/commonsdk/internal/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 167
    :goto_0
    if-lez v1, :cond_1

    .line 168
    const-string v0, "thermal_zone"

    .line 173
    :cond_0
    :goto_1
    return-object v0

    .line 169
    :cond_1
    if-gez v1, :cond_0

    .line 170
    const-string v0, "noper"

    goto :goto_1

    .line 163
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 34
    const/4 v0, 0x0

    .line 36
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "UM_PROBE_DATA"

    const/4 v3, 0x0

    .line 37
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 42
    sget-object v3, Lcom/umeng/commonsdk/internal/utils/l;->e:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :try_start_1
    const-string v4, "_dsk_s"

    const-string v5, "_dsk_s"

    const-string v6, ""

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    const-string v4, "_thm_z"

    const-string v5, "_thm_z"

    const-string v6, ""

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    const-string v4, "_gdf_r"

    const-string v5, "_gdf_r"

    const-string v6, ""

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    :try_start_2
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 52
    :cond_0
    :goto_0
    return-object v0

    .line 46
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 49
    :catch_0
    move-exception v1

    .line 50
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/proguard/b;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic a(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    invoke-static {p0, p1}, Lcom/umeng/commonsdk/internal/utils/l;->b(Landroid/content/Context;[Ljava/lang/String;)V

    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 182
    const-string v0, "unknown"

    .line 183
    const-string v2, "ls /"

    .line 184
    const/4 v1, -0x1

    .line 186
    :try_start_0
    const-string v3, "goldfish"

    invoke-static {v2, v3}, Lcom/umeng/commonsdk/internal/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 191
    :goto_0
    if-lez v1, :cond_1

    .line 192
    const-string v0, "goldfish"

    .line 197
    :cond_0
    :goto_1
    return-object v0

    .line 193
    :cond_1
    if-gez v1, :cond_0

    .line 194
    const-string v0, "noper"

    goto :goto_1

    .line 187
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 56
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/utils/l;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "unknown"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "unknown"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "unknown"

    aput-object v2, v0, v1

    .line 58
    new-instance v1, Lcom/umeng/commonsdk/internal/utils/l$1;

    invoke-direct {v1, v0, p0}, Lcom/umeng/commonsdk/internal/utils/l$1;-><init>([Ljava/lang/String;Landroid/content/Context;)V

    .line 69
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 71
    :cond_0
    return-void
.end method

.method private static b(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 78
    if-nez p0, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "UM_PROBE_DATA"

    .line 82
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_0

    .line 85
    sget-object v1, Lcom/umeng/commonsdk/internal/utils/l;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 86
    :try_start_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "_dsk_s"

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "_thm_z"

    const/4 v3, 0x1

    aget-object v3, p1, v3

    .line 87
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "_gdf_r"

    const/4 v3, 0x2

    aget-object v3, p1, v3

    .line 88
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 89
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static c()Ljava/lang/String;
    .locals 8

    .prologue
    .line 206
    const-string v0, "unknown"

    .line 207
    const/4 v2, 0x0

    .line 209
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/proc/diskstats"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :try_start_1
    const-string v2, ""

    .line 211
    const-string v2, "mmcblk"

    .line 212
    const-string v3, "sda"

    .line 213
    const-string v4, "mtd"

    .line 215
    if-eqz v1, :cond_1

    .line 216
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 217
    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 218
    const-string v0, "mmcblk"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 235
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 236
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 242
    :cond_2
    :goto_1
    return-object v0

    .line 220
    :cond_3
    :try_start_3
    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 221
    const-string v0, "sda"

    goto :goto_0

    .line 223
    :cond_4
    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 224
    const-string v0, "mtd"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 229
    :catch_0
    move-exception v0

    move-object v0, v2

    .line 231
    :goto_2
    const-string v1, "noper"

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    goto :goto_0

    .line 238
    :catch_1
    move-exception v1

    goto :goto_1

    .line 229
    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_2
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 99
    .line 100
    if-eqz p0, :cond_0

    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "UM_PROBE_DATA"

    .line 102
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 104
    if-eqz v1, :cond_0

    .line 105
    const-string v2, "_dsk_s"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 107
    const/4 v0, 0x1

    .line 111
    :cond_0
    return v0
.end method
