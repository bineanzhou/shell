.class Lcom/umeng/socialize/handler/UMSSOHandler$1;
.super Ljava/lang/Object;
.source "UMSSOHandler.java"

# interfaces
.implements Lcom/umeng/socialize/UMShareListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/handler/UMSSOHandler;->getShareListener(Lcom/umeng/socialize/UMShareListener;)Lcom/umeng/socialize/UMShareListener;
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
    .line 224
    iput-object p1, p0, Lcom/umeng/socialize/handler/UMSSOHandler$1;->this$0:Lcom/umeng/socialize/handler/UMSSOHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 1

    .prologue
    .line 242
    sget-object v0, Lcom/umeng/socialize/utils/UmengText$CHECK;->LISTENRNULL:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->E(Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method public onError(Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 237
    sget-object v0, Lcom/umeng/socialize/utils/UmengText$CHECK;->LISTENRNULL:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->E(Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method public onResult(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 1

    .prologue
    .line 232
    sget-object v0, Lcom/umeng/socialize/utils/UmengText$CHECK;->LISTENRNULL:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->E(Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method public onStart(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 0

    .prologue
    .line 228
    return-void
.end method
