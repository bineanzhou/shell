.class public Lcom/umeng/socialize/media/SimpleShareContent;
.super Ljava/lang/Object;
.source "SimpleShareContent.java"


# instance fields
.field public final DEFAULT_DESCRIPTION:Ljava/lang/String;

.field public final DEFAULT_TITLE:Ljava/lang/String;

.field public final IMAGE_LIMIT:I

.field public final THUMB_LIMIT:I

.field public final WX_THUMB_LIMIT:I

.field private a:Lcom/umeng/socialize/media/UMImage;

.field private b:Ljava/lang/String;

.field private c:Lcom/umeng/socialize/media/UMVideo;

.field private d:Lcom/umeng/socialize/media/UMEmoji;

.field private e:Lcom/umeng/socialize/media/UMusic;

.field private f:Lcom/umeng/socialize/media/UMMin;

.field private g:Lcom/umeng/socialize/media/UMWeb;

.field private h:Ljava/io/File;

.field private i:Lcom/umeng/socialize/media/BaseMediaObject;

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/umeng/socialize/ShareContent;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/16 v0, 0x6000

    iput v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->THUMB_LIMIT:I

    .line 32
    const/16 v0, 0x4800

    iput v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->WX_THUMB_LIMIT:I

    .line 33
    const v0, 0x78000

    iput v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->IMAGE_LIMIT:I

    .line 34
    const-string v0, "\u8fd9\u91cc\u662f\u6807\u9898"

    iput-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->DEFAULT_TITLE:Ljava/lang/String;

    .line 35
    const-string v0, "\u8fd9\u91cc\u662f\u63cf\u8ff0"

    iput-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->DEFAULT_DESCRIPTION:Ljava/lang/String;

    .line 38
    iget-object v0, p1, Lcom/umeng/socialize/ShareContent;->mText:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->b:Ljava/lang/String;

    .line 40
    iget-object v0, p1, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    instance-of v0, v0, Lcom/umeng/socialize/media/UMImage;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p1, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    check-cast v0, Lcom/umeng/socialize/media/UMImage;

    iput-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->a:Lcom/umeng/socialize/media/UMImage;

    .line 42
    iget-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->a:Lcom/umeng/socialize/media/UMImage;

    iput-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->i:Lcom/umeng/socialize/media/BaseMediaObject;

    .line 44
    :cond_0
    iget-object v0, p1, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    instance-of v0, v0, Lcom/umeng/socialize/media/UMusic;

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p1, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    check-cast v0, Lcom/umeng/socialize/media/UMusic;

    iput-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->e:Lcom/umeng/socialize/media/UMusic;

    .line 46
    iget-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->e:Lcom/umeng/socialize/media/UMusic;

    iput-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->i:Lcom/umeng/socialize/media/BaseMediaObject;

    .line 48
    :cond_1
    iget-object v0, p1, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    instance-of v0, v0, Lcom/umeng/socialize/media/UMVideo;

    if-eqz v0, :cond_2

    .line 49
    iget-object v0, p1, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    check-cast v0, Lcom/umeng/socialize/media/UMVideo;

    iput-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->c:Lcom/umeng/socialize/media/UMVideo;

    .line 50
    iget-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->c:Lcom/umeng/socialize/media/UMVideo;

    iput-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->i:Lcom/umeng/socialize/media/BaseMediaObject;

    .line 52
    :cond_2
    iget-object v0, p1, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    instance-of v0, v0, Lcom/umeng/socialize/media/UMEmoji;

    if-eqz v0, :cond_3

    .line 53
    iget-object v0, p1, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    check-cast v0, Lcom/umeng/socialize/media/UMEmoji;

    iput-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->d:Lcom/umeng/socialize/media/UMEmoji;

    .line 54
    iget-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->d:Lcom/umeng/socialize/media/UMEmoji;

    iput-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->i:Lcom/umeng/socialize/media/BaseMediaObject;

    .line 56
    :cond_3
    iget-object v0, p1, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    instance-of v0, v0, Lcom/umeng/socialize/media/UMWeb;

    if-eqz v0, :cond_4

    .line 57
    iget-object v0, p1, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    check-cast v0, Lcom/umeng/socialize/media/UMWeb;

    iput-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->g:Lcom/umeng/socialize/media/UMWeb;

    .line 58
    iget-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->g:Lcom/umeng/socialize/media/UMWeb;

    iput-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->i:Lcom/umeng/socialize/media/BaseMediaObject;

    .line 60
    :cond_4
    iget-object v0, p1, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    instance-of v0, v0, Lcom/umeng/socialize/media/UMMin;

    if-eqz v0, :cond_5

    .line 61
    iget-object v0, p1, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    check-cast v0, Lcom/umeng/socialize/media/UMMin;

    iput-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->f:Lcom/umeng/socialize/media/UMMin;

    .line 62
    iget-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->g:Lcom/umeng/socialize/media/UMWeb;

    iput-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->i:Lcom/umeng/socialize/media/BaseMediaObject;

    .line 64
    :cond_5
    iget-object v0, p1, Lcom/umeng/socialize/ShareContent;->file:Ljava/io/File;

    if-eqz v0, :cond_6

    .line 65
    iget-object v0, p1, Lcom/umeng/socialize/ShareContent;->file:Ljava/io/File;

    iput-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->h:Ljava/io/File;

    .line 67
    :cond_6
    iget-object v0, p1, Lcom/umeng/socialize/ShareContent;->subject:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->l:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Lcom/umeng/socialize/ShareContent;->getShareType()I

    move-result v0

    iput v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->j:I

    .line 69
    invoke-direct {p0}, Lcom/umeng/socialize/media/SimpleShareContent;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->k:Ljava/lang/String;

    .line 70
    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->j:I

    sparse-switch v0, :sswitch_data_0

    .line 93
    const-string v0, "error"

    :goto_0
    return-object v0

    .line 75
    :sswitch_0
    const-string v0, "text"

    goto :goto_0

    .line 77
    :sswitch_1
    const-string v0, "image"

    goto :goto_0

    .line 79
    :sswitch_2
    const-string v0, "textandimage"

    goto :goto_0

    .line 81
    :sswitch_3
    const-string v0, "web"

    goto :goto_0

    .line 83
    :sswitch_4
    const-string v0, "music"

    goto :goto_0

    .line 85
    :sswitch_5
    const-string v0, "video"

    goto :goto_0

    .line 87
    :sswitch_6
    const-string v0, "file"

    goto :goto_0

    .line 89
    :sswitch_7
    const-string v0, "emoji"

    goto :goto_0

    .line 91
    :sswitch_8
    const-string v0, "minapp"

    goto :goto_0

    .line 73
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_4
        0x8 -> :sswitch_5
        0x10 -> :sswitch_3
        0x20 -> :sswitch_6
        0x40 -> :sswitch_7
        0x80 -> :sswitch_8
    .end sparse-switch
