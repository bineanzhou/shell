.class public Lcom/umeng/commonsdk/internal/utils/g;
.super Ljava/lang/Object;
.source "ProcessUtil.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:[B

.field private static c:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "\n"

    sput-object v0, Lcom/umeng/commonsdk/internal/utils/g;->a:Ljava/lang/String;

    .line 25
    const-string v0, "\nexit\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/internal/utils/g;->b:[B

    .line 26
    const/16 v0, 0x20

    new-array v0, v0, [B

    sput-object v0, Lcom/umeng/commonsdk/internal/utils/g;->c:[B

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 37
    .line 48
    :try_start_0
    new-instance v1, Ljava/lang/ProcessBuilder;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 49
    invoke-virtual {v1, p0}, Ljava/lang/ProcessBuilder;->command([Ljava/lang/String;)Ljava/lang/ProcessBuilder;

    move-result-object v1

    .line 50
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 51
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 52
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v3

    .line 53
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v2

    .line 55
    :try_start_4
    sget-object v4, Lcom/umeng/commonsdk/internal/utils/g;->b:[B

    invoke-virtual {v1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 56
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 58
    invoke-virtual {v7}, Ljava/lang/Process;->waitFor()I

    .line 60
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 61
    :try_start_5
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 64
    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 65
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 66
    :try_start_7
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    sget-object v8, Lcom/umeng/commonsdk/internal/utils/g;->a:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 69
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    sget-object v8, Lcom/umeng/commonsdk/internal/utils/g;->a:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    goto :goto_0

    .line 76
    :catch_0
    move-exception v8

    .line 81
    :goto_1
    invoke-static {v1, v2, v3, v4, v5}, Lcom/umeng/commonsdk/internal/utils/g;->a(Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/io/InputStream;Ljava/io/InputStreamReader;Ljava/io/BufferedReader;)V

    .line 83
    if-eqz v7, :cond_0

    .line 84
    invoke-static {v7}, Lcom/umeng/commonsdk/internal/utils/g;->c(Ljava/lang/Process;)V

    .line 89
    :cond_0
    :goto_2
    if-nez v6, :cond_3

    :goto_3
    return-object v0

    .line 74
    :cond_1
    :goto_4
    :try_start_8
    sget-object v8, Lcom/umeng/commonsdk/internal/utils/g;->c:[B

    invoke-virtual {v2, v8}, Ljava/io/InputStream;->read([B)I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    move-result v8

    if-gtz v8, :cond_1

    .line 81
    invoke-static {v1, v2, v3, v4, v5}, Lcom/umeng/commonsdk/internal/utils/g;->a(Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/io/InputStream;Ljava/io/InputStreamReader;Ljava/io/BufferedReader;)V

    .line 83
    if-eqz v7, :cond_0

    .line 84
    invoke-static {v7}, Lcom/umeng/commonsdk/internal/utils/g;->c(Ljava/lang/Process;)V

    goto :goto_2

    .line 78
    :catch_1
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    move-object v7, v0

    .line 81
    :goto_5
    invoke-static {v1, v2, v3, v4, v5}, Lcom/umeng/commonsdk/internal/utils/g;->a(Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/io/InputStream;Ljava/io/InputStreamReader;Ljava/io/BufferedReader;)V

    .line 83
    if-eqz v7, :cond_0

    .line 84
    invoke-static {v7}, Lcom/umeng/commonsdk/internal/utils/g;->c(Ljava/lang/Process;)V

    goto :goto_2

    .line 81
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    move-object v7, v0

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    :goto_6
    invoke-static {v1, v2, v3, v4, v5}, Lcom/umeng/commonsdk/internal/utils/g;->a(Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/io/InputStream;Ljava/io/InputStreamReader;Ljava/io/BufferedReader;)V

    .line 83
    if-eqz v7, :cond_2

    .line 84
    invoke-static {v7}, Lcom/umeng/commonsdk/internal/utils/g;->c(Ljava/lang/Process;)V

    .line 85
    :cond_2
    throw v0

    .line 89
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 81
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_6

    :catchall_2
    move-exception v2

    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    move-object v9, v0

    move-object v0, v2

    move-object v2, v9

    goto :goto_6

    :catchall_3
    move-exception v2

    move-object v4, v0

    move-object v5, v0

    move-object v9, v2

    move-object v2, v0

    move-object v0, v9

    goto :goto_6

    :catchall_4
    move-exception v4

    move-object v5, v0

    move-object v9, v0

    move-object v0, v4

    move-object v4, v9

    goto :goto_6

    :catchall_5
    move-exception v5

    move-object v9, v5

    move-object v5, v0

    move-object v0, v9

    goto :goto_6

    :catchall_6
    move-exception v0

    goto :goto_6

    .line 78
    :catch_2
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    goto :goto_5

    :catch_3
    move-exception v2

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    goto :goto_5

    :catch_4
    move-exception v2

    move-object v2, v0

    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    goto :goto_5

    :catch_5
    move-exception v4

    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    goto :goto_5

    :catch_6
    move-exception v5

    move-object v5, v0

    move-object v6, v0

    goto :goto_5

    :catch_7
    move-exception v6

    move-object v6, v0

    goto :goto_5

    :catch_8
    move-exception v8

    goto :goto_5

    .line 76
    :catch_9
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    move-object v7, v0

    goto/16 :goto_1

    :catch_a
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    goto/16 :goto_1

    :catch_b
    move-exception v2

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    goto/16 :goto_1

    :catch_c
    move-exception v2

    move-object v2, v0

    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    goto/16 :goto_1

    :catch_d
    move-exception v4

    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    goto/16 :goto_1

    :catch_e
    move-exception v5

    move-object v5, v0

    move-object v6, v0

    goto/16 :goto_1

    :catch_f
    move-exception v6

    move-object v6, v0

    goto/16 :goto_1

    :cond_4
    move-object v6, v0

    goto/16 :goto_4
.end method

.method private static a(Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/io/InputStream;Ljava/io/InputStreamReader;Ljava/io/BufferedReader;)V
    .locals 1

    .prologue
    .line 103
    if-eqz p0, :cond_0

    .line 105
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 112
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 117
    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    .line 119
    :try_start_2
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 124
    :cond_2
    :goto_2
    if-eqz p3, :cond_3

    .line 126
    :try_start_3
    invoke-virtual {p3}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 131
    :cond_3
    :goto_3
    if-eqz p4, :cond_4

    .line 133
    :try_start_4
    invoke-virtual {p4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 138
    :cond_4
    :goto_4
    return-void

    .line 106
    :catch_0
    move-exception v0

    goto :goto_0

    .line 113
    :catch_1
    move-exception v0

    goto :goto_1

    .line 120
    :catch_2
    move-exception v0

    goto :goto_2

    .line 127
    :catch_3
    move-exception v0

    goto :goto_3

    .line 134
    :catch_4
    move-exception v0

    goto :goto_4
.end method

.method private static a(Ljava/lang/Process;)V
    .locals 1

    .prologue
    .line 146
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/utils/g;->b(Ljava/lang/Process;)I

    move-result v0

    .line 147
    if-eqz v0, :cond_0

    .line 150
    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 153
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 154
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private static b(Ljava/lang/Process;)I
    .locals 3

    .prologue
    .line 167
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    :try_start_0
    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 170
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 171
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 174
    :goto_0
    return v0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Ljava/lang/Process;)V
    .locals 1

    .prologue
    .line 184
    if-eqz p0, :cond_0

    .line 187
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Process;->exitValue()I

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/utils/g;->a(Ljava/lang/Process;)V
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 190
    :catch_0
    move-exception v0

    .line 191
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/utils/g;->a(Ljava/lang/Process;)V

    goto :goto_0
.end method
