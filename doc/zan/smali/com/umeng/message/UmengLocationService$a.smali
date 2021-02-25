.class Lcom/umeng/message/UmengLocationService$a;
.super Landroid/os/Handler;
.source "UmengLocationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/message/UmengLocationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/app/Service;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/umeng/message/UmengLocationService$a;->a:Landroid/content/Context;

    .line 25
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 29
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 31
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 32
    return-void
.end method
