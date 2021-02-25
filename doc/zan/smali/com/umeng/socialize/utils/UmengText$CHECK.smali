.class public Lcom/umeng/socialize/utils/UmengText$CHECK;
.super Ljava/lang/Object;
.source "UmengText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/utils/UmengText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CHECK"
.end annotation


# static fields
.field public static ACTIVITYNULL:Ljava/lang/String;

.field public static ALIPAYERROR:Ljava/lang/String;

.field public static ALIPAYSUCCESS:Ljava/lang/String;

.field public static ALL_NO_ONACTIVITY:Ljava/lang/String;

.field public static APPKEY_NOT_FOUND:Ljava/lang/String;

.field public static LISTENRNULL:Ljava/lang/String;

.field public static NOINT:Ljava/lang/String;

.field public static NO_SUPPORT_AUTH:Ljava/lang/String;

.field public static NO_SUPPORT_INSTALL:Ljava/lang/String;

.field public static NO_SUPPORT_SDKL:Ljava/lang/String;

.field public static ROUTERNULL:Ljava/lang/String;

.field public static SDKVERSION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-string v0, "[SCH10000]\u60a8\u7684activity\u4e2d\u6ca1\u6709\u91cd\u5199onActivityResult\u65b9\u6cd5"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$CHECK;->ALL_NO_ONACTIVITY:Ljava/lang/String;

    .line 61
    const-string v0, "[SCH10001]\u4f20\u5165Activity\u4e3a\u7a7a"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$CHECK;->ACTIVITYNULL:Ljava/lang/String;

    .line 62
    const-string v0, "[SCH10002]Router\u4e3a\u7a7a\u8bf7\u68c0\u67e5\u662f\u5426\u7a0b\u5e8f\u88ab\u6740\u6b7b\uff0c\u6216\u91ca\u653e\u4e86\u6211\u4eec\u6240\u6709\u7684\u5f15\u7528"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$CHECK;->ROUTERNULL:Ljava/lang/String;

    .line 63
    const-string v0, "\u60a8\u4f7f\u7528\u7684SDK\u7248\u672c\u4e3a\uff1a"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$CHECK;->SDKVERSION:Ljava/lang/String;

    .line 64
    const-string v0, "[SCH10003]\u8bf7\u914d\u7f6e\u60a8\u7684\u53cb\u76dfAppkey"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$CHECK;->APPKEY_NOT_FOUND:Ljava/lang/String;

    .line 65
    const-string v0, "[SCH10004]\u8be5\u5e73\u53f0\u4e0d\u652f\u6301\u67e5\u8be2\u5b89\u88c5"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$CHECK;->NO_SUPPORT_INSTALL:Ljava/lang/String;

    .line 66
    const-string v0, "[SCH10004]\u8be5\u5e73\u53f0\u4e0d\u652f\u6301\u67e5\u8be2sdk\u652f\u6301"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$CHECK;->NO_SUPPORT_SDKL:Ljava/lang/String;

    .line 67
    const-string v0, "[SCH10004]\u8be5\u5e73\u53f0\u4e0d\u652f\u6301\u67e5\u8be2\u662f\u5426\u6388\u6743"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$CHECK;->NO_SUPPORT_AUTH:Ljava/lang/String;

    .line 68
    const-string v0, "[SCH10005]\u76d1\u542c\u5668\u4e3a\u7a7a"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$CHECK;->LISTENRNULL:Ljava/lang/String;

    .line 69
    const-string v0, "[SCH10006]\u6ca1\u6709\u914d\u7f6e\u652f\u4ed8\u5b9d\u56de\u8c03activity\u6216\u914d\u7f6e\u4e0d\u6b63\u786e"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$CHECK;->ALIPAYERROR:Ljava/lang/String;

    .line 70
    const-string v0, "\u652f\u4ed8\u5b9d\u914d\u7f6e\u6b63\u786e"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$CHECK;->ALIPAYSUCCESS:Ljava/lang/String;

    .line 71
    const-string v0, "\u4f60\u7684\u521d\u59cb\u5316\u672a\u5b8c\u6210\uff0c\u8bf7\u5728Application\u7684onCreate\u4e2d\u8c03\u7528 UMConfigure.init(this,appkey,channel,UMConfigure.DEVICE_TYPE_PHONE,\"\");/"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$CHECK;->NOINT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkSuccess(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SC20008]\u60a8\u672c\u6b21\u6253\u5305\u7684\u7b7e\u540d:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\u5305\u540d:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getActivityResult(II)Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  resultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static noJar(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SC10006]\u60a8\u6ca1\u6709\u914d\u7f6e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u7684jar\u5305"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static noKey(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u60a8\u6ca1\u6709\u914d\u7f6e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u7684appkey,\u8bf7\u5728Application\u4e2d\u8c03\u7528PlatformConfig.setxxx\u8fdb\u884c\u914d\u7f6e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
