.class public Lorg/greenrobot/eventbus/util/ErrorDialogConfig;
.super Ljava/lang/Object;
.source "ErrorDialogConfig.java"


# instance fields
.field final a:Landroid/content/res/Resources;

.field final b:I

.field final c:I

.field final d:Lorg/greenrobot/eventbus/util/ExceptionToResourceMapping;

.field e:Lorg/greenrobot/eventbus/EventBus;

.field f:Z

.field g:Ljava/lang/String;

.field h:I

.field i:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;II)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/greenrobot/eventbus/util/ErrorDialogConfig;->f:Z

    .line 37
    iput-object p1, p0, Lorg/greenrobot/eventbus/util/ErrorDialogConfig;->a:Landroid/content/res/Resources;

    .line 38
    iput p2, p0, Lorg/greenrobot/eventbus/util/ErrorDialogConfig;->b:I

    .line 39
    iput p3, p0, Lorg/greenrobot/eventbus/util/ErrorDialogConfig;->c:I

    .line 40
    new-instance v0, Lorg/greenrobot/eventbus/util/ExceptionToResourceMapping;

    invoke-direct {v0}, Lorg/greenrobot/eventbus/util/ExceptionToResourceMapping;-><init>()V

    iput-object v0, p0, Lorg/greenrobot/eventbus/util/ErrorDialogConfig;->d:Lorg/greenrobot/eventbus/util/ExceptionToResourceMapping;

    .line 41
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)I
    .locals 3

    .prologue
    .line 49
    iget-object v0, p0, Lorg/greenrobot/eventbus/util/ErrorDialogConfig;->d:Lorg/greenrobot/eventbus/util/ExceptionToResourceMapping;

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/util/ExceptionToResourceMapping;->a(Ljava/lang/Throwable;)Ljava/lang/Integer;

    move-result-object v0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 54
    :goto_0
    return v0

    .line 53
    :cond_0
    sget-object v0, Lorg/greenrobot/eventbus/EventBus;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No specific message ressource ID found for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget v0, p0, Lorg/greenrobot/eventbus/util/ErrorDialogConfig;->c:I

    goto :goto_0
.end method

.method public a(Ljava/lang/Class;I)Lorg/greenrobot/eventbus/util/ErrorDialogConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Throwable;",
            ">;I)",
            "Lorg/greenrobot/eventbus/util/ErrorDialogConfig;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lorg/greenrobot/eventbus/util/ErrorDialogConfig;->d:Lorg/greenrobot/eventbus/util/ExceptionToResourceMapping;

    invoke-virtual {v0, p1, p2}, Lorg/greenrobot/eventbus/util/ExceptionToResourceMapping;->a(Ljava/lang/Class;I)Lorg/greenrobot/eventbus/util/ExceptionToResourceMapping;

    .line 45
    return-object p0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/greenrobot/eventbus/util/ErrorDialogConfig;->f:Z

    .line 68
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 59
    iput p1, p0, Lorg/greenrobot/eventbus/util/ErrorDialogConfig;->h:I

    .line 60
    return-void
.end method

.method public a(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 63
    iput-object p1, p0, Lorg/greenrobot/eventbus/util/ErrorDialogConfig;->i:Ljava/lang/Class;

    .line 64
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lorg/greenrobot/eventbus/util/ErrorDialogConfig;->g:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public a(Lorg/greenrobot/eventbus/EventBus;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lorg/greenrobot/eventbus/util/ErrorDialogConfig;->e:Lorg/greenrobot/eventbus/EventBus;

    .line 76
    return-void
.end method

.method b()Lorg/greenrobot/eventbus/EventBus;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/greenrobot/eventbus/util/ErrorDialogConfig;->e:Lorg/greenrobot/eventbus/EventBus;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/greenrobot/eventbus/util/ErrorDialogConfig;->e:Lorg/greenrobot/eventbus/EventBus;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->a()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    goto :goto_0
.end method
