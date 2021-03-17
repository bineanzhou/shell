.class public Lcom/taobao/accs/utl/d;
.super Lcom/taobao/accs/utl/j;
.source "Taobao"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/taobao/accs/utl/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 10
    invoke-static {}, Lcom/taobao/accs/utl/UtilityImpl;->getEmuiVersion()Ljava/lang/String;

    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/taobao/accs/utl/d;->a:Lcom/taobao/accs/utl/j;

    if-eqz v1, :cond_0

    .line 12
    iget-object v0, p0, Lcom/taobao/accs/utl/d;->a:Lcom/taobao/accs/utl/j;

    invoke-virtual {v0}, Lcom/taobao/accs/utl/j;->a()Ljava/lang/String;

    move-result-object v0

    .line 14
    :cond_0
    return-object v0
.end method
