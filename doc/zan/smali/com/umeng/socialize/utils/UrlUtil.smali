.class public Lcom/umeng/socialize/utils/UrlUtil;
.super Ljava/lang/Object;
.source "UrlUtil.java"


# static fields
.field public static final ALL_AUTHFAIL:Ljava/lang/String;

.field public static final ALL_AUTH_EVERY:Ljava/lang/String;

.field public static final ALL_ERROR_APPKEY:Ljava/lang/String;

.field public static final ALL_NOCLASSDEFFOUND:Ljava/lang/String;

.field public static final ALL_NO_APPKEY:Ljava/lang/String;

.field public static final ALL_NO_JAR:Ljava/lang/String;

.field public static final ALL_NO_ONACTIVITY:Ljava/lang/String;

.field public static final ALL_NO_RES:Ljava/lang/String;

.field public static final ALL_SHAREFAIL:Ljava/lang/String;

.field public static final FACEBOOK_AUTH_FAIL:Ljava/lang/String;

.field public static final FACEBOOK_CANCEL_SUCCESS:Ljava/lang/String;

.field public static final FACEBOOK_GRAY:Ljava/lang/String;

.field public static final QQ_10044:Ljava/lang/String;

.field public static final QQ_NO_CALLBACK:Ljava/lang/String;

.field public static final QQ_SHARESUCCESS_CANCEL:Ljava/lang/String;

.field public static final QQ_SHARESUCCESS_NOFOUND:Ljava/lang/String;

.field public static final QQ_SHARE_FAIL:Ljava/lang/String;

.field public static final QQ_TENCENT_INITFAIL:Ljava/lang/String;

.field public static final SINA_ERROR_SIGN:Ljava/lang/String;

.field public static final TWITTER_AUTH_FAIL:Ljava/lang/String;

.field public static final WX_40125:Ljava/lang/String;

.field public static final WX_CIRCLE_NOCONTENT:Ljava/lang/String;

.field public static final WX_ERROR_SIGN:Ljava/lang/String;

.field public static final WX_HIT_PUSH:Ljava/lang/String;

.field public static final WX_NO_CALLBACK:Ljava/lang/String;

