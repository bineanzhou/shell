.class Lcom/taobao/accs/net/u;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lorg/android/spdy/AccsSSLCallback;


# instance fields
.field final synthetic a:Lcom/taobao/accs/net/r;


# direct methods
.method constructor <init>(Lcom/taobao/accs/net/r;)V
    .locals 0

    .prologue
    .line 671
    iput-object p1, p0, Lcom/taobao/accs/net/u;->a:Lcom/taobao/accs/net/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSSLPublicKey(I[B)[B
    .locals 3

    .prologue
    .line 674
    iget-object v0, p0, Lcom/taobao/accs/net/u;->a:Lcom/taobao/accs/net/r;

    iget-object v0, v0, Lcom/taobao/accs/net/r;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/taobao/accs/net/u;->a:Lcom/taobao/accs/net/r;

    iget-object v1, v1, Lcom/taobao/accs/net/r;->m:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/accs/net/u;->a:Lcom/taobao/accs/net/r;

    iget-object v2, v2, Lcom/taobao/accs/net/r;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2, p2}, Lcom/taobao/accs/utl/UtilityImpl;->staticBinarySafeDecryptNoB64(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method
