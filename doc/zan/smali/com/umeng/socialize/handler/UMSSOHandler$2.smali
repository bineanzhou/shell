.class Lcom/umeng/socialize/handler/UMSSOHandler$2;
.super Ljava/lang/Object;
.source "UMSSOHandler.java"

# interfaces
.implements Lcom/umeng/socialize/UMAuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/handler/UMSSOHandler;->getAuthListener(Lcom/umeng/socialize/UMAuthListener;)Lcom/umeng/socialize/UMAuthListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/umeng/socialize/handler/UMSSOHandler;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/handler/UMSSOHandler;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/umeng/socialize/handler/UMSSOHandler$2;->this$0:Lcom/umeng/socialize/handler/UMSSOHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/umeng/socialize/bean/SHARE_MEDIA;I)V
    .locals 1

    .prologue
    .line 269
    sget-object v0, Lcom/umeng/socialize/utils/UmengText$CHECK;->LISTENRNULL:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->E(Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method public onComplete(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/umeng/socialize/bean/SHARE_MEDIA;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 259
    sget-object v0, Lcom/umeng/socialize/utils/UmengText$CHECK;->LISTENRNULL:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->E(Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method public onError(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILjava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 264
    sget-object v0, Lcom/umeng/socialize/utils/UmengText$CHECK;->LISTENRNULL:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->E(Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method public onStart(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 0

    .prologue
    .line 255
    return-void
.end method
