.class Lcom/umeng/message/UmengMessageCallbackHandlerService$3;
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
.field final synthetic a:Lcom/umeng/message/UmengMessageCallbackHandlerService;


# direct methods
.method constructor <init>(Lcom/umeng/message/UmengMessageCallbackHandlerService;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/umeng/message/UmengMessageCallbackHandlerService$3;->a:Lcom/umeng/message/UmengMessageCallbackHandlerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/umeng/message/UmengMessageCallbackHandlerService$3;->a:Lcom/umeng/message/UmengMessageCallbackHandlerService;

    invoke-static {v0}, Lcom/umeng/message/UmengMessageCallbackHandlerService;->a(Lcom/umeng/message/UmengMessageCallbackHandlerService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/PushAgent;->onAppStart()V

    .line 88
    return-void
.end method
