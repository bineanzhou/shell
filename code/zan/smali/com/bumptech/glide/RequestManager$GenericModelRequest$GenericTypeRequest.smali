.class public final Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;
.super Ljava/lang/Object;
.source "RequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/RequestManager$GenericModelRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "GenericTypeRequest"
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/RequestManager$GenericModelRequest;

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TA;>;"
        }
    .end annotation
.end field

.field private final d:Z


# direct methods
.method constructor <init>(Lcom/bumptech/glide/RequestManager$GenericModelRequest;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TA;>;)V"
        }
    .end annotation

    .prologue
    .line 754
    iput-object p1, p0, Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;->a:Lcom/bumptech/glide/RequestManager$GenericModelRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 755
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;->d:Z

    .line 756
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;->b:Ljava/lang/Object;

    .line 757
    iput-object p2, p0, Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;->c:Ljava/lang/Class;

    .line 758
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/RequestManager$GenericModelRequest;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .prologue
    .line 748
    iput-object p1, p0, Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;->a:Lcom/bumptech/glide/RequestManager$GenericModelRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 749
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;->d:Z

    .line 750
    iput-object p2, p0, Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;->b:Ljava/lang/Object;

    .line 751
    invoke-static {p2}, Lcom/bumptech/glide/RequestManager;->b(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;->c:Ljava/lang/Class;

    .line 752
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lcom/bumptech/glide/GenericTranscodeRequest;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TZ;>;)",
            "Lcom/bumptech/glide/GenericTranscodeRequest",
            "<TA;TT;TZ;>;"
        }
    .end annotation

    .prologue
    .line 768
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;->a:Lcom/bumptech/glide/RequestManager$GenericModelRequest;

    iget-object v0, v0, Lcom/bumptech/glide/RequestManager$GenericModelRequest;->a:Lcom/bumptech/glide/RequestManager;

    invoke-static {v0}, Lcom/bumptech/glide/RequestManager;->e(Lcom/bumptech/glide/RequestManager;)Lcom/bumptech/glide/RequestManager$OptionsApplier;

    move-result-object v10

    new-instance v0, Lcom/bumptech/glide/GenericTranscodeRequest;

    iget-object v1, p0, Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;->a:Lcom/bumptech/glide/RequestManager$GenericModelRequest;

    iget-object v1, v1, Lcom/bumptech/glide/RequestManager$GenericModelRequest;->a:Lcom/bumptech/glide/RequestManager;

    invoke-static {v1}, Lcom/bumptech/glide/RequestManager;->a(Lcom/bumptech/glide/RequestManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;->a:Lcom/bumptech/glide/RequestManager$GenericModelRequest;

    iget-object v2, v2, Lcom/bumptech/glide/RequestManager$GenericModelRequest;->a:Lcom/bumptech/glide/RequestManager;

    invoke-static {v2}, Lcom/bumptech/glide/RequestManager;->b(Lcom/bumptech/glide/RequestManager;)Lcom/bumptech/glide/Glide;

    move-result-object v2

    iget-object v3, p0, Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;->c:Ljava/lang/Class;

    iget-object v4, p0, Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;->a:Lcom/bumptech/glide/RequestManager$GenericModelRequest;

    invoke-static {v4}, Lcom/bumptech/glide/RequestManager$GenericModelRequest;->a(Lcom/bumptech/glide/RequestManager$GenericModelRequest;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v4

    iget-object v5, p0, Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;->a:Lcom/bumptech/glide/RequestManager$GenericModelRequest;

    invoke-static {v5}, Lcom/bumptech/glide/RequestManager$GenericModelRequest;->b(Lcom/bumptech/glide/RequestManager$GenericModelRequest;)Ljava/lang/Class;

    move-result-object v5

    iget-object v6, p0, Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;->a:Lcom/bumptech/glide/RequestManager$GenericModelRequest;

    iget-object v6, v6, Lcom/bumptech/glide/RequestManager$GenericModelRequest;->a:Lcom/bumptech/glide/RequestManager;

    invoke-static {v6}, Lcom/bumptech/glide/RequestManager;->c(Lcom/bumptech/glide/RequestManager;)Lcom/bumptech/glide/manager/RequestTracker;

    move-result-object v7

    iget-object v6, p0, Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;->a:Lcom/bumptech/glide/RequestManager$GenericModelRequest;

    iget-object v6, v6, Lcom/bumptech/glide/RequestManager$GenericModelRequest;->a:Lcom/bumptech/glide/RequestManager;

    invoke-static {v6}, Lcom/bumptech/glide/RequestManager;->d(Lcom/bumptech/glide/RequestManager;)Lcom/bumptech/glide/manager/Lifecycle;

    move-result-object v8

    iget-object v6, p0, Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;->a:Lcom/bumptech/glide/RequestManager$GenericModelRequest;

    iget-object v6, v6, Lcom/bumptech/glide/RequestManager$GenericModelRequest;->a:Lcom/bumptech/glide/RequestManager;

    invoke-static {v6}, Lcom/bumptech/glide/RequestManager;->e(Lcom/bumptech/glide/RequestManager;)Lcom/bumptech/glide/RequestManager$OptionsApplier;

    move-result-object v9

    move-object v6, p1

    invoke-direct/range {v0 .. v9}, Lcom/bumptech/glide/GenericTranscodeRequest;-><init>(Landroid/content/Context;Lcom/bumptech/glide/Glide;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/RequestManager$OptionsApplier;)V

    invoke-virtual {v10, v0}, Lcom/bumptech/glide/RequestManager$OptionsApplier;->a(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/GenericTranscodeRequest;

    .line 771
    iget-boolean v1, p0, Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;->d:Z

    if-eqz v1, :cond_0

    .line 772
    iget-object v1, p0, Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/GenericTranscodeRequest;->b(Ljava/lang/Object;)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 774
    :cond_0
    return-object v0
.end method
