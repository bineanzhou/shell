.class Lcom/umeng/message/inapp/UmengCardMessage$3;
.super Ljava/lang/Object;
.source "UmengCardMessage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/message/inapp/UmengCardMessage;->a(Landroid/graphics/Rect;)Landroid/view/View;
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
    .line 302
    iput-object p1, p0, Lcom/umeng/message/inapp/UmengCardMessage$3;->a:Lcom/umeng/message/inapp/UmengCardMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 305
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengCardMessage$3;->a:Lcom/umeng/message/inapp/UmengCardMessage;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/umeng/message/inapp/UmengCardMessage;->a(Lcom/umeng/message/inapp/UmengCardMessage;Z)Z

    .line 306
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengCardMessage$3;->a:Lcom/umeng/message/inapp/UmengCardMessage;

    invoke-static {v0}, Lcom/umeng/message/inapp/UmengCardMessage;->c(Lcom/umeng/message/inapp/UmengCardMessage;)Lcom/umeng/message/inapp/d;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/message/inapp/UmengCardMessage$3;->a:Lcom/umeng/message/inapp/UmengCardMessage;

    invoke-static {v1}, Lcom/umeng/message/inapp/UmengCardMessage;->b(Lcom/umeng/message/inapp/UmengCardMessage;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/message/inapp/UmengCardMessage$3;->a:Lcom/umeng/message/inapp/UmengCardMessage;

    invoke-static {v2}, Lcom/umeng/message/inapp/UmengCardMessage;->a(Lcom/umeng/message/inapp/UmengCardMessage;)Lcom/umeng/message/entity/UInAppMessage;

    move-result-object v2

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v2, v3}, Lcom/umeng/message/inapp/d;->handleInAppMessage(Landroid/app/Activity;Lcom/umeng/message/entity/UInAppMessage;I)V

    .line 307
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengCardMessage$3;->a:Lcom/umeng/message/inapp/UmengCardMessage;

    invoke-virtual {v0}, Lcom/umeng/message/inapp/UmengCardMessage;->dismiss()V

    .line 308
    return-void
.end method
