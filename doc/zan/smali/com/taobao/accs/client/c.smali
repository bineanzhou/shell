.class Lcom/taobao/accs/client/c;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/taobao/accs/client/GlobalClientInfo;


# direct methods
.method constructor <init>(Lcom/taobao/accs/client/GlobalClientInfo;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/taobao/accs/client/c;->a:Lcom/taobao/accs/client/GlobalClientInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/taobao/accs/client/GlobalClientInfo;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/antibrush/b;->a(Landroid/content/Context;)V

    .line 85
    sget-object v0, Lcom/taobao/accs/client/GlobalClientInfo;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/utl/UtilityImpl;->restoreCookie(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/client/GlobalClientInfo;->c:Ljava/lang/String;

    .line 89
    return-void
.end method
