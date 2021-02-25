.class public abstract Lcom/bumptech/glide/request/target/BaseTarget;
.super Ljava/lang/Object;
.source "BaseTarget.java"

# interfaces
.implements Lcom/bumptech/glide/request/target/Target;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/target/Target",
        "<TZ;>;"
    }
.end annotation


# instance fields
.field private b:Lcom/bumptech/glide/request/Request;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public a(Lcom/bumptech/glide/request/Request;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/bumptech/glide/request/target/BaseTarget;->b:Lcom/bumptech/glide/request/Request;

    .line 35
    return-void
.end method

.method public a(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public a_()Lcom/bumptech/glide/request/Request;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/bumptech/glide/request/target/BaseTarget;->b:Lcom/bumptech/glide/request/Request;

    return-object v0
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public g()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public h()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public i()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method
