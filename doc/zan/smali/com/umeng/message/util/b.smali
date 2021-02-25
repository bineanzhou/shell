.class public Lcom/umeng/message/util/b;
.super Ljava/lang/Object;
.source "HttpDnsManager.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:I = 0x64


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/umeng/message/util/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/message/util/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 24
    const/4 v0, 0x0

    .line 26
    :try_start_0
    const-string v1, "174658"

    invoke-static {p0, v1}, Lcom/alibaba/sdk/android/httpdns/HttpDns;->getService(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HttpDnsService;

    move-result-object v1

    .line 28
    :cond_0
    invoke-interface {v1, p1}, Lcom/alibaba/sdk/android/httpdns/HttpDnsService;->getIpByHostAsync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    if-eqz v0, :cond_0

    .line 34
    :goto_0
    return-object v0

    .line 31
    :catch_0
    move-exception v1

    .line 32
    sget-object v1, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    sget-object v2, Lcom/umeng/message/util/b;->a:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "Thread interrupted exception"

    aput-object v4, v3, v5

    invoke-interface {v1, v2, v5, v3}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 19
    const-string v0, "174658"

    invoke-static {p0, v0}, Lcom/alibaba/sdk/android/httpdns/HttpDns;->getService(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HttpDnsService;

    move-result-object v0

    .line 20
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alibaba/sdk/android/httpdns/HttpDnsService;->setExpiredIPEnabled(Z)V

    .line 21
    return-void
.end method
