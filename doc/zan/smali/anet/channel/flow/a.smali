.class public Lanet/channel/flow/a;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanet/channel/flow/INetworkAnalysis;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    :try_start_0
    const-string v0, "com.taobao.analysis.FlowCenter"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lanet/channel/flow/a;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :goto_0
    return-void

    .line 20
    :catch_0
    move-exception v0

    iput-boolean v3, p0, Lanet/channel/flow/a;->a:Z

    .line 21
    const-string v0, "DefaultNetworkAnalysis"

    const-string v1, "no NWNetworkAnalysisSDK sdk"

    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public commitFlow(Lanet/channel/flow/b;)V
    .locals 10

    .prologue
    .line 26
    iget-boolean v0, p0, Lanet/channel/flow/a;->a:Z

    if-eqz v0, :cond_0

    .line 27
    invoke-static {}, Lcom/taobao/analysis/FlowCenter;->getInstance()Lcom/taobao/analysis/FlowCenter;

    move-result-object v1

    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p1, Lanet/channel/flow/b;->a:Ljava/lang/String;

    iget-object v4, p1, Lanet/channel/flow/b;->b:Ljava/lang/String;

    iget-object v5, p1, Lanet/channel/flow/b;->c:Ljava/lang/String;

    iget-wide v6, p1, Lanet/channel/flow/b;->d:J

    iget-wide v8, p1, Lanet/channel/flow/b;->e:J

    invoke-virtual/range {v1 .. v9}, Lcom/taobao/analysis/FlowCenter;->commitFlow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 30
    :cond_0
    return-void
.end method
