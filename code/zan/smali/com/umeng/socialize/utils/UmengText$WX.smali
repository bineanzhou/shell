.class public Lcom/umeng/socialize/utils/UmengText$WX;
.super Ljava/lang/Object;
.source "UmengText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/utils/UmengText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WX"
.end annotation


# static fields
.field public static WX_40125:Ljava/lang/String;

.field public static WX_CIRCLE_NOCONTENT:Ljava/lang/String;

.field public static WX_CIRCLE_NOT_SUPPORT_EMOJ:Ljava/lang/String;

.field public static WX_CIRCLE_NOT_SUPPORT_MIN:Ljava/lang/String;

.field public static WX_ERRORACTIVITY:Ljava/lang/String;

.field public static WX_ERRORMANIFEST:Ljava/lang/String;

.field public static WX_ERROR_SIGN:Ljava/lang/String;

.field public static WX_HIT_PUSH:Ljava/lang/String;

.field public static WX_NOACTIVITY:Ljava/lang/String;

.field public static WX_NOTHUMB_EMOJ:Ljava/lang/String;

.field public static WX_NO_CALLBACK:Ljava/lang/String;

.field public static WX_NO_LINK:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 224
    const-string v0, "\u4e3a\u4ec0\u4e48\u5fae\u4fe1\u6ca1\u6709\u56de\u8c03\uff1f"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$WX;->WX_NO_CALLBACK:Ljava/lang/String;

    .line 225
    const-string v0, "\u4e3a\u4ec0\u4e48\u5fae\u4fe1\u670b\u53cb\u5708\u94fe\u63a5\u4e0d\u663e\u793a\u63cf\u8ff0\u6587\u5b57\uff1f"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$WX;->WX_CIRCLE_NOCONTENT:Ljava/lang/String;

    .line 226
    const-string v0, "\u4e3a\u4ec0\u4e48\u5fae\u4fe1\u63d0\u793a40125/invalid APPsecret\uff1f"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$WX;->WX_40125:Ljava/lang/String;

    .line 227
    const-string v0, "\u4e3a\u4ec0\u4e48\u5fae\u4fe1\u5206\u4eab\u63d0\u793ahit push hold\uff1f"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$WX;->WX_HIT_PUSH:Ljava/lang/String;

    .line 228
    const-string v0, "\u4e3a\u4ec0\u4e48\u5fae\u4fe1\u767b\u9646\u63d0\u793a\u8be5\u94fe\u63a5\u65e0\u6cd5\u8bbf\u95ee\uff1f"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$WX;->WX_NO_LINK:Ljava/lang/String;

    .line 229
    const-string v0, "\u4e3a\u4ec0\u4e48\u5fae\u4fe1\u6388\u6743\u4e00\u76f4\u7b49\u5f85\u4e0d\u80fd\u6210\u529f\uff1f"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$WX;->WX_ERROR_SIGN:Ljava/lang/String;

    .line 230
    const-string v0, "\u5fae\u4fe1\u8868\u60c5\u5206\u4eab\u6ca1\u6709\u8bbe\u7f6e\u7f29\u7565\u56fe"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$WX;->WX_NOTHUMB_EMOJ:Ljava/lang/String;

    .line 232
    const-string v0, "\u5fae\u4fe1\u670b\u53cb\u5708\u4e0d\u652f\u6301\u8868\u60c5\u5206\u4eab..."

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$WX;->WX_CIRCLE_NOT_SUPPORT_EMOJ:Ljava/lang/String;

    .line 234
    const-string v0, "\u5fae\u4fe1\u670b\u53cb\u5708\u4e0d\u652f\u6301\u5c0f\u7a0b\u5e8f\u5206\u4eab..."

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$WX;->WX_CIRCLE_NOT_SUPPORT_MIN:Ljava/lang/String;

    .line 236
    const-string v0, "[SX10000]\u60a8\u6ca1\u6709\u914d\u7f6eWXEntryActivity\u6216\u6ca1\u6709\u914d\u7f6e\u4e0d\u6b63\u786e"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$WX;->WX_NOACTIVITY:Ljava/lang/String;

    .line 237
    const-string v0, "[SX10000]\u8bf7\u8ba9\u60a8\u7684WXEntryActivity\u7ee7\u627fcom.umeng.socialize.weixin.view.WXCallbackActivity"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$WX;->WX_ERRORACTIVITY:Ljava/lang/String;

    .line 238
    const-string v0, "[SX10000]\u8bf7\u5728AndroidManifest\u6587\u4ef6\u4e2d\u914d\u7f6eWXEntryActivity"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$WX;->WX_ERRORMANIFEST:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
