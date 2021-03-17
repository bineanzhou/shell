.class Lcom/umeng/message/PushAgent$5;
.super Ljava/lang/Object;
.source "PushAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/message/PushAgent;->setMessageChannel(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/message/PushAgent;


# direct methods
.method constructor <init>(Lcom/umeng/message/PushAgent;)V
    .locals 0

    .prologue
    .line 613
    iput-object p1, p0, Lcom/umeng/message/PushAgent$5;->a:Lcom/umeng/message/PushAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/umeng/message/PushAgent$5;->a:Lcom/umeng/message/PushAgent;

    invoke-static {v0}, Lcom/umeng/message/PushAgent;->a(Lcom/umeng/message/PushAgent;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/message/UTrack;->getInstance(Landroid/content/Context;)Lcom/umeng/message/UTrack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/UTrack;->updateHeader()V

    .line 617
    return-void
.end method