.field public static final WX_NO_LINK:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "66781"

    invoke-static {v0}, Lcom/umeng/socialize/utils/UrlUtil;->makeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/utils/UrlUtil;->QQ_TENCENT_INITFAIL:Ljava/lang/String;

    .line 11
    const-string v0, "66824"

    invoke-static {v0}, Lcom/umeng/socialize/utils/UrlUtil;->makeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/utils/UrlUtil;->ALL_AUTH_EVERY:Ljava/lang/String;

    .line 12
    const-string v0, "66809"

    invoke-static {v0}, Lcom/umeng/socialize/utils/UrlUtil;->makeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/utils/UrlUtil;->ALL_NOCLASSDEFFOUND:Ljava/lang/String;

    .line 13
    const-string v0, "66838"

    invoke-static {v0}, Lcom/umeng/socialize/utils/UrlUtil;->makeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/utils/UrlUtil;->FACEBOOK_GRAY:Ljava/lang/String;

    .line 14
    const-string v0, "66839"

    invoke-static {v0}, Lcom/umeng/socialize/utils/UrlUtil;->makeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/utils/UrlUtil;->FACEBOOK_CANCEL_SUCCESS:Ljava/lang/String;

    .line 15
    const-string v0, "66837"

    invoke-static {v0}, Lcom/umeng/socialize/utils/UrlUtil;->makeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/utils/UrlUtil;->FACEBOOK_AUTH_FAIL:Ljava/lang/String;

    .line 16
    const-string v0, "66841"

    invoke-static {v0}, Lcom/umeng/socialize/utils/UrlUtil;->makeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/utils/UrlUtil;->TWITTER_AUTH_FAIL:Ljava/lang/String;

    .line 17
    const-string v0, "66774"

    invoke-static {v0}, Lcom/umeng/socialize/utils/UrlUtil;->makeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/utils/UrlUtil;->QQ_SHARESUCCESS_CANCEL:Ljava/lang/String;

    .line 18
    const-string v0, "66776"

    invoke-static {v0}, Lcom/umeng/socialize/utils/UrlUtil;->makeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/utils/UrlUtil;->QQ_SHARESUCCESS_NOFOUND:Ljava/lang/String;

    .line 19
    const-string v0, "66778"

    invoke-static {v0}, Lcom/umeng/socialize/utils/UrlUtil;->makeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/utils/UrlUtil;->QQ_SHARE_FAIL:Ljava/lang/String;

    .line 20
    const-string v0, "66779"

    invoke-static {v0}, Lcom/umeng/socialize/utils/UrlUtil;->makeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/utils/UrlUtil;->QQ_10044:Ljava/lang/String;

    .line 21
    const-string v0, "66780"

    invoke-static {v0}, Lcom/umeng/socialize/utils/UrlUtil;->makeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/utils/UrlUtil;->QQ_NO_CALLBACK:Ljava/lang/String;

    .line 22
    const-string v0, "66755"

    invoke-static {v0}, Lcom/umeng/socialize/utils/UrlUtil;->makeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/utils/UrlUtil;->SINA_ERROR_SIGN:Ljava/lang/String;

    .line 23
    const-string v0, "66786"

    invoke-static {v0}, Lcom/umeng/socialize/utils/UrlUtil;->makeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/utils/UrlUtil;->WX_NO_LINK:Ljava/lang/String;

    .line 24
    const-string v0, "66797"

    invoke-static {v0}, Lcom/umeng/socialize/utils/UrlUtil;->makeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/utils/UrlUtil;->WX_CIRCLE_NOCONTENT:Ljava/lang/String;

    .line 26
    const-string v0, "66815"

    invoke-static {v0}, Lcom/umeng/socialize/utils/UrlUtil;->makeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/utils/UrlUtil;->ALL_NO_JAR:Ljava/lang/String;

    .line 27
    const-string v0, "66849"

    invoke-static {v0}, Lcom/umeng/socialize/utils/UrlUtil;->makeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/utils/UrlUtil;->ALL_NO_ONACTIVITY:Ljava/lang/String;

    .line 28
    const-string v0, "66802"

    invoke-static {v0}, Lcom/umeng/socialize/utils/UrlUtil;->makeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/utils/UrlUtil;->WX_40125:Ljava/lang/String;

    .line 29
    const-string v0, "66791"

    invoke-static {v0}, Lcom/umeng/socialize/utils/UrlUtil;->makeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/utils/UrlUtil;->WX_NO_CALLBACK:Ljava/lang/String;

    .line 30
    const-string v0, "66787"

    invoke-static {v0}, Lcom/umeng/socialize/utils/UrlUtil;->makeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/utils/UrlUtil;->WX_ERROR_SIGN:Ljava/lang/String;

    .line 31
    const-string v0, "66795"

    invoke-static {v0}, Lcom/umeng/socialize/utils/UrlUtil;->makeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/utils/UrlUtil;->WX_HIT_PUSH:Ljava/lang/String;

    .line 32
    const-string v0, "66810"

    invoke-static {v0}, Lcom/umeng/socialize/utils/UrlUtil;->makeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/utils/UrlUtil;->ALL_NO_RES:Ljava/lang/String;

    .line 33
    const-string v0, "66831"

    invoke-static {v0}, Lcom/umeng/socialize/utils/UrlUtil;->makeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/utils/UrlUtil;->ALL_NO_APPKEY:Ljava/lang/String;

    .line 34
    const-string v0, "67234"

    invoke-static {v0}, Lcom/umeng/socialize/utils/UrlUtil;->makeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/utils/UrlUtil;->ALL_ERROR_APPKEY:Ljava/lang/String;

    .line 35
    const-string v0, "66875"

    invoke-static {v0}, Lcom/umeng/socialize/utils/UrlUtil;->makeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/utils/UrlUtil;->ALL_SHAREFAIL:Ljava/lang/String;

    .line 36
    const-string v0, "66876"

    invoke-static {v0}, Lcom/umeng/socialize/utils/UrlUtil;->makeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/utils/UrlUtil;->ALL_AUTHFAIL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInfoPrint(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 2

    .prologue
    .line 84
    sget-object v0, Lcom/umeng/socialize/utils/UmengText$AUTH;->ALL_AUTH_EVERY:Ljava/lang/String;

    sget-object v1, Lcom/umeng/socialize/utils/UrlUtil;->ALL_AUTH_EVERY:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/SLog;->AQ(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QQ:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne p0, v0, :cond_0

    .line 88
    sget-object v0, Lcom/umeng/socialize/utils/UmengText$QQ;->QQ100044:Ljava/lang/String;

    sget-object v1, Lcom/umeng/socialize/utils/UrlUtil;->QQ_10044:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/SLog;->AQ(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_0
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne p0, v0, :cond_1

    .line 91
    sget-object v0, Lcom/umeng/socialize/utils/UmengText$WX;->WX_NO_LINK:Ljava/lang/String;

    sget-object v1, Lcom/umeng/socialize/utils/UrlUtil;->WX_NO_LINK:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/SLog;->AQ(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    sget-object v0, Lcom/umeng/socialize/utils/UmengText$WX;->WX_ERROR_SIGN:Ljava/lang/String;

    sget-object v1, Lcom/umeng/socialize/utils/UrlUtil;->WX_ERROR_SIGN:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/SLog;->AQ(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    sget-object v0, Lcom/umeng/socialize/utils/UmengText$WX;->WX_40125:Ljava/lang/String;

    sget-object v1, Lcom/umeng/socialize/utils/UrlUtil;->WX_40125:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/SLog;->AQ(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_1
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->SINA:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne p0, v0, :cond_2

    sget-object v0, Lcom/umeng/socialize/Config;->isUmengSina:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    :cond_2
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->SINA:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne p0, v0, :cond_3

    sget-object v0, Lcom/umeng/socialize/Config;->isUmengSina:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 111
    :cond_3
    return-void
.end method

.method public static makeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://developer.umeng.com/docs/66632/detail/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?um_channel=sdk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sharePrint(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 2

    .prologue
    .line 42
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QQ:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne p0, v0, :cond_0

    .line 43
    sget-object v0, Lcom/umeng/socialize/utils/UmengText$QQ;->NOCALLBACK:Ljava/lang/String;

    sget-object v1, Lcom/umeng/socialize/utils/UrlUtil;->QQ_NO_CALLBACK:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/SLog;->AQ(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    sget-object v0, Lcom/umeng/socialize/utils/UmengText$QQ;->ERRORCALLBACK:Ljava/lang/String;

    sget-object v1, Lcom/umeng/socialize/utils/UrlUtil;->QQ_SHARESUCCESS_CANCEL:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/SLog;->AQ(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    sget-object v0, Lcom/umeng/socialize/utils/UmengText$QQ;->NOREPLY:Ljava/lang/String;

    sget-object v1, Lcom/umeng/socialize/utils/UrlUtil;->QQ_SHARESUCCESS_NOFOUND:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/SLog;->AQ(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    sget-object v0, Lcom/umeng/socialize/utils/UmengText$QQ;->NOPERMISSION:Ljava/lang/String;

    sget-object v1, Lcom/umeng/socialize/utils/UrlUtil;->QQ_SHARE_FAIL:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/SLog;->AQ(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    sget-object v0, Lcom/umeng/socialize/utils/UmengText$QQ;->TENCENTFAIL:Ljava/lang/String;

    sget-object v1, Lcom/umeng/socialize/utils/UrlUtil;->QQ_TENCENT_INITFAIL:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/SLog;->AQ(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    sget-object v0, Lcom/umeng/socialize/utils/UmengText$QQ;->QQ100044:Ljava/lang/String;

    sget-object v1, Lcom/umeng/socialize/utils/UrlUtil;->QQ_10044:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/SLog;->AQ(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_0
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->FACEBOOK:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->FACEBOOK_MESSAGER:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne p0, v0, :cond_2

    .line 52
    :cond_1
    sget-object v0, Lcom/umeng/socialize/utils/UmengText$FACEBOOK;->FACEBOOK_GRAY:Ljava/lang/String;

    sget-object v1, Lcom/umeng/socialize/utils/UrlUtil;->FACEBOOK_GRAY:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/SLog;->AQ(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    sget-object v0, Lcom/umeng/socialize/utils/UmengText$FACEBOOK;->FACEBOOK_CANCEL_SUCCESS:Ljava/lang/String;

    sget-object v1, Lcom/umeng/socialize/utils/UrlUtil;->FACEBOOK_CANCEL_SUCCESS:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/SLog;->AQ(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    sget-object v0, Lcom/umeng/socialize/utils/UmengText$FACEBOOK;->FACEBOOK_AUTH_FAIL:Ljava/lang/String;

    sget-object v1, Lcom/umeng/socialize/utils/UrlUtil;->FACEBOOK_AUTH_FAIL:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/SLog;->AQ(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_2
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->TWITTER:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne p0, v0, :cond_3

    .line 58
    sget-object v0, Lcom/umeng/socialize/utils/UmengText$TWITTER;->TWITTER_AUTH_FAIL:Ljava/lang/String;

    sget-object v1, Lcom/umeng/socialize/utils/UrlUtil;->TWITTER_AUTH_FAIL:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/SLog;->AQ(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_3
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-eq p0, v0, :cond_4

    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN_CIRCLE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne p0, v0, :cond_5

    .line 62
    :cond_4
    sget-object v0, Lcom/umeng/socialize/utils/UmengText$WX;->WX_NO_CALLBACK:Ljava/lang/String;

    sget-object v1, Lcom/umeng/socialize/utils/UrlUtil;->WX_NO_CALLBACK:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/SLog;->AQ(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    sget-object v0, Lcom/umeng/socialize/utils/UmengText$WX;->WX_CIRCLE_NOCONTENT:Ljava/lang/String;

    sget-object v1, Lcom/umeng/socialize/utils/UrlUtil;->WX_CIRCLE_NOCONTENT:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/SLog;->AQ(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    sget-object v0, Lcom/umeng/socialize/utils/UmengText$WX;->WX_40125:Ljava/lang/String;

    sget-object v1, Lcom/umeng/socialize/utils/UrlUtil;->WX_40125:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/SLog;->AQ(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    sget-object v0, Lcom/umeng/socialize/utils/UmengText$WX;->WX_HIT_PUSH:Ljava/lang/String;

    sget-object v1, Lcom/umeng/socialize/utils/UrlUtil;->WX_HIT_PUSH:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/SLog;->AQ(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_5
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->SINA:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne p0, v0, :cond_6

    sget-object v0, Lcom/umeng/socialize/Config;->isUmengSina:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 75
    :cond_6
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->SINA:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne p0, v0, :cond_7

    sget-object v0, Lcom/umeng/socialize/Config;->isUmengSina:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    .line 82
    :cond_7
    return-void
.end method
