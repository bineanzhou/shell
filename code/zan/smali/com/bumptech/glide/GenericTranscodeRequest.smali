.class public Lcom/bumptech/glide/GenericTranscodeRequest;
.super Lcom/bumptech/glide/GenericRequestBuilder;
.source "GenericTranscodeRequest.java"

# interfaces
.implements Lcom/bumptech/glide/DownloadOptions;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        "DataType:",
        "Ljava/lang/Object;",
        "ResourceType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/GenericRequestBuilder",
        "<TModelType;TDataType;TResourceType;TResourceType;>;",
        "Lcom/bumptech/glide/DownloadOptions;"
    }
.end annotation


# instance fields
.field private final g:Lcom/bumptech/glide/load/model/ModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TModelType;TDataType;>;"
        }
    .end annotation
.end field

.field private final h:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TDataType;>;"
        }
    .end annotation
.end field

.field private final i:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TResourceType;>;"
        }
    .end annotation
.end field

.field private final j:Lcom/bumptech/glide/RequestManager$OptionsApplier;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/Glide;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/RequestManager$OptionsApplier;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/Glide;",
            "Ljava/lang/Class",
            "<TModelType;>;",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TModelType;TDataType;>;",
            "Ljava/lang/Class",
            "<TDataType;>;",
            "Ljava/lang/Class",
            "<TResourceType;>;",
            "Lcom/bumptech/glide/manager/RequestTracker;",
            "Lcom/bumptech/glide/manager/Lifecycle;",
            "Lcom/bumptech/glide/RequestManager$OptionsApplier;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-static {}, Lcom/bumptech/glide/load/resource/transcode/UnitTranscoder;->b()Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    move-result-object v1

    invoke-static {p2, p4, p5, p6, v1}, Lcom/bumptech/glide/GenericTranscodeRequest;->a(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/provider/LoadProvider;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v5, p6

    move-object v6, p2

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Lcom/bumptech/glide/GenericRequestBuilder;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/Lifecycle;)V

    .line 62
    iput-object p4, p0, Lcom/bumptech/glide/GenericTranscodeRequest;->g:Lcom/bumptech/glide/load/model/ModelLoader;

    .line 63
    iput-object p5, p0, Lcom/bumptech/glide/GenericTranscodeRequest;->h:Ljava/lang/Class;

    .line 64
    iput-object p6, p0, Lcom/bumptech/glide/GenericTranscodeRequest;->i:Ljava/lang/Class;

    .line 65
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/bumptech/glide/GenericTranscodeRequest;->j:Lcom/bumptech/glide/RequestManager$OptionsApplier;

    .line 66
    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Lcom/bumptech/glide/GenericRequestBuilder;Lcom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/RequestManager$OptionsApplier;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TResourceType;>;",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;***>;",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TModelType;TDataType;>;",
            "Ljava/lang/Class",
            "<TDataType;>;",
            "Ljava/lang/Class",
            "<TResourceType;>;",
            "Lcom/bumptech/glide/RequestManager$OptionsApplier;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p2, Lcom/bumptech/glide/GenericRequestBuilder;->c:Lcom/bumptech/glide/Glide;

    invoke-static {}, Lcom/bumptech/glide/load/resource/transcode/UnitTranscoder;->b()Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    move-result-object v1

    invoke-static {v0, p3, p4, p5, v1}, Lcom/bumptech/glide/GenericTranscodeRequest;->a(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/provider/LoadProvider;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/bumptech/glide/GenericRequestBuilder;-><init>(Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/bumptech/glide/GenericRequestBuilder;)V

    .line 51
    iput-object p3, p0, Lcom/bumptech/glide/GenericTranscodeRequest;->g:Lcom/bumptech/glide/load/model/ModelLoader;

    .line 52
    iput-object p4, p0, Lcom/bumptech/glide/GenericTranscodeRequest;->h:Ljava/lang/Class;

    .line 53
    iput-object p5, p0, Lcom/bumptech/glide/GenericTranscodeRequest;->i:Ljava/lang/Class;

    .line 54
    iput-object p6, p0, Lcom/bumptech/glide/GenericTranscodeRequest;->j:Lcom/bumptech/glide/RequestManager$OptionsApplier;

    .line 55
    return-void
.end method

.method private a()Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    invoke-static {}, Lcom/bumptech/glide/load/resource/transcode/UnitTranscoder;->b()Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/bumptech/glide/GenericTranscodeRequest;->c:Lcom/bumptech/glide/Glide;

    iget-object v2, p0, Lcom/bumptech/glide/GenericTranscodeRequest;->h:Ljava/lang/Class;

    const-class v3, Ljava/io/File;

    invoke-virtual {v1, v2, v3}, Lcom/bumptech/glide/Glide;->b(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/provider/DataLoadProvider;

    move-result-object v1

    .line 102
    new-instance v2, Lcom/bumptech/glide/provider/FixedLoadProvider;

    iget-object v3, p0, Lcom/bumptech/glide/GenericTranscodeRequest;->g:Lcom/bumptech/glide/load/model/ModelLoader;

    invoke-direct {v2, v3, v0, v1}, Lcom/bumptech/glide/provider/FixedLoadProvider;-><init>(Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lcom/bumptech/glide/provider/DataLoadProvider;)V

    .line 104
    iget-object v0, p0, Lcom/bumptech/glide/GenericTranscodeRequest;->j:Lcom/bumptech/glide/RequestManager$OptionsApplier;

    new-instance v1, Lcom/bumptech/glide/GenericRequestBuilder;

    const-class v3, Ljava/io/File;

    invoke-direct {v1, v2, v3, p0}, Lcom/bumptech/glide/GenericRequestBuilder;-><init>(Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/bumptech/glide/GenericRequestBuilder;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager$OptionsApplier;->a(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/Priority;->LOW:Lcom/bumptech/glide/Priority;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/GenericRequestBuilder;->b(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/GenericRequestBuilder;->b(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/GenericRequestBuilder;->b(Z)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/provider/LoadProvider;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/Glide;",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TA;TT;>;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TZ;>;",
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
            "<TZ;TR;>;)",
            "Lcom/bumptech/glide/provider/LoadProvider",
            "<TA;TT;TZ;TR;>;"
        }
    .end annotation

    .prologue
    .line 41
    invoke-virtual {p0, p2, p3}, Lcom/bumptech/glide/Glide;->b(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/provider/DataLoadProvider;

    move-result-object v0

    .line 42
    new-instance v1, Lcom/bumptech/glide/provider/FixedLoadProvider;

    invoke-direct {v1, p1, p4, v0}, Lcom/bumptech/glide/provider/FixedLoadProvider;-><init>(Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lcom/bumptech/glide/provider/DataLoadProvider;)V

    return-object v1
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Ljava/lang/Class;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TranscodeType:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
            "<TResourceType;TTranscodeType;>;",
            "Ljava/lang/Class",
            "<TTranscodeType;>;)",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/bumptech/glide/GenericTranscodeRequest;->c:Lcom/bumptech/glide/Glide;

    iget-object v1, p0, Lcom/bumptech/glide/GenericTranscodeRequest;->g:Lcom/bumptech/glide/load/model/ModelLoader;

    iget-object v2, p0, Lcom/bumptech/glide/GenericTranscodeRequest;->h:Ljava/lang/Class;

    iget-object v3, p0, Lcom/bumptech/glide/GenericTranscodeRequest;->i:Ljava/lang/Class;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/bumptech/glide/GenericTranscodeRequest;->a(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/provider/LoadProvider;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/bumptech/glide/GenericTranscodeRequest;->j:Lcom/bumptech/glide/RequestManager$OptionsApplier;

    new-instance v2, Lcom/bumptech/glide/GenericRequestBuilder;

    invoke-direct {v2, v0, p2, p0}, Lcom/bumptech/glide/GenericRequestBuilder;-><init>(Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/bumptech/glide/GenericRequestBuilder;)V

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager$OptionsApplier;->a(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public a(II)Lcom/bumptech/glide/request/FutureTarget;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/request/FutureTarget",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/bumptech/glide/GenericTranscodeRequest;->a()Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/GenericRequestBuilder;->f(II)Lcom/bumptech/glide/request/FutureTarget;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/bumptech/glide/request/target/Target",
            "<",
            "Ljava/io/File;",
            ">;>(TY;)TY;"
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/bumptech/glide/GenericTranscodeRequest;->a()Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->b(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    move-result-object v0

    return-object v0
.end method
