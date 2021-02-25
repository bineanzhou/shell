.class public Lcom/umeng/commonsdk/stateless/e;
.super Ljava/lang/Object;
.source "UMSLNetWorkSenderHelper.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, "10.0.0.172"

    iput-object v0, p0, Lcom/umeng/commonsdk/stateless/e;->a:Ljava/lang/String;

    .line 51
    const/16 v0, 0x50

    iput v0, p0, Lcom/umeng/commonsdk/stateless/e;->b:I

    .line 56
    iput-object p1, p0, Lcom/umeng/commonsdk/stateless/e;->c:Landroid/content/Context;

    .line 57
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/e;->c:Landroid/content/Context;

    const-string v1, "sl_domain_p"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->assembleStatelessURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/stateless/a;->g:Ljava/lang/String;

    .line 77
    :cond_0
    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    .line 90
    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/e;->c:Landroid/content/Context;

    const-string v1, "sl_domain_p"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/umeng/commonsdk/stateless/e;->c:Landroid/content/Context;

    const-string v2, "oversea_sl_domain_p"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 93
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 94
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->assembleStatelessURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/stateless/a;->f:Ljava/lang/String;

    .line 96
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->assembleStatelessURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/stateless/a;->h:Ljava/lang/String;

    .line 100
    :cond_1
    sget-object v0, Lcom/umeng/commonsdk/stateless/a;->h:Ljava/lang/String;

    sput-object v0, Lcom/umeng/commonsdk/stateless/a;->g:Ljava/lang/String;

    .line 103
    sget-object v0, Lcom/umeng/commonsdk/statistics/b;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 104
    sget-object v0, Lcom/umeng/commonsdk/statistics/b;->b:Ljava/lang/String;

    const-string v1, "460"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/umeng/commonsdk/statistics/b;->b:Ljava/lang/String;

    const-string v1, "461"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 106
    :cond_2
    sget-object v0, Lcom/umeng/commonsdk/stateless/a;->f:Ljava/lang/String;

    sput-object v0, Lcom/umeng/commonsdk/stateless/a;->g:Ljava/lang/String;

    .line 110
    :cond_3
    return-void
.end method

.method private c()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 113
    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/e;->c:Landroid/content/Context;

    if-eqz v0, :cond_3

    .line 114
    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/e;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 115
    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    iget-object v4, p0, Lcom/umeng/commonsdk/stateless/e;->c:Landroid/content/Context;

    .line 116
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 115
    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 138
    :goto_0
    return v0

    .line 120
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/e;->c:Landroid/content/Context;

    const-string v3, "connectivity"

    .line 121
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 122
    iget-object v3, p0, Lcom/umeng/commonsdk/stateless/e;->c:Landroid/content/Context;

    const-string v4, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v3, v4}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 123
    goto :goto_0

    .line 125
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 126
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-eq v3, v2, :cond_3

    .line 127
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 128
    if-eqz v0, :cond_3

    const-string v3, "cmwap"

    .line 129
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "3gwap"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "uniwap"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v0, v2

    .line 130
    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    iget-object v2, p0, Lcom/umeng/commonsdk/stateless/e;->c:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/umeng/commonsdk/proguard/b;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_3
    move v0, v1

    .line 138
    goto :goto_0
.end method


