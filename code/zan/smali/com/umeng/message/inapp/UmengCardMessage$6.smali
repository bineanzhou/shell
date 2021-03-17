.class Lcom/umeng/message/inapp/UmengCardMessage$6;
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
    .line 349
    iput-object p1, p0, Lcom/umeng/message/inapp/UmengCardMessage$6;->a:Lcom/umeng/message/inapp/UmengCardMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengCardMessage$6;->a:Lcom/umeng/message/inapp/UmengCardMessage;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/umeng/message/inapp/UmengCardMessage;->b(Lcom/umeng/message/inapp/UmengCardMessage;Z)Z

    .line 353
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengCardMessage$6;->a:Lcom/umeng/message/inapp/UmengCardMessage;

    invoke-virtual {v0}, Lcom/umeng/message/inapp/UmengCardMessage;->dismiss()V

    .line 354
    return-void
.end method
