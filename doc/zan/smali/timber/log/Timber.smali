.class public final Ltimber/log/Timber;
.super Ljava/lang/Object;
.source "Timber.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltimber/log/Timber$DebugTree;,
        Ltimber/log/Timber$Tree;
    }
.end annotation


# static fields
.field static volatile a:[Ltimber/log/Timber$Tree;

.field private static final b:[Ltimber/log/Timber$Tree;

.field private static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltimber/log/Timber$Tree;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ltimber/log/Timber$Tree;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x0

    new-array v0, v0, [Ltimber/log/Timber$Tree;

    sput-object v0, Ltimber/log/Timber;->b:[Ltimber/log/Timber$Tree;

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ltimber/log/Timber;->c:Ljava/util/List;

    .line 215
    sget-object v0, Ltimber/log/Timber;->b:[Ltimber/log/Timber$Tree;

    sput-object v0, Ltimber/log/Timber;->a:[Ltimber/log/Timber$Tree;

    .line 218
    new-instance v0, Ltimber/log/Timber$1;

    invoke-direct {v0}, Ltimber/log/Timber$1;-><init>()V

    sput-object v0, Ltimber/log/Timber;->d:Ltimber/log/Timber$Tree;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instances."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static a()Ltimber/log/Timber$Tree;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 132
    sget-object v0, Ltimber/log/Timber;->d:Ltimber/log/Timber$Tree;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ltimber/log/Timber$Tree;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 138
    sget-object v1, Ltimber/log/Timber;->a:[Ltimber/log/Timber$Tree;

    .line 139
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 140
    iget-object v3, v3, Ltimber/log/Timber$Tree;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_0
    sget-object v0, Ltimber/log/Timber;->d:Ltimber/log/Timber$Tree;

    return-object v0
.end method

.method public static varargs a(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NonNls;
        .end annotation
    .end param

    .prologue
    .line 113
    sget-object v0, Ltimber/log/Timber;->d:Ltimber/log/Timber$Tree;

    invoke-virtual {v0, p0, p1, p2}, Ltimber/log/Timber$Tree;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 114
    return-void
.end method

.method public static a(ILjava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 123
    sget-object v0, Ltimber/log/Timber;->d:Ltimber/log/Timber$Tree;

    invoke-virtual {v0, p0, p1}, Ltimber/log/Timber$Tree;->a(ILjava/lang/Throwable;)V

    .line 124
    return-void
.end method

.method public static varargs a(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NonNls;
        .end annotation
    .end param

    .prologue
    .line 118
    sget-object v0, Ltimber/log/Timber;->d:Ltimber/log/Timber$Tree;

    invoke-virtual {v0, p0, p1, p2, p3}, Ltimber/log/Timber$Tree;->a(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    return-void
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NonNls;
        .end annotation
    .end param

    .prologue
    .line 23
    sget-object v0, Ltimber/log/Timber;->d:Ltimber/log/Timber$Tree;

    invoke-virtual {v0, p0, p1}, Ltimber/log/Timber$Tree;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    return-void
.end method

.method public static a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 33
    sget-object v0, Ltimber/log/Timber;->d:Ltimber/log/Timber$Tree;

    invoke-virtual {v0, p0}, Ltimber/log/Timber$Tree;->a(Ljava/lang/Throwable;)V

    .line 34
    return-void
.end method

.method public static varargs a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NonNls;
        .end annotation
    .end param

    .prologue
    .line 28
    sget-object v0, Ltimber/log/Timber;->d:Ltimber/log/Timber$Tree;

    invoke-virtual {v0, p0, p1, p2}, Ltimber/log/Timber$Tree;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    return-void
.end method

.method public static a(Ltimber/log/Timber$Tree;)V
    .locals 3
    .param p0    # Ltimber/log/Timber$Tree;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 148
    if-nez p0, :cond_0

    .line 149
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "tree == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_0
    sget-object v0, Ltimber/log/Timber;->d:Ltimber/log/Timber$Tree;

    if-ne p0, v0, :cond_1

    .line 152
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot plant Timber into itself."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_1
    sget-object v1, Ltimber/log/Timber;->c:Ljava/util/List;

    monitor-enter v1

    .line 155
    :try_start_0
    sget-object v0, Ltimber/log/Timber;->c:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    sget-object v0, Ltimber/log/Timber;->c:Ljava/util/List;

    sget-object v2, Ltimber/log/Timber;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ltimber/log/Timber$Tree;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltimber/log/Timber$Tree;

    sput-object v0, Ltimber/log/Timber;->a:[Ltimber/log/Timber$Tree;

    .line 157
    monitor-exit v1

    .line 158
    return-void

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static varargs a([Ltimber/log/Timber$Tree;)V
    .locals 4
    .param p0    # [Ltimber/log/Timber$Tree;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 163
    if-nez p0, :cond_0

    .line 164
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "trees == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_0
    array-length v1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_3

    aget-object v2, p0, v0

    .line 167
    if-nez v2, :cond_1

    .line 168
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "trees contains null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_1
    sget-object v3, Ltimber/log/Timber;->d:Ltimber/log/Timber$Tree;

    if-ne v2, v3, :cond_2

    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot plant Timber into itself."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    :cond_3
    sget-object v1, Ltimber/log/Timber;->c:Ljava/util/List;

    monitor-enter v1

    .line 175
    :try_start_0
    sget-object v0, Ltimber/log/Timber;->c:Ljava/util/List;

    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 176
    sget-object v0, Ltimber/log/Timber;->c:Ljava/util/List;

    sget-object v2, Ltimber/log/Timber;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ltimber/log/Timber$Tree;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltimber/log/Timber$Tree;

    sput-object v0, Ltimber/log/Timber;->a:[Ltimber/log/Timber$Tree;

    .line 177
    monitor-exit v1

    .line 178
    return-void

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static b()V
    .locals 2

    .prologue
    .line 192
    sget-object v1, Ltimber/log/Timber;->c:Ljava/util/List;

    monitor-enter v1

    .line 193
    :try_start_0
    sget-object v0, Ltimber/log/Timber;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 194
    sget-object v0, Ltimber/log/Timber;->b:[Ltimber/log/Timber$Tree;

    sput-object v0, Ltimber/log/Timber;->a:[Ltimber/log/Timber$Tree;

    .line 195
    monitor-exit v1

    .line 196
    return-void

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NonNls;
        .end annotation
    .end param

    .prologue
    .line 38
    sget-object v0, Ltimber/log/Timber;->d:Ltimber/log/Timber$Tree;

    invoke-virtual {v0, p0, p1}, Ltimber/log/Timber$Tree;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    return-void
.end method

.method public static b(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 48
    sget-object v0, Ltimber/log/Timber;->d:Ltimber/log/Timber$Tree;

    invoke-virtual {v0, p0}, Ltimber/log/Timber$Tree;->b(Ljava/lang/Throwable;)V

    .line 49
    return-void
.end method

.method public static varargs b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NonNls;
        .end annotation
    .end param

    .prologue
    .line 43
    sget-object v0, Ltimber/log/Timber;->d:Ltimber/log/Timber$Tree;

    invoke-virtual {v0, p0, p1, p2}, Ltimber/log/Timber$Tree;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    return-void
.end method

.method public static b(Ltimber/log/Timber$Tree;)V
    .locals 4
    .param p0    # Ltimber/log/Timber$Tree;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 182
    sget-object v1, Ltimber/log/Timber;->c:Ljava/util/List;

    monitor-enter v1

    .line 183
    :try_start_0
    sget-object v0, Ltimber/log/Timber;->c:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot uproot tree which is not planted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 186
    :cond_0
    :try_start_1
    sget-object v0, Ltimber/log/Timber;->c:Ljava/util/List;

    sget-object v2, Ltimber/log/Timber;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ltimber/log/Timber$Tree;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltimber/log/Timber$Tree;

    sput-object v0, Ltimber/log/Timber;->a:[Ltimber/log/Timber$Tree;

    .line 187
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    return-void
.end method

.method public static c()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ltimber/log/Timber$Tree;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 201
    sget-object v1, Ltimber/log/Timber;->c:Ljava/util/List;

    monitor-enter v1

    .line 202
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    sget-object v2, Ltimber/log/Timber;->c:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static varargs c(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NonNls;
        .end annotation
    .end param

    .prologue
    .line 53
    sget-object v0, Ltimber/log/Timber;->d:Ltimber/log/Timber$Tree;

    invoke-virtual {v0, p0, p1}, Ltimber/log/Timber$Tree;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    return-void
.end method

.method public static c(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 63
    sget-object v0, Ltimber/log/Timber;->d:Ltimber/log/Timber$Tree;

    invoke-virtual {v0, p0}, Ltimber/log/Timber$Tree;->c(Ljava/lang/Throwable;)V

    .line 64
    return-void
.end method

.method public static varargs c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NonNls;
        .end annotation
    .end param

    .prologue
    .line 58
    sget-object v0, Ltimber/log/Timber;->d:Ltimber/log/Timber$Tree;

    invoke-virtual {v0, p0, p1, p2}, Ltimber/log/Timber$Tree;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    return-void
.end method

.method public static d()I
    .locals 2

    .prologue
    .line 207
    sget-object v1, Ltimber/log/Timber;->c:Ljava/util/List;

    monitor-enter v1

    .line 208
    :try_start_0
    sget-object v0, Ltimber/log/Timber;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NonNls;
        .end annotation
    .end param

    .prologue
    .line 68
    sget-object v0, Ltimber/log/Timber;->d:Ltimber/log/Timber$Tree;

    invoke-virtual {v0, p0, p1}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    return-void
.end method

.method public static d(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 78
    sget-object v0, Ltimber/log/Timber;->d:Ltimber/log/Timber$Tree;

    invoke-virtual {v0, p0}, Ltimber/log/Timber$Tree;->d(Ljava/lang/Throwable;)V

    .line 79
    return-void
.end method

.method public static varargs d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NonNls;
        .end annotation
    .end param

    .prologue
    .line 73
    sget-object v0, Ltimber/log/Timber;->d:Ltimber/log/Timber$Tree;

    invoke-virtual {v0, p0, p1, p2}, Ltimber/log/Timber$Tree;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    return-void
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NonNls;
        .end annotation
    .end param

    .prologue
    .line 83
    sget-object v0, Ltimber/log/Timber;->d:Ltimber/log/Timber$Tree;

    invoke-virtual {v0, p0, p1}, Ltimber/log/Timber$Tree;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    return-void
.end method

.method public static e(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 93
    sget-object v0, Ltimber/log/Timber;->d:Ltimber/log/Timber$Tree;

    invoke-virtual {v0, p0}, Ltimber/log/Timber$Tree;->e(Ljava/lang/Throwable;)V

    .line 94
    return-void
.end method

.method public static varargs e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NonNls;
        .end annotation
    .end param

    .prologue
    .line 88
    sget-object v0, Ltimber/log/Timber;->d:Ltimber/log/Timber$Tree;

    invoke-virtual {v0, p0, p1, p2}, Ltimber/log/Timber$Tree;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    return-void
.end method

.method public static varargs f(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NonNls;
        .end annotation
    .end param

    .prologue
    .line 98
    sget-object v0, Ltimber/log/Timber;->d:Ltimber/log/Timber$Tree;

    invoke-virtual {v0, p0, p1}, Ltimber/log/Timber$Tree;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    return-void
.end method

.method public static f(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 108
    sget-object v0, Ltimber/log/Timber;->d:Ltimber/log/Timber$Tree;

    invoke-virtual {v0, p0}, Ltimber/log/Timber$Tree;->f(Ljava/lang/Throwable;)V

    .line 109
    return-void
.end method

.method public static varargs f(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NonNls;
        .end annotation
    .end param

    .prologue
    .line 103
    sget-object v0, Ltimber/log/Timber;->d:Ltimber/log/Timber$Tree;

    invoke-virtual {v0, p0, p1, p2}, Ltimber/log/Timber$Tree;->f(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    return-void
.end method
