.class Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;
.super Ljava/lang/Object;
.source "SubscriberMethodFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/greenrobot/eventbus/SubscriberMethodFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FindState"
.end annotation


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/greenrobot/eventbus/SubscriberMethod;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/lang/StringBuilder;

.field e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field f:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field g:Z

.field h:Lorg/greenrobot/eventbus/meta/SubscriberInfo;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->a:Ljava/util/List;

    .line 193
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->b:Ljava/util/Map;

    .line 194
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->c:Ljava/util/Map;

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->d:Ljava/lang/StringBuilder;

    return-void
.end method

.method private b(Ljava/lang/reflect/Method;Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 239
    iget-object v0, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 240
    iget-object v0, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    iget-object v0, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->d:Ljava/lang/StringBuilder;

    const/16 v2, 0x3e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    iget-object v0, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 244
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    .line 245
    iget-object v0, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->c:Ljava/util/Map;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 246
    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 248
    :cond_0
    const/4 v0, 0x1

    .line 252
    :goto_0
    return v0

    .line 251
    :cond_1
    iget-object v3, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->c:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    .line 252
    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 209
    iget-object v0, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 210
    iget-object v0, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 211
    iget-object v0, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 212
    iget-object v0, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 213
    iput-object v1, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->e:Ljava/lang/Class;

    .line 214
    iput-object v1, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->f:Ljava/lang/Class;

    .line 215
    iput-boolean v2, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->g:Z

    .line 216
    iput-object v1, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->h:Lorg/greenrobot/eventbus/meta/SubscriberInfo;

    .line 217
    return-void
.end method

.method a(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 203
    iput-object p1, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->f:Ljava/lang/Class;

    iput-object p1, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->e:Ljava/lang/Class;

    .line 204
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->g:Z

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->h:Lorg/greenrobot/eventbus/meta/SubscriberInfo;

    .line 206
    return-void
.end method

.method a(Ljava/lang/reflect/Method;Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->b:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 223
    if-nez v0, :cond_0

    .line 224
    const/4 v0, 0x1

    .line 234
    :goto_0
    return v0

    .line 226
    :cond_0
    instance-of v1, v0, Ljava/lang/reflect/Method;

    if-eqz v1, :cond_2

    .line 227
    check-cast v0, Ljava/lang/reflect/Method;

    invoke-direct {p0, v0, p2}, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->b(Ljava/lang/reflect/Method;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 229
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 232
    :cond_1
    iget-object v0, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->b:Ljava/util/Map;

    invoke-interface {v0, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->b(Ljava/lang/reflect/Method;Ljava/lang/Class;)Z

    move-result v0

    goto :goto_0
.end method

.method b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 257
    iget-boolean v0, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->g:Z

    if-eqz v0, :cond_1

    .line 258
    iput-object v2, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->f:Ljava/lang/Class;

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    iget-object v0, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->f:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->f:Ljava/lang/Class;

    .line 261
    iget-object v0, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->f:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 263
    const-string v1, "java."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "javax."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    :cond_2
    iput-object v2, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->f:Ljava/lang/Class;

    goto :goto_0
.end method
