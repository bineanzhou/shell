.class Lcom/taobao/accs/init/c;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/taobao/accs/init/Launcher_InitAccs;


# direct methods
.method constructor <init>(Lcom/taobao/accs/init/Launcher_InitAccs;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/taobao/accs/init/c;->a:Lcom/taobao/accs/init/Launcher_InitAccs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 96
    sget-object v0, Lcom/taobao/accs/init/Launcher_InitAccs;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/taobao/accs/init/Launcher_InitAccs;->mAppkey:Ljava/lang/String;

    sget-object v2, Lcom/taobao/accs/init/Launcher_InitAccs;->mTtid:Ljava/lang/String;

    sget-object v3, Lcom/taobao/accs/init/Launcher_InitAccs;->mAppReceiver:Lcom/taobao/accs/IAppReceiver;

    invoke-static {v0, v1, v2, v3}, Lcom/taobao/accs/ACCSManager;->bindApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/IAppReceiver;)V

    .line 98
    const/4 v0, 0x1

    sput-boolean v0, Lcom/taobao/accs/init/Launcher_InitAccs;->mIsInited:Z

    .line 99
    return-void
.end method
