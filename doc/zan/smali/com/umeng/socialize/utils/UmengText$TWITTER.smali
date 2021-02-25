.class public Lcom/umeng/socialize/utils/UmengText$TWITTER;
.super Ljava/lang/Object;
.source "UmengText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/utils/UmengText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TWITTER"
.end annotation


# static fields
.field public static TWITTER_AUTH_FAIL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 200
    const-string v0, "\u4e3a\u4ec0\u4e48\u63d0\u793a\u6211\u4eec\u65e0\u6cd5\u9a8c\u8bc1\u60a8\u7684\u51ed\u636e\uff1f"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$TWITTER;->TWITTER_AUTH_FAIL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
