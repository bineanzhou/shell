.class final Lorg/android/spdy/SpdySessionCallBack;
.super Ljava/lang/Object;
.source "SpdySessionCallBack.java"

# interfaces
.implements Lorg/android/spdy/Intenalcb;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bioPingRecvCallback(Lorg/android/spdy/SpdySession;I)V
    .locals 3

    .prologue
    .line 205
    const-string v0, "tnet-jni"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SpdySessionCallBack.bioPingRecvCallback] - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    invoke-interface {v0, p1, p2}, Lorg/android/spdy/SessionCb;->bioPingRecvCallback(Lorg/android/spdy/SpdySession;I)V

    .line 211
    :goto_0
    return-void

    .line 209
    :cond_0
    const-string v0, "tnet-jni"

    const-string v1, "[SpdySessionCallBack.bioPingRecvCallback] - no sessionCallBack."

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSSLMeta(Lorg/android/spdy/SpdySession;)[B
    .locals 3

    .prologue
    .line 216
    const-string v0, "tnet-jni"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SpdySessionCallBack.getSSLMeta] - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    invoke-interface {v0, p1}, Lorg/android/spdy/SessionCb;->getSSLMeta(Lorg/android/spdy/SpdySession;)[B

    move-result-object v0

    .line 221
    :goto_0
    return-object v0

    .line 220
    :cond_0
    const-string v0, "tnet-jni"

    const-string v1, "[SpdySessionCallBack.getSSLMeta] - no sessionCallBack."

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putSSLMeta(Lorg/android/spdy/SpdySession;[B)I
    .locals 3

    .prologue
    .line 228
    const-string v0, "tnet-jni"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SpdySessionCallBack.putSSLMeta] - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    invoke-interface {v0, p1, p2}, Lorg/android/spdy/SessionCb;->putSSLMeta(Lorg/android/spdy/SpdySession;[B)I

    move-result v0

    .line 233
    :goto_0
    return v0

    .line 232
    :cond_0
    const-string v0, "tnet-jni"

    const-string v1, "[SpdySessionCallBack.putSSLMeta] - no sessionCallBack."

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public spdyCustomControlFrameFailCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;II)V
    .locals 3

    .prologue
    .line 156
    const-string v0, "tnet-jni"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SpdySessionCallBack.spdyCustomControlFrameFailCallback] - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/android/spdy/SessionCb;->spdyCustomControlFrameFailCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;II)V

    .line 162
    :goto_0
    return-void

    .line 160
    :cond_0
    const-string v0, "tnet-jni"

    const-string v1, "[SpdySessionCallBack.spdyCustomControlFrameFailCallback] - no sessionCallBack."

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public spdyCustomControlFrameRecvCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;IIII[B)V
    .locals 8

    .prologue
    .line 146
    const-string v0, "tnet-jni"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SpdySessionCallBack.spdyCustomControlFrameRecvCallback] - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lorg/android/spdy/SessionCb;->spdyCustomControlFrameRecvCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;IIII[B)V

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    const-string v0, "tnet-jni"

    const-string v1, "[SpdySessionCallBack.spdyCustomControlFrameRecvCallback] - no sessionCallBack."

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public spdyDataChunkRecvCB(Lorg/android/spdy/SpdySession;ZJLorg/android/spdy/SpdyByteArray;I)V
    .locals 13

    .prologue
    .line 17
    const-string v2, "tnet-jni"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SpdySessionCallBack.spdyDataChunkRecvCB] - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lorg/android/spdy/NetTimeGaurd;->begin()J

    move-result-wide v10

    .line 19
    move/from16 v0, p6

    invoke-virtual {p1, v0}, Lorg/android/spdy/SpdySession;->getSpdyStream(I)Lorg/android/spdy/SpdyStreamContext;

    move-result-object v2

    .line 20
    if-eqz v2, :cond_0

    iget-object v3, v2, Lorg/android/spdy/SpdyStreamContext;->callBack:Lorg/android/spdy/Spdycb;

    if-eqz v3, :cond_0

    .line 21
    iget-object v3, v2, Lorg/android/spdy/SpdyStreamContext;->callBack:Lorg/android/spdy/Spdycb;

    iget-object v9, v2, Lorg/android/spdy/SpdyStreamContext;->streamContext:Ljava/lang/Object;

    move-object v4, p1

    move v5, p2

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    invoke-interface/range {v3 .. v9}, Lorg/android/spdy/Spdycb;->spdyDataChunkRecvCB(Lorg/android/spdy/SpdySession;ZJLorg/android/spdy/SpdyByteArray;Ljava/lang/Object;)V

    .line 25
    :goto_0
    const-string v2, "spdyDataChunkRecvCB"

    const/4 v3, 0x3

    invoke-static {v2, v3, v10, v11}, Lorg/android/spdy/NetTimeGaurd;->end(Ljava/lang/String;IJ)V

    .line 26
    return-void

    .line 23
    :cond_0
    const-string v2, "tnet-jni"

    const-string v3, "[SpdySessionCallBack.spdyDataChunkRecvCB] - no sessionCallBack."

    invoke-static {v2, v3}, Lorg/android/spdy/spduLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public spdyDataRecvCallback(Lorg/android/spdy/SpdySession;ZJII)V
    .locals 13

    .prologue
    .line 33
    const-string v2, "tnet-jni"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SpdySessionCallBack.spdyDataRecvCallback] - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-static {}, Lorg/android/spdy/NetTimeGaurd;->begin()J

    move-result-wide v10

    .line 35
    move/from16 v0, p6

    invoke-virtual {p1, v0}, Lorg/android/spdy/SpdySession;->getSpdyStream(I)Lorg/android/spdy/SpdyStreamContext;

    move-result-object v2

    .line 36
    if-eqz v2, :cond_0

    iget-object v3, v2, Lorg/android/spdy/SpdyStreamContext;->callBack:Lorg/android/spdy/Spdycb;

    if-eqz v3, :cond_0

    .line 37
    iget-object v3, v2, Lorg/android/spdy/SpdyStreamContext;->callBack:Lorg/android/spdy/Spdycb;

    iget-object v9, v2, Lorg/android/spdy/SpdyStreamContext;->streamContext:Ljava/lang/Object;

    move-object v4, p1

    move v5, p2

    move-wide/from16 v6, p3

    move/from16 v8, p5

    invoke-interface/range {v3 .. v9}, Lorg/android/spdy/Spdycb;->spdyDataRecvCallback(Lorg/android/spdy/SpdySession;ZJILjava/lang/Object;)V

    .line 41
    :goto_0
    const-string v2, "spdyDataRecvCallback"

    const/4 v3, 0x3

    invoke-static {v2, v3, v10, v11}, Lorg/android/spdy/NetTimeGaurd;->end(Ljava/lang/String;IJ)V

    .line 42
    return-void

    .line 39
    :cond_0
    const-string v2, "tnet-jni"

    const-string v3, "[SpdySessionCallBack.spdyDataRecvCallback] - no sessionCallBack."

    invoke-static {v2, v3}, Lorg/android/spdy/spduLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public spdyDataSendCallback(Lorg/android/spdy/SpdySession;ZJII)V
    .locals 9

    .prologue
    .line 49
    const-string v0, "tnet-jni"

    const-string v1, "[SpdySessionCallBack.spdyDataSendCallback] - "

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1, p6}, Lorg/android/spdy/SpdySession;->getSpdyStream(I)Lorg/android/spdy/SpdyStreamContext;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/android/spdy/SpdyStreamContext;->callBack:Lorg/android/spdy/Spdycb;

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, v0, Lorg/android/spdy/SpdyStreamContext;->callBack:Lorg/android/spdy/Spdycb;

    iget-object v7, v0, Lorg/android/spdy/SpdyStreamContext;->streamContext:Ljava/lang/Object;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-interface/range {v1 .. v7}, Lorg/android/spdy/Spdycb;->spdyDataSendCallback(Lorg/android/spdy/SpdySession;ZJILjava/lang/Object;)V

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    const-string v0, "tnet-jni"

    const-string v1, "[SpdySessionCallBack.spdyDataSendCallback] - no sessionCallBack."

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public spdyOnStreamResponse(Lorg/android/spdy/SpdySession;JLjava/util/Map;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/android/spdy/SpdySession;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;I)V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    .line 98
    const-string v0, "tnet-jni"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SpdySessionCallBack.spdyOnStreamResponse] - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-static {v8}, Lorg/android/spdy/NetTimeGaurd;->start(I)V

    .line 100
    invoke-static {}, Lorg/android/spdy/NetTimeGaurd;->begin()J

    move-result-wide v6

    .line 101
    invoke-virtual {p1, p5}, Lorg/android/spdy/SpdySession;->getSpdyStream(I)Lorg/android/spdy/SpdyStreamContext;

    move-result-object v1

    .line 102
    if-eqz v1, :cond_0

    iget-object v0, v1, Lorg/android/spdy/SpdyStreamContext;->callBack:Lorg/android/spdy/Spdycb;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, v1, Lorg/android/spdy/SpdyStreamContext;->callBack:Lorg/android/spdy/Spdycb;

    iget-object v5, v1, Lorg/android/spdy/SpdyStreamContext;->streamContext:Ljava/lang/Object;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lorg/android/spdy/Spdycb;->spdyOnStreamResponse(Lorg/android/spdy/SpdySession;JLjava/util/Map;Ljava/lang/Object;)V

    .line 107
    :goto_0
    const-string v0, "spdyOnStreamResponse"

    invoke-static {v0, v8, v6, v7}, Lorg/android/spdy/NetTimeGaurd;->end(Ljava/lang/String;IJ)V

    .line 108
    return-void

    .line 105
    :cond_0
    const-string v0, "tnet-jni"

    const-string v1, "[SpdySessionCallBack.spdyOnStreamResponse] - no sessionCallBack."

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public spdyPingRecvCallback(Lorg/android/spdy/SpdySession;JLjava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 131
    const-string v0, "tnet-jni"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SpdySessionCallBack.spdyPingRecvCallback] - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-static {v3}, Lorg/android/spdy/NetTimeGaurd;->start(I)V

    .line 133
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    if-eqz v0, :cond_0

    .line 134
    invoke-static {}, Lorg/android/spdy/NetTimeGaurd;->begin()J

    move-result-wide v0

    .line 135
    iget-object v2, p1, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    invoke-interface {v2, p1, p2, p3, p4}, Lorg/android/spdy/SessionCb;->spdyPingRecvCallback(Lorg/android/spdy/SpdySession;JLjava/lang/Object;)V

    .line 136
    const-string v2, "spdyPingRecvCallback"

    invoke-static {v2, v3, v0, v1}, Lorg/android/spdy/NetTimeGaurd;->end(Ljava/lang/String;IJ)V

    .line 140
    :goto_0
    invoke-static {v3}, Lorg/android/spdy/NetTimeGaurd;->finish(I)V

    .line 141
    return-void

    .line 138
    :cond_0
    const-string v0, "tnet-jni"

    const-string v1, "[SpdySessionCallBack.spdyPingRecvCallback] - no sessionCallBack."

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public spdyRequestRecvCallback(Lorg/android/spdy/SpdySession;JI)V
    .locals 4

    .prologue
    .line 82
    const-string v0, "tnet-jni"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SpdySessionCallBack.spdyOnStreamResponse] - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lorg/android/spdy/NetTimeGaurd;->begin()J

    move-result-wide v0

    .line 84
    invoke-virtual {p1, p4}, Lorg/android/spdy/SpdySession;->getSpdyStream(I)Lorg/android/spdy/SpdyStreamContext;

    move-result-object v2

    .line 85
    if-eqz v2, :cond_0

    iget-object v3, v2, Lorg/android/spdy/SpdyStreamContext;->callBack:Lorg/android/spdy/Spdycb;

    if-eqz v3, :cond_0

    .line 86
    iget-object v3, v2, Lorg/android/spdy/SpdyStreamContext;->callBack:Lorg/android/spdy/Spdycb;

    iget-object v2, v2, Lorg/android/spdy/SpdyStreamContext;->streamContext:Ljava/lang/Object;

    invoke-interface {v3, p1, p2, p3, v2}, Lorg/android/spdy/Spdycb;->spdyRequestRecvCallback(Lorg/android/spdy/SpdySession;JLjava/lang/Object;)V

    .line 90
    :goto_0
    const-string v2, "spdyPingRecvCallback"

    const/4 v3, 0x3

    invoke-static {v2, v3, v0, v1}, Lorg/android/spdy/NetTimeGaurd;->end(Ljava/lang/String;IJ)V

    .line 91
    return-void

    .line 88
    :cond_0
    const-string v2, "tnet-jni"

    const-string v3, "[SpdySessionCallBack.spdyRequestRecvCallback] - no sessionCallBack."

    invoke-static {v2, v3}, Lorg/android/spdy/spduLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public spdySessionCloseCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;Lorg/android/spdy/SuperviseConnectInfo;I)V
    .locals 3

    .prologue
    .line 194
    const-string v0, "tnet-jni"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SpdySessionCallBack.spdySessionCloseCallback] - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/android/spdy/SessionCb;->spdySessionCloseCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;Lorg/android/spdy/SuperviseConnectInfo;I)V

    .line 200
    :goto_0
    return-void

    .line 198
    :cond_0
    const-string v0, "tnet-jni"

    const-string v1, "[SpdySessionCallBack.spdySessionCloseCallback] - no sessionCallBack."

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public spdySessionConnectCB(Lorg/android/spdy/SpdySession;Lorg/android/spdy/SuperviseConnectInfo;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 116
    const-string v0, "tnet-jni"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SpdySessionCallBack.spdySessionConnectCB] - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-static {v3}, Lorg/android/spdy/NetTimeGaurd;->start(I)V

    .line 118
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    if-eqz v0, :cond_0

    .line 119
    invoke-static {}, Lorg/android/spdy/NetTimeGaurd;->begin()J

    move-result-wide v0

    .line 120
    iget-object v2, p1, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    invoke-interface {v2, p1, p2}, Lorg/android/spdy/SessionCb;->spdySessionConnectCB(Lorg/android/spdy/SpdySession;Lorg/android/spdy/SuperviseConnectInfo;)V

    .line 121
    const-string v2, "spdySessionConnectCB"

    invoke-static {v2, v3, v0, v1}, Lorg/android/spdy/NetTimeGaurd;->end(Ljava/lang/String;IJ)V

    .line 125
    :goto_0
    invoke-static {v3}, Lorg/android/spdy/NetTimeGaurd;->finish(I)V

    .line 126
    return-void

    .line 123
    :cond_0
    const-string v0, "tnet-jni"

    const-string v1, "[SpdySessionCallBack.spdySessionConnectCB] - no sessionCallBack."

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public spdySessionFailedError(Lorg/android/spdy/SpdySession;ILjava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 166
    const-string v0, "tnet-jni"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SpdySessionCallBack.spdySessionFailedError] - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-static {v3}, Lorg/android/spdy/NetTimeGaurd;->start(I)V

    .line 168
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    if-eqz v0, :cond_0

    .line 169
    invoke-static {}, Lorg/android/spdy/NetTimeGaurd;->begin()J

    move-result-wide v0

    .line 170
    iget-object v2, p1, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    invoke-interface {v2, p1, p2, p3}, Lorg/android/spdy/SessionCb;->spdySessionFailedError(Lorg/android/spdy/SpdySession;ILjava/lang/Object;)V

    .line 171
    invoke-virtual {p1}, Lorg/android/spdy/SpdySession;->clearAllStreamCb()V

    .line 172
    const-string v2, "spdySessionFailedError"

    invoke-static {v2, v3, v0, v1}, Lorg/android/spdy/NetTimeGaurd;->end(Ljava/lang/String;IJ)V

    .line 176
    :goto_0
    invoke-static {v3}, Lorg/android/spdy/NetTimeGaurd;->finish(I)V

    .line 177
    return-void

    .line 174
    :cond_0
    const-string v0, "tnet-jni"

    const-string v1, "[SpdySessionCallBack.spdySessionFailedError] - no sessionCallBack."

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public spdySessionOnWritable(Lorg/android/spdy/SpdySession;Ljava/lang/Object;I)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 180
    const-string v0, "tnet-jni"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SpdySessionCallBack.spdySessionOnWritable] - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-static {v4}, Lorg/android/spdy/NetTimeGaurd;->start(I)V

    .line 182
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    instance-of v0, v0, Lorg/android/spdy/SessionExtraCb;

    if-eqz v0, :cond_0

    .line 183
    invoke-static {}, Lorg/android/spdy/NetTimeGaurd;->begin()J

    move-result-wide v2

    .line 184
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    check-cast v0, Lorg/android/spdy/SessionExtraCb;

    check-cast v0, Lorg/android/spdy/SessionExtraCb;

    invoke-interface {v0, p1, p2, p3}, Lorg/android/spdy/SessionExtraCb;->spdySessionOnWritable(Lorg/android/spdy/SpdySession;Ljava/lang/Object;I)V

    .line 185
    const-string v0, "spdySessionOnWritable"

    invoke-static {v0, v4, v2, v3}, Lorg/android/spdy/NetTimeGaurd;->end(Ljava/lang/String;IJ)V

    .line 189
    :goto_0
    invoke-static {v4}, Lorg/android/spdy/NetTimeGaurd;->finish(I)V

    .line 190
    return-void

    .line 187
    :cond_0
    const-string v0, "tnet-jni"

    const-string v1, "[SpdySessionCallBack.spdySessionOnWritable] - no sessionCallBack."

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public spdyStreamCloseCallback(Lorg/android/spdy/SpdySession;JIILorg/android/spdy/SuperviseData;)V
    .locals 10

    .prologue
    .line 63
    const-string v0, "tnet-jni"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SpdySessionCallBack.spdyStreamCloseCallback] - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lorg/android/spdy/NetTimeGaurd;->begin()J

    move-result-wide v8

    .line 65
    invoke-virtual {p1, p5}, Lorg/android/spdy/SpdySession;->getSpdyStream(I)Lorg/android/spdy/SpdyStreamContext;

    move-result-object v1

    .line 66
    if-eqz v1, :cond_0

    iget-object v0, v1, Lorg/android/spdy/SpdyStreamContext;->callBack:Lorg/android/spdy/Spdycb;

    if-eqz v0, :cond_0

    .line 68
    const-string v0, "tnet-jni"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "endtime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, v1, Lorg/android/spdy/SpdyStreamContext;->callBack:Lorg/android/spdy/Spdycb;

    iget-object v5, v1, Lorg/android/spdy/SpdyStreamContext;->streamContext:Ljava/lang/Object;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object/from16 v6, p6

    invoke-interface/range {v0 .. v6}, Lorg/android/spdy/Spdycb;->spdyStreamCloseCallback(Lorg/android/spdy/SpdySession;JILjava/lang/Object;Lorg/android/spdy/SuperviseData;)V

    .line 71
    invoke-virtual {p1, p5}, Lorg/android/spdy/SpdySession;->removeSpdyStream(I)V

    .line 75
    :goto_0
    const-string v0, "spdyStreamCloseCallback"

    const/4 v1, 0x3

    invoke-static {v0, v1, v8, v9}, Lorg/android/spdy/NetTimeGaurd;->end(Ljava/lang/String;IJ)V

    .line 76
    const/4 v0, 0x3

    invoke-static {v0}, Lorg/android/spdy/NetTimeGaurd;->finish(I)V

    .line 77
    return-void

    .line 73
    :cond_0
    const-string v0, "tnet-jni"

    const-string v1, "[SpdySessionCallBack.spdyStreamCloseCallback] - no sessionCallBack."

    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
