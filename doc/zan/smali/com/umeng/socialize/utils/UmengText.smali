.class public Lcom/umeng/socialize/utils/UmengText;
.super Ljava/lang/Object;
.source "UmengText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/utils/UmengText$INTER;,
        Lcom/umeng/socialize/utils/UmengText$SHAREBOARD;,
        Lcom/umeng/socialize/utils/UmengText$CACHE;,
        Lcom/umeng/socialize/utils/UmengText$WX;,
        Lcom/umeng/socialize/utils/UmengText$SINA;,
        Lcom/umeng/socialize/utils/UmengText$TWITTER;,
        Lcom/umeng/socialize/utils/UmengText$FACEBOOK;,
        Lcom/umeng/socialize/utils/UmengText$QQ;,
        Lcom/umeng/socialize/utils/UmengText$DROPBOX;,
        Lcom/umeng/socialize/utils/UmengText$SHARE;,
        Lcom/umeng/socialize/utils/UmengText$AUTH;,
        Lcom/umeng/socialize/utils/UmengText$NET;,
        Lcom/umeng/socialize/utils/UmengText$CHECK;,
        Lcom/umeng/socialize/utils/UmengText$IMAGE;
    }
.end annotation


# static fields
.field public static FULL:Ljava/lang/String;

.field public static MAN:Ljava/lang/String;

.field public static SIMPLE:Ljava/lang/String;

.field public static SOLVE:Ljava/lang/String;

.field public static WOMAN:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "\u5b8c\u6574\u7248"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText;->FULL:Ljava/lang/String;

    .line 27
    const-string v0, "\u7cbe\u7b80\u7248"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText;->SIMPLE:Ljava/lang/String;

    .line 31
    const-string v0, "\u7537"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText;->MAN:Ljava/lang/String;

    .line 32
    const-string v0, "\u5973"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText;->WOMAN:Ljava/lang/String;

    .line 39
    const-string v0, "\u89e3\u51b3\u65b9\u6848--"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText;->SOLVE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static errorWithUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\u89e3\u51b3\u65b9\u6848\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static netMethodError(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u9a8c\u8bc1\u8bf7\u6c42\u65b9\u5f0f\u5931\u8d25["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static resError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7f3a\u5c11\u8d44\u6e90\u6587\u4ef6:packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u8bf7\u53bbsdk\u4e0b\u8f7d\u5305\u4e2d\u62f7\u8d1d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static supportStyle(ZLjava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 312
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "\u8be5\u5e73\u53f0"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 313
    if-eqz p0, :cond_7

    const-string v0, "\u53ea"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u652f\u6301"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    const-string v0, "image"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    const-string v0, "\u56fe\u7247"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    :cond_0
    const-string v0, "netimg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    const-string v0, "\u7f51\u7edc\u56fe\u7247"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    :cond_1
    const-string v0, "localimg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 321
    const-string v0, "\u672c\u5730\u56fe\u7247"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    :cond_2
    const-string v0, "url"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 324
    const-string v0, "\u94fe\u63a5"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    :cond_3
    const-string v0, "video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 327
    const-string v0, "\u89c6\u9891"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    :cond_4
    const-string v0, "timg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 330
    const-string v0, "\u56fe\u6587"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    :cond_5
    const-string v0, "text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 333
    const-string v0, "\u7eaf\u6587\u672c"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    :cond_6
    const-string v0, "\u5206\u4eab"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 313
    :cond_7
    const-string v0, "\u4e0d"

    goto :goto_0
.end method

.method public static tencentEmpty(Z)Ljava/lang/String;
    .locals 3

    .prologue
    .line 338
    if-eqz p0, :cond_0

    sget-object v0, Lcom/umeng/socialize/utils/UmengText;->SIMPLE:Ljava/lang/String;

    .line 339
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u60a8\u4f7f\u7528\u7684\u662f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u4f46\u662f\u4f60\u7684AndroidManifest\u914d\u7f6e\u4e0d\u6b63\u786e\uff0c\u6216\u8005\u914d\u7f6e\u7684\u4e0d\u662f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u7684\u8def\u5f84\uff0c\u8bf7\u53c2\u7167\u7ebf\u4e0a\u62a5\u9519\u5fc5\u770b\u6587\u6863"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 338
    :cond_0
    sget-object v0, Lcom/umeng/socialize/utils/UmengText;->FULL:Ljava/lang/String;

    goto :goto_0
.end method

.method public static urlEmpty(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u9519\u8bef:\u8bbe\u7f6e\u89c6\u9891"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 343
    if-nez p0, :cond_0

    .line 344
    const-string v1, "\u89c6\u9891"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    :cond_0
    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    .line 347
    const-string v1, "\u97f3\u4e50"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    :cond_1
    const/4 v1, 0x2

    if-ne p0, v1, :cond_2

    .line 350
    const-string v1, "\u7f51\u9875"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    :cond_2
    const-string v1, "\u5206\u4eab\u7c7b\u578b\uff0c\u94fe\u63a5\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
