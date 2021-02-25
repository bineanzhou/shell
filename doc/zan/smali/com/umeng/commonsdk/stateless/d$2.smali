.class Lcom/umeng/commonsdk/stateless/d$2;
.super Landroid/os/Handler;
.source "UMSLNetWorkSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/commonsdk/stateless/d;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/commonsdk/stateless/d;


# direct methods
.method constructor <init>(Lcom/umeng/commonsdk/stateless/d;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/umeng/commonsdk/stateless/d$2;->a:Lcom/umeng/commonsdk/stateless/d;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 92
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 105
    :goto_0
    return-void

    .line 94
    :sswitch_0
    invoke-static {}, Lcom/umeng/commonsdk/stateless/d;->c()V

    goto :goto_0

    .line 98
    :sswitch_1
    invoke-static {}, Lcom/umeng/commonsdk/stateless/d;->d()V

    goto :goto_0

    .line 92
    :sswitch_data_0
    .sparse-switch
        0x111 -> :sswitch_0
        0x200 -> :sswitch_1
    .end sparse-switch
.end method
