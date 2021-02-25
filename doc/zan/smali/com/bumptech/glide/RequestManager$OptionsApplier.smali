.class Lcom/bumptech/glide/RequestManager$OptionsApplier;
.super Ljava/lang/Object;
.source "RequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/RequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OptionsApplier"
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/RequestManager;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/RequestManager;)V
    .locals 0

    .prologue
    .line 779
    iput-object p1, p0, Lcom/bumptech/glide/RequestManager$OptionsApplier;->a:Lcom/bumptech/glide/RequestManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "X:",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TA;***>;>(TX;)TX;"
        }
    .end annotation

    .prologue
    .line 782
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager$OptionsApplier;->a:Lcom/bumptech/glide/RequestManager;

    invoke-static {v0}, Lcom/bumptech/glide/RequestManager;->f(Lcom/bumptech/glide/RequestManager;)Lcom/bumptech/glide/RequestManager$DefaultOptions;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 783
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager$OptionsApplier;->a:Lcom/bumptech/glide/RequestManager;

    invoke-static {v0}, Lcom/bumptech/glide/RequestManager;->f(Lcom/bumptech/glide/RequestManager;)Lcom/bumptech/glide/RequestManager$DefaultOptions;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bumptech/glide/RequestManager$DefaultOptions;->a(Lcom/bumptech/glide/GenericRequestBuilder;)V

    .line 785
    :cond_0
    return-object p1
.end method
