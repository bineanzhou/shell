.class public final Lcom/bumptech/glide/request/GenericRequest;
.super Ljava/lang/Object;
.source "GenericRequest.java"

# interfaces
.implements Lcom/bumptech/glide/request/Request;
.implements Lcom/bumptech/glide/request/ResourceCallback;
.implements Lcom/bumptech/glide/request/target/SizeReadyCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/GenericRequest$Status;
    }
.end annotation

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
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/Request;",
        "Lcom/bumptech/glide/request/ResourceCallback;",
        "Lcom/bumptech/glide/request/target/SizeReadyCallback;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "GenericRequest"

.field private static final b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/bumptech/glide/request/GenericRequest",
            "<****>;>;"
        }
    .end annotation
.end field

.field private static final c:D = 9.5367431640625E-7


# instance fields
.field private A:Landroid/graphics/drawable/Drawable;

.field private B:Z

.field private C:Lcom/bumptech/glide/load/engine/Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/Resource",
            "<*>;"
        }
    .end annotation
.end field

.field private D:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

.field private E:J

.field private F:Lcom/bumptech/glide/request/GenericRequest$Status;

.field private final d:Ljava/lang/String;

.field private e:Lcom/bumptech/glide/load/Key;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:I

.field private h:I

.field private i:I

.field private j:Landroid/content/Context;

.field private k:Lcom/bumptech/glide/load/Transformation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Transformation",
            "<TZ;>;"
        }
    .end annotation
.end field

.field private l:Lcom/bumptech/glide/provider/LoadProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/provider/LoadProvider",
            "<TA;TT;TZ;TR;>;"
        }
    .end annotation
.end field

.field private m:Lcom/bumptech/glide/request/RequestCoordinator;

.field private n:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private o:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TR;>;"
        }
    .end annotation
.end field

.field private p:Z

.field private q:Lcom/bumptech/glide/Priority;

.field private r:Lcom/bumptech/glide/request/target/Target;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/target/Target",
            "<TR;>;"
        }
    .end annotation
.end field

.field private s:Lcom/bumptech/glide/request/RequestListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/RequestListener",
            "<-TA;TR;>;"
        }
    .end annotation
.end field

.field private t:F

.field private u:Lcom/bumptech/glide/load/engine/Engine;

.field private v:Lcom/bumptech/glide/request/animation/GlideAnimationFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/animation/GlideAnimationFactory",
            "<TR;>;"
        }
    .end annotation
.end field

.field private w:I

.field private x:I

.field private y:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

.field private z:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->a(I)Ljava/util/Queue;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/request/GenericRequest;->b:Ljava/util/Queue;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->d:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public static a(Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Object;Lcom/bumptech/glide/load/Key;Landroid/content/Context;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/target/Target;FLandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/load/Transformation;Ljava/lang/Class;ZLcom/bumptech/glide/request/animation/GlideAnimationFactory;IILcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/GenericRequest;
    .locals 24
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
            "Lcom/bumptech/glide/provider/LoadProvider",
            "<TA;TT;TZ;TR;>;TA;",
            "Lcom/bumptech/glide/load/Key;",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/request/target/Target",
            "<TR;>;F",
            "Landroid/graphics/drawable/Drawable;",
            "I",
            "Landroid/graphics/drawable/Drawable;",
            "I",
            "Landroid/graphics/drawable/Drawable;",
            "I",
            "Lcom/bumptech/glide/request/RequestListener",
            "<-TA;TR;>;",
            "Lcom/bumptech/glide/request/RequestCoordinator;",
            "Lcom/bumptech/glide/load/engine/Engine;",
            "Lcom/bumptech/glide/load/Transformation",
            "<TZ;>;",
            "Ljava/lang/Class",
            "<TR;>;Z",
            "Lcom/bumptech/glide/request/animation/GlideAnimationFactory",
            "<TR;>;II",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            ")",
            "Lcom/bumptech/glide/request/GenericRequest",
            "<TA;TT;TZ;TR;>;"
        }
    .end annotation

    .prologue
    .line 117
    sget-object v0, Lcom/bumptech/glide/request/GenericRequest;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/GenericRequest;

    .line 118
    if-nez v0, :cond_0

    .line 119
    new-instance v0, Lcom/bumptech/glide/request/GenericRequest;

    invoke-direct {v0}, Lcom/bumptech/glide/request/GenericRequest;-><init>()V

    :cond_0
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move/from16 v19, p18

    move-object/from16 v20, p19

    move/from16 v21, p20

    move/from16 v22, p21

    move-object/from16 v23, p22

    .line 121
    invoke-direct/range {v0 .. v23}, Lcom/bumptech/glide/request/GenericRequest;->b(Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Object;Lcom/bumptech/glide/load/Key;Landroid/content/Context;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/target/Target;FLandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/load/Transformation;Ljava/lang/Class;ZLcom/bumptech/glide/request/animation/GlideAnimationFactory;IILcom/bumptech/glide/load/engine/DiskCacheStrategy;)V

    .line 144
    return-object v0
