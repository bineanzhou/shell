.class Lanet/channel/strategy/dispatch/c;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field static a:Ljava/util/concurrent/atomic/AtomicInteger;

.field static b:Ljavax/net/ssl/HostnameVerifier;

.field static c:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lanet/channel/strategy/dispatch/c;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 60
    new-instance v0, Lanet/channel/strategy/dispatch/d;

    invoke-direct {v0}, Lanet/channel/strategy/dispatch/d;-><init>()V

    sput-object v0, Lanet/channel/strategy/dispatch/c;->b:Ljavax/net/ssl/HostnameVerifier;

    .line 66
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lanet/channel/strategy/dispatch/c;->c:Ljava/util/Random;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;I)I
    .locals 17

    .prologue
    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AMDC"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lanet/channel/strategy/dispatch/c;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 166
    const-string v2, "awcn.DispatchCore"

    const-string v3, "send amdc request"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v7, "url"

    aput-object v7, v4, v5

    const/4 v5, 0x1

    aput-object p0, v4, v5

    invoke-static {v2, v3, v6, v4}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    const-string v2, "Env"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lanet/channel/entity/ENV;

    .line 168
    const/4 v3, 0x0

    .line 169
    const/4 v4, 0x0

    .line 171
    :try_start_0
    new-instance v5, Ljava/net/URL;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    :try_start_1
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    const/16 v4, 0x4e20

    :try_start_2
    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 174
    const/16 v4, 0x4e20

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 175
    const-string v4, "POST"

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 176
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 177
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 178
    const-string v4, "Connection"

    const-string v7, "close"

    invoke-virtual {v3, v4, v7}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v4, "Accept-Encoding"

    const-string v7, "gzip"

    invoke-virtual {v3, v4, v7}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 181
    invoke-virtual {v5}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    const-string v7, "https"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 182
    move-object v0, v3

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v4, v0

    sget-object v7, Lanet/channel/strategy/dispatch/c;->b:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v4, v7}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 186
    :cond_0
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 187
    const-string v7, "utf-8"

    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lanet/channel/strategy/utils/d;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 188
    invoke-virtual {v4, v7}, Ljava/io/OutputStream;->write([B)V

    .line 190
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 191
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v8

    .line 193
    const/4 v9, 0x1

    invoke-static {v9}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 194
    const-string v9, "awcn.DispatchCore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "amdc response. code: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "\nheaders"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v8, v11, v12

    invoke-static {v9, v10, v6, v11}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    :cond_1
    const/16 v9, 0xc8

    if-eq v4, v9, :cond_5

    .line 199
    const/16 v2, 0x12e

    if-eq v4, v2, :cond_2

    const/16 v2, 0x133

    if-ne v4, v2, :cond_4

    :cond_2
    const/4 v2, 0x2

    .line 200
    :goto_0
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v7, "response code not 200"

    move/from16 v0, p2

    invoke-static {v4, v7, v5, v0, v2}, Lanet/channel/strategy/dispatch/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;II)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_d
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 273
    if-eqz v3, :cond_3

    .line 274
    :try_start_3
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 278
    :cond_3
    :goto_1
    return v2

    .line 199
    :cond_4
    const/4 v2, 0x1

    goto :goto_0

    .line 276
    :catch_0
    move-exception v3

    .line 277
    const-string v4, "awcn.DispatchCore"

    const-string v5, "http disconnect failed"

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v3, v7}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1

    .line 205
    :cond_5
    :try_start_4
    const-string v4, "x-am-code"

    invoke-static {v8, v4}, Lanet/channel/strategy/utils/d;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 206
    const-string v4, "1000"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 207
    const-string v2, "1007"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "1008"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    const/4 v2, 0x2

    .line 208
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "return code: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move/from16 v0, p2

    invoke-static {v9, v4, v5, v0, v2}, Lanet/channel/strategy/dispatch/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;II)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_d
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 273
    if-eqz v3, :cond_3

    .line 274
    :try_start_5
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 276
    :catch_1
    move-exception v3

    .line 277
    const-string v4, "awcn.DispatchCore"

    const-string v5, "http disconnect failed"

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v3, v7}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1

    .line 207
    :cond_7
    const/4 v2, 0x1

    goto :goto_2

    .line 213
    :cond_8
    :try_start_6
    const-string v4, "x-am-sign"

    invoke-static {v8, v4}, Lanet/channel/strategy/utils/d;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 214
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 215
    const-string v2, "-1001"

    const-string v4, "response sign is empty"

    const/4 v7, 0x1

    move/from16 v0, p2

    invoke-static {v2, v4, v5, v0, v7}, Lanet/channel/strategy/dispatch/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;II)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_d
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 216
    const/4 v2, 0x1

    .line 273
    if-eqz v3, :cond_3

    .line 274
    :try_start_7
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_1

    .line 276
    :catch_2
    move-exception v3

    .line 277
    const-string v4, "awcn.DispatchCore"

    const-string v5, "http disconnect failed"

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v3, v7}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 219
    :cond_9
    :try_start_8
    new-instance v4, Lanet/channel/strategy/utils/c;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v4, v11}, Lanet/channel/strategy/utils/c;-><init>(Ljava/io/InputStream;)V

    .line 220
    const-string v11, "gzip"

    const-string v12, "Content-Encoding"

    invoke-static {v8, v12}, Lanet/channel/strategy/utils/d;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v4, v8}, Lanet/channel/strategy/dispatch/c;->a(Ljava/io/InputStream;Z)Ljava/lang/String;

    move-result-object v8

    .line 222
    const/4 v11, 0x1

    invoke-static {v11}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 223
    const-string v11, "awcn.DispatchCore"

    const-string v12, "amdc response body"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "\nbody"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    aput-object v8, v13, v14

    invoke-static {v11, v12, v6, v13}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    :cond_a
    array-length v7, v7

    int-to-long v12, v7

    invoke-virtual {v4}, Lanet/channel/strategy/utils/c;->a()J

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13, v14, v15}, Lanet/channel/strategy/dispatch/c;->a(Ljava/lang/String;JJ)V

    .line 228
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 229
    const-string v2, "-1002"

    const-string v4, "read answer error"

    const/4 v7, 0x1

    move/from16 v0, p2

    invoke-static {v2, v4, v5, v0, v7}, Lanet/channel/strategy/dispatch/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;II)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_d
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 230
    const/4 v2, 0x1

    .line 273
    if-eqz v3, :cond_3

    .line 274
    :try_start_9
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_1

    .line 276
    :catch_3
    move-exception v3

    .line 277
    const-string v4, "awcn.DispatchCore"

    const-string v5, "http disconnect failed"

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v3, v7}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 234
    :cond_b
    const/4 v4, 0x0

    .line 235
    :try_start_a
    invoke-static {}, Lanet/channel/strategy/dispatch/a;->b()Lanet/channel/strategy/dispatch/IAmdcSign;

    move-result-object v7

    .line 236
    if-eqz v7, :cond_c

    .line 237
    invoke-interface {v7, v8}, Lanet/channel/strategy/dispatch/IAmdcSign;->sign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 239
    :cond_c
    invoke-virtual {v4, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 240
    const-string v2, "awcn.DispatchCore"

    const-string v7, "check ret sign failed"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v11, "retSign"

    aput-object v11, v8, v9

    const/4 v9, 0x1

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "checkSign"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    aput-object v4, v8, v9

    invoke-static {v2, v7, v6, v8}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    const-string v2, "-1003"

    const-string v4, "check sign failed"

    const/4 v7, 0x1

    move/from16 v0, p2

    invoke-static {v2, v4, v5, v0, v7}, Lanet/channel/strategy/dispatch/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;II)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_d
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 242
    const/4 v2, 0x1

    .line 273
    if-eqz v3, :cond_3

    .line 274
    :try_start_b
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_1

    .line 276
    :catch_4
    move-exception v3

    .line 277
    const-string v4, "awcn.DispatchCore"

    const-string v5, "http disconnect failed"

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v3, v7}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 246
    :cond_d
    :try_start_c
    new-instance v4, Lorg/json/JSONTokener;

    invoke-direct {v4, v8}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 249
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->getEnv()Lanet/channel/entity/ENV;

    move-result-object v7

    if-eq v7, v2, :cond_e

    .line 250
    const-string v2, "awcn.DispatchCore"

    const-string v4, "env change, do not notify result"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2, v4, v6, v7}, Lanet/channel/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_d
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 251
    const/4 v2, 0x0

    .line 273
    if-eqz v3, :cond_3

    .line 274
    :try_start_d
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    goto/16 :goto_1

    .line 276
    :catch_5
    move-exception v3

    .line 277
    const-string v4, "awcn.DispatchCore"

    const-string v5, "http disconnect failed"

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v3, v7}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 253
    :cond_e
    :try_start_e
    invoke-static {}, Lanet/channel/strategy/dispatch/HttpDispatcher;->getInstance()Lanet/channel/strategy/dispatch/HttpDispatcher;

    move-result-object v2

    new-instance v7, Lanet/channel/strategy/dispatch/DispatchEvent;

    const/4 v8, 0x1

    invoke-direct {v7, v8, v4}, Lanet/channel/strategy/dispatch/DispatchEvent;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v7}, Lanet/channel/strategy/dispatch/HttpDispatcher;->fireEvent(Lanet/channel/strategy/dispatch/DispatchEvent;)V
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_d
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 261
    :try_start_f
    const-string v2, "request success"

    const/4 v4, 0x0

    move/from16 v0, p2

    invoke-static {v9, v2, v5, v0, v4}, Lanet/channel/strategy/dispatch/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;II)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_d
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 262
    const/4 v2, 0x0

    .line 273
    if-eqz v3, :cond_3

    .line 274
    :try_start_10
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6

    goto/16 :goto_1

    .line 276
    :catch_6
    move-exception v3

    .line 277
    const-string v4, "awcn.DispatchCore"

    const-string v5, "http disconnect failed"

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v3, v7}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 255
    :catch_7
    move-exception v2

    :try_start_11
    invoke-static {}, Lanet/channel/strategy/dispatch/HttpDispatcher;->getInstance()Lanet/channel/strategy/dispatch/HttpDispatcher;

    move-result-object v2

    new-instance v4, Lanet/channel/strategy/dispatch/DispatchEvent;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v4, v7, v8}, Lanet/channel/strategy/dispatch/DispatchEvent;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v4}, Lanet/channel/strategy/dispatch/HttpDispatcher;->fireEvent(Lanet/channel/strategy/dispatch/DispatchEvent;)V

    .line 256
    const-string v2, "awcn.DispatchCore"

    const-string v4, "resolve amdc anser failed"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2, v4, v6, v7}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    const-string v2, "-1004"

    const-string v4, "resolve answer failed"

    const/4 v7, 0x1

    move/from16 v0, p2

    invoke-static {v2, v4, v5, v0, v7}, Lanet/channel/strategy/dispatch/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;II)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_d
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 258
    const/4 v2, 0x1

    .line 273
    if-eqz v3, :cond_3

    .line 274
    :try_start_12
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_8

    goto/16 :goto_1

    .line 276
    :catch_8
    move-exception v3

    .line 277
    const-string v4, "awcn.DispatchCore"

    const-string v5, "http disconnect failed"

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v3, v7}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 263
    :catch_9
    move-exception v2

    move-object/from16 v16, v4

    move-object v4, v3

    move-object/from16 v3, v16

    .line 264
    :goto_3
    :try_start_13
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 265
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 266
    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    .line 268
    :cond_f
    const-string v7, "-1000"

    const/4 v8, 0x1

    move/from16 v0, p2

    invoke-static {v7, v5, v4, v0, v8}, Lanet/channel/strategy/dispatch/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;II)V

    .line 269
    const-string v4, "awcn.DispatchCore"

    const-string v5, "amdc request fail"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v2, v7}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 270
    const/4 v2, 0x1

    .line 273
    if-eqz v3, :cond_3

    .line 274
    :try_start_14
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_a

    goto/16 :goto_1

    .line 276
    :catch_a
    move-exception v3

    .line 277
    const-string v4, "awcn.DispatchCore"

    const-string v5, "http disconnect failed"

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v3, v7}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 272
    :catchall_0
    move-exception v2

    move-object v3, v4

    .line 273
    :goto_4
    if-eqz v3, :cond_10

    .line 274
    :try_start_15
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_b

    .line 278
    :cond_10
    :goto_5
    throw v2

    .line 276
    :catch_b
    move-exception v3

    .line 277
    const-string v4, "awcn.DispatchCore"

    const-string v5, "http disconnect failed"

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v3, v7}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_5

    .line 272
    :catchall_1
    move-exception v2

    goto :goto_4

    .line 263
    :catch_c
    move-exception v2

    move-object v3, v4

    move-object v4, v5

    goto :goto_3

    :catch_d
    move-exception v2

    move-object v4, v5

    goto :goto_3
