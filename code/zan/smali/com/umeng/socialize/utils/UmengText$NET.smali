.class public Lcom/umeng/socialize/utils/UmengText$NET;
.super Ljava/lang/Object;
.source "UmengText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/utils/UmengText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NET"
.end annotation


# static fields
.field public static BODYNULL:Ljava/lang/String;

.field public static CLOSE:Ljava/lang/String;

.field public static CREATE:Ljava/lang/String;

.field public static IMAGEDOWN:Ljava/lang/String;

.field public static JSONNULL:Ljava/lang/String;

.field public static JSONRESULT:Ljava/lang/String;

.field public static MACNULL:Ljava/lang/String;

.field public static NET_AGAIN_ERROR:Ljava/lang/String;

.field public static NET_INAVALIBLE:Ljava/lang/String;

.field public static PARSEERROR:Ljava/lang/String;

.field public static POSTJSON:Ljava/lang/String;

.field public static SHARESELFFAIL:Ljava/lang/String;

.field public static SHARESELFOK:Ljava/lang/String;

.field public static TOOL:Ljava/lang/String;

.field private static id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 86
    const-string v0, "[SN10000]"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$NET;->id:Ljava/lang/String;

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/umeng/socialize/utils/UmengText$NET;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u8fd4\u56de\u5b57\u7b26\u4e32\u4e0d\u662fjson\uff0c\u53ef\u80fd\u662f\u7531\u4e8e\u670d\u52a1\u5668\u4e0d\u901a\u9020\u6210"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$NET;->PARSEERROR:Ljava/lang/String;

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/umeng/socialize/utils/UmengText$NET;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u5de5\u5177\u7c7b\u5185\u7684\u9519\u8bef\uff0c\u4e0d\u5f71\u54cd\u7528\u6237\u4f7f\u7528"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$NET;->TOOL:Ljava/lang/String;

    .line 89
    const-string v0, "[SN10004]\u56fe\u7247\u4e0b\u8f7d\u9519\u8bef,\u8bf7\u68c0\u67e5\u7f51\u5740"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$NET;->IMAGEDOWN:Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/umeng/socialize/utils/UmengText$NET;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u5173\u95ed\u6d41\u5f02\u5e38"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$NET;->CLOSE:Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/umeng/socialize/utils/UmengText$NET;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u6784\u5efaresponse\u51fa\u9519,\u4e0d\u5f71\u54cd\u7528\u6237\u4f7f\u7528\uff0c\u4f46\u9700\u8981\u67e5\u660e\u539f\u56e0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$NET;->CREATE:Ljava/lang/String;

    .line 92
    const-string v0, "[SN10001]\u91cd\u5b9a\u5411\u95ee\u9898\uff1aurl\u548c\u91cd\u5b9a\u5411url\u76f8\u540c"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$NET;->NET_AGAIN_ERROR:Ljava/lang/String;

    .line 93
    const-string v0, "[SN10002]\u540e\u53f0\u8fd4\u56dejson\u4e3a\u7a7a"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$NET;->JSONNULL:Ljava/lang/String;

    .line 94
    const-string v0, "[SN10003]\u7531\u4e8e\u6743\u9650\u95ee\u9898\uff0c\u6ca1\u6709\u83b7\u53d6\u5230mac"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$NET;->MACNULL:Ljava/lang/String;

    .line 95
    const-string v0, " post json\uff1a"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$NET;->POSTJSON:Ljava/lang/String;

    .line 96
    const-string v0, " return json\uff1a"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$NET;->JSONRESULT:Ljava/lang/String;

    .line 97
    const-string v0, " sharelog success"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$NET;->SHARESELFOK:Ljava/lang/String;

    .line 98
    const-string v0, " sharelog fail"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$NET;->SHARESELFFAIL:Ljava/lang/String;

    .line 99
    const-string v0, "\u62b1\u6b49,\u60a8\u7684\u7f51\u7edc\u4e0d\u53ef\u7528..."

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$NET;->NET_INAVALIBLE:Ljava/lang/String;

    .line 100
    const-string v0, "body is null"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$NET;->BODYNULL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "urlPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  SocializeNetUtils url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getURLERROR(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/umeng/socialize/utils/UmengText$NET;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "baseurl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u8be5url\u4e0d\u6b63\u786e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