.end method

.method private a(Lcom/bumptech/glide/load/engine/Resource;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<*>;TR;)V"
        }
    .end annotation

    .prologue
    .line 518
    invoke-direct {p0}, Lcom/bumptech/glide/request/GenericRequest;->q()Z

    move-result v5

    .line 519
    sget-object v0, Lcom/bumptech/glide/request/GenericRequest$Status;->COMPLETE:Lcom/bumptech/glide/request/GenericRequest$Status;

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->F:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 520
    iput-object p1, p0, Lcom/bumptech/glide/request/GenericRequest;->C:Lcom/bumptech/glide/load/engine/Resource;

    .line 522
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->s:Lcom/bumptech/glide/request/RequestListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->s:Lcom/bumptech/glide/request/RequestListener;

    iget-object v2, p0, Lcom/bumptech/glide/request/GenericRequest;->n:Ljava/lang/Object;

    iget-object v3, p0, Lcom/bumptech/glide/request/GenericRequest;->r:Lcom/bumptech/glide/request/target/Target;

    iget-boolean v4, p0, Lcom/bumptech/glide/request/GenericRequest;->B:Z

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Lcom/bumptech/glide/request/RequestListener;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->v:Lcom/bumptech/glide/request/animation/GlideAnimationFactory;

    iget-boolean v1, p0, Lcom/bumptech/glide/request/GenericRequest;->B:Z

    invoke-interface {v0, v1, v5}, Lcom/bumptech/glide/request/animation/GlideAnimationFactory;->a(ZZ)Lcom/bumptech/glide/request/animation/GlideAnimation;

    move-result-object v0

    .line 525
    iget-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->r:Lcom/bumptech/glide/request/target/Target;

    invoke-interface {v1, p2, v0}, Lcom/bumptech/glide/request/target/Target;->a(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V

    .line 528
    :cond_1
    invoke-direct {p0}, Lcom/bumptech/glide/request/GenericRequest;->r()V

    .line 530
    const-string v0, "GenericRequest"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resource ready in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/bumptech/glide/request/GenericRequest;->E:J

    invoke-static {v2, v3}, Lcom/bumptech/glide/util/LogTime;->a(J)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/Resource;->c()I

    move-result v1

    int-to-double v2, v1

    const-wide/high16 v4, 0x3eb0000000000000L    # 9.5367431640625E-7

    mul-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fromCache: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/bumptech/glide/request/GenericRequest;->B:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/GenericRequest;->a(Ljava/lang/String;)V

    .line 534
    :cond_2
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 553
    const-string v0, "GenericRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " this: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/request/GenericRequest;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 246
    if-nez p1, :cond_1

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 248
    const-string v1, " must not be null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    if-eqz p2, :cond_0

    .line 250
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 255
    :cond_1
    return-void
.end method

.method private b(Lcom/bumptech/glide/load/engine/Resource;)V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->u:Lcom/bumptech/glide/load/engine/Engine;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/Engine;->a(Lcom/bumptech/glide/load/engine/Resource;)V

    .line 342
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->C:Lcom/bumptech/glide/load/engine/Resource;

    .line 343
    return-void
.end method

.method private b(Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Object;Lcom/bumptech/glide/load/Key;Landroid/content/Context;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/target/Target;FLandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/load/Transformation;Ljava/lang/Class;ZLcom/bumptech/glide/request/animation/GlideAnimationFactory;IILcom/bumptech/glide/load/engine/DiskCacheStrategy;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/provider/LoadProvider",
            "<TA;TT;TZ;TR;>;TA;",
            "Lcom/bumptech/glide/load/Key;",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/request/target/Target",
            "<TR;>;F",
            "Landroid/graphics/drawable/Drawable;",
            "I",
            "Landroid/graphics/drawable/Drawable;",
            "I",
            "Landroid/graphics/drawable/Drawable;",
            "I",
            "Lcom/bumptech/glide/request/RequestListener",
            "<-TA;TR;>;",
            "Lcom/bumptech/glide/request/RequestCoordinator;",
            "Lcom/bumptech/glide/load/engine/Engine;",
            "Lcom/bumptech/glide/load/Transformation",
            "<TZ;>;",
            "Ljava/lang/Class",
            "<TR;>;Z",
            "Lcom/bumptech/glide/request/animation/GlideAnimationFactory",
            "<TR;>;II",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 193
    iput-object p1, p0, Lcom/bumptech/glide/request/GenericRequest;->l:Lcom/bumptech/glide/provider/LoadProvider;

    .line 194
    iput-object p2, p0, Lcom/bumptech/glide/request/GenericRequest;->n:Ljava/lang/Object;

    .line 195
    iput-object p3, p0, Lcom/bumptech/glide/request/GenericRequest;->e:Lcom/bumptech/glide/load/Key;

    .line 196
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->f:Landroid/graphics/drawable/Drawable;

    .line 197
    move/from16 v0, p13

    iput v0, p0, Lcom/bumptech/glide/request/GenericRequest;->g:I

    .line 198
    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->j:Landroid/content/Context;

    .line 199
    iput-object p5, p0, Lcom/bumptech/glide/request/GenericRequest;->q:Lcom/bumptech/glide/Priority;

    .line 200
    iput-object p6, p0, Lcom/bumptech/glide/request/GenericRequest;->r:Lcom/bumptech/glide/request/target/Target;

    .line 201
    iput p7, p0, Lcom/bumptech/glide/request/GenericRequest;->t:F

    .line 202
    iput-object p8, p0, Lcom/bumptech/glide/request/GenericRequest;->z:Landroid/graphics/drawable/Drawable;

    .line 203
    iput p9, p0, Lcom/bumptech/glide/request/GenericRequest;->h:I

    .line 204
    iput-object p10, p0, Lcom/bumptech/glide/request/GenericRequest;->A:Landroid/graphics/drawable/Drawable;

    .line 205
    iput p11, p0, Lcom/bumptech/glide/request/GenericRequest;->i:I

    .line 206
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->s:Lcom/bumptech/glide/request/RequestListener;

    .line 207
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->m:Lcom/bumptech/glide/request/RequestCoordinator;

    .line 208
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->u:Lcom/bumptech/glide/load/engine/Engine;

    .line 209
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->k:Lcom/bumptech/glide/load/Transformation;

    .line 210
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->o:Ljava/lang/Class;

    .line 211
    move/from16 v0, p19

    iput-boolean v0, p0, Lcom/bumptech/glide/request/GenericRequest;->p:Z

    .line 212
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->v:Lcom/bumptech/glide/request/animation/GlideAnimationFactory;

    .line 213
    move/from16 v0, p21

    iput v0, p0, Lcom/bumptech/glide/request/GenericRequest;->w:I

    .line 214
    move/from16 v0, p22

    iput v0, p0, Lcom/bumptech/glide/request/GenericRequest;->x:I

    .line 215
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->y:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 216
    sget-object v1, Lcom/bumptech/glide/request/GenericRequest$Status;->PENDING:Lcom/bumptech/glide/request/GenericRequest$Status;

    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->F:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 220
    if-eqz p2, :cond_2

    .line 221
    const-string v1, "ModelLoader"

    invoke-interface {p1}, Lcom/bumptech/glide/provider/LoadProvider;->e()Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v2

    const-string v3, "try .using(ModelLoader)"

    invoke-static {v1, v2, v3}, Lcom/bumptech/glide/request/GenericRequest;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    const-string v1, "Transcoder"

    invoke-interface {p1}, Lcom/bumptech/glide/provider/LoadProvider;->f()Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    move-result-object v2

    const-string v3, "try .as*(Class).transcode(ResourceTranscoder)"

    invoke-static {v1, v2, v3}, Lcom/bumptech/glide/request/GenericRequest;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    const-string v1, "Transformation"

    const-string v2, "try .transform(UnitTransformation.get())"

    move-object/from16 v0, p17

    invoke-static {v1, v0, v2}, Lcom/bumptech/glide/request/GenericRequest;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    invoke-virtual/range {p23 .. p23}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheSource()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 225
    const-string v1, "SourceEncoder"

    invoke-interface {p1}, Lcom/bumptech/glide/provider/LoadProvider;->c()Lcom/bumptech/glide/load/Encoder;

    move-result-object v2

    const-string v3, "try .sourceEncoder(Encoder) or .diskCacheStrategy(NONE/RESULT)"

    invoke-static {v1, v2, v3}, Lcom/bumptech/glide/request/GenericRequest;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    :goto_0
    invoke-virtual/range {p23 .. p23}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheSource()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual/range {p23 .. p23}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheResult()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 235
    :cond_0
    const-string v1, "CacheDecoder"

    invoke-interface {p1}, Lcom/bumptech/glide/provider/LoadProvider;->a()Lcom/bumptech/glide/load/ResourceDecoder;

    move-result-object v2

    const-string v3, "try .cacheDecoder(ResouceDecoder) or .diskCacheStrategy(NONE)"

    invoke-static {v1, v2, v3}, Lcom/bumptech/glide/request/GenericRequest;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    :cond_1
    invoke-virtual/range {p23 .. p23}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheResult()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 239
    const-string v1, "Encoder"

    invoke-interface {p1}, Lcom/bumptech/glide/provider/LoadProvider;->d()Lcom/bumptech/glide/load/ResourceEncoder;

    move-result-object v2

    const-string v3, "try .encode(ResourceEncoder) or .diskCacheStrategy(NONE/SOURCE)"

    invoke-static {v1, v2, v3}, Lcom/bumptech/glide/request/GenericRequest;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    :cond_2
    return-void

    .line 228
    :cond_3
    const-string v1, "SourceDecoder"

    invoke-interface {p1}, Lcom/bumptech/glide/provider/LoadProvider;->b()Lcom/bumptech/glide/load/ResourceDecoder;

    move-result-object v2

    const-string v3, "try .decoder/.imageDecoder/.videoDecoder(ResourceDecoder) or .diskCacheStrategy(ALL/SOURCE)"

    invoke-static {v1, v2, v3}, Lcom/bumptech/glide/request/GenericRequest;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 393
    invoke-direct {p0}, Lcom/bumptech/glide/request/GenericRequest;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 405
    :goto_0
    return-void

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->n:Ljava/lang/Object;

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/bumptech/glide/request/GenericRequest;->l()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 398
    :goto_1
    if-nez v0, :cond_1

    .line 399
    invoke-direct {p0}, Lcom/bumptech/glide/request/GenericRequest;->m()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 401
    :cond_1
    if-nez v0, :cond_2

    .line 402
    invoke-direct {p0}, Lcom/bumptech/glide/request/GenericRequest;->n()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 404
    :cond_2
    iget-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->r:Lcom/bumptech/glide/request/target/Target;

    invoke-interface {v1, p1, v0}, Lcom/bumptech/glide/request/target/Target;->a(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 397
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private l()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->f:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/bumptech/glide/request/GenericRequest;->g:I

    if-lez v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/bumptech/glide/request/GenericRequest;->g:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->f:Landroid/graphics/drawable/Drawable;

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->f:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private m()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->A:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/bumptech/glide/request/GenericRequest;->i:I

    if-lez v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/bumptech/glide/request/GenericRequest;->i:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->A:Landroid/graphics/drawable/Drawable;

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->A:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private n()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->z:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/bumptech/glide/request/GenericRequest;->h:I

    if-lez v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/bumptech/glide/request/GenericRequest;->h:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->z:Landroid/graphics/drawable/Drawable;

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->z:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private o()Z
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->m:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->m:Lcom/bumptech/glide/request/RequestCoordinator;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/RequestCoordinator;->a(Lcom/bumptech/glide/request/Request;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private p()Z
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->m:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->m:Lcom/bumptech/glide/request/RequestCoordinator;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/RequestCoordinator;->b(Lcom/bumptech/glide/request/Request;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private q()Z
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->m:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->m:Lcom/bumptech/glide/request/RequestCoordinator;

    invoke-interface {v0}, Lcom/bumptech/glide/request/RequestCoordinator;->c()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private r()V
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->m:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->m:Lcom/bumptech/glide/request/RequestCoordinator;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/RequestCoordinator;->c(Lcom/bumptech/glide/request/Request;)V

    .line 473
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 153
    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->l:Lcom/bumptech/glide/provider/LoadProvider;

    .line 154
    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->n:Ljava/lang/Object;

    .line 155
    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->j:Landroid/content/Context;

    .line 156
    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->r:Lcom/bumptech/glide/request/target/Target;

    .line 157
    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->z:Landroid/graphics/drawable/Drawable;

    .line 158
    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->A:Landroid/graphics/drawable/Drawable;

    .line 159
    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->f:Landroid/graphics/drawable/Drawable;

    .line 160
    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->s:Lcom/bumptech/glide/request/RequestListener;

    .line 161
    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->m:Lcom/bumptech/glide/request/RequestCoordinator;

    .line 162
    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->k:Lcom/bumptech/glide/load/Transformation;

    .line 163
    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->v:Lcom/bumptech/glide/request/animation/GlideAnimationFactory;

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/request/GenericRequest;->B:Z

    .line 165
    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->D:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    .line 166
    sget-object v0, Lcom/bumptech/glide/request/GenericRequest;->b:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 167
    return-void
.end method

.method public a(II)V
    .locals 12

    .prologue
    .line 426
    const-string v0, "GenericRequest"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got onSizeReady in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/bumptech/glide/request/GenericRequest;->E:J

    invoke-static {v2, v3}, Lcom/bumptech/glide/util/LogTime;->a(J)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/GenericRequest;->a(Ljava/lang/String;)V

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->F:Lcom/bumptech/glide/request/GenericRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/GenericRequest$Status;->WAITING_FOR_SIZE:Lcom/bumptech/glide/request/GenericRequest$Status;

    if-eq v0, v1, :cond_2

    .line 455
    :cond_1
    :goto_0
    return-void

    .line 432
    :cond_2
    sget-object v0, Lcom/bumptech/glide/request/GenericRequest$Status;->RUNNING:Lcom/bumptech/glide/request/GenericRequest$Status;

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->F:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 434
    iget v0, p0, Lcom/bumptech/glide/request/GenericRequest;->t:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 435
    iget v0, p0, Lcom/bumptech/glide/request/GenericRequest;->t:F

    int-to-float v1, p2

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 437
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->l:Lcom/bumptech/glide/provider/LoadProvider;

    invoke-interface {v0}, Lcom/bumptech/glide/provider/LoadProvider;->e()Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v0

    .line 438
    iget-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->n:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/bumptech/glide/load/model/ModelLoader;->a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher;

    move-result-object v4

    .line 440
    if-nez v4, :cond_3

    .line 441
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load model: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/request/GenericRequest;->n:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/GenericRequest;->a(Ljava/lang/Exception;)V

    goto :goto_0

    .line 444
    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->l:Lcom/bumptech/glide/provider/LoadProvider;

    invoke-interface {v0}, Lcom/bumptech/glide/provider/LoadProvider;->f()Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    move-result-object v7

    .line 445
    const-string v0, "GenericRequest"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finished setup for calling load in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v8, p0, Lcom/bumptech/glide/request/GenericRequest;->E:J

    invoke-static {v8, v9}, Lcom/bumptech/glide/util/LogTime;->a(J)D

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/GenericRequest;->a(Ljava/lang/String;)V

    .line 448
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/request/GenericRequest;->B:Z

    .line 449
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->u:Lcom/bumptech/glide/load/engine/Engine;

    iget-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->e:Lcom/bumptech/glide/load/Key;

    iget-object v5, p0, Lcom/bumptech/glide/request/GenericRequest;->l:Lcom/bumptech/glide/provider/LoadProvider;

    iget-object v6, p0, Lcom/bumptech/glide/request/GenericRequest;->k:Lcom/bumptech/glide/load/Transformation;

    iget-object v8, p0, Lcom/bumptech/glide/request/GenericRequest;->q:Lcom/bumptech/glide/Priority;

    iget-boolean v9, p0, Lcom/bumptech/glide/request/GenericRequest;->p:Z

    iget-object v10, p0, Lcom/bumptech/glide/request/GenericRequest;->y:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    move-object v11, p0

    invoke-virtual/range {v0 .. v11}, Lcom/bumptech/glide/load/engine/Engine;->a(Lcom/bumptech/glide/load/Key;IILcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/provider/DataLoadProvider;Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lcom/bumptech/glide/Priority;ZLcom/bumptech/glide/load/engine/DiskCacheStrategy;Lcom/bumptech/glide/request/ResourceCallback;)Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->D:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    .line 451
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->C:Lcom/bumptech/glide/load/engine/Resource;

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/bumptech/glide/request/GenericRequest;->B:Z

    .line 452
    const-string v0, "GenericRequest"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finished onSizeReady in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/bumptech/glide/request/GenericRequest;->E:J

    invoke-static {v2, v3}, Lcom/bumptech/glide/util/LogTime;->a(J)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/GenericRequest;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 451
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Lcom/bumptech/glide/load/engine/Resource;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 481
    if-nez p1, :cond_0

    .line 482
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected to receive a Resource<R> with an object of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/request/GenericRequest;->o:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " inside, but instead got null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/GenericRequest;->a(Ljava/lang/Exception;)V

    .line 508
    :goto_0
    return-void

    .line 487
    :cond_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/Resource;->b()Ljava/lang/Object;

    move-result-object v1

    .line 488
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->o:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 489
    :cond_1
    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/GenericRequest;->b(Lcom/bumptech/glide/load/engine/Resource;)V

    .line 490
    new-instance v2, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected to receive an object of "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/bumptech/glide/request/GenericRequest;->o:Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " but instead got "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "{"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " inside Resource{"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "}."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_3

    const-string v0, ""

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/bumptech/glide/request/GenericRequest;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_1

    :cond_3
    const-string v0, " To indicate failure return a null Resource object, rather than a Resource object containing null data."

    goto :goto_2

    .line 500
    :cond_4
    invoke-direct {p0}, Lcom/bumptech/glide/request/GenericRequest;->o()Z

    move-result v0

    if-nez v0, :cond_5

    .line 501
    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/GenericRequest;->b(Lcom/bumptech/glide/load/engine/Resource;)V

    .line 503
    sget-object v0, Lcom/bumptech/glide/request/GenericRequest$Status;->COMPLETE:Lcom/bumptech/glide/request/GenericRequest$Status;

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->F:Lcom/bumptech/glide/request/GenericRequest$Status;

    goto :goto_0

    .line 507
    :cond_5
    invoke-direct {p0, p1, v1}, Lcom/bumptech/glide/request/GenericRequest;->a(Lcom/bumptech/glide/load/engine/Resource;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 4

    .prologue
    .line 541
    const-string v0, "GenericRequest"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    const-string v0, "GenericRequest"

    const-string v1, "load failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 545
    :cond_0
    sget-object v0, Lcom/bumptech/glide/request/GenericRequest$Status;->FAILED:Lcom/bumptech/glide/request/GenericRequest$Status;

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->F:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 547
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->s:Lcom/bumptech/glide/request/RequestListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->s:Lcom/bumptech/glide/request/RequestListener;

    iget-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->n:Ljava/lang/Object;

    iget-object v2, p0, Lcom/bumptech/glide/request/GenericRequest;->r:Lcom/bumptech/glide/request/target/Target;

    invoke-direct {p0}, Lcom/bumptech/glide/request/GenericRequest;->q()Z

    move-result v3

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/bumptech/glide/request/RequestListener;->a(Ljava/lang/Exception;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 548
    :cond_1
    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/GenericRequest;->b(Ljava/lang/Exception;)V

    .line 550
    :cond_2
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 262
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bumptech/glide/request/GenericRequest;->E:J

    .line 263
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->n:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 264
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/GenericRequest;->a(Ljava/lang/Exception;)V

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    sget-object v0, Lcom/bumptech/glide/request/GenericRequest$Status;->WAITING_FOR_SIZE:Lcom/bumptech/glide/request/GenericRequest$Status;

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->F:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 269
    iget v0, p0, Lcom/bumptech/glide/request/GenericRequest;->w:I

    iget v1, p0, Lcom/bumptech/glide/request/GenericRequest;->x:I

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/Util;->a(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 270
    iget v0, p0, Lcom/bumptech/glide/request/GenericRequest;->w:I

    iget v1, p0, Lcom/bumptech/glide/request/GenericRequest;->x:I

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/GenericRequest;->a(II)V

    .line 275
    :goto_1
    invoke-virtual {p0}, Lcom/bumptech/glide/request/GenericRequest;->h()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/bumptech/glide/request/GenericRequest;->k()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/bumptech/glide/request/GenericRequest;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 276
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->r:Lcom/bumptech/glide/request/target/Target;

    invoke-direct {p0}, Lcom/bumptech/glide/request/GenericRequest;->n()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bumptech/glide/request/target/Target;->a(Landroid/graphics/drawable/Drawable;)V

    .line 278
    :cond_2
    const-string v0, "GenericRequest"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finished run method in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/bumptech/glide/request/GenericRequest;->E:J

    invoke-static {v2, v3}, Lcom/bumptech/glide/util/LogTime;->a(J)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/GenericRequest;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 272
    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->r:Lcom/bumptech/glide/request/target/Target;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/target/Target;->a(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V

    goto :goto_1
.end method

.method c()V
    .locals 1

    .prologue
    .line 294
    sget-object v0, Lcom/bumptech/glide/request/GenericRequest$Status;->CANCELLED:Lcom/bumptech/glide/request/GenericRequest$Status;

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->F:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 295
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->D:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->D:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/Engine$LoadStatus;->a()V

    .line 297
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->D:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    .line 299
    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 313
    invoke-static {}, Lcom/bumptech/glide/util/Util;->a()V

    .line 314
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->F:Lcom/bumptech/glide/request/GenericRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/GenericRequest$Status;->CLEARED:Lcom/bumptech/glide/request/GenericRequest$Status;

    if-ne v0, v1, :cond_0

    .line 327
    :goto_0
    return-void

    .line 317
    :cond_0
    invoke-virtual {p0}, Lcom/bumptech/glide/request/GenericRequest;->c()V

    .line 319
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->C:Lcom/bumptech/glide/load/engine/Resource;

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->C:Lcom/bumptech/glide/load/engine/Resource;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/GenericRequest;->b(Lcom/bumptech/glide/load/engine/Resource;)V

    .line 322
    :cond_1
    invoke-direct {p0}, Lcom/bumptech/glide/request/GenericRequest;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 323
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->r:Lcom/bumptech/glide/request/target/Target;

    invoke-direct {p0}, Lcom/bumptech/glide/request/GenericRequest;->n()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bumptech/glide/request/target/Target;->b(Landroid/graphics/drawable/Drawable;)V

    .line 326
    :cond_2
    sget-object v0, Lcom/bumptech/glide/request/GenericRequest$Status;->CLEARED:Lcom/bumptech/glide/request/GenericRequest$Status;

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->F:Lcom/bumptech/glide/request/GenericRequest$Status;

    goto :goto_0
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->F:Lcom/bumptech/glide/request/GenericRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/GenericRequest$Status;->PAUSED:Lcom/bumptech/glide/request/GenericRequest$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/bumptech/glide/request/GenericRequest;->d()V

    .line 337
    sget-object v0, Lcom/bumptech/glide/request/GenericRequest$Status;->PAUSED:Lcom/bumptech/glide/request/GenericRequest$Status;

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->F:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 338
    return-void
.end method

.method public g()Z
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->F:Lcom/bumptech/glide/request/GenericRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/GenericRequest$Status;->RUNNING:Lcom/bumptech/glide/request/GenericRequest$Status;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->F:Lcom/bumptech/glide/request/GenericRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/GenericRequest$Status;->WAITING_FOR_SIZE:Lcom/bumptech/glide/request/GenericRequest$Status;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->F:Lcom/bumptech/glide/request/GenericRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/GenericRequest$Status;->COMPLETE:Lcom/bumptech/glide/request/GenericRequest$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/bumptech/glide/request/GenericRequest;->h()Z

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->F:Lcom/bumptech/glide/request/GenericRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/GenericRequest$Status;->CANCELLED:Lcom/bumptech/glide/request/GenericRequest$Status;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->F:Lcom/bumptech/glide/request/GenericRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/GenericRequest$Status;->CLEARED:Lcom/bumptech/glide/request/GenericRequest$Status;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()Z
    .locals 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->F:Lcom/bumptech/glide/request/GenericRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/GenericRequest$Status;->FAILED:Lcom/bumptech/glide/request/GenericRequest$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
