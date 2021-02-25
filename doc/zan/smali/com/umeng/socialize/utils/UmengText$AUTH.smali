.class public Lcom/umeng/socialize/utils/UmengText$AUTH;
.super Ljava/lang/Object;
.source "UmengText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/utils/UmengText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AUTH"
.end annotation


# static fields
.field public static ALL_AUTH_EVERY:Ljava/lang/String;

.field public static ALL_AUTH_TWICE:Ljava/lang/String;

.field public static AUTH_DENIED:Ljava/lang/String;

.field public static DATA_EMPTY:Ljava/lang/String;

.field public static GET_FAIL_BY_EMPTY:Ljava/lang/String;

.field public static NOT_SUPPORT_PLATFROM:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 109
    const-string v0, "\u6211\u60f3\u6bcf\u6b21\u83b7\u53d6\u7528\u6237\u8d44\u6599\u90fd\u6388\u6743\u600e\u4e48\u529e\uff1f"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$AUTH;->ALL_AUTH_EVERY:Ljava/lang/String;

    .line 110
    const-string v0, "\u4e3a\u4ec0\u4e48\u6211\u6bcf\u6b21\u83b7\u53d6\u7528\u6237\u8d44\u6599\u90fd\u8df3\u8f6c\u4e24\u6b21\u6388\u6743\u754c\u9762\uff1f"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$AUTH;->ALL_AUTH_TWICE:Ljava/lang/String;

    .line 111
    const-string v0, "[SA10000]\u5e73\u53f0\u4e0d\u652f\u6301\u6388\u6743,\u65e0\u6cd5\u5b8c\u6210\u64cd\u4f5c"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$AUTH;->NOT_SUPPORT_PLATFROM:Ljava/lang/String;

    .line 112
    const-string v0, "[SA10001]\u6743\u9650\u9a8c\u8bc1\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u4f60\u7684\u7b7e\u540d\u4ee5\u53ca\u8be5\u5e73\u53f0Appkey\u6743\u9650."

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$AUTH;->AUTH_DENIED:Ljava/lang/String;

    .line 114
    const-string v0, "[SA10002]\u83b7\u53d6\u7528\u6237\u8d44\u6599\u4e3a\u7a7a\uff0cuid\u4e3a\u7a7a\u6216token\u4e3a\u7a7a"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$AUTH;->GET_FAIL_BY_EMPTY:Ljava/lang/String;

    .line 115
    const-string v0, "[SA10003]\u8fd4\u56de\u6570\u636e\u4e3a\u7a7a"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$AUTH;->DATA_EMPTY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
