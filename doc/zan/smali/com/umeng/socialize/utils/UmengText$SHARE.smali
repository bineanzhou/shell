.class public Lcom/umeng/socialize/utils/UmengText$SHARE;
.super Ljava/lang/Object;
.source "UmengText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/utils/UmengText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SHARE"
.end annotation


# static fields
.field public static CONTEXT_EMPTY:Ljava/lang/String;

.field public static CONTEXT_LONG:Ljava/lang/String;

.field public static EMPTY_TEXT:Ljava/lang/String;

.field public static EMPTY_WEB_URL:Ljava/lang/String;

.field public static ERRORTYPE:Ljava/lang/String;

.field public static FILENAME:Ljava/lang/String;

.field public static FLICKER_WARN:Ljava/lang/String;

.field public static FOURSQUARE_WARN:Ljava/lang/String;

.field public static INFO:Ljava/lang/String;

.field public static LOCALIMAGE:Ljava/lang/String;

.field public static LOCALTHUMB:Ljava/lang/String;

.field public static LONG_TEXT:Ljava/lang/String;

.field public static LONG_URL:Ljava/lang/String;

.field public static MUSICDES:Ljava/lang/String;

.field public static MUSICTITLE:Ljava/lang/String;

.field public static MUSICURL:Ljava/lang/String;

.field public static SHAREPLAT:Ljava/lang/String;

.field public static SHARESTYLE:Ljava/lang/String;

.field public static SHARETEXT:Ljava/lang/String;

.field public static SHAREVIEWV:Ljava/lang/String;

.field public static SHARE_CONTENT_FAIL:Ljava/lang/String;

.field public static SHARE_STYLE:Ljava/lang/String;

.field public static SHARE_TO:Ljava/lang/String;

.field public static URLDES:Ljava/lang/String;

.field public static URLIMAGE:Ljava/lang/String;

.field public static URLTHUMB:Ljava/lang/String;

.field public static URLTITLE:Ljava/lang/String;

.field public static URLURL:Ljava/lang/String;

.field public static VERSION:Ljava/lang/String;

.field public static VERSION_NOT_SUPPORT:Ljava/lang/String;

.field public static VIDEODES:Ljava/lang/String;

.field public static VIDEOTITLE:Ljava/lang/String;

.field public static VIDEOURL:Ljava/lang/String;

.field public static WEB_HTTP:Ljava/lang/String;

