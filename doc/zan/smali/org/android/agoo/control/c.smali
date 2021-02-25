.class Lorg/android/agoo/control/c;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/android/agoo/control/AgooFactory;


# direct methods
.method constructor <init>(Lorg/android/agoo/control/AgooFactory;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lorg/android/agoo/control/c;->a:Lorg/android/agoo/control/AgooFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 346
    iget-object v0, p0, Lorg/android/agoo/control/c;->a:Lorg/android/agoo/control/AgooFactory;

    invoke-static {v0}, Lorg/android/agoo/control/AgooFactory;->access$100(Lorg/android/agoo/control/AgooFactory;)Lorg/android/agoo/message/MessageService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/android/agoo/message/MessageService;->b()Ljava/util/ArrayList;

    move-result-object v0

    .line 347
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 348
    const-string v1, "AgooFactory"

    const-string v2, "reportCacheMsg"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "size"

    aput-object v5, v3, v4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 349
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/android/agoo/common/MsgDO;

    .line 350
    if-eqz v0, :cond_0

    .line 351
    iput-boolean v6, v0, Lorg/android/agoo/common/MsgDO;->isFromCache:Z

    .line 352
    iget-object v2, p0, Lorg/android/agoo/control/c;->a:Lorg/android/agoo/control/AgooFactory;

    iget-object v2, v2, Lorg/android/agoo/control/AgooFactory;->notifyManager:Lorg/android/agoo/control/NotifManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lorg/android/agoo/control/NotifManager;->report(Lorg/android/agoo/common/MsgDO;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V

    goto :goto_0

    .line 357
    :cond_1
    return-void
.end method
