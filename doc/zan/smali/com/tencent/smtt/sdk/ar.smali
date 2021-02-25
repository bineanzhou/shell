.class Lcom/tencent/smtt/sdk/ar;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/smtt/sdk/TbsLogReport;


# direct methods
.method constructor <init>(Lcom/tencent/smtt/sdk/TbsLogReport;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/smtt/sdk/ar;->a:Lcom/tencent/smtt/sdk/TbsLogReport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ar;->a:Lcom/tencent/smtt/sdk/TbsLogReport;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->b()V

    return-void
.end method
