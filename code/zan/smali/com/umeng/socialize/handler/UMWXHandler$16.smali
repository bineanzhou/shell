.class Lcom/umeng/socialize/handler/UMWXHandler$16;
.super Ljava/lang/Object;
.source "UMWXHandler.java"

# interfaces
.implements Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/handler/UMWXHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/umeng/socialize/handler/UMWXHandler;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/handler/UMWXHandler;)V
    .locals 0

    .prologue
    .line 681
    iput-object p1, p0, Lcom/umeng/socialize/handler/UMWXHandler$16;->this$0:Lcom/umeng/socialize/handler/UMWXHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)V
    .locals 0

    .prologue
    .line 701
    return-void
.end method

.method public onResp(Lcom/tencent/mm/opensdk/modelbase/BaseResp;)V
    .locals 1

    .prologue
    .line 685
    invoke-virtual {p1}, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->getType()I

    move-result v0

    .line 686
    packed-switch v0, :pswitch_data_0

    .line 697
    :goto_0
    return-void

    .line 689
    :pswitch_0
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMWXHandler$16;->this$0:Lcom/umeng/socialize/handler/UMWXHandler;

    check-cast p1, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Resp;

    invoke-static {v0, p1}, Lcom/umeng/socialize/handler/UMWXHandler;->access$800(Lcom/umeng/socialize/handler/UMWXHandler;Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Resp;)V

    goto :goto_0

    .line 692
    :pswitch_1
    iget-object v0, p0, Lcom/umeng/socialize/handler/UMWXHandler$16;->this$0:Lcom/umeng/socialize/handler/UMWXHandler;

    check-cast p1, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Resp;

    invoke-virtual {v0, p1}, Lcom/umeng/socialize/handler/UMWXHandler;->onShareCallback(Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Resp;)V

    goto :goto_0

    .line 686
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