.field public static YNOTE_WARN:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 119
    const-string v0, "shareview\u7248\u672c\u53f7:"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$SHARE;->SHAREVIEWV:Ljava/lang/String;

    .line 120
    const-string v0, "API\u7248\u672c\u53f7:"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$SHARE;->VERSION:Ljava/lang/String;

    .line 121
    const-string v0, "\u4ee5\u4e0b\u4e3a\u5206\u4eab\u7684\u5185\u5bb9:"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$SHARE;->INFO:Ljava/lang/String;

    .line 122
    const-string v0, "\u5206\u4eab\u7c7b\u578b:"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$SHARE;->SHARESTYLE:Ljava/lang/String;

    .line 123
    const-string v0, "\u5206\u4eab\u5e73\u53f0:"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$SHARE;->SHAREPLAT:Ljava/lang/String;

    .line 124
    const-string v0, "\u5206\u4eab\u6587\u672c:"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$SHARE;->SHARETEXT:Ljava/lang/String;

    .line 125
    const-string v0, "\u56fe\u7247\u94fe\u63a5:"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$SHARE;->URLIMAGE:Ljava/lang/String;

    .line 126
    const-string v0, "\u672c\u5730\u56fe\u7247:"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$SHARE;->LOCALIMAGE:Ljava/lang/String;

    .line 127
    const-string v0, "\u7f29\u7565\u56fe\u94fe\u63a5:"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$SHARE;->URLTHUMB:Ljava/lang/String;

    .line 128
    const-string v0, "\u672c\u5730\u7f29\u7565\u56fe:"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$SHARE;->LOCALTHUMB:Ljava/lang/String;

    .line 129
    const-string v0, "\u89c6\u9891\u94fe\u63a5:"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$SHARE;->VIDEOURL:Ljava/lang/String;

    .line 130
    const-string v0, "\u89c6\u9891\u6807\u9898:"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$SHARE;->VIDEOTITLE:Ljava/lang/String;

    .line 131
    const-string v0, "\u89c6\u9891\u63cf\u8ff0:"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$SHARE;->VIDEODES:Ljava/lang/String;

    .line 132
    const-string v0, "\u94fe\u63a5:"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$SHARE;->URLURL:Ljava/lang/String;

    .line 133
    const-string v0, "url\u6807\u9898:"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$SHARE;->URLTITLE:Ljava/lang/String;

    .line 134
    const-string v0, "url\u63cf\u8ff0:"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$SHARE;->URLDES:Ljava/lang/String;

    .line 135
    const-string v0, "\u97f3\u4e50\u94fe\u63a5:"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$SHARE;->MUSICURL:Ljava/lang/String;

    .line 136
    const-string v0, "\u97f3\u4e50\u6807\u9898:"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$SHARE;->MUSICTITLE:Ljava/lang/String;

    .line 137
    const-string v0, "\u97f3\u4e50\u63cf\u8ff0:"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$SHARE;->MUSICDES:Ljava/lang/String;

    .line 138
    const-string v0, "\u6587\u4ef6\u540d:"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$SHARE;->FILENAME:Ljava/lang/String;

    .line 140
    const-string v0, "[SST10000]\u4e0d\u652f\u6301\u7684\u5206\u4eab\u7c7b\u578b"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$SHARE;->ERRORTYPE:Ljava/lang/String;

    .line 141
    const-string v0, "\u6709\u9053\u4e91\u7b14\u8bb0\u53ea\u652f\u6301\u6587\u672c\uff0c\u56fe\u7247\uff0c\u56fe\u6587\u5206\u4eab"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$SHARE;->YNOTE_WARN:Ljava/lang/String;

    .line 142
    const-string v0, "Foursquare\u53ea\u652f\u6301\u7eaf\u56fe\u7247\u5206\u4eab"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$SHARE;->FOURSQUARE_WARN:Ljava/lang/String;

    .line 143
    const-string v0, "Flickr\u53ea\u652f\u6301\u56fe\u7247\u5206\u4eab"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$SHARE;->FLICKER_WARN:Ljava/lang/String;

    .line 145
    const-string v0, "[SST10001]\u5206\u4eab\u5185\u5bb9\u6709\u8bef\uff0c\u8bf7\u67e5\u770blog\u6216\u5f53\u524d\u4f7f\u7528\u7684\u5ba2\u6237\u7aef\u7248\u672c\u4e0d\u652f\u6301\u5206\u4eab\u6216\u6388\u6743"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$SHARE;->VERSION_NOT_SUPPORT:Ljava/lang/String;

    .line 146
    const-string v0, "[SST10002]\u5f53\u524d\u5206\u4eab\u7c7b\u578b\u5185\u5bb9\u6709\u8bef\uff0c\u7f3a\u5c11\u8bbe\u7f6e\u53c2\u6570\u6216\u5185\u5bb9\u4e0d\u5408\u89c4\uff0c\u8bf7\u67e5\u770b\u53cb\u76dflog"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$SHARE;->SHARE_CONTENT_FAIL:Ljava/lang/String;

    .line 147
    const-string v0, "\u5206\u4eab\u5230"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$SHARE;->SHARE_TO:Ljava/lang/String;

    .line 148
    const-string v0, "[SST10003]\u60a8\u5206\u4eab\u7684\u662f\u7f51\u9875\u7c7b\u578b\u4f46\u662f\u7f51\u5740\u4e3a\u7a7a"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$SHARE;->EMPTY_WEB_URL:Ljava/lang/String;

    .line 149
    const-string v0, "[SST10004]\u5206\u4eab\u7684\u6587\u672c\u4e0d\u80fd\u4e3a\u7a7a"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$SHARE;->EMPTY_TEXT:Ljava/lang/String;

    .line 150
    const-string v0, "[SST10005]\u5206\u4eab\u7684\u6587\u672c\u8fc7\u957f"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$SHARE;->LONG_TEXT:Ljava/lang/String;

    .line 151
    const-string v0, "[SST10006]\u5206\u4eab\u7684\u94fe\u63a5\u8fc7\u957f"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$SHARE;->LONG_URL:Ljava/lang/String;

    .line 153
    const-string v0, "\u5206\u4eab\u7c7b\u578b--"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$SHARE;->SHARE_STYLE:Ljava/lang/String;

    .line 154
    const-string v0, "[SST10007]\u5206\u4eab\u7684\u94fe\u63a5\u9700\u8981\u4ee5http\u5f00\u5934"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$SHARE;->WEB_HTTP:Ljava/lang/String;

    .line 155
    const-string v0, "\u8bf7\u8f93\u5165\u5185\u5bb9...."

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$SHARE;->CONTEXT_EMPTY:Ljava/lang/String;

    .line 156
    const-string v0, "\u8d85\u51fa\u6700\u5927\u5b57\u6570\u9650\u5236...."

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$SHARE;->CONTEXT_LONG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