# virtual methods
.method public a([BLjava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 143
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 144
    :cond_0
    const-string v0, "walle"

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "[stateless] sendMessage, envelopeByte == null || path == null "

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 250
    :cond_1
    :goto_0
    return v0

    .line 148
    :cond_2
    sget v0, Lcom/umeng/commonsdk/statistics/d;->b:I

    if-nez v0, :cond_4

    .line 150
    invoke-direct {p0}, Lcom/umeng/commonsdk/stateless/e;->a()V

    .line 163
    :goto_1
    :try_start_0
    invoke-direct {p0}, Lcom/umeng/commonsdk/stateless/e;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 164
    new-instance v0, Ljava/net/Proxy;

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v5, Ljava/net/InetSocketAddress;

    iget-object v6, p0, Lcom/umeng/commonsdk/stateless/e;->a:Ljava/lang/String;

    iget v7, p0, Lcom/umeng/commonsdk/stateless/e;->b:I

    invoke-direct {v5, v6, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v3, v5}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 165
    new-instance v3, Ljava/net/URL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/umeng/commonsdk/stateless/a;->g:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_0
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v0

    .line 170
    :goto_2
    :try_start_1
    sget-object v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 192
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 193
    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Ljava/security/SecureRandom;

    invoke-direct {v7}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v5, v6, v7}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 194
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 197
    const-string v0, "X-Umeng-UTC"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v0, "Msg-Type"

    const-string v5, "envelope/json"

    invoke-virtual {v3, v0, v5}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const/16 v0, 0x7530

    invoke-virtual {v3, v0}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 201
    const/16 v0, 0x7530

    invoke-virtual {v3, v0}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 202
    const-string v0, "POST"

    invoke-virtual {v3, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 204
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 205
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 206
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    .line 208
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 209
    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 210
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 212
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 214
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v0

    .line 216
    const/16 v5, 0xc8

    if-ne v0, v5, :cond_b

    .line 217
    const-string v0, "MobclickRT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--->>> send stateless message success : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/umeng/commonsdk/stateless/a;->g:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v0, v4

    .line 233
    :goto_3
    if-eqz v2, :cond_3

    .line 235
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 239
    :cond_3
    :goto_4
    if-eqz v3, :cond_1

    .line 243
    :try_start_3
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b

    .line 247
    :goto_5
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 154
    :cond_4
    sget-object v0, Lcom/umeng/commonsdk/stateless/a;->h:Ljava/lang/String;

    sput-object v0, Lcom/umeng/commonsdk/stateless/a;->f:Ljava/lang/String;

    .line 155
    invoke-direct {p0}, Lcom/umeng/commonsdk/stateless/e;->b()V

    goto/16 :goto_1

    .line 167
    :cond_5
    :try_start_4
    new-instance v0, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/umeng/commonsdk/stateless/a;->g:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_4
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v3, v0

    goto/16 :goto_2

    .line 221
    :catch_0
    move-exception v0

    move-object v3, v2

    .line 228
    :goto_6
    :try_start_5
    const-string v4, "SSLHandshakeException, Failed to send message."

    invoke-static {v4, v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 233
    if-eqz v2, :cond_6

    .line 235
    :try_start_6
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 239
    :cond_6
    :goto_7
    if-eqz v3, :cond_a

    .line 243
    :try_start_7
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9

    .line 247
    :goto_8
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    move v0, v1

    goto/16 :goto_0

    .line 229
    :catch_1
    move-exception v0

    move-object v3, v2

    .line 230
    :goto_9
    :try_start_8
    const-string v4, "Exception,Failed to send message."

    invoke-static {v4, v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 231
    iget-object v4, p0, Lcom/umeng/commonsdk/stateless/e;->c:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/umeng/commonsdk/proguard/b;->a(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 233
    if-eqz v2, :cond_7

    .line 235
    :try_start_9
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 239
    :cond_7
    :goto_a
    if-eqz v3, :cond_a

    .line 243
    :try_start_a
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 247
    :goto_b
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    move v0, v1

    goto/16 :goto_0

    .line 233
    :catchall_0
    move-exception v0

    move-object v3, v2

    :goto_c
    if-eqz v2, :cond_8

    .line 235
    :try_start_b
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    .line 239
    :cond_8
    :goto_d
    if-eqz v3, :cond_9

    .line 243
    :try_start_c
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    .line 247
    :goto_e
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_9
    throw v0

    .line 236
    :catch_2
    move-exception v1

    goto/16 :goto_4

    :catch_3
    move-exception v0

    goto :goto_7

    :catch_4
    move-exception v0

    goto :goto_a

    :catch_5
    move-exception v1

    goto :goto_d

    .line 244
    :catch_6
    move-exception v1

    goto :goto_e

    .line 233
    :catchall_1
    move-exception v0

    goto :goto_c

    .line 244
    :catch_7
    move-exception v0

    goto :goto_b

    .line 229
    :catch_8
    move-exception v0

    goto :goto_9

    .line 244
    :catch_9
    move-exception v0

    goto :goto_8

    .line 221
    :catch_a
    move-exception v0

    goto :goto_6

    .line 244
    :catch_b
    move-exception v1

    goto/16 :goto_5

    :cond_a
    move v0, v1

    goto/16 :goto_0

    :cond_b
    move v0, v1

    goto/16 :goto_3
.end method

.method public b([BLjava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 254
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move v0, v1

    .line 308
    :cond_1
    :goto_0
    return v0

    .line 263
    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/umeng/commonsdk/stateless/e;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 264
    new-instance v0, Ljava/net/Proxy;

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v5, Ljava/net/InetSocketAddress;

    iget-object v6, p0, Lcom/umeng/commonsdk/stateless/e;->a:Ljava/lang/String;

    iget v7, p0, Lcom/umeng/commonsdk/stateless/e;->b:I

    invoke-direct {v5, v6, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v3, v5}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 265
    new-instance v3, Ljava/net/URL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/umeng/commonsdk/stateless/a;->g:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v0

    .line 271
    :goto_1
    :try_start_1
    const-string v0, "X-Umeng-UTC"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v0, "Msg-Type"

    const-string v5, "envelope/json"

    invoke-virtual {v3, v0, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const/16 v0, 0x7530

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 275
    const/16 v0, 0x7530

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 276
    const-string v0, "POST"

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 278
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 279
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 280
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 283
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 284
    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 285
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 287
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 289
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 291
    const/16 v5, 0xc8

    if-ne v0, v5, :cond_9

    move v0, v4

    .line 298
    :goto_2
    if-eqz v2, :cond_3

    .line 300
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 304
    :cond_3
    :goto_3
    if-eqz v3, :cond_1

    .line 305
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 267
    :cond_4
    :try_start_3
    new-instance v0, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/umeng/commonsdk/stateless/a;->g:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v3, v0

    goto :goto_1

    .line 295
    :catch_0
    move-exception v0

    move-object v3, v2

    .line 296
    :goto_4
    :try_start_4
    iget-object v4, p0, Lcom/umeng/commonsdk/stateless/e;->c:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/umeng/commonsdk/proguard/b;->a(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 298
    if-eqz v2, :cond_5

    .line 300
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 304
    :cond_5
    :goto_5
    if-eqz v3, :cond_8

    .line 305
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    move v0, v1

    goto/16 :goto_0

    .line 298
    :catchall_0
    move-exception v0

    move-object v3, v2

    :goto_6
    if-eqz v2, :cond_6

    .line 300
    :try_start_6
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 304
    :cond_6
    :goto_7
    if-eqz v3, :cond_7

    .line 305
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    throw v0

    .line 301
    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_7

    .line 298
    :catchall_1
    move-exception v0

    goto :goto_6

    .line 295
    :catch_4
    move-exception v0

    goto :goto_4

    :cond_8
    move v0, v1

    goto/16 :goto_0

    :cond_9
    move v0, v1

    goto :goto_2
.end method
