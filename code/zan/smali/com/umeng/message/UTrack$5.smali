.class Lcom/umeng/message/UTrack$5;
.super Ljava/lang/Object;
.source "UTrack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/message/UTrack;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/umeng/message/UTrack;


# direct methods
.method constructor <init>(Lcom/umeng/message/UTrack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/umeng/message/UTrack$5;->d:Lcom/umeng/message/UTrack;

    iput-object p2, p0, Lcom/umeng/message/UTrack$5;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/umeng/message/UTrack$5;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/umeng/message/UTrack$5;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 265
    iget-object v0, p0, Lcom/umeng/message/UTrack$5;->d:Lcom/umeng/message/UTrack;

    iget-object v1, p0, Lcom/umeng/message/UTrack$5;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/umeng/message/UTrack$5;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/umeng/message/UTrack$5;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/umeng/message/UTrack;->sendMsgLogForAgoo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    return-void
.end method
