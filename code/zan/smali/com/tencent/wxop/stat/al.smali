.class final Lcom/tencent/wxop/stat/al;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/wxop/stat/StatAccount;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;


# direct methods
.method constructor <init>(Lcom/tencent/wxop/stat/StatAccount;Landroid/content/Context;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/wxop/stat/al;->a:Lcom/tencent/wxop/stat/StatAccount;

    iput-object p2, p0, Lcom/tencent/wxop/stat/al;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/tencent/wxop/stat/al;->c:Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/wxop/stat/al;->a:Lcom/tencent/wxop/stat/StatAccount;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/wxop/stat/al;->a:Lcom/tencent/wxop/stat/StatAccount;

    invoke-virtual {v0}, Lcom/tencent/wxop/stat/StatAccount;->getAccount()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/tencent/wxop/stat/StatServiceImpl;->f()Lcom/tencent/wxop/stat/common/StatLogger;

    move-result-object v0

    const-string v1, "account is null or empty."

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->w(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/wxop/stat/al;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/wxop/stat/al;->a:Lcom/tencent/wxop/stat/StatAccount;

    invoke-virtual {v1}, Lcom/tencent/wxop/stat/StatAccount;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wxop/stat/StatConfig;->setQQ(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/wxop/stat/al;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/wxop/stat/al;->a:Lcom/tencent/wxop/stat/StatAccount;

    iget-object v2, p0, Lcom/tencent/wxop/stat/al;->c:Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;

    invoke-static {v0, v1, v2}, Lcom/tencent/wxop/stat/StatServiceImpl;->a(Landroid/content/Context;Lcom/tencent/wxop/stat/StatAccount;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V

    goto :goto_0
.end method
