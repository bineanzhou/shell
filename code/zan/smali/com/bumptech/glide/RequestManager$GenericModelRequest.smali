.class public final Lcom/bumptech/glide/RequestManager$GenericModelRequest;
.super Ljava/lang/Object;
.source "RequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/RequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "GenericModelRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/RequestManager;

.field private final b:Lcom/bumptech/glide/load/model/ModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TA;TT;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bumptech/glide/RequestManager;Lcom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TA;TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 713
    iput-object p1, p0, Lcom/bumptech/glide/RequestManager$GenericModelRequest;->a:Lcom/bumptech/glide/RequestManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 714
    iput-object p2, p0, Lcom/bumptech/glide/RequestManager$GenericModelRequest;->b:Lcom/bumptech/glide/load/model/ModelLoader;

    .line 715
    iput-object p3, p0, Lcom/bumptech/glide/RequestManager$GenericModelRequest;->c:Ljava/lang/Class;

    .line 716
    return-void
.end method

.method static synthetic a(Lcom/bumptech/glide/RequestManager$GenericModelRequest;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager$GenericModelRequest;->b:Lcom/bumptech/glide/load/model/ModelLoader;

    return-object v0
.end method

.method static synthetic b(Lcom/bumptech/glide/RequestManager$GenericModelRequest;)Ljava/lang/Class;
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager$GenericModelRequest;->c:Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TA;>;)",
            "Lcom/bumptech/glide/RequestManager$GenericModelRequest",
            "<TA;TT;>.GenericTypeRequest;"
        }
    .end annotation

    .prologue
    .line 725
    new-instance v0, Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;-><init>(Lcom/bumptech/glide/RequestManager$GenericModelRequest;Ljava/lang/Class;)V

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lcom/bumptech/glide/RequestManager$GenericModelRequest",
            "<TA;TT;>.GenericTypeRequest;"
        }
    .end annotation

    .prologue
    .line 735
    new-instance v0, Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;-><init>(Lcom/bumptech/glide/RequestManager$GenericModelRequest;Ljava/lang/Object;)V

    return-object v0
.end method
