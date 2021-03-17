.class Lcom/umeng/message/inapp/UmengCardMessage$2;
.super Ljava/lang/Object;
.source "UmengCardMessage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/message/inapp/UmengCardMessage;->a()Landroid/view/View;
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
    .line 204
    iput-object p1, p0, Lcom/umeng/message/inapp/UmengCardMessage$2;->a:Lcom/umeng/message/inapp/UmengCardMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengCardMessage$2;->a:Lcom/umeng/message/inapp/UmengCardMessage;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/umeng/message/inapp/UmengCardMessage;->b(Lcom/umeng/message/inapp/UmengCardMessage;Z)Z

    .line 208
    iget-object v0, p0, Lcom/umeng/message/inapp/UmengCardMessage$2;->a:Lcom/umeng/message/inapp/UmengCardMessage;

    invoke-virtual {v0}, Lcom/umeng/message/inapp/UmengCardMessage;->dismiss()V

    .line 209
    return-void
.end method
