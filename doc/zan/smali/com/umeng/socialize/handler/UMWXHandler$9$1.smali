.class Lcom/umeng/socialize/handler/UMWXHandler$9$1;
.super Ljava/lang/Object;
.source "UMWXHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/handler/UMWXHandler$9;->onComplete(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILjava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/umeng/socialize/handler/UMWXHandler$9;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/handler/UMWXHandler$9;)V
    .locals 0

    .prologue
    .line 406
    iput-object p1, p0, Lcom/umeng/socialize/handler/UMWXHandler$9$1;->this$1:Lcom/umeng/socialize/handler/UMWXHandler$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMWXHandler$9$1;->this$1:Lcom/umeng/socialize/handler/UMWXHandler$9;

    iget-object v0, v0, Lcom/umeng/socialize/handler/UMWXHandler$9;->this$0:Lcom/umeng/socialize/handler/UMWXHandler;

    iget-object v1, p0, Lcom/umeng/socialize/handler/UMWXHandler$9$1;->this$1:Lcom/umeng/socialize/handler/UMWXHandler$9;

    iget-object v1, v1, Lcom/umeng/socialize/handler/UMWXHandler$9;->val$listener:Lcom/umeng/socialize/UMAuthListener;

    invoke-static {v0, v1}, Lcom/umeng/socialize/handler/UMWXHandler;->access$600(Lcom/umeng/socialize/handler/UMWXHandler;Lcom/umeng/socialize/UMAuthListener;)V

    .line 410
    return-void
.end method
