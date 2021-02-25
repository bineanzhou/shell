.class public Lcom/umeng/socialize/net/utils/UClient;
.super Ljava/lang/Object;
.source "UClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/net/utils/UClient$ResponseObj;
    }
.end annotation


# static fields
.field private static final END:Ljava/lang/String; = "\r\n"

.field private static final TAG:Ljava/lang/String; = "UClient"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addBodyParams(Lcom/umeng/socialize/net/utils/URequest;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 304
    const/4 v2, 0x0

    .line 305
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 306
    invoke-virtual {p1}, Lcom/umeng/socialize/net/utils/URequest;->getBodyPair()Ljava/util/Map;

    move-result-object v4

    .line 307
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 308
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 309
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 310
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v0, v6, p3}, Lcom/umeng/socialize/net/utils/UClient;->addFormField(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 314
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 316
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 317
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    move-object p2, v0

    move v0, v1

    .line 321
    :goto_1
    invoke-virtual {p1}, Lcom/umeng/socialize/net/utils/URequest;->getFilePair()Ljava/util/Map;

    move-result-object v3

    .line 322
    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 323
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 324
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 325
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/net/utils/URequest$FilePair;

    .line 326
    iget-object v5, v0, Lcom/umeng/socialize/net/utils/URequest$FilePair;->mBinaryData:[B

    .line 327
    if-eqz v5, :cond_2

    array-length v6, v5

    if-lt v6, v1, :cond_2

    .line 331
    iget-object v0, v0, Lcom/umeng/socialize/net/utils/URequest$FilePair;->mFileName:Ljava/lang/String;

    invoke-direct {p0, v0, v5, p3, p2}, Lcom/umeng/socialize/net/utils/UClient;->addFilePart(Ljava/lang/String;[BLjava/lang/String;Ljava/io/OutputStream;)V

    move v2, v1

    .line 333
    goto :goto_2

    :cond_3
    move v0, v2

    .line 336
    :cond_4
    if-eqz v0, :cond_5

    .line 337
    invoke-direct {p0, p2, p3}, Lcom/umeng/socialize/net/utils/UClient;->finishWrite(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 339
    :cond_5
    return-void

    :cond_6
    move v0, v2

    goto :goto_1
.end method

.method private addFilePart(Ljava/lang/String;[BLjava/lang/String;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 353
    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Content-Disposition: form-data; name=\""

    .line 354
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "pic"

    .line 355
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"; filename=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    .line 356
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Content-Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "application/octet-stream"

    .line 357
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Content-Transfer-Encoding: binary"

    .line 358
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    .line 359
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/io/OutputStream;->write([B)V

    .line 361
    invoke-virtual {p4, p2}, Ljava/io/OutputStream;->write([B)V

    .line 362
    const-string v0, "\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/io/OutputStream;->write([B)V

    .line 363
    return-void
.end method

.method private addFormField(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 342
    const-string v0, "--"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Content-Disposition: form-data; name=\""

    .line 343
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    .line 344
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Content-Type: text/plain; charset="

    .line 345
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    .line 346
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    return-void
.end method

.method private decryptData(Lcom/umeng/socialize/net/utils/URequest;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 464
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/umeng/socialize/net/utils/URequest;->getDecryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 465
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    :goto_0
    return-object v0

    .line 466
    :catch_0
    move-exception v0

    .line 467
    sget-object v1, Lcom/umeng/socialize/utils/UmengText$NET;->CREATE:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 469
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private finishWrite(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 366
    const-string v0, "\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 368
    const-string v0, "\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 369
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 370
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 371
    return-void
.end method

.method private httpGetRequest(Lcom/umeng/socialize/net/utils/URequest;)Lcom/umeng/socialize/net/utils/UClient$ResponseObj;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 181
    .line 189
    :try_start_0
    invoke-direct {p0, p1}, Lcom/umeng/socialize/net/utils/UClient;->openUrlConnection(Lcom/umeng/socialize/net/utils/URequest;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 190
    if-nez v2, :cond_1

    .line 210
    invoke-virtual {p0, v0}, Lcom/umeng/socialize/net/utils/UClient;->closeQuietly(Ljava/io/Closeable;)V

    .line 211
    if-eqz v2, :cond_0

    .line 212
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 215
    :cond_0
    :goto_0
    return-object v0

    .line 193
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 195
    new-instance v1, Lcom/umeng/socialize/net/utils/UClient$ResponseObj;

    invoke-direct {v1}, Lcom/umeng/socialize/net/utils/UClient$ResponseObj;-><init>()V

    .line 196
    iput v3, v1, Lcom/umeng/socialize/net/utils/UClient$ResponseObj;->httpResponseCode:I

    .line 198
    const/16 v4, 0xc8

    if-ne v3, v4, :cond_3

    .line 199
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 200
    :try_start_2
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v4

    .line 201
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v5, v4, v3}, Lcom/umeng/socialize/net/utils/UClient;->parseResult(Lcom/umeng/socialize/net/utils/URequest;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object v4

    .line 202
    iput-object v4, v1, Lcom/umeng/socialize/net/utils/UClient$ResponseObj;->jsonObject:Lorg/json/JSONObject;

    .line 203
    sget-object v4, Lcom/umeng/socialize/utils/UmengText$NET;->JSONRESULT:Ljava/lang/String;

    invoke-static {v4}, Lcom/umeng/socialize/utils/SLog;->debug(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 210
    invoke-virtual {p0, v3}, Lcom/umeng/socialize/net/utils/UClient;->closeQuietly(Ljava/io/Closeable;)V

    .line 211
    if-eqz v2, :cond_2

    .line 212
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    move-object v0, v1

    .line 204
    goto :goto_0

    .line 210
    :cond_3
    invoke-virtual {p0, v0}, Lcom/umeng/socialize/net/utils/UClient;->closeQuietly(Ljava/io/Closeable;)V

    .line 211
    if-eqz v2, :cond_0

    .line 212
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 207
    :catch_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    .line 208
    :goto_1
    :try_start_3
    sget-object v4, Lcom/umeng/socialize/utils/UmengText$NET;->PARSEERROR:Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 210
    invoke-virtual {p0, v3}, Lcom/umeng/socialize/net/utils/UClient;->closeQuietly(Ljava/io/Closeable;)V

    .line 211
    if-eqz v2, :cond_0

    .line 212
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 210
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    :goto_2
    invoke-virtual {p0, v3}, Lcom/umeng/socialize/net/utils/UClient;->closeQuietly(Ljava/io/Closeable;)V

    .line 211
    if-eqz v2, :cond_4

    .line 212
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 214
    :cond_4
    throw v0

    .line 210
    :catchall_1
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_2

    .line 207
    :catch_1
    move-exception v1

    move-object v3, v0

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method private httpPostRequest(Lcom/umeng/socialize/net/utils/URequest;)Lcom/umeng/socialize/net/utils/UClient$ResponseObj;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-virtual {p1}, Lcom/umeng/socialize/net/utils/URequest;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, ""

    .line 96
    :goto_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 103
    :try_start_0
    invoke-direct {p0, p1}, Lcom/umeng/socialize/net/utils/UClient;->openUrlConnection(Lcom/umeng/socialize/net/utils/URequest;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 104
    if-nez v4, :cond_3

    .line 164
    invoke-virtual {p0, v1}, Lcom/umeng/socialize/net/utils/UClient;->closeQuietly(Ljava/io/Closeable;)V

    .line 165
    invoke-virtual {p0, v1}, Lcom/umeng/socialize/net/utils/UClient;->closeQuietly(Ljava/io/Closeable;)V

    .line 166
    if-eqz v4, :cond_0

    .line 167
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    move-object v0, v1

    .line 170
    :cond_1
    :goto_1
    return-object v0

    .line 95
    :cond_2
    invoke-virtual {p1}, Lcom/umeng/socialize/net/utils/URequest;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 108
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Lcom/umeng/socialize/net/utils/URequest;->getBodyPair()Ljava/util/Map;

    move-result-object v2

    .line 111
    iget-object v5, p1, Lcom/umeng/socialize/net/utils/URequest;->mMimeType:Lcom/umeng/socialize/net/utils/URequest$MIME;

    if-eqz v5, :cond_4

    .line 112
    const-string v0, "data"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 113
    const-string v2, "Content-Type"

    iget-object v3, p1, Lcom/umeng/socialize/net/utils/URequest;->mMimeType:Lcom/umeng/socialize/net/utils/URequest$MIME;

    invoke-virtual {v3}, Lcom/umeng/socialize/net/utils/URequest$MIME;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 115
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v3, v2

    .line 144
    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 146
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 149
    new-instance v0, Lcom/umeng/socialize/net/utils/UClient$ResponseObj;

    invoke-direct {v0}, Lcom/umeng/socialize/net/utils/UClient$ResponseObj;-><init>()V

    .line 150
    iput v2, v0, Lcom/umeng/socialize/net/utils/UClient$ResponseObj;->httpResponseCode:I

    .line 152
    const/16 v5, 0xc8

    if-ne v2, v5, :cond_b

    .line 153
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    move-result-object v2

    .line 154
    :try_start_4
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v5

    .line 155
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p1, v6, v5, v2}, Lcom/umeng/socialize/net/utils/UClient;->parseResult(Lcom/umeng/socialize/net/utils/URequest;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object v5

    .line 156
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/umeng/socialize/utils/UmengText$NET;->POSTJSON:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/umeng/socialize/utils/SLog;->debug(Ljava/lang/String;)V

    .line 157
    iput-object v5, v0, Lcom/umeng/socialize/net/utils/UClient$ResponseObj;->jsonObject:Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 164
    invoke-virtual {p0, v2}, Lcom/umeng/socialize/net/utils/UClient;->closeQuietly(Ljava/io/Closeable;)V

    .line 165
    invoke-virtual {p0, v3}, Lcom/umeng/socialize/net/utils/UClient;->closeQuietly(Ljava/io/Closeable;)V

    .line 166
    if-eqz v4, :cond_1

    .line 167
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 116
    :cond_4
    :try_start_5
    iget-object v5, p1, Lcom/umeng/socialize/net/utils/URequest;->postStyle:Lcom/umeng/socialize/net/utils/URequest$PostStyle;

    sget-object v6, Lcom/umeng/socialize/net/utils/URequest$PostStyle;->APPLICATION:Lcom/umeng/socialize/net/utils/URequest$PostStyle;

    if-ne v5, v6, :cond_7

    .line 117
    const-string v0, "Content-Type"

    const-string v3, "application/x-www-form-urlencoded"

    invoke-virtual {v4, v0, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    .line 119
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 121
    :try_start_6
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v0, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    .line 122
    :catch_0
    move-exception v0

    .line 123
    :try_start_7
    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    .line 161
    :catch_1
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    .line 162
    :goto_4
    :try_start_8
    sget-object v5, Lcom/umeng/socialize/utils/UmengText$NET;->PARSEERROR:Ljava/lang/String;

    invoke-static {v5, v0}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 164
    invoke-virtual {p0, v2}, Lcom/umeng/socialize/net/utils/UClient;->closeQuietly(Ljava/io/Closeable;)V

    .line 165
    invoke-virtual {p0, v3}, Lcom/umeng/socialize/net/utils/UClient;->closeQuietly(Ljava/io/Closeable;)V

    .line 166
    if-eqz v4, :cond_5

    .line 167
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    move-object v0, v1

    .line 170
    goto/16 :goto_1

    .line 128
    :cond_6
    :try_start_9
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    .line 129
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 130
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move-object v3, v2

    .line 131
    goto/16 :goto_2

    :cond_7
    if-eqz v2, :cond_8

    :try_start_b
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-gtz v2, :cond_9

    :cond_8
    iget-object v2, p1, Lcom/umeng/socialize/net/utils/URequest;->postStyle:Lcom/umeng/socialize/net/utils/URequest$PostStyle;

    sget-object v5, Lcom/umeng/socialize/net/utils/URequest$PostStyle;->MULTIPART:Lcom/umeng/socialize/net/utils/URequest$PostStyle;

    if-ne v2, v5, :cond_a

    .line 132
    :cond_9
    const-string v0, "Content-Type"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "multipart/form-data; boundary="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-result-object v2

    .line 134
    :try_start_c
    invoke-direct {p0, p1, v2, v3}, Lcom/umeng/socialize/net/utils/UClient;->addBodyParams(Lcom/umeng/socialize/net/utils/URequest;Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-object v3, v2

    goto/16 :goto_2

    .line 137
    :cond_a
    :try_start_d
    const-string v2, "Content-Type"

    const-string v3, "application/x-www-form-urlencoded"

    invoke-virtual {v4, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    .line 139
    const-string v3, "content"

    invoke-virtual {v2, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 140
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    .line 141
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 142
    :try_start_e
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    move-object v3, v2

    goto/16 :goto_2

    .line 164
    :cond_b
    invoke-virtual {p0, v1}, Lcom/umeng/socialize/net/utils/UClient;->closeQuietly(Ljava/io/Closeable;)V

    .line 165
    invoke-virtual {p0, v3}, Lcom/umeng/socialize/net/utils/UClient;->closeQuietly(Ljava/io/Closeable;)V

    .line 166
    if-eqz v4, :cond_c

    .line 167
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_c
    move-object v0, v1

    .line 160
    goto/16 :goto_1

    .line 164
    :catchall_0
    move-exception v0

    move-object v3, v1

    move-object v4, v1

    :goto_5
    invoke-virtual {p0, v1}, Lcom/umeng/socialize/net/utils/UClient;->closeQuietly(Ljava/io/Closeable;)V

    .line 165
    invoke-virtual {p0, v3}, Lcom/umeng/socialize/net/utils/UClient;->closeQuietly(Ljava/io/Closeable;)V

    .line 166
    if-eqz v4, :cond_d

    .line 167
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 169
    :cond_d
    throw v0

    .line 164
    :catchall_1
    move-exception v0

    move-object v3, v1

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v3, v2

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object v3, v2

    goto :goto_5

    :catchall_5
    move-exception v0

    goto :goto_5

    :catchall_6
    move-exception v0

    move-object v1, v2

    goto :goto_5

    .line 161
    :catch_2
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    goto/16 :goto_4

    :catch_3
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto/16 :goto_4

    :catch_4
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto/16 :goto_4

    :catch_5
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto/16 :goto_4

    :catch_6
    move-exception v0

    move-object v2, v1

    goto/16 :goto_4

    :catch_7
    move-exception v0

    goto/16 :goto_4
.end method

.method private openUrlConnection(Lcom/umeng/socialize/net/utils/URequest;)Ljava/net/HttpURLConnection;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 226
    invoke-virtual {p1}, Lcom/umeng/socialize/net/utils/URequest;->getHttpMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 231
    sget-object v0, Lcom/umeng/socialize/net/utils/URequest;->GET:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {p1}, Lcom/umeng/socialize/net/utils/URequest;->toGetUrl()Ljava/lang/String;

    move-result-object v0

    .line 236
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 277
    :goto_1
    return-object v1

    .line 233
    :cond_0
    sget-object v0, Lcom/umeng/socialize/net/utils/URequest;->POST:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 234
    iget-object v0, p1, Lcom/umeng/socialize/net/utils/URequest;->mBaseUrl:Ljava/lang/String;

    goto :goto_0

    .line 241
    :cond_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    .line 243
    const/4 v0, 0x0

    .line 244
    const-string v5, "https"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v3

    .line 250
    :cond_2
    if-eqz v0, :cond_3

    .line 251
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v2, v0

    .line 260
    :goto_2
    sget v0, Lcom/umeng/socialize/Config;->connectionTimeOut:I

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 261
    sget v0, Lcom/umeng/socialize/Config;->readSocketTimeOut:I

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 262
    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 265
    sget-object v0, Lcom/umeng/socialize/net/utils/URequest;->GET:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 266
    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    invoke-virtual {v2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v0, p1, Lcom/umeng/socialize/net/utils/URequest;->mHeaders:Ljava/util/Map;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/umeng/socialize/net/utils/URequest;->mHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 268
    iget-object v0, p1, Lcom/umeng/socialize/net/utils/URequest;->mHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 269
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 270
    iget-object v1, p1, Lcom/umeng/socialize/net/utils/URequest;->mHeaders:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 255
    :cond_3
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    goto :goto_2

    .line 273
    :cond_4
    sget-object v0, Lcom/umeng/socialize/net/utils/URequest;->POST:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 274
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 275
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    :cond_5
    move-object v1, v2

    .line 277
    goto/16 :goto_1

    :cond_6
    move-object v0, v1

    goto/16 :goto_0
.end method

.method private verifyMethod(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 289
    .line 290
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/umeng/socialize/net/utils/URequest;->GET:Ljava/lang/String;

    .line 291
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sget-object v1, Lcom/umeng/socialize/net/utils/URequest;->POST:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v0, v1, :cond_1

    .line 292
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {p1}, Lcom/umeng/socialize/utils/UmengText;->netMethodError(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_1
    return-void
.end method


# virtual methods
.method protected closeQuietly(Ljava/io/Closeable;)V
    .locals 2

    .prologue
    .line 483
    if-eqz p1, :cond_0

    .line 484
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    :cond_0
    :goto_0
    return-void

    .line 486
    :catch_0
    move-exception v0

    .line 487
    sget-object v1, Lcom/umeng/socialize/utils/UmengText$NET;->CLOSE:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 438
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 439
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v0, 0x200

    invoke-direct {v2, v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 443
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 444
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 446
    :catch_0
    move-exception v0

    .line 447
    :try_start_1
    sget-object v3, Lcom/umeng/socialize/utils/UmengText$NET;->TOOL:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 448
    const/4 v0, 0x0

    .line 450
    invoke-virtual {p0, v1}, Lcom/umeng/socialize/net/utils/UClient;->closeQuietly(Ljava/io/Closeable;)V

    .line 451
    invoke-virtual {p0, v2}, Lcom/umeng/socialize/net/utils/UClient;->closeQuietly(Ljava/io/Closeable;)V

    .line 453
    :goto_1
    return-object v0

    .line 450
    :cond_0
    invoke-virtual {p0, v1}, Lcom/umeng/socialize/net/utils/UClient;->closeQuietly(Ljava/io/Closeable;)V

    .line 451
    invoke-virtual {p0, v2}, Lcom/umeng/socialize/net/utils/UClient;->closeQuietly(Ljava/io/Closeable;)V

    .line 453
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 450
    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1}, Lcom/umeng/socialize/net/utils/UClient;->closeQuietly(Ljava/io/Closeable;)V

    .line 451
    invoke-virtual {p0, v2}, Lcom/umeng/socialize/net/utils/UClient;->closeQuietly(Ljava/io/Closeable;)V

    .line 452
    throw v0
.end method

.method protected createResponse(Lcom/umeng/socialize/net/utils/UClient$ResponseObj;Ljava/lang/Class;)Lcom/umeng/socialize/net/utils/UResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/umeng/socialize/net/utils/UResponse;",
            ">(",
            "Lcom/umeng/socialize/net/utils/UClient$ResponseObj;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 79
    if-nez p1, :cond_0

    move-object v0, v1

    .line 90
    :goto_0
    return-object v0

    .line 85
    :cond_0
    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Integer;

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-class v3, Lorg/json/JSONObject;

    aput-object v3, v0, v2

    invoke-virtual {p2, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 86
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p1, Lcom/umeng/socialize/net/utils/UClient$ResponseObj;->httpResponseCode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/umeng/socialize/net/utils/UClient$ResponseObj;->jsonObject:Lorg/json/JSONObject;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/net/utils/UResponse;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    sget-object v2, Lcom/umeng/socialize/utils/UmengText$NET;->CREATE:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 90
    goto :goto_0
.end method

.method public execute(Lcom/umeng/socialize/net/utils/URequest;Ljava/lang/Class;)Lcom/umeng/socialize/net/utils/UResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/umeng/socialize/net/utils/UResponse;",
            ">(",
            "Lcom/umeng/socialize/net/utils/URequest;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 62
    invoke-virtual {p1}, Lcom/umeng/socialize/net/utils/URequest;->onPrepareRequest()V

    .line 63
    invoke-virtual {p1}, Lcom/umeng/socialize/net/utils/URequest;->getHttpMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-direct {p0, v1}, Lcom/umeng/socialize/net/utils/UClient;->verifyMethod(Ljava/lang/String;)V

    .line 67
    const/4 v0, 0x0

    .line 68
    sget-object v2, Lcom/umeng/socialize/net/utils/URequest;->GET:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 69
    invoke-direct {p0, p1}, Lcom/umeng/socialize/net/utils/UClient;->httpGetRequest(Lcom/umeng/socialize/net/utils/URequest;)Lcom/umeng/socialize/net/utils/UClient$ResponseObj;

    move-result-object v0

    .line 74
    :cond_0
    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/umeng/socialize/net/utils/UClient;->createResponse(Lcom/umeng/socialize/net/utils/UClient$ResponseObj;Ljava/lang/Class;)Lcom/umeng/socialize/net/utils/UResponse;

    move-result-object v0

    .line 75
    return-object v0

    .line 70
    :cond_1
    sget-object v2, Lcom/umeng/socialize/net/utils/URequest;->POST:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    invoke-direct {p0, p1}, Lcom/umeng/socialize/net/utils/UClient;->httpPostRequest(Lcom/umeng/socialize/net/utils/URequest;)Lcom/umeng/socialize/net/utils/UClient$ResponseObj;

    move-result-object v0

    goto :goto_0
.end method

.method protected parseResult(Lcom/umeng/socialize/net/utils/URequest;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 383
    .line 385
    :try_start_0
    invoke-virtual {p0, p3, p4}, Lcom/umeng/socialize/net/utils/UClient;->wrapStream(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 386
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/umeng/socialize/net/utils/UClient;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 387
    const-string v0, "POST"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 404
    invoke-virtual {p0, v2}, Lcom/umeng/socialize/net/utils/UClient;->closeQuietly(Ljava/io/Closeable;)V

    .line 406
    :goto_0
    return-object v0

    .line 390
    :catch_0
    move-exception v0

    .line 391
    :try_start_3
    sget-object v4, Lcom/umeng/socialize/utils/UmengText$NET;->PARSEERROR:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 392
    invoke-direct {p0, p1, v3}, Lcom/umeng/socialize/net/utils/UClient;->decryptData(Lcom/umeng/socialize/net/utils/URequest;Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    .line 404
    invoke-virtual {p0, v2}, Lcom/umeng/socialize/net/utils/UClient;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 394
    :cond_0
    :try_start_4
    const-string v0, "GET"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 395
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v0

    if-eqz v0, :cond_1

    .line 404
    invoke-virtual {p0, v2}, Lcom/umeng/socialize/net/utils/UClient;->closeQuietly(Ljava/io/Closeable;)V

    move-object v0, v1

    .line 396
    goto :goto_0

    .line 398
    :cond_1
    :try_start_5
    invoke-direct {p0, p1, v3}, Lcom/umeng/socialize/net/utils/UClient;->decryptData(Lcom/umeng/socialize/net/utils/URequest;Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v0

    .line 404
    invoke-virtual {p0, v2}, Lcom/umeng/socialize/net/utils/UClient;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lcom/umeng/socialize/net/utils/UClient;->closeQuietly(Ljava/io/Closeable;)V

    :goto_1
    move-object v0, v1

    .line 406
    goto :goto_0

    .line 401
    :catch_1
    move-exception v0

    move-object v2, v1

    .line 402
    :goto_2
    :try_start_6
    sget-object v3, Lcom/umeng/socialize/utils/UmengText$NET;->PARSEERROR:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/umeng/socialize/utils/SLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 404
    invoke-virtual {p0, v2}, Lcom/umeng/socialize/net/utils/UClient;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_3
    invoke-virtual {p0, v2}, Lcom/umeng/socialize/net/utils/UClient;->closeQuietly(Ljava/io/Closeable;)V

    .line 405
    throw v0

    .line 404
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 401
    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method protected wrapStream(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 419
    if-eqz p1, :cond_0

    const-string v0, "identity"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 426
    :cond_0
    :goto_0
    return-object p2

    .line 422
    :cond_1
    const-string v0, "gzip"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 423
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p2, v0

    goto :goto_0

    .line 425
    :cond_2
    const-string v0, "deflate"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 426
    new-instance v0, Ljava/util/zip/InflaterInputStream;

    new-instance v1, Ljava/util/zip/Inflater;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/zip/Inflater;-><init>(Z)V

    const/16 v2, 0x200

    invoke-direct {v0, p2, v1, v2}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V

    move-object p2, v0

    goto :goto_0

    .line 428
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported content-encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
