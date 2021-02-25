.class public Lcom/taobao/agoo/BaseNotifyClickActivity;
.super Landroid/app/Activity;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/agoo/BaseNotifyClickActivity$INotifyListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "accs.BaseNotifyClickActivity"

.field private static final TAOBAO_PACKAGE_NAME:Ljava/lang/String; = "com.taobao.taobao"

.field private static notifyListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/taobao/agoo/BaseNotifyClickActivity$INotifyListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private agooFactory:Lorg/android/agoo/control/AgooFactory;

.field private msgSource:Ljava/lang/String;

.field private notifyManager:Lorg/android/agoo/control/NotifManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/taobao/agoo/BaseNotifyClickActivity;Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/taobao/agoo/BaseNotifyClickActivity;->parseMsgByThirdPush(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/taobao/agoo/BaseNotifyClickActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/taobao/agoo/BaseNotifyClickActivity;->msgSource:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/taobao/agoo/BaseNotifyClickActivity;)Lorg/android/agoo/control/NotifManager;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/taobao/agoo/BaseNotifyClickActivity;->notifyManager:Lorg/android/agoo/control/NotifManager;

    return-object v0
.end method

.method static synthetic access$202(Lcom/taobao/agoo/BaseNotifyClickActivity;Lorg/android/agoo/control/NotifManager;)Lorg/android/agoo/control/NotifManager;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/taobao/agoo/BaseNotifyClickActivity;->notifyManager:Lorg/android/agoo/control/NotifManager;

    return-object p1
.end method

.method static synthetic access$300(Lcom/taobao/agoo/BaseNotifyClickActivity;)Lorg/android/agoo/control/AgooFactory;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/taobao/agoo/BaseNotifyClickActivity;->agooFactory:Lorg/android/agoo/control/AgooFactory;

    return-object v0
.end method

.method static synthetic access$302(Lcom/taobao/agoo/BaseNotifyClickActivity;Lorg/android/agoo/control/AgooFactory;)Lorg/android/agoo/control/AgooFactory;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/taobao/agoo/BaseNotifyClickActivity;->agooFactory:Lorg/android/agoo/control/AgooFactory;

    return-object p1
.end method

