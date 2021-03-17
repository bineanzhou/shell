.class Lanetwork/channel/NetworkInfo$WaitThread;
.super Ljava/lang/Thread;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanetwork/channel/NetworkInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WaitThread"
.end annotation


# instance fields
.field private a:Lanetwork/channel/NetworkInfo$NetworkInfoListener;

.field private b:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lanetwork/channel/NetworkInfo$NetworkInfoListener;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 744
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 745
    iput-object p1, p0, Lanetwork/channel/NetworkInfo$WaitThread;->a:Lanetwork/channel/NetworkInfo$NetworkInfoListener;

    .line 746
    iput-object p2, p0, Lanetwork/channel/NetworkInfo$WaitThread;->b:Ljava/util/concurrent/CountDownLatch;

    .line 747
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 752
    :try_start_0
    invoke-static {}, Lanetwork/channel/NetworkInfo;->b()Lanetwork/channel/NetworkInfo;

    move-result-object v0

    iget-object v1, p0, Lanetwork/channel/NetworkInfo$WaitThread;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, v1}, Lanetwork/channel/NetworkInfo;->b(Lanetwork/channel/NetworkInfo;Ljava/util/concurrent/CountDownLatch;)Ljava/lang/String;

    move-result-object v0

    .line 753
    iget-object v1, p0, Lanetwork/channel/NetworkInfo$WaitThread;->a:Lanetwork/channel/NetworkInfo$NetworkInfoListener;

    invoke-interface {v1, v0}, Lanetwork/channel/NetworkInfo$NetworkInfoListener;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 758
    :goto_0
    return-void

    .line 755
    :catch_0
    move-exception v0

    .line 756
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
