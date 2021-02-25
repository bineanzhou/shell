.class public Lcom/bumptech/glide/request/animation/ViewPropertyAnimationFactory;
.super Ljava/lang/Object;
.source "ViewPropertyAnimationFactory.java"

# interfaces
.implements Lcom/bumptech/glide/request/animation/GlideAnimationFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/animation/GlideAnimationFactory",
        "<TR;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;

.field private b:Lcom/bumptech/glide/request/animation/ViewPropertyAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/animation/ViewPropertyAnimation",
            "<TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/bumptech/glide/request/animation/ViewPropertyAnimationFactory;->a:Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;

    .line 14
    return-void
.end method


# virtual methods
.method public a(ZZ)Lcom/bumptech/glide/request/animation/GlideAnimation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lcom/bumptech/glide/request/animation/GlideAnimation",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 25
    if-nez p1, :cond_0

    if-nez p2, :cond_1

    .line 26
    :cond_0
    invoke-static {}, Lcom/bumptech/glide/request/animation/NoAnimation;->b()Lcom/bumptech/glide/request/animation/GlideAnimation;

    move-result-object v0

    .line 32
    :goto_0
    return-object v0

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/request/animation/ViewPropertyAnimationFactory;->b:Lcom/bumptech/glide/request/animation/ViewPropertyAnimation;

    if-nez v0, :cond_2

    .line 29
    new-instance v0, Lcom/bumptech/glide/request/animation/ViewPropertyAnimation;

    iget-object v1, p0, Lcom/bumptech/glide/request/animation/ViewPropertyAnimationFactory;->a:Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/request/animation/ViewPropertyAnimation;-><init>(Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)V

    iput-object v0, p0, Lcom/bumptech/glide/request/animation/ViewPropertyAnimationFactory;->b:Lcom/bumptech/glide/request/animation/ViewPropertyAnimation;

    .line 32
    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/request/animation/ViewPropertyAnimationFactory;->b:Lcom/bumptech/glide/request/animation/ViewPropertyAnimation;

    goto :goto_0
.end method
