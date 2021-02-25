.class Lcom/umeng/message/PushAgent$2$1;
.super Lcom/taobao/agoo/IRegister;
.source "PushAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/message/PushAgent$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/message/PushAgent$2;


# direct methods
.method constructor <init>(Lcom/umeng/message/PushAgent$2;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/umeng/message/PushAgent$2$1;->a:Lcom/umeng/message/PushAgent$2;

    invoke-direct {p0}, Lcom/taobao/agoo/IRegister;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 174
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    invoke-static {}, Lcom/umeng/message/PushAgent;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6ce8\u518c\u5931\u8d25-->s:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",s1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v5, v2}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/umeng/message/PushAgent$2$1;->a:Lcom/umeng/message/PushAgent$2;

    iget-object v0, v0, Lcom/umeng/message/PushAgent$2;->a:Lcom/umeng/message/PushAgent;

    invoke-static {v0, p1, p2}, Lcom/umeng/message/PushAgent;->a(Lcom/umeng/message/PushAgent;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    const-string v1, "P_10000"

    const-string v2, "\\|"

    invoke-interface {v0, v1, v5, v2}, Lcom/umeng/commonsdk/debug/UMDebugLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 178
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 167
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    invoke-static {}, Lcom/umeng/message/PushAgent;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u6ce8\u518c\u6210\u529f:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/umeng/message/PushAgent$2$1;->a:Lcom/umeng/message/PushAgent$2;

    iget-object v0, v0, Lcom/umeng/message/PushAgent$2;->a:Lcom/umeng/message/PushAgent;

    invoke-static {v0, p1}, Lcom/umeng/message/PushAgent;->a(Lcom/umeng/message/PushAgent;Ljava/lang/String;)V

    .line 170
    return-void
.end method
