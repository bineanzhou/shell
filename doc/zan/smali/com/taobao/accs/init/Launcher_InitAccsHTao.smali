.class public Lcom/taobao/accs/init/Launcher_InitAccsHTao;
.super Lcom/taobao/accs/init/Launcher_InitAccs;
.source "Taobao"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/taobao/accs/init/Launcher_InitAccs;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Landroid/app/Application;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    const-string v0, ""

    sput-object v0, Lcom/taobao/accs/init/Launcher_InitAccsHTao;->defaultAppkey:Ljava/lang/String;

    .line 17
    invoke-super {p0, p1, p2}, Lcom/taobao/accs/init/Launcher_InitAccs;->init(Landroid/app/Application;Ljava/util/HashMap;)V

    .line 18
    const-string v0, "com.taobao.taobao.TaobaoIntentService"

    sput-object v0, Lcom/taobao/accs/client/a;->b:Ljava/lang/String;

    .line 19
    return-void
.end method
