.class public Lcom/umeng/socialize/utils/UmengText$FACEBOOK;
.super Ljava/lang/Object;
.source "UmengText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/utils/UmengText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FACEBOOK"
.end annotation


# static fields
.field public static ERRORMETA:Ljava/lang/String;

.field public static FACEBOOK_AUTH_FAIL:Ljava/lang/String;

.field public static FACEBOOK_CANCEL_SUCCESS:Ljava/lang/String;

.field public static FACEBOOK_GRAY:Ljava/lang/String;

.field public static FACEBOOK_NET_SUPPORT:Ljava/lang/String;

.field public static NOFACEBOOKACTIVITY:Ljava/lang/String;

.field public static NOFACEBOOKCONTENTPROVIDER:Ljava/lang/String;

.field public static NOMETA:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 189
    const-string v0, "\u4e3a\u4ec0\u4e48\u53d1\u5e03\u6309\u94ae\u4e3a\u7070\u8272\uff1f"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$FACEBOOK;->FACEBOOK_GRAY:Ljava/lang/String;

    .line 190
    const-string v0, "\u4e3a\u4ec0\u4e48facebook\u5206\u4eab\u53d6\u6d88\u5374\u56de\u8c03\u6210\u529f\uff1f"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$FACEBOOK;->FACEBOOK_CANCEL_SUCCESS:Ljava/lang/String;

    .line 191
    const-string v0, "\u4e3a\u4ec0\u4e48facebook\u5206\u4eab\u5931\u8d25\uff1f"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$FACEBOOK;->FACEBOOK_AUTH_FAIL:Ljava/lang/String;

    .line 192
    const-string v0, "facebook\u7f51\u9875\u94fe\u63a5\uff0c\u7f29\u7565\u56fe\u5fc5\u987b\u4e3a\u7f51\u7edc\u56fe\u7247"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$FACEBOOK;->FACEBOOK_NET_SUPPORT:Ljava/lang/String;

    .line 193
    const-string v0, "[SF10000]\u60a8\u6ca1\u6709\u5728AndroidManifest.xml\u4e2d\u914d\u7f6ecom.umeng.facebook.FacebookActivity"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$FACEBOOK;->NOFACEBOOKACTIVITY:Ljava/lang/String;

    .line 194
    const-string v0, "[SF10000]\u60a8\u6ca1\u6709\u5728AndroidManifest.xml\u4e2d\u914d\u7f6ecom.umeng.facebook.FacebookContentProvider"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$FACEBOOK;->NOFACEBOOKCONTENTPROVIDER:Ljava/lang/String;

    .line 195
    const-string v0, "[SF10000]\u60a8\u6ca1\u6709\u5728AndroidManifest\u4e2d\u914d\u7f6efacebook\u7684appid"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$FACEBOOK;->NOMETA:Ljava/lang/String;

    .line 196
    const-string v0, "[SF10000]\u6ca1\u6709\u627e\u5230facebook_app_id\uff0cfacebook\u7684id\u5fc5\u987b\u5199\u5728string\u6587\u4ef6\u4e2d\u4e14\u540d\u5b57\u5fc5\u987b\u7528facebook_app_id"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$FACEBOOK;->ERRORMETA:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
