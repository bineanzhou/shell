.class public Lcom/umeng/commonsdk/internal/utils/d;
.super Ljava/lang/Object;
.source "CpuUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/internal/utils/d$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static a()Lcom/umeng/commonsdk/internal/utils/d$a;
    .locals 11

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 40
    const/4 v2, 0x0

    .line 42
    :try_start_0
    new-instance v1, Lcom/umeng/commonsdk/internal/utils/d$a;

    invoke-direct {v1}, Lcom/umeng/commonsdk/internal/utils/d$a;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :try_start_1
    new-instance v3, Ljava/io/FileReader;

    const-string v5, "/proc/cpuinfo"

    invoke-direct {v3, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    if-nez v3, :cond_2

    .line 104
    if-eqz v3, :cond_0

    .line 106
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 111
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 113
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_1
    :goto_1
    move-object v1, v0

    .line 121
    :goto_2
    return-object v1

    .line 47
    :cond_2
    :try_start_4
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_c
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 48
    if-nez v2, :cond_5

    .line 104
    if-eqz v3, :cond_3

    .line 106
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 111
    :cond_3
    :goto_3
    if-eqz v2, :cond_4

    .line 113
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :cond_4
    :goto_4
    move-object v1, v0

    .line 116
    goto :goto_2

    .line 51
    :cond_5
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_d
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-object v0

    move v6, v4

    move v5, v7

    move-object v8, v0

    move v0, v4

    .line 55
    :goto_5
    :try_start_8
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_e
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result v9

    if-nez v9, :cond_6

    .line 56
    add-int/lit8 v6, v6, 0x1

    .line 57
    const/16 v9, 0x1e

    if-lt v6, v9, :cond_9

    .line 104
    :cond_6
    if-eqz v3, :cond_7

    .line 106
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 111
    :cond_7
    :goto_6
    if-eqz v2, :cond_8

    .line 113
    :try_start_a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 120
    :cond_8
    :goto_7
    iput v0, v1, Lcom/umeng/commonsdk/internal/utils/d$a;->c:I

    goto :goto_2

    .line 60
    :cond_9
    :try_start_b
    const-string v9, ":\\s+"

    const/4 v10, 0x2

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    .line 62
    if-eqz v5, :cond_a

    if-eqz v8, :cond_a

    array-length v9, v8

    if-le v9, v7, :cond_a

    .line 63
    const/4 v5, 0x1

    aget-object v5, v8, v5

    iput-object v5, v1, Lcom/umeng/commonsdk/internal/utils/d$a;->a:Ljava/lang/String;

    move v5, v4

    .line 66
    :cond_a
    if-eqz v8, :cond_b

    array-length v9, v8

    if-le v9, v7, :cond_b

    const/4 v9, 0x0

    aget-object v9, v8, v9

    const-string v10, "processor"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 67
    add-int/lit8 v0, v0, 0x1

    .line 69
    :cond_b
    if-eqz v8, :cond_c

    array-length v9, v8

    if-le v9, v7, :cond_c

    const/4 v9, 0x0

    aget-object v9, v8, v9

    const-string v10, "Features"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 70
    const/4 v9, 0x1

    aget-object v9, v8, v9

    iput-object v9, v1, Lcom/umeng/commonsdk/internal/utils/d$a;->d:Ljava/lang/String;

    .line 72
    :cond_c
    if-eqz v8, :cond_d

    array-length v9, v8

    if-le v9, v7, :cond_d

    const/4 v9, 0x0

    aget-object v9, v8, v9

    const-string v10, "implementer"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 73
    const/4 v9, 0x1

    aget-object v9, v8, v9

    iput-object v9, v1, Lcom/umeng/commonsdk/internal/utils/d$a;->e:Ljava/lang/String;

    .line 76
    :cond_d
    if-eqz v8, :cond_e

    array-length v9, v8

    if-le v9, v7, :cond_e

    const/4 v9, 0x0

    aget-object v9, v8, v9

    const-string v10, "architecture"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 77
    const/4 v9, 0x1

    aget-object v9, v8, v9

    iput-object v9, v1, Lcom/umeng/commonsdk/internal/utils/d$a;->f:Ljava/lang/String;

    .line 79
    :cond_e
    if-eqz v8, :cond_f

    array-length v9, v8

    if-le v9, v7, :cond_f

    const/4 v9, 0x0

    aget-object v9, v8, v9

    const-string v10, "variant"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 80
    const/4 v9, 0x1

    aget-object v9, v8, v9

    iput-object v9, v1, Lcom/umeng/commonsdk/internal/utils/d$a;->g:Ljava/lang/String;

    .line 82
    :cond_f
    if-eqz v8, :cond_10

    array-length v9, v8

    if-le v9, v7, :cond_10

    const/4 v9, 0x0

    aget-object v9, v8, v9

    const-string v10, "part"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 83
    const/4 v9, 0x1

    aget-object v9, v8, v9

    iput-object v9, v1, Lcom/umeng/commonsdk/internal/utils/d$a;->h:Ljava/lang/String;

    .line 85
    :cond_10
    if-eqz v8, :cond_11

    array-length v9, v8

    if-le v9, v7, :cond_11

    const/4 v9, 0x0

    aget-object v9, v8, v9

    const-string v10, "revision"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 86
    const/4 v9, 0x1

    aget-object v9, v8, v9

    iput-object v9, v1, Lcom/umeng/commonsdk/internal/utils/d$a;->i:Ljava/lang/String;

    .line 88
    :cond_11
    if-eqz v8, :cond_12

    array-length v9, v8

    if-le v9, v7, :cond_12

    const/4 v9, 0x0

    aget-object v9, v8, v9

    const-string v10, "Hardware"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 89
    const/4 v9, 0x1

    aget-object v9, v8, v9

    iput-object v9, v1, Lcom/umeng/commonsdk/internal/utils/d$a;->j:Ljava/lang/String;

    .line 91
    :cond_12
    if-eqz v8, :cond_13

    array-length v9, v8

    if-le v9, v7, :cond_13

    const/4 v9, 0x0

    aget-object v9, v8, v9

    const-string v10, "Revision"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 92
    const/4 v9, 0x1

    aget-object v9, v8, v9

    iput-object v9, v1, Lcom/umeng/commonsdk/internal/utils/d$a;->k:Ljava/lang/String;

    .line 94
    :cond_13
    if-eqz v8, :cond_14

    array-length v9, v8

    if-le v9, v7, :cond_14

    const/4 v9, 0x0

    aget-object v9, v8, v9

    const-string v10, "Serial"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 95
    const/4 v9, 0x1

    aget-object v9, v8, v9

    iput-object v9, v1, Lcom/umeng/commonsdk/internal/utils/d$a;->l:Ljava/lang/String;

    .line 97
    :cond_14
    if-eqz v8, :cond_15

    array-length v9, v8

    if-le v9, v7, :cond_15

    const/4 v9, 0x0

    aget-object v9, v8, v9

    const-string v10, "implementer"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 98
    const/4 v9, 0x1

    aget-object v8, v8, v9

    iput-object v8, v1, Lcom/umeng/commonsdk/internal/utils/d$a;->e:Ljava/lang/String;

    .line 100
    :cond_15
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_e
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move-result-object v8

    goto/16 :goto_5

    .line 102
    :catch_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v1, v0

    move v0, v4

    .line 104
    :goto_8
    if-eqz v3, :cond_16

    .line 106
    :try_start_c
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 111
    :cond_16
    :goto_9
    if-eqz v2, :cond_8

    .line 113
    :try_start_d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1

    goto/16 :goto_7

    .line 114
    :catch_1
    move-exception v2

    goto/16 :goto_7

    .line 104
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    :goto_a
    if-eqz v3, :cond_17

    .line 106
    :try_start_e
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    .line 111
    :cond_17
    :goto_b
    if-eqz v2, :cond_18

    .line 113
    :try_start_f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a

    .line 116
    :cond_18
    :goto_c
    throw v0

    .line 107
    :catch_2
    move-exception v1

    goto/16 :goto_0

    .line 114
    :catch_3
    move-exception v1

    goto/16 :goto_1

    .line 107
    :catch_4
    move-exception v1

    goto/16 :goto_3

    .line 114
    :catch_5
    move-exception v1

    goto/16 :goto_4

    .line 107
    :catch_6
    move-exception v3

    goto/16 :goto_6

    .line 114
    :catch_7
    move-exception v2

    goto/16 :goto_7

    .line 107
    :catch_8
    move-exception v3

    goto :goto_9

    :catch_9
    move-exception v1

    goto :goto_b

    .line 114
    :catch_a
    move-exception v1

    goto :goto_c

    .line 104
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_a

    :catchall_2
    move-exception v0

    goto :goto_a

    .line 102
    :catch_b
    move-exception v2

    move-object v2, v0

    move-object v3, v0

    move v0, v4

    goto :goto_8

    :catch_c
    move-exception v2

    move-object v2, v0

    move v0, v4

    goto :goto_8

    :catch_d
    move-exception v0

    move v0, v4

    goto :goto_8

    :catch_e
    move-exception v4

    goto :goto_8
.end method

.method public static b()Ljava/lang/String;
    .locals 5

    .prologue
    .line 128
    const-string v0, ""

    .line 131
    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "/system/bin/cat"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    aput-object v3, v1, v2

    .line 133
    new-instance v2, Ljava/lang/ProcessBuilder;

    invoke-direct {v2, v1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 134
    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v1

    .line 135
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 136
    const/16 v2, 0x18

    new-array v2, v2, [B

    .line 137
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 138
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 141
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static c()Ljava/lang/String;
    .locals 5

    .prologue
    .line 149
    const-string v0, ""

    .line 152
    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "/system/bin/cat"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq"

    aput-object v3, v1, v2

    .line 154
    new-instance v2, Ljava/lang/ProcessBuilder;

    invoke-direct {v2, v1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 155
    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v1

    .line 156
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 157
    const/16 v2, 0x18

    new-array v2, v2, [B

    .line 158
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 159
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 161
    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 162
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 170
    const-string v0, ""

    .line 172
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    const-string v2, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 174
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 175
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 176
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 180
    :goto_0
    return-object v0

    .line 177
    :catch_0
    move-exception v1

    goto :goto_0
.end method
