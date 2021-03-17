.class public Lcom/umeng/socialize/media/WeiXinShareContent;
.super Lcom/umeng/socialize/media/SimpleShareContent;
.source "WeiXinShareContent.java"


# direct methods
.method public constructor <init>(Lcom/umeng/socialize/ShareContent;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/umeng/socialize/media/SimpleShareContent;-><init>(Lcom/umeng/socialize/ShareContent;)V

    .line 35
    return-void
.end method

.method private buildEmojiParams()Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;
    .locals 3

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/umeng/socialize/media/WeiXinShareContent;->getUmEmoji()Lcom/umeng/socialize/media/UMEmoji;

    move-result-object v1

    .line 66
    const-string v0, ""

    .line 67
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/umeng/socialize/media/UMEmoji;->asFileImage()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 68
    invoke-virtual {v1}, Lcom/umeng/socialize/media/UMEmoji;->asFileImage()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    :cond_0
    new-instance v2, Lcom/tencent/mm/opensdk/modelmsg/WXEmojiObject;

    invoke-direct {v2}, Lcom/tencent/mm/opensdk/modelmsg/WXEmojiObject;-><init>()V

    .line 72
    iput-object v0, v2, Lcom/tencent/mm/opensdk/modelmsg/WXEmojiObject;->emojiPath:Ljava/lang/String;

    .line 73
    new-instance v0, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    invoke-direct {v0}, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;-><init>()V

    .line 74
    iput-object v2, v0, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;

    .line 75
    invoke-virtual {p0, v1}, Lcom/umeng/socialize/media/WeiXinShareContent;->objectSetThumb(Lcom/umeng/socialize/media/BaseMediaObject;)[B

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->thumbData:[B

    .line 78
    return-object v0
.end method

.method private buildFileParams()Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;
    .locals 2

    .prologue
    .line 112
    new-instance v0, Lcom/tencent/mm/opensdk/modelmsg/WXFileObject;

    invoke-direct {v0}, Lcom/tencent/mm/opensdk/modelmsg/WXFileObject;-><init>()V

    .line 113
    invoke-virtual {p0}, Lcom/umeng/socialize/media/WeiXinShareContent;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/socialize/utils/SocializeUtils;->File2byte(Ljava/io/File;)[B

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/opensdk/modelmsg/WXFileObject;->fileData:[B

    .line 115
    new-instance v1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    invoke-direct {v1}, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;-><init>()V

    .line 116
    iput-object v0, v1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;

    .line 117
    invoke-virtual {p0}, Lcom/umeng/socialize/media/WeiXinShareContent;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    .line 118
    invoke-virtual {p0}, Lcom/umeng/socialize/media/WeiXinShareContent;->getSubject()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    .line 120
    return-object v1
.end method

.method private buildImageParams()Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;
    .locals 4

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/umeng/socialize/media/WeiXinShareContent;->getImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v0

    .line 164
    new-instance v1, Lcom/tencent/mm/opensdk/modelmsg/WXImageObject;

    invoke-direct {v1}, Lcom/tencent/mm/opensdk/modelmsg/WXImageObject;-><init>()V

    .line 165
    new-instance v2, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    invoke-direct {v2}, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;-><init>()V

    .line 166
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMImage;->asBinImage()[B

    move-result-object v3

    iput-object v3, v1, Lcom/tencent/mm/opensdk/modelmsg/WXImageObject;->imageData:[B

    .line 167
    invoke-virtual {p0, v0}, Lcom/umeng/socialize/media/WeiXinShareContent;->canFileValid(Lcom/umeng/socialize/media/UMImage;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 168
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMImage;->asFileImage()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/tencent/mm/opensdk/modelmsg/WXImageObject;->imagePath:Ljava/lang/String;

    .line 169
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/tencent/mm/opensdk/modelmsg/WXImageObject;->imageData:[B

    .line 173
    :goto_0
    invoke-virtual {p0, v0}, Lcom/umeng/socialize/media/WeiXinShareContent;->getImageThumb(Lcom/umeng/socialize/media/UMImage;)[B

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->thumbData:[B

    .line 174
    iput-object v1, v2, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;

    .line 177
    return-object v2

    .line 171
    :cond_0
    invoke-virtual {p0, v0}, Lcom/umeng/socialize/media/WeiXinShareContent;->getStrictImageData(Lcom/umeng/socialize/media/UMImage;)[B

    move-result-object v3

    iput-object v3, v1, Lcom/tencent/mm/opensdk/modelmsg/WXImageObject;->imageData:[B

    goto :goto_0
.end method

.method private buildMinApp()Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;
    .locals 4

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/umeng/socialize/media/WeiXinShareContent;->getUmMin()Lcom/umeng/socialize/media/UMMin;

    move-result-object v0

    .line 129
    new-instance v1, Lcom/tencent/mm/opensdk/modelmsg/WXMiniProgramObject;

    invoke-direct {v1}, Lcom/tencent/mm/opensdk/modelmsg/WXMiniProgramObject;-><init>()V

    .line 130
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMMin;->toUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/opensdk/modelmsg/WXMiniProgramObject;->webpageUrl:Ljava/lang/String;

    .line 131
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMMin;->getUserName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/opensdk/modelmsg/WXMiniProgramObject;->userName:Ljava/lang/String;

    .line 132
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMMin;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/opensdk/modelmsg/WXMiniProgramObject;->path:Ljava/lang/String;

    .line 133
    new-instance v2, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    invoke-direct {v2}, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;-><init>()V

    .line 134
    invoke-virtual {p0, v0}, Lcom/umeng/socialize/media/WeiXinShareContent;->objectSetTitle(Lcom/umeng/socialize/media/BaseMediaObject;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    .line 135
    invoke-virtual {p0, v0}, Lcom/umeng/socialize/media/WeiXinShareContent;->objectSetDescription(Lcom/umeng/socialize/media/BaseMediaObject;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    .line 136
    invoke-virtual {p0, v0}, Lcom/umeng/socialize/media/WeiXinShareContent;->objectSetMInAppThumb(Lcom/umeng/socialize/media/BaseMediaObject;)[B

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->thumbData:[B

    .line 137
    iput-object v1, v2, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;

    .line 138
    return-object v2
.end method

.method private buildMusicParams()Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;
    .locals 4

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/umeng/socialize/media/WeiXinShareContent;->getMusic()Lcom/umeng/socialize/media/UMusic;

    move-result-object v0

    .line 88
    new-instance v1, Lcom/tencent/mm/opensdk/modelmsg/WXMusicObject;

    invoke-direct {v1}, Lcom/tencent/mm/opensdk/modelmsg/WXMusicObject;-><init>()V

    .line 89
    invoke-virtual {p0, v0}, Lcom/umeng/socialize/media/WeiXinShareContent;->getMusicTargetUrl(Lcom/umeng/socialize/media/UMusic;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/opensdk/modelmsg/WXMusicObject;->musicUrl:Ljava/lang/String;

    .line 90
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMusic;->toUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/opensdk/modelmsg/WXMusicObject;->musicDataUrl:Ljava/lang/String;

    .line 91
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMusic;->getLowBandDataUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 92
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMusic;->getLowBandDataUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/opensdk/modelmsg/WXMusicObject;->musicLowBandDataUrl:Ljava/lang/String;

    .line 94
    :cond_0
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMusic;->getLowBandUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 95
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMusic;->getLowBandUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/opensdk/modelmsg/WXMusicObject;->musicLowBandUrl:Ljava/lang/String;

    .line 97
    :cond_1
    new-instance v2, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    invoke-direct {v2}, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;-><init>()V

    .line 98
    iput-object v1, v2, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;

    .line 99
    invoke-virtual {p0, v0}, Lcom/umeng/socialize/media/WeiXinShareContent;->objectSetTitle(Lcom/umeng/socialize/media/BaseMediaObject;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    .line 100
    invoke-virtual {p0, v0}, Lcom/umeng/socialize/media/WeiXinShareContent;->objectSetDescription(Lcom/umeng/socialize/media/BaseMediaObject;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    .line 101
    iput-object v1, v2, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;

    .line 102
    invoke-virtual {p0, v0}, Lcom/umeng/socialize/media/WeiXinShareContent;->objectSetThumb(Lcom/umeng/socialize/media/BaseMediaObject;)[B

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->thumbData:[B

    .line 103
    return-object v2
.end method

.method private buildTextParams()Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;
    .locals 3

    .prologue
    .line 147
    new-instance v0, Lcom/tencent/mm/opensdk/modelmsg/WXTextObject;

    invoke-direct {v0}, Lcom/tencent/mm/opensdk/modelmsg/WXTextObject;-><init>()V

    .line 148
    invoke-virtual {p0}, Lcom/umeng/socialize/media/WeiXinShareContent;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/umeng/socialize/media/WeiXinShareContent;->objectSetText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/opensdk/modelmsg/WXTextObject;->text:Ljava/lang/String;

    .line 150
    new-instance v1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    invoke-direct {v1}, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;-><init>()V

    .line 151
    iput-object v0, v1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;

    .line 152
    invoke-virtual {p0}, Lcom/umeng/socialize/media/WeiXinShareContent;->getText()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x400

    invoke-virtual {p0, v0, v2}, Lcom/umeng/socialize/media/WeiXinShareContent;->objectSetText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    .line 154
    return-object v1
.end method

.method private buildUrlParams()Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;
    .locals 4

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/umeng/socialize/media/WeiXinShareContent;->getUmWeb()Lcom/umeng/socialize/media/UMWeb;

    move-result-object v0

    .line 204
    new-instance v1, Lcom/tencent/mm/opensdk/modelmsg/WXWebpageObject;

    invoke-direct {v1}, Lcom/tencent/mm/opensdk/modelmsg/WXWebpageObject;-><init>()V

    .line 205
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMWeb;->toUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/opensdk/modelmsg/WXWebpageObject;->webpageUrl:Ljava/lang/String;

    .line 206
    new-instance v2, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    invoke-direct {v2}, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;-><init>()V

    .line 207
    invoke-virtual {p0, v0}, Lcom/umeng/socialize/media/WeiXinShareContent;->objectSetTitle(Lcom/umeng/socialize/media/BaseMediaObject;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    .line 208
    invoke-virtual {p0, v0}, Lcom/umeng/socialize/media/WeiXinShareContent;->objectSetDescription(Lcom/umeng/socialize/media/BaseMediaObject;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    .line 209
    iput-object v1, v2, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;

    .line 210
    invoke-virtual {p0, v0}, Lcom/umeng/socialize/media/WeiXinShareContent;->objectSetThumb(Lcom/umeng/socialize/media/BaseMediaObject;)[B

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->thumbData:[B

    .line 211
    return-object v2
.end method

.method private buildVideoParams()Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;
    .locals 3

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/umeng/socialize/media/WeiXinShareContent;->getVideo()Lcom/umeng/socialize/media/UMVideo;

    move-result-object v0

    .line 187
    new-instance v1, Lcom/tencent/mm/opensdk/modelmsg/WXVideoObject;

    invoke-direct {v1}, Lcom/tencent/mm/opensdk/modelmsg/WXVideoObject;-><init>()V

    .line 188
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMVideo;->toUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/opensdk/modelmsg/WXVideoObject;->videoUrl:Ljava/lang/String;

    .line 189
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMVideo;->getLowBandUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 190
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMVideo;->getLowBandUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/opensdk/modelmsg/WXVideoObject;->videoLowBandUrl:Ljava/lang/String;

    .line 192
    :cond_0
    new-instance v2, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    invoke-direct {v2}, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;-><init>()V

    .line 193
    iput-object v1, v2, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;

    .line 194
    invoke-virtual {p0, v0}, Lcom/umeng/socialize/media/WeiXinShareContent;->objectSetTitle(Lcom/umeng/socialize/media/BaseMediaObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    .line 195
    invoke-virtual {p0, v0}, Lcom/umeng/socialize/media/WeiXinShareContent;->objectSetDescription(Lcom/umeng/socialize/media/BaseMediaObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    .line 196
    invoke-virtual {p0, v0}, Lcom/umeng/socialize/media/WeiXinShareContent;->objectSetThumb(Lcom/umeng/socialize/media/BaseMediaObject;)[B

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->thumbData:[B

    .line 197
    return-object v2
.end method


# virtual methods
.method public getWxMediaMessage()Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;
    .locals 2

    .prologue
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/umeng/socialize/media/WeiXinShareContent;->getmStyle()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/umeng/socialize/media/WeiXinShareContent;->getmStyle()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 40
    :cond_0
    invoke-direct {p0}, Lcom/umeng/socialize/media/WeiXinShareContent;->buildImageParams()Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    move-result-object v0

    .line 56
    :goto_0
    return-object v0

    .line 41
    :cond_1
    invoke-virtual {p0}, Lcom/umeng/socialize/media/WeiXinShareContent;->getmStyle()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 42
    invoke-direct {p0}, Lcom/umeng/socialize/media/WeiXinShareContent;->buildMusicParams()Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    move-result-object v0

    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {p0}, Lcom/umeng/socialize/media/WeiXinShareContent;->getmStyle()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_3

    .line 44
    invoke-direct {p0}, Lcom/umeng/socialize/media/WeiXinShareContent;->buildUrlParams()Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    move-result-object v0

    goto :goto_0

    .line 45
    :cond_3
    invoke-virtual {p0}, Lcom/umeng/socialize/media/WeiXinShareContent;->getmStyle()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    .line 46
    invoke-direct {p0}, Lcom/umeng/socialize/media/WeiXinShareContent;->buildVideoParams()Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    move-result-object v0

    goto :goto_0

    .line 47
    :cond_4
    invoke-virtual {p0}, Lcom/umeng/socialize/media/WeiXinShareContent;->getmStyle()I

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_5

    .line 48
    invoke-direct {p0}, Lcom/umeng/socialize/media/WeiXinShareContent;->buildEmojiParams()Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    move-result-object v0

    goto :goto_0

    .line 49
    :cond_5
    invoke-virtual {p0}, Lcom/umeng/socialize/media/WeiXinShareContent;->getmStyle()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_6

    .line 50
    invoke-direct {p0}, Lcom/umeng/socialize/media/WeiXinShareContent;->buildFileParams()Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    move-result-object v0

    goto :goto_0

    .line 51
    :cond_6
    invoke-virtual {p0}, Lcom/umeng/socialize/media/WeiXinShareContent;->getmStyle()I

    move-result v0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 52
    invoke-direct {p0}, Lcom/umeng/socialize/media/WeiXinShareContent;->buildMinApp()Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    move-result-object v0

    goto :goto_0

    .line 54
    :cond_7
    invoke-direct {p0}, Lcom/umeng/socialize/media/WeiXinShareContent;->buildTextParams()Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    move-result-object v0

    goto :goto_0
.end method
