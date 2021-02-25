.class Lcom/tencent/smtt/sdk/aw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tbs/video/interfaces/IUserStateChangedListener;


# instance fields
.field final synthetic a:Lcom/tencent/smtt/sdk/av;


# direct methods
.method constructor <init>(Lcom/tencent/smtt/sdk/av;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/smtt/sdk/aw;->a:Lcom/tencent/smtt/sdk/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserStateChanged()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/smtt/sdk/aw;->a:Lcom/tencent/smtt/sdk/av;

    iget-object v0, v0, Lcom/tencent/smtt/sdk/av;->a:Lcom/tencent/smtt/sdk/ax;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/ax;->c()V

    return-void
.end method
