.class public Lcom/umeng/socialize/utils/UmengText$QQ;
.super Ljava/lang/Object;
.source "UmengText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/utils/UmengText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QQ"
.end annotation


# static fields
.field public static ADDPERMISSION:Ljava/lang/String;

.field public static ERRORCALLBACK:Ljava/lang/String;

.field public static ERRORDATA:Ljava/lang/String;

.field public static ERRORINFO:Ljava/lang/String;

.field public static NOAPPID:Ljava/lang/String;

.field public static NOCALLBACK:Ljava/lang/String;

.field public static NOPERMISSION:Ljava/lang/String;

.field public static NOREPLY:Ljava/lang/String;

.field public static OPENIDANDTOKEN:Ljava/lang/String;

.field public static QQ100044:Ljava/lang/String;

.field public static QQ_ERROR:Ljava/lang/String;

.field public static QQ_MUSIC:Ljava/lang/String;

.field public static QQ_PERMISSION:Ljava/lang/String;

.field public static QQ_TENCENT_ERROR:Ljava/lang/String;

.field public static TENCENTFAIL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 166
    const-string v0, "\u4e3a\u4ec0\u4e48\u6211\u7684QQ\u6ca1\u6709\u56de\u8c03\uff1f"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$QQ;->NOCALLBACK:Ljava/lang/String;

    .line 167
    const-string v0, "\u4e3a\u4ec0\u4e48qq\u5206\u4eab\u6210\u529f\u5374\u56de\u8c03\u53d6\u6d88\uff1f"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$QQ;->ERRORCALLBACK:Ljava/lang/String;

    .line 168
    const-string v0, "\u4e3a\u4ec0\u4e48qq\u5206\u4eab\u6210\u529f\u5374\u6ca1\u6709\u6536\u5230\u6d88\u606f\uff1f"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$QQ;->NOREPLY:Ljava/lang/String;

    .line 169
    const-string v0, "\u4e3a\u4ec0\u4e48qq\u5206\u4eab\u5931\u8d25\uff0c\u7f3a\u5c11\u6743\u9650\uff1f"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$QQ;->NOPERMISSION:Ljava/lang/String;

    .line 170
    const-string v0, "\u4e3a\u4ec0\u4e48qq tencent\u521d\u59cb\u5316\u5931\u8d25\uff1f"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$QQ;->TENCENTFAIL:Ljava/lang/String;

    .line 171
    const-string v0, "\u4e3a\u4ec0\u4e48qq\u63d0\u793a100044?"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$QQ;->QQ100044:Ljava/lang/String;

    .line 172
    const-string v0, "[SQ20009]initOpenidAndToken error"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$QQ;->OPENIDANDTOKEN:Ljava/lang/String;

    .line 173
    const-string v0, "\u9519\u8bef\u4fe1\u606f:"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$QQ;->ERRORINFO:Ljava/lang/String;

    .line 174
    const-string v0, "[SQ20007]Tencent\u53d8\u91cf\u521d\u59cb\u5316\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u4f60\u7684app id\u8ddfAndroidManifest.xml\u6587\u4ef6\u4e2dAuthActivity\u7684scheme\u662f\u5426\u586b\u5199\u6b63\u786e"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$QQ;->QQ_TENCENT_ERROR:Ljava/lang/String;

    .line 176
    const-string v0, "[SQ20007]mTencent\u4fe1\u606f\u4e0d\u6b63\u786e\uff0c\u8bf7\u786e\u8ba4appid"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$QQ;->QQ_ERROR:Ljava/lang/String;

    .line 177
    const-string v0, "[SQ10004]QQ\u56fe\u7247\u5b58\u50a8\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u56fe\u7247\u6216\u8005\u68c0\u67e5\u662f\u5426\u6709\u8bfb\u5199\u6743\u9650"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$QQ;->QQ_PERMISSION:Ljava/lang/String;

    .line 178
    const-string v0, "QQ\u5206\u4eab\u97f3\u4e50,\u9664\u4e86\u8bbe\u7f6e\u64ad\u653e\u97f3\u4e50\u7684url,\u8fd8\u53ef\u4ee5\u8bbe\u7f6e\u4e00\u4e2a\u8df3\u8f6c\u7684url,\u53ef\u4ee5\u901a\u8fc7UMusic().setmTargetUrl(xxx)\u8bbe\u5b9a"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$QQ;->QQ_MUSIC:Ljava/lang/String;

    .line 179
    const-string v0, "[SQ10011]qq\u914d\u7f6e\u4e0d\u6b63\u786e\uff0cAndroidManifest\u4e2dAuthActivity\u7684data\u4e2d\u8981\u52a0\u5165\u81ea\u5df1\u7684qq\u5e94\u7528id"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$QQ;->ERRORDATA:Ljava/lang/String;

    .line 180
    const-string v0, "[SQ10000]qq\u914d\u7f6e\u4e0d\u6b63\u786e\uff0c\u6ca1\u6709\u68c0\u6d4b\u5230qq\u7684id\u914d\u7f6e"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$QQ;->NOAPPID:Ljava/lang/String;

    .line 181
    const-string v0, "[SQ10004]qq \u6743\u9650\u914d\u7f6e\u4e0d\u6b63\u786e\uff0c\u7f3a\u5c11android.permission.WRITE_EXTERNAL_STORAGE"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$QQ;->ADDPERMISSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getError(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SQ10011]\u6ca1\u6709\u5728AndroidManifest.xml\u4e2d\u68c0\u6d4b\u5230"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u8bf7\u6dfb\u52a0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
