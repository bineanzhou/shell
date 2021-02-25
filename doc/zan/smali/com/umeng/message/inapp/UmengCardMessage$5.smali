.class Lcom/umeng/message/inapp/UmengCardMessage$5;
.super Ljava/lang/Object;
.source "UmengCardMessage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/message/inapp/UmengCardMessage;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/message/inapp/UmengCardMessage;


# direct methods
.method constructor <init>(Lcom/umeng/message/inapp/UmengCardMessage;)V
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lcom/umeng/message/inapp/UmengCardMessage$5;->a:Lcom/umeng/message/inapp/UmengCardMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 340
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengCardMessage$5;->a:Lcom/umeng/message/inapp/UmengCardMessage;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/umeng/message/inapp/UmengCardMessage;->c(Lcom/umeng/message/inapp/UmengCardMessage;Z)Z

    .line 341
    const-string v0, "none"

    iget-object v1, p0, Lcom/umeng/message/inapp/UmengCardMessage$5;->a:Lcom/umeng/message/inapp/UmengCardMessage;

    invoke-static {v1}, Lcom/umeng/message/inapp/UmengCardMessage;->a(Lcom/umeng/message/inapp/UmengCardMessage;)Lcom/umeng/message/entity/UInAppMessage;

    move-result-object v1

    iget-object v1, v1, Lcom/umeng/message/entity/UInAppMessage;->action_type:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    :goto_0
    return-void

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengCardMessage$5;->a:Lcom/umeng/message/inapp/UmengCardMessage;

    invoke-static {v0}, Lcom/umeng/message/inapp/UmengCardMessage;->c(Lcom/umeng/message/inapp/UmengCardMessage;)Lcom/umeng/message/inapp/d;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/message/inapp/UmengCardMessage$5;->a:Lcom/umeng/message/inapp/UmengCardMessage;

    invoke-static {v1}, Lcom/umeng/message/inapp/UmengCardMessage;->b(Lcom/umeng/message/inapp/UmengCardMessage;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/message/inapp/UmengCardMessage$5;->a:Lcom/umeng/message/inapp/UmengCardMessage;

    invoke-static {v2}, Lcom/umeng/message/inapp/UmengCardMessage;->a(Lcom/umeng/message/inapp/UmengCardMessage;)Lcom/umeng/message/entity/UInAppMessage;

    move-result-object v2

    const/16 v3, 0x13

    invoke-virtual {v0, v1, v2, v3}, Lcom/umeng/message/inapp/d;->handleInAppMessage(Landroid/app/Activity;Lcom/umeng/message/entity/UInAppMessage;I)V

    .line 345
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengCardMessage$5;->a:Lcom/umeng/message/inapp/UmengCardMessage;

    invoke-virtual {v0}, Lcom/umeng/message/inapp/UmengCardMessage;->dismiss()V

    goto :goto_0
.end method
