.class Lcom/umeng/message/UmengMessageCallbackHandlerService$1;
.super Ljava/lang/Object;
.source "UmengMessageCallbackHandlerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/message/UmengMessageCallbackHandlerService;->onHandleIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/umeng/message/UmengMessageCallbackHandlerService;


# direct methods
.method constructor <init>(Lcom/umeng/message/UmengMessageCallbackHandlerService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/umeng/message/UmengMessageCallbackHandlerService$1;->b:Lcom/umeng/message/UmengMessageCallbackHandlerService;

    iput-object p2, p0, Lcom/umeng/message/UmengMessageCallbackHandlerService$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/umeng/message/UmengMessageCallbackHandlerService$1;->b:Lcom/umeng/message/UmengMessageCallbackHandlerService;

    invoke-static {v0}, Lcom/umeng/message/UmengMessageCallbackHandlerService;->a(Lcom/umeng/message/UmengMessageCallbackHandlerService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/MessageSharedPrefs;->getDeviceToken()Ljava/lang/String;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/umeng/message/UmengMessageCallbackHandlerService$1;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/umeng/message/UmengMessageCallbackHandlerService$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/umeng/message/UmengMessageCallbackHandlerService$1;->b:Lcom/umeng/message/UmengMessageCallbackHandlerService;

    invoke-static {v0}, Lcom/umeng/message/UmengMessageCallbackHandlerService;->a(Lcom/umeng/message/UmengMessageCallbackHandlerService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/umeng/message/MessageSharedPrefs;->setHasResgister(Z)V

    .line 57
    iget-object v0, p0, Lcom/umeng/message/UmengMessageCallbackHandlerService$1;->b:Lcom/umeng/message/UmengMessageCallbackHandlerService;

    invoke-static {v0}, Lcom/umeng/message/UmengMessageCallbackHandlerService;->a(Lcom/umeng/message/UmengMessageCallbackHandlerService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/message/UmengMessageCallbackHandlerService$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/message/MessageSharedPrefs;->setDeviceToken(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/umeng/message/UmengMessageCallbackHandlerService$1;->b:Lcom/umeng/message/UmengMessageCallbackHandlerService;

    iget-object v1, p0, Lcom/umeng/message/UmengMessageCallbackHandlerService$1;->b:Lcom/umeng/message/UmengMessageCallbackHandlerService;

    invoke-static {v1}, Lcom/umeng/message/UmengMessageCallbackHandlerService;->a(Lcom/umeng/message/UmengMessageCallbackHandlerService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/message/UmengMessageCallbackHandlerService$1;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/umeng/message/UmengMessageCallbackHandlerService;->a(Lcom/umeng/message/UmengMessageCallbackHandlerService;Landroid/content/Context;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/umeng/message/UmengMessageCallbackHandlerService$1;->b:Lcom/umeng/message/UmengMessageCallbackHandlerService;

    invoke-static {v0}, Lcom/umeng/message/UmengMessageCallbackHandlerService;->a(Lcom/umeng/message/UmengMessageCallbackHandlerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/message/UmengMessageCallbackHandlerService$1;->b:Lcom/umeng/message/UmengMessageCallbackHandlerService;

    invoke-static {v1}, Lcom/umeng/message/UmengMessageCallbackHandlerService;->a(Lcom/umeng/message/UmengMessageCallbackHandlerService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v1, Lcom/umeng/message/provider/a;->e:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 64
    iget-object v0, p0, Lcom/umeng/message/UmengMessageCallbackHandlerService$1;->b:Lcom/umeng/message/UmengMessageCallbackHandlerService;

    invoke-static {v0}, Lcom/umeng/message/UmengMessageCallbackHandlerService;->a(Lcom/umeng/message/UmengMessageCallbackHandlerService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/MessageSharedPrefs;->resetTags()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