.method static synthetic access$400(Lcom/taobao/agoo/BaseNotifyClickActivity;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/taobao/agoo/BaseNotifyClickActivity;->reportClickNotifyMsg(Landroid/content/Intent;)V

    return-void
.end method

.method public static addNotifyListener(Lcom/taobao/agoo/BaseNotifyClickActivity$INotifyListener;)V
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/taobao/agoo/BaseNotifyClickActivity;->notifyListeners:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/taobao/agoo/BaseNotifyClickActivity;->notifyListeners:Ljava/util/Set;

    .line 45
    :cond_0
    sget-object v0, Lcom/taobao/agoo/BaseNotifyClickActivity;->notifyListeners:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method

.method private buildMessage(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/taobao/agoo/a;

    invoke-direct {v0, p0, p1}, Lcom/taobao/agoo/a;-><init>(Lcom/taobao/agoo/BaseNotifyClickActivity;Landroid/content/Intent;)V

    invoke-static {v0}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->execute(Ljava/lang/Runnable;)V

    .line 123
    return-void
.end method

.method private parseMsgByThirdPush(Landroid/content/Intent;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    .line 126
    const/4 v0, 0x0

    .line 127
    sget-object v1, Lcom/taobao/agoo/BaseNotifyClickActivity;->notifyListeners:Ljava/util/Set;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/taobao/agoo/BaseNotifyClickActivity;->notifyListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 128
    sget-object v1, Lcom/taobao/agoo/BaseNotifyClickActivity;->notifyListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/agoo/BaseNotifyClickActivity$INotifyListener;

    .line 129
    invoke-interface {v0, p1}, Lcom/taobao/agoo/BaseNotifyClickActivity$INotifyListener;->parseMsgFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 131
    invoke-interface {v0}, Lcom/taobao/agoo/BaseNotifyClickActivity$INotifyListener;->getMsgSource()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/agoo/BaseNotifyClickActivity;->msgSource:Ljava/lang/String;

    .line 164
    :goto_1
    const-string v0, "accs.BaseNotifyClickActivity"

    const-string v2, "parseMsgByThirdPush"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "result"

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v4, 0x2

    const-string v5, "msgSource"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/taobao/agoo/BaseNotifyClickActivity;->msgSource:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    return-object v1

    :cond_0
    move-object v0, v1

    .line 134
    goto :goto_0

    .line 136
    :cond_1
    const-string v0, "accs.BaseNotifyClickActivity"

    const-string v1, "no impl, try use default impl to parse intent!"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    new-instance v0, Lcom/taobao/agoo/b;

    invoke-direct {v0}, Lcom/taobao/agoo/b;-><init>()V

    .line 138
    invoke-interface {v0, p1}, Lcom/taobao/agoo/BaseNotifyClickActivity$INotifyListener;->parseMsgFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 141
    new-instance v0, Lcom/taobao/agoo/e;

    invoke-direct {v0}, Lcom/taobao/agoo/e;-><init>()V

    .line 142
    invoke-interface {v0, p1}, Lcom/taobao/agoo/BaseNotifyClickActivity$INotifyListener;->parseMsgFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 145
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 146
    new-instance v0, Lcom/taobao/agoo/d;

    invoke-direct {v0}, Lcom/taobao/agoo/d;-><init>()V

    .line 147
    invoke-interface {v0, p1}, Lcom/taobao/agoo/BaseNotifyClickActivity$INotifyListener;->parseMsgFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 150
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 151
    new-instance v0, Lcom/taobao/agoo/c;

    invoke-direct {v0}, Lcom/taobao/agoo/c;-><init>()V

    .line 152
    invoke-interface {v0, p1}, Lcom/taobao/agoo/BaseNotifyClickActivity$INotifyListener;->parseMsgFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 155
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 156
    const-string v0, "accs"

    const-string v2, "error"

    const-string v3, "parse 3push error"

    invoke-static {v0, v2, v3, v6, v7}, Lcom/taobao/accs/utl/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    goto :goto_1

    .line 158
    :cond_5
    invoke-interface {v0}, Lcom/taobao/agoo/BaseNotifyClickActivity$INotifyListener;->getMsgSource()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/agoo/BaseNotifyClickActivity;->msgSource:Ljava/lang/String;

    .line 159
    const-string v0, "accs"

    const-string v2, "error"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parse 3push default "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/taobao/agoo/BaseNotifyClickActivity;->msgSource:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3, v6, v7}, Lcom/taobao/accs/utl/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    goto/16 :goto_1

    :cond_6
    move-object v1, v0

    goto/16 :goto_1
.end method

.method private reportClickNotifyMsg(Landroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 172
    :try_start_0
    const-string v0, "id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    const-string v1, "message_source"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 174
    const-string v2, "report"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 175
    const-string v3, "extData"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 177
    new-instance v4, Lorg/android/agoo/common/MsgDO;

    invoke-direct {v4}, Lorg/android/agoo/common/MsgDO;-><init>()V

    .line 178
    iput-object v0, v4, Lorg/android/agoo/common/MsgDO;->msgIds:Ljava/lang/String;

    .line 179
    iput-object v3, v4, Lorg/android/agoo/common/MsgDO;->extData:Ljava/lang/String;

    .line 180
    iput-object v1, v4, Lorg/android/agoo/common/MsgDO;->messageSource:Ljava/lang/String;

    .line 181
    iput-object v2, v4, Lorg/android/agoo/common/MsgDO;->reportStr:Ljava/lang/String;

    .line 183
    const-string v3, "8"

    iput-object v3, v4, Lorg/android/agoo/common/MsgDO;->msgStatus:Ljava/lang/String;

    .line 184
    const-string v3, "accs.BaseNotifyClickActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reportClickNotifyMsg messageId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " source:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reportStr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v4, Lorg/android/agoo/common/MsgDO;->msgStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    iget-object v0, p0, Lcom/taobao/agoo/BaseNotifyClickActivity;->notifyManager:Lorg/android/agoo/control/NotifManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1}, Lorg/android/agoo/control/NotifManager;->report(Lorg/android/agoo/common/MsgDO;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 187
    const-string v1, "accs.BaseNotifyClickActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportClickNotifyMsg exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const-string v0, "accs.BaseNotifyClickActivity"

    const-string v1, "onCreate"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    invoke-virtual {p0}, Lcom/taobao/agoo/BaseNotifyClickActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taobao/agoo/BaseNotifyClickActivity;->buildMessage(Landroid/content/Intent;)V

    .line 53
    return-void
.end method

.method public onMessage(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 70
    const-string v0, "accs.BaseNotifyClickActivity"

    const-string v1, "onNewIntent"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    invoke-direct {p0, p1}, Lcom/taobao/agoo/BaseNotifyClickActivity;->buildMessage(Landroid/content/Intent;)V

    .line 72
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 58
    return-void
.end method
