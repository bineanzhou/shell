.class public Lcom/umeng/socialize/net/analytics/AnalyticsReqeust;
.super Lcom/umeng/socialize/net/base/SocializeRequest;
.source "AnalyticsReqeust.java"


# static fields
.field private static final a:Ljava/lang/String; = "/share/multi_add/"

.field private static final b:I = 0x9


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lcom/umeng/socialize/media/UMediaObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 52
    const-string v2, ""

    const-class v3, Lcom/umeng/socialize/net/analytics/AnalyticsResponse;

    const/16 v4, 0x9

    sget-object v5, Lcom/umeng/socialize/net/utils/URequest$RequestMethod;->POST:Lcom/umeng/socialize/net/utils/URequest$RequestMethod;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/umeng/socialize/net/base/SocializeRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;ILcom/umeng/socialize/net/utils/URequest$RequestMethod;)V

    .line 53
    iput-object p1, p0, Lcom/umeng/socialize/net/analytics/AnalyticsReqeust;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/umeng/socialize/net/analytics/AnalyticsReqeust;->d:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/umeng/socialize/net/analytics/AnalyticsReqeust;->i:Ljava/lang/String;

    .line 58
    return-void
.end method


# virtual methods
.method protected getPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    const-string v1, "/share/multi_add/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    iget-object v1, p0, Lcom/umeng/socialize/net/analytics/AnalyticsReqeust;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/socialize/utils/SocializeUtils;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/umeng/socialize/Config;->EntityKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onPrepareRequest()V
    .locals 4

    .prologue
    .line 110
    invoke-super {p0}, Lcom/umeng/socialize/net/base/SocializeRequest;->onPrepareRequest()V

    .line 111
    const-string v1, "{\"%s\":\"%s\"}"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/umeng/socialize/net/analytics/AnalyticsReqeust;->d:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/umeng/socialize/net/analytics/AnalyticsReqeust;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_0
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/umeng/socialize/net/analytics/AnalyticsReqeust;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/socialize/utils/SocializeUtils;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 115
    const-string v2, "dc"

    sget-object v3, Lcom/umeng/socialize/Config;->Descriptor:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/umeng/socialize/net/analytics/AnalyticsReqeust;->addStringParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v2, "to"

    invoke-virtual {p0, v2, v0}, Lcom/umeng/socialize/net/analytics/AnalyticsReqeust;->addStringParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v2, "sns"

    invoke-virtual {p0, v2, v0}, Lcom/umeng/socialize/net/analytics/AnalyticsReqeust;->addStringParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v0, "ak"

    invoke-virtual {p0, v0, v1}, Lcom/umeng/socialize/net/analytics/AnalyticsReqeust;->addStringParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v0, "type"

    iget-object v1, p0, Lcom/umeng/socialize/net/analytics/AnalyticsReqeust;->f:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/umeng/socialize/net/analytics/AnalyticsReqeust;->addStringParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v0, "usid"

    iget-object v1, p0, Lcom/umeng/socialize/net/analytics/AnalyticsReqeust;->c:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/umeng/socialize/net/analytics/AnalyticsReqeust;->addStringParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v0, "ct"

    iget-object v1, p0, Lcom/umeng/socialize/net/analytics/AnalyticsReqeust;->i:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/umeng/socialize/net/analytics/AnalyticsReqeust;->addStringParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/umeng/socialize/net/analytics/AnalyticsReqeust;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    const-string v0, "url"

    iget-object v1, p0, Lcom/umeng/socialize/net/analytics/AnalyticsReqeust;->h:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/umeng/socialize/net/analytics/AnalyticsReqeust;->addStringParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/net/analytics/AnalyticsReqeust;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    const-string v0, "title"

    iget-object v1, p0, Lcom/umeng/socialize/net/analytics/AnalyticsReqeust;->g:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/umeng/socialize/net/analytics/AnalyticsReqeust;->addStringParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/net/analytics/AnalyticsReqeust;->j:Lcom/umeng/socialize/media/UMediaObject;

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/net/analytics/AnalyticsReqeust;->addMediaParams(Lcom/umeng/socialize/media/UMediaObject;)V

    .line 130
    return-void

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/umeng/socialize/net/analytics/AnalyticsReqeust;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public setMedia(Lcom/umeng/socialize/media/UMediaObject;)V
    .locals 1

    .prologue
    .line 82
    instance-of v0, p1, Lcom/umeng/socialize/media/UMImage;

    if-eqz v0, :cond_1

    .line 83
    iput-object p1, p0, Lcom/umeng/socialize/net/analytics/AnalyticsReqeust;->j:Lcom/umeng/socialize/media/UMediaObject;

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    instance-of v0, p1, Lcom/umeng/socialize/media/UMusic;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 85
    check-cast v0, Lcom/umeng/socialize/media/UMusic;

    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMusic;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/net/analytics/AnalyticsReqeust;->g:Ljava/lang/String;

    move-object v0, p1

    .line 86
    check-cast v0, Lcom/umeng/socialize/media/UMusic;

    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMusic;->toUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/net/analytics/AnalyticsReqeust;->h:Ljava/lang/String;

    move-object v0, p1

    .line 87
    check-cast v0, Lcom/umeng/socialize/media/UMusic;

    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMusic;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/net/analytics/AnalyticsReqeust;->i:Ljava/lang/String;

    .line 88
    check-cast p1, Lcom/umeng/socialize/media/UMusic;

    invoke-virtual {p1}, Lcom/umeng/socialize/media/UMusic;->getThumbImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/net/analytics/AnalyticsReqeust;->j:Lcom/umeng/socialize/media/UMediaObject;

    goto :goto_0

    .line 89
    :cond_2
    instance-of v0, p1, Lcom/umeng/socialize/media/UMVideo;

    if-eqz v0, :cond_3

    move-object v0, p1

    .line 90
    check-cast v0, Lcom/umeng/socialize/media/UMVideo;

    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMVideo;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/net/analytics/AnalyticsReqeust;->g:Ljava/lang/String;

    move-object v0, p1

    .line 91
    check-cast v0, Lcom/umeng/socialize/media/UMVideo;

    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMVideo;->toUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/net/analytics/AnalyticsReqeust;->h:Ljava/lang/String;

    move-object v0, p1

    .line 92
    check-cast v0, Lcom/umeng/socialize/media/UMVideo;

    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMVideo;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/net/analytics/AnalyticsReqeust;->i:Ljava/lang/String;

    .line 93
    check-cast p1, Lcom/umeng/socialize/media/UMVideo;

    invoke-virtual {p1}, Lcom/umeng/socialize/media/UMVideo;->getThumbImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/net/analytics/AnalyticsReqeust;->j:Lcom/umeng/socialize/media/UMediaObject;

    goto :goto_0

    .line 94
    :cond_3
    instance-of v0, p1, Lcom/umeng/socialize/media/UMWeb;

    if-eqz v0, :cond_4

    move-object v0, p1

    .line 95
    check-cast v0, Lcom/umeng/socialize/media/UMWeb;

    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMWeb;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/net/analytics/AnalyticsReqeust;->g:Ljava/lang/String;

    move-object v0, p1

    .line 96
    check-cast v0, Lcom/umeng/socialize/media/UMWeb;

    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMWeb;->toUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/net/analytics/AnalyticsReqeust;->h:Ljava/lang/String;

    move-object v0, p1

    .line 97
    check-cast v0, Lcom/umeng/socialize/media/UMWeb;

    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMWeb;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/net/analytics/AnalyticsReqeust;->i:Ljava/lang/String;

    .line 98
    check-cast p1, Lcom/umeng/socialize/media/UMWeb;

    invoke-virtual {p1}, Lcom/umeng/socialize/media/UMWeb;->getThumbImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/net/analytics/AnalyticsReqeust;->j:Lcom/umeng/socialize/media/UMediaObject;

    goto :goto_0

    .line 99
    :cond_4
    instance-of v0, p1, Lcom/umeng/socialize/media/UMMin;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 100
    check-cast v0, Lcom/umeng/socialize/media/UMMin;

    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMMin;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/net/analytics/AnalyticsReqeust;->g:Ljava/lang/String;

    move-object v0, p1

    .line 101
    check-cast v0, Lcom/umeng/socialize/media/UMMin;

    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMMin;->toUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/net/analytics/AnalyticsReqeust;->h:Ljava/lang/String;

    move-object v0, p1

    .line 102
    check-cast v0, Lcom/umeng/socialize/media/UMMin;

    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMMin;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/net/analytics/AnalyticsReqeust;->i:Ljava/lang/String;

    .line 103
    check-cast p1, Lcom/umeng/socialize/media/UMMin;

    invoke-virtual {p1}, Lcom/umeng/socialize/media/UMMin;->getThumbImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/net/analytics/AnalyticsReqeust;->j:Lcom/umeng/socialize/media/UMediaObject;

    goto/16 :goto_0
.end method

.method public setPlatform(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/umeng/socialize/net/analytics/AnalyticsReqeust;->d:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/umeng/socialize/net/analytics/AnalyticsReqeust;->i:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/umeng/socialize/net/analytics/AnalyticsReqeust;->f:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setUID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/umeng/socialize/net/analytics/AnalyticsReqeust;->e:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setmUsid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/umeng/socialize/net/analytics/AnalyticsReqeust;->c:Ljava/lang/String;

    .line 78
    return-void
.end method
