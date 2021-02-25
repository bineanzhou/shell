.class public Lcom/bumptech/glide/provider/EmptyDataLoadProvider;
.super Ljava/lang/Object;
.source "EmptyDataLoadProvider.java"

# interfaces
.implements Lcom/bumptech/glide/provider/DataLoadProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/provider/DataLoadProvider",
        "<TT;TZ;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/bumptech/glide/provider/DataLoadProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/provider/DataLoadProvider",
            "<**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/bumptech/glide/provider/EmptyDataLoadProvider;

    invoke-direct {v0}, Lcom/bumptech/glide/provider/EmptyDataLoadProvider;-><init>()V

    sput-object v0, Lcom/bumptech/glide/provider/EmptyDataLoadProvider;->a:Lcom/bumptech/glide/provider/DataLoadProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e()Lcom/bumptech/glide/provider/DataLoadProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bumptech/glide/provider/DataLoadProvider",
            "<TT;TZ;>;"
        }
    .end annotation

    .prologue
    .line 20
    sget-object v0, Lcom/bumptech/glide/provider/EmptyDataLoadProvider;->a:Lcom/bumptech/glide/provider/DataLoadProvider;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/bumptech/glide/load/ResourceDecoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<",
            "Ljava/io/File;",
            "TZ;>;"
        }
    .end annotation

    .prologue
    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Lcom/bumptech/glide/load/ResourceDecoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<TT;TZ;>;"
        }
    .end annotation

    .prologue
    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Lcom/bumptech/glide/load/Encoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/Encoder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Lcom/bumptech/glide/load/ResourceEncoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/ResourceEncoder",
            "<TZ;>;"
        }
    .end annotation

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method
