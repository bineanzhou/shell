.class public Lcom/umeng/commonsdk/statistics/idtracking/s;
.super Lcom/umeng/commonsdk/statistics/idtracking/a;
.source "UUIDTracker.java"


# static fields
.field private static final a:Ljava/lang/String; = "uuid"

.field private static final e:Ljava/lang/String; = "yosuid"

.field private static final f:Ljava/lang/String; = "23346339"


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    const-string v0, "uuid"

    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/statistics/idtracking/a;-><init>(Ljava/lang/String;)V

    .line 34
    iput-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/s;->b:Landroid/content/Context;

    .line 35
    iput-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/s;->c:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/s;->d:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/idtracking/s;->b:Landroid/content/Context;

    .line 43
    iput-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/s;->c:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/s;->d:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 196
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 197
    const-string v1, "get"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 198
    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_0
    return-object v0

    .line 200
    :catch_0
    move-exception v0

    move-object v0, p1

    .line 203
    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 101
    const-string v0, "ro.yunos.openuuid"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/statistics/idtracking/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/s;->d:Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/s;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/s;->d:Ljava/lang/String;

    .line 191
    :goto_0
    return-object v0

    .line 106
    :cond_0
    const-string v0, "ro.aliyun.clouduuid"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/statistics/idtracking/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/s;->c:Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/s;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    const-string v0, "ro.sys.aliyun.clouduuid"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/statistics/idtracking/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/s;->c:Ljava/lang/String;

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/s;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 113
    const/4 v3, 0x0

    .line 115
    const/4 v5, 0x0

    .line 117
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string v1, "https://cmnsguider.yunos.com:443/genDeviceToken"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    const/16 v1, 0x7530

    :try_start_1
    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 120
    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 121
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 122
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 123
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 124
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    .line 125
    const-string v1, "Content-Type"

    const-string v4, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v1, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    new-instance v1, Lcom/umeng/commonsdk/statistics/idtracking/s$1;

    invoke-direct {v1, p0}, Lcom/umeng/commonsdk/statistics/idtracking/s$1;-><init>(Lcom/umeng/commonsdk/statistics/idtracking/s;)V

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appKey="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "23338940"

    const-string v6, "UTF-8"

    invoke-static {v4, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "&uuid="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "FC1FE84794417B1BEF276234F6FB4E63"

    const-string v6, "UTF-8"

    .line 135
    invoke-static {v4, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 137
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 139
    :try_start_2
    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 142
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v1

    .line 143
    const/16 v3, 0xc8

    if-ne v1, v3, :cond_f

    .line 146
    :try_start_3
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_d
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v3

    .line 147
    :try_start_4
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_e
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 149
    :try_start_5
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 150
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 151
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_1

    .line 156
    :catch_0
    move-exception v2

    move-object v2, v3

    .line 163
    :goto_2
    if-eqz v4, :cond_2

    .line 165
    :try_start_6
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 170
    :cond_2
    :goto_3
    if-eqz v1, :cond_3

    .line 172
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 177
    :cond_3
    :goto_4
    if-eqz v2, :cond_4

    .line 179
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 184
    :cond_4
    :goto_5
    if-eqz v0, :cond_5

    .line 185
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 191
    :cond_5
    :goto_6
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/s;->d:Ljava/lang/String;

    goto/16 :goto_0

    .line 153
    :cond_6
    if-eqz v2, :cond_7

    .line 154
    :try_start_9
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/umeng/commonsdk/statistics/idtracking/s;->d:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :cond_7
    move-object v2, v3

    .line 158
    goto :goto_2

    .line 160
    :catch_1
    move-exception v0

    move-object v0, v2

    move-object v1, v2

    .line 163
    :goto_7
    if-eqz v0, :cond_8

    .line 165
    :try_start_a
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    .line 170
    :cond_8
    :goto_8
    if-eqz v2, :cond_9

    .line 172
    :try_start_b
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    .line 177
    :cond_9
    :goto_9
    if-eqz v2, :cond_a

    .line 179
    :try_start_c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    .line 184
    :cond_a
    :goto_a
    if-eqz v1, :cond_5

    .line 185
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto :goto_6

    .line 163
    :catchall_0
    move-exception v0

    move-object v4, v2

    move-object v3, v2

    move-object v1, v2

    :goto_b
    if-eqz v4, :cond_b

    .line 165
    :try_start_d
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    .line 170
    :cond_b
    :goto_c
    if-eqz v2, :cond_c

    .line 172
    :try_start_e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_9

    .line 177
    :cond_c
    :goto_d
    if-eqz v3, :cond_d

    .line 179
    :try_start_f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_a

    .line 184
    :cond_d
    :goto_e
    if-eqz v1, :cond_e

    .line 185
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_e
    throw v0

    .line 166
    :catch_2
    move-exception v3

    goto :goto_3

    .line 173
    :catch_3
    move-exception v1

    goto :goto_4

    .line 180
    :catch_4
    move-exception v1

    goto :goto_5

    .line 166
    :catch_5
    move-exception v0

    goto :goto_8

    .line 173
    :catch_6
    move-exception v0

    goto :goto_9

    .line 180
    :catch_7
    move-exception v0

    goto :goto_a

    .line 166
    :catch_8
    move-exception v4

    goto :goto_c

    .line 173
    :catch_9
    move-exception v2

    goto :goto_d

    .line 180
    :catch_a
    move-exception v2

    goto :goto_e

    .line 163
    :catchall_1
    move-exception v1

    move-object v4, v2

    move-object v3, v2

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_b

    :catchall_2
    move-exception v1

    move-object v3, v2

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_b

    :catchall_3
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_b

    :catchall_4
    move-exception v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_b

    .line 160
    :catch_b
    move-exception v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_7

    :catch_c
    move-exception v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_7

    .line 156
    :catch_d
    move-exception v1

    move-object v1, v2

    goto/16 :goto_2

    :catch_e
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_2

    :cond_f
    move-object v1, v2

    goto/16 :goto_2
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 3

    .prologue
    .line 58
    :try_start_0
    const-string v0, "ro.yunos.version"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/statistics/idtracking/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 59
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/s;->b:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 60
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/s;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 61
    if-eqz v1, :cond_2

    .line 62
    const-string v0, "yosuid"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 64
    const-string v0, "23346339"

    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/statistics/idtracking/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/s;->d:Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/s;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/s;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 67
    if-eqz v1, :cond_0

    .line 68
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_0

    .line 70
    const-string v1, "yosuid"

    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/idtracking/s;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/s;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :cond_1
    :goto_0
    return-object v0

    .line 83
    :catch_0
    move-exception v0

    .line 86
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