.end method

.method static a(Ljava/io/InputStream;Z)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/16 v1, 0x400

    .line 283
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 284
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 286
    if-eqz p1, :cond_4

    .line 287
    :try_start_0
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v3, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    :goto_0
    :try_start_1
    new-instance v2, Landroid/util/Base64InputStream;

    const/4 v1, 0x0

    invoke-direct {v2, v3, v1}, Landroid/util/Base64InputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 290
    const/16 v1, 0x400

    :try_start_2
    new-array v1, v1, [B

    .line 292
    :goto_1
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    .line 293
    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 296
    :catch_0
    move-exception v1

    .line 297
    :goto_2
    :try_start_3
    const-string v3, "awcn.DispatchCore"

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5, v1, v6}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 299
    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 301
    :cond_0
    :goto_3
    return-object v0

    .line 295
    :cond_1
    :try_start_5
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const-string v4, "utf-8"

    invoke-direct {v1, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 299
    if-eqz v2, :cond_2

    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_2
    :goto_4
    move-object v0, v1

    goto :goto_3

    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v2, :cond_3

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_3
    :goto_6
    throw v0

    :catch_1
    move-exception v0

    goto :goto_4

    .line 300
    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_6

    .line 299
    :catchall_1
    move-exception v0

    move-object v2, v3

    goto :goto_5

    .line 296
    :catch_4
    move-exception v1

    move-object v2, v3

    goto :goto_2

    :cond_4
    move-object v3, v2

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x40

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 136
    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    const-string v0, "https"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lanet/channel/strategy/dispatch/c;->c:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    const-string p0, "http"

    .line 140
    :cond_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    const-string v0, "://"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    if-eqz p1, :cond_2

    .line 143
    if-nez p2, :cond_3

    .line 144
    const-string v0, "https"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1bb

    .line 146
    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    :goto_1
    const-string v0, "/amdc/mobileDispatch"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 153
    const-string v2, "appkey"

    const-string v3, "appkey"

    invoke-interface {p3, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v2, "v"

    const-string v3, "v"

    invoke-interface {p3, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string v2, "deviceId"

    const-string v3, "deviceId"

    invoke-interface {p3, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v2, "platform"

    const-string v3, "platform"

    invoke-interface {p3, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
    const-string v2, "utf-8"

    invoke-static {v0, v2}, Lanet/channel/strategy/utils/d;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 144
    :cond_1
    const/16 v0, 0x50

    goto :goto_0

    .line 148
    :cond_2
    invoke-static {}, Lanet/channel/strategy/dispatch/DispatchConstants;->getAmdcServerDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    move v0, p2

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lanet/channel/strategy/IConnStrategy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 70
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->h()Z

    move-result v1

    if-nez v1, :cond_2

    .line 71
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object v0

    invoke-static {}, Lanet/channel/strategy/dispatch/DispatchConstants;->getAmdcServerDomain()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lanet/channel/strategy/IStrategyInstance;->getConnStrategyListByHost(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 73
    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 74
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/strategy/IConnStrategy;

    .line 76
    invoke-interface {v0}, Lanet/channel/strategy/IConnStrategy;->getProtocol()Lanet/channel/strategy/ConnProtocol;

    move-result-object v0

    iget-object v0, v0, Lanet/channel/strategy/ConnProtocol;->protocol:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 82
    :cond_2
    return-object v0
.end method

.method static a(Ljava/lang/String;JJ)V
    .locals 5

    .prologue
    .line 325
    :try_start_0
    new-instance v0, Lanet/channel/flow/b;

    invoke-direct {v0}, Lanet/channel/flow/b;-><init>()V

    .line 326
    const-string v1, "amdc"

    iput-object v1, v0, Lanet/channel/flow/b;->a:Ljava/lang/String;

    .line 327
    const-string v1, "http"

    iput-object v1, v0, Lanet/channel/flow/b;->b:Ljava/lang/String;

    .line 328
    iput-object p0, v0, Lanet/channel/flow/b;->c:Ljava/lang/String;

    .line 329
    iput-wide p1, v0, Lanet/channel/flow/b;->d:J

    .line 330
    iput-wide p3, v0, Lanet/channel/flow/b;->e:J

    .line 331
    invoke-static {}, Lanet/channel/flow/c;->a()Lanet/channel/flow/INetworkAnalysis;

    move-result-object v1

    invoke-interface {v1, v0}, Lanet/channel/flow/INetworkAnalysis;->commitFlow(Lanet/channel/flow/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :goto_0
    return-void

    .line 332
    :catch_0
    move-exception v0

    .line 333
    const-string v1, "awcn.DispatchCore"

    const-string v2, "commit flow info failed!"

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v0, v4}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;II)V
    .locals 2

    .prologue
    .line 306
    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    :cond_0
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->isTargetProcess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 308
    :try_start_0
    new-instance v0, Lanet/channel/statist/AmdcStatistic;

    invoke-direct {v0}, Lanet/channel/statist/AmdcStatistic;-><init>()V

    .line 309
    iput-object p0, v0, Lanet/channel/statist/AmdcStatistic;->errorCode:Ljava/lang/String;

    .line 310
    iput-object p1, v0, Lanet/channel/statist/AmdcStatistic;->errorMsg:Ljava/lang/String;

    .line 311
    if-eqz p2, :cond_1

    .line 312
    invoke-virtual {p2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lanet/channel/statist/AmdcStatistic;->host:Ljava/lang/String;

    .line 313
    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lanet/channel/statist/AmdcStatistic;->url:Ljava/lang/String;

    .line 315
    :cond_1
    iput p3, v0, Lanet/channel/statist/AmdcStatistic;->retryTimes:I

    .line 316
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object v1

    invoke-interface {v1, v0}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/util/Map;)V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 86
    if-nez p0, :cond_1

    .line 87
    const-string v0, "awcn.DispatchCore"

    const-string v2, "amdc request\'s parameter invalid!"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v1, v3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    :cond_0
    return-void

    .line 91
    :cond_1
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object v0

    invoke-static {}, Lanet/channel/strategy/dispatch/DispatchConstants;->getAmdcServerDomain()Ljava/lang/String;

    move-result-object v2

    const-string v4, "http"

    invoke-interface {v0, v2, v4}, Lanet/channel/strategy/IStrategyInstance;->getSchemeByHost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 92
    invoke-static {v5}, Lanet/channel/strategy/dispatch/c;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    move v4, v3

    .line 94
    :goto_0
    const/4 v0, 0x3

    if-ge v4, v0, :cond_0

    .line 95
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 99
    if-eq v4, v10, :cond_4

    .line 100
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 101
    invoke-interface {v6, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/strategy/IConnStrategy;

    .line 104
    :goto_1
    if-eqz v0, :cond_3

    .line 105
    invoke-interface {v0}, Lanet/channel/strategy/IConnStrategy;->getIp()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lanet/channel/strategy/IConnStrategy;->getPort()I

    move-result v8

    invoke-static {v5, v2, v8, v7, v4}, Lanet/channel/strategy/dispatch/c;->a(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;I)Ljava/lang/String;

    move-result-object v2

    .line 118
    :goto_2
    invoke-static {v2, v7, v4}, Lanet/channel/strategy/dispatch/c;->a(Ljava/lang/String;Ljava/util/Map;I)I

    move-result v7

    .line 120
    if-eqz v0, :cond_2

    .line 121
    new-instance v8, Lanet/channel/strategy/ConnEvent;

    invoke-direct {v8}, Lanet/channel/strategy/ConnEvent;-><init>()V

    .line 122
    if-nez v7, :cond_6

    const/4 v2, 0x1

    :goto_3
    iput-boolean v2, v8, Lanet/channel/strategy/ConnEvent;->isSuccess:Z

    .line 123
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object v2

    invoke-static {}, Lanet/channel/strategy/dispatch/DispatchConstants;->getAmdcServerDomain()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9, v0, v8}, Lanet/channel/strategy/IStrategyInstance;->notifyConnEvent(Ljava/lang/String;Lanet/channel/strategy/IConnStrategy;Lanet/channel/strategy/ConnEvent;)V

    .line 126
    :cond_2
    if-eqz v7, :cond_0

    if-eq v7, v10, :cond_0

    .line 94
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 107
    :cond_3
    invoke-static {v5, v1, v3, v7, v4}, Lanet/channel/strategy/dispatch/c;->a(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 110
    :cond_4
    invoke-static {}, Lanet/channel/strategy/dispatch/DispatchConstants;->getAmdcServerFixIp()[Ljava/lang/String;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_5

    array-length v2, v0

    if-lez v2, :cond_5

    .line 112
    sget-object v2, Lanet/channel/strategy/dispatch/c;->c:Ljava/util/Random;

    array-length v8, v0

    invoke-virtual {v2, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    aget-object v0, v0, v2

    invoke-static {v5, v0, v3, v7, v4}, Lanet/channel/strategy/dispatch/c;->a(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    move-object v0, v1

    goto :goto_2

    .line 114
    :cond_5
    invoke-static {v5, v1, v3, v7, v4}, Lanet/channel/strategy/dispatch/c;->a(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    move-object v0, v1

    goto :goto_2

    :cond_6
    move v2, v3

    .line 122
    goto :goto_3

    :cond_7
    move-object v0, v1

    goto :goto_1
.end method
