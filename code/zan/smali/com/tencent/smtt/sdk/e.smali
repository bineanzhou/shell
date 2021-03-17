.class Lcom/tencent/smtt/sdk/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/tencent/smtt/sdk/d;


# direct methods
.method constructor <init>(Lcom/tencent/smtt/sdk/d;Z)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/smtt/sdk/e;->b:Lcom/tencent/smtt/sdk/d;

    iput-boolean p2, p0, Lcom/tencent/smtt/sdk/e;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/e;->b:Lcom/tencent/smtt/sdk/d;

    iget-object v0, v0, Lcom/tencent/smtt/sdk/d;->c:Lcom/tencent/smtt/sdk/ValueCallback;

    iget-boolean v1, p0, Lcom/tencent/smtt/sdk/e;->a:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/smtt/sdk/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    return-void
.end method
