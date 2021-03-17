.class Lanetwork/channel/NetworkInfo$3;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lanetwork/channel/NetworkInfo;


# direct methods
.method constructor <init>(Lanetwork/channel/NetworkInfo;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 410
    iput-object p1, p0, Lanetwork/channel/NetworkInfo$3;->b:Lanetwork/channel/NetworkInfo;

    iput-object p2, p0, Lanetwork/channel/NetworkInfo$3;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 413
    iget-object v0, p0, Lanetwork/channel/NetworkInfo$3;->b:Lanetwork/channel/NetworkInfo;

    iget-object v1, p0, Lanetwork/channel/NetworkInfo$3;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lanetwork/channel/NetworkInfo;->b(Lanetwork/channel/NetworkInfo;Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 410
    invoke-virtual {p0}, Lanetwork/channel/NetworkInfo$3;->a()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