.end method

.method private b()[B
    .locals 3

    .prologue
    .line 263
    invoke-static {}, Lcom/umeng/socialize/utils/DefaultClass;->getBytes()[B

    move-result-object v0

    .line 264
    invoke-static {}, Lcom/umeng/socialize/utils/ContextUtil;->getIcon()I

    move-result v1

    if-eqz v1, :cond_1

    .line 265
    new-instance v0, Lcom/umeng/socialize/media/UMImage;

    invoke-static {}, Lcom/umeng/socialize/utils/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/umeng/socialize/utils/ContextUtil;->getIcon()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/media/UMImage;-><init>(Landroid/content/Context;I)V

    .line 266
    const/16 v1, 0x4800

    invoke-static {v0, v1}, Lcom/umeng/socialize/b/a/a;->a(Lcom/umeng/socialize/media/UMImage;I)[B

    move-result-object v0

    .line 267
    if-eqz v0, :cond_0

    array-length v1, v0

    if-gtz v1, :cond_1

    .line 269
    :cond_0
    sget-object v1, Lcom/umeng/socialize/utils/UmengText$IMAGE;->SHARECONTENT_THUMB_ERROR:Ljava/lang/String;

    invoke-static {v1}, Lcom/umeng/socialize/utils/SLog;->E(Ljava/lang/String;)V

    .line 274
    :cond_1
    return-object v0
.end method


# virtual methods
.method public canFileValid(Lcom/umeng/socialize/media/UMImage;)Z
    .locals 1

    .prologue
    .line 305
    invoke-virtual {p1}, Lcom/umeng/socialize/media/UMImage;->asFileImage()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 306
    const/4 v0, 0x1

    .line 308
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAssertSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    const-string v0, "umengshare"

    .line 116
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->l:Ljava/lang/String;

    goto :goto_0
.end method

.method public getBaseMediaObject()Lcom/umeng/socialize/media/BaseMediaObject;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->i:Lcom/umeng/socialize/media/BaseMediaObject;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->h:Ljava/io/File;

    return-object v0
.end method

.method public getImage()Lcom/umeng/socialize/media/UMImage;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->a:Lcom/umeng/socialize/media/UMImage;

    return-object v0
.end method

.method public getImageData(Lcom/umeng/socialize/media/UMImage;)[B
    .locals 1

    .prologue
    .line 278
    invoke-virtual {p1}, Lcom/umeng/socialize/media/UMImage;->asBinImage()[B

    move-result-object v0

    return-object v0
.end method

.method public getImageThumb(Lcom/umeng/socialize/media/UMImage;)[B
    .locals 2

    .prologue
    .line 248
    invoke-virtual {p1}, Lcom/umeng/socialize/media/UMImage;->getThumbImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 250
    invoke-virtual {p1}, Lcom/umeng/socialize/media/UMImage;->getThumbImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v0

    const/16 v1, 0x4800

    invoke-static {v0, v1}, Lcom/umeng/socialize/b/a/a;->a(Lcom/umeng/socialize/media/UMImage;I)[B

    move-result-object v0

    .line 251
    if-eqz v0, :cond_0

    array-length v1, v0

    if-gtz v1, :cond_1

    .line 253
    :cond_0
    sget-object v0, Lcom/umeng/socialize/utils/UmengText$IMAGE;->SHARECONTENT_THUMB_ERROR:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->E(Ljava/lang/String;)V

    .line 254
    invoke-direct {p0}, Lcom/umeng/socialize/media/SimpleShareContent;->b()[B

    move-result-object v0

    .line 258
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-direct {p0}, Lcom/umeng/socialize/media/SimpleShareContent;->b()[B

    move-result-object v0

    goto :goto_0
.end method

.method public getMusic()Lcom/umeng/socialize/media/UMusic;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->e:Lcom/umeng/socialize/media/UMusic;

    return-object v0
.end method

.method public getMusicTargetUrl(Lcom/umeng/socialize/media/UMusic;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p1}, Lcom/umeng/socialize/media/UMusic;->getmTargetUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {p1}, Lcom/umeng/socialize/media/UMusic;->toUrl()Ljava/lang/String;

    move-result-object v0

    .line 244
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/umeng/socialize/media/UMusic;->getmTargetUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getStrStyle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getStrictImageData(Lcom/umeng/socialize/media/UMImage;)[B
    .locals 2

    .prologue
    const v1, 0x78000

    .line 282
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/media/SimpleShareContent;->getUMImageScale(Lcom/umeng/socialize/media/UMImage;)I

    move-result v0

    if-le v0, v1, :cond_1

    .line 283
    invoke-virtual {p0}, Lcom/umeng/socialize/media/SimpleShareContent;->getImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/umeng/socialize/b/a/a;->a(Lcom/umeng/socialize/media/UMImage;I)[B

    move-result-object v0

    .line 284
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 292
    :goto_0
    return-object v0

    .line 287
    :cond_0
    sget-object v0, Lcom/umeng/socialize/utils/UmengText$IMAGE;->SHARECONTENT_THUMB_ERROR:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->E(Ljava/lang/String;)V

    .line 288
    const/4 v0, 0x0

    goto :goto_0

    .line 292
    :cond_1
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/media/SimpleShareContent;->getImageData(Lcom/umeng/socialize/media/UMImage;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getUMImageScale(Lcom/umeng/socialize/media/UMImage;)I
    .locals 1

    .prologue
    .line 296
    invoke-static {p1}, Lcom/umeng/socialize/b/a/a;->a(Lcom/umeng/socialize/media/UMImage;)I

    move-result v0

    return v0
.end method

.method public getUmEmoji()Lcom/umeng/socialize/media/UMEmoji;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->d:Lcom/umeng/socialize/media/UMEmoji;

    return-object v0
.end method

.method public getUmMin()Lcom/umeng/socialize/media/UMMin;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->f:Lcom/umeng/socialize/media/UMMin;

    return-object v0
.end method

.method public getUmWeb()Lcom/umeng/socialize/media/UMWeb;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->g:Lcom/umeng/socialize/media/UMWeb;

    return-object v0
.end method

.method public getVideo()Lcom/umeng/socialize/media/UMVideo;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->c:Lcom/umeng/socialize/media/UMVideo;

    return-object v0
.end method

.method public getmStyle()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/umeng/socialize/media/SimpleShareContent;->j:I

    return v0
.end method

.method public objectSetDescription(Lcom/umeng/socialize/media/BaseMediaObject;)Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x400

    .line 181
    invoke-virtual {p1}, Lcom/umeng/socialize/media/BaseMediaObject;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    const-string v0, "\u8fd9\u91cc\u662f\u63cf\u8ff0"

    .line 188
    :cond_0
    :goto_0
    return-object v0

    .line 184
    :cond_1
    invoke-virtual {p1}, Lcom/umeng/socialize/media/BaseMediaObject;->getDescription()Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 186
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public objectSetMInAppThumb(Lcom/umeng/socialize/media/BaseMediaObject;)[B
    .locals 3

    .prologue
    .line 228
    invoke-virtual {p1}, Lcom/umeng/socialize/media/BaseMediaObject;->getThumbImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 230
    invoke-virtual {p1}, Lcom/umeng/socialize/media/BaseMediaObject;->getThumbImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMImage;->asBinImage()[B

    move-result-object v0

    const/16 v1, 0x6000

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/b/a/a;->a([BILandroid/graphics/Bitmap$CompressFormat;)[B

    move-result-object v0

    .line 231
    if-eqz v0, :cond_0

    array-length v1, v0

    if-gtz v1, :cond_1

    .line 233
    :cond_0
    sget-object v1, Lcom/umeng/socialize/utils/UmengText$IMAGE;->SHARECONTENT_THUMB_ERROR:Ljava/lang/String;

    invoke-static {v1}, Lcom/umeng/socialize/utils/SLog;->E(Ljava/lang/String;)V

    .line 237
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-static {}, Lcom/umeng/socialize/utils/DefaultClass;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method

.method public objectSetText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    const/16 v0, 0x2800

    invoke-virtual {p0, p1, v0}, Lcom/umeng/socialize/media/SimpleShareContent;->objectSetText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public objectSetText(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    const-string p1, "\u8fd9\u91cc\u662f\u63cf\u8ff0"

    .line 207
    :cond_0
    :goto_0
    return-object p1

    .line 204
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 205
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public objectSetThumb(Lcom/umeng/socialize/media/BaseMediaObject;)[B
    .locals 2

    .prologue
    .line 214
    invoke-virtual {p1}, Lcom/umeng/socialize/media/BaseMediaObject;->getThumbImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 216
    invoke-virtual {p1}, Lcom/umeng/socialize/media/BaseMediaObject;->getThumbImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v0

    const/16 v1, 0x6000

    invoke-static {v0, v1}, Lcom/umeng/socialize/b/a/a;->a(Lcom/umeng/socialize/media/UMImage;I)[B

    move-result-object v0

    .line 217
    if-eqz v0, :cond_0

    array-length v1, v0

    if-gtz v1, :cond_1

    .line 219
    :cond_0
    sget-object v0, Lcom/umeng/socialize/utils/UmengText$IMAGE;->SHARECONTENT_THUMB_ERROR:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->E(Ljava/lang/String;)V

    .line 220
    invoke-direct {p0}, Lcom/umeng/socialize/media/SimpleShareContent;->b()[B

    move-result-object v0

    .line 224
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-direct {p0}, Lcom/umeng/socialize/media/SimpleShareContent;->b()[B

    move-result-object v0

    goto :goto_0
.end method

.method public objectSetTitle(Lcom/umeng/socialize/media/BaseMediaObject;)Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x200

    .line 169
    invoke-virtual {p1}, Lcom/umeng/socialize/media/BaseMediaObject;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    const-string v0, "\u8fd9\u91cc\u662f\u6807\u9898"

    .line 176
    :cond_0
    :goto_0
    return-object v0

    .line 172
    :cond_1
    invoke-virtual {p1}, Lcom/umeng/socialize/media/BaseMediaObject;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 174
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setImage(Lcom/umeng/socialize/media/UMImage;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/umeng/socialize/media/SimpleShareContent;->a:Lcom/umeng/socialize/media/UMImage;

    .line 145
    return-void
.end method

.method public setMusic(Lcom/umeng/socialize/media/UMusic;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/umeng/socialize/media/SimpleShareContent;->e:Lcom/umeng/socialize/media/UMusic;

    .line 154
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/umeng/socialize/media/SimpleShareContent;->b:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setVideo(Lcom/umeng/socialize/media/UMVideo;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/umeng/socialize/media/SimpleShareContent;->c:Lcom/umeng/socialize/media/UMVideo;

    .line 162
    return-void
.end method

.method public subString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 300
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 302
    :cond_0
    return-object p1
.end method
