.class public Lcom/umeng/commonsdk/statistics/idtracking/e;
.super Ljava/lang/Object;
.source "IdTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/statistics/idtracking/e$a;
    }
.end annotation


# static fields
.field public static final a:J = 0x5265c00L

.field public static b:Lcom/umeng/commonsdk/statistics/idtracking/e;

.field private static j:Ljava/lang/Object;


# instance fields
.field private final c:Ljava/lang/String;

.field private d:Ljava/io/File;

.field private e:Lcom/umeng/commonsdk/statistics/proto/c;

.field private f:J

.field private g:J

.field private h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/umeng/commonsdk/statistics/idtracking/a;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/umeng/commonsdk/statistics/idtracking/e$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 220
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/statistics/idtracking/e;->j:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, "umeng_it.cache"

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->c:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->e:Lcom/umeng/commonsdk/statistics/proto/c;

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->h:Ljava/util/Set;

    .line 42
    iput-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->i:Lcom/umeng/commonsdk/statistics/idtracking/e$a;

    .line 47
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "umeng_it.cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->d:Ljava/io/File;

    .line 48
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->g:J

    .line 49
    new-instance v0, Lcom/umeng/commonsdk/statistics/idtracking/e$a;

    invoke-direct {v0, p1}, Lcom/umeng/commonsdk/statistics/idtracking/e$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->i:Lcom/umeng/commonsdk/statistics/idtracking/e$a;

    .line 50
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->i:Lcom/umeng/commonsdk/statistics/idtracking/e$a;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/idtracking/e$a;->b()V

    .line 51
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/idtracking/e;
    .locals 4

    .prologue
    .line 54
    const-class v1, Lcom/umeng/commonsdk/statistics/idtracking/e;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/umeng/commonsdk/statistics/idtracking/e;->b:Lcom/umeng/commonsdk/statistics/idtracking/e;

    if-nez v0, :cond_3

    .line 55
    new-instance v0, Lcom/umeng/commonsdk/statistics/idtracking/e;

    invoke-direct {v0, p0}, Lcom/umeng/commonsdk/statistics/idtracking/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/idtracking/e;->b:Lcom/umeng/commonsdk/statistics/idtracking/e;

    .line 57
    sget-object v0, Lcom/umeng/commonsdk/statistics/idtracking/e;->b:Lcom/umeng/commonsdk/statistics/idtracking/e;

    new-instance v2, Lcom/umeng/commonsdk/statistics/idtracking/f;

    invoke-direct {v2, p0}, Lcom/umeng/commonsdk/statistics/idtracking/f;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v2}, Lcom/umeng/commonsdk/statistics/idtracking/e;->a(Lcom/umeng/commonsdk/statistics/idtracking/a;)Z

    .line 58
    sget-object v0, Lcom/umeng/commonsdk/statistics/idtracking/e;->b:Lcom/umeng/commonsdk/statistics/idtracking/e;

    new-instance v2, Lcom/umeng/commonsdk/statistics/idtracking/b;

    invoke-direct {v2, p0}, Lcom/umeng/commonsdk/statistics/idtracking/b;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v2}, Lcom/umeng/commonsdk/statistics/idtracking/e;->a(Lcom/umeng/commonsdk/statistics/idtracking/a;)Z

    .line 59
    sget-object v0, Lcom/umeng/commonsdk/statistics/idtracking/e;->b:Lcom/umeng/commonsdk/statistics/idtracking/e;

    new-instance v2, Lcom/umeng/commonsdk/statistics/idtracking/r;

    invoke-direct {v2, p0}, Lcom/umeng/commonsdk/statistics/idtracking/r;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v2}, Lcom/umeng/commonsdk/statistics/idtracking/e;->a(Lcom/umeng/commonsdk/statistics/idtracking/a;)Z

    .line 60
    sget-object v0, Lcom/umeng/commonsdk/statistics/idtracking/e;->b:Lcom/umeng/commonsdk/statistics/idtracking/e;

    new-instance v2, Lcom/umeng/commonsdk/statistics/idtracking/d;

    invoke-direct {v2, p0}, Lcom/umeng/commonsdk/statistics/idtracking/d;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v2}, Lcom/umeng/commonsdk/statistics/idtracking/e;->a(Lcom/umeng/commonsdk/statistics/idtracking/a;)Z

    .line 61
    sget-object v0, Lcom/umeng/commonsdk/statistics/idtracking/e;->b:Lcom/umeng/commonsdk/statistics/idtracking/e;

    new-instance v2, Lcom/umeng/commonsdk/statistics/idtracking/c;

    invoke-direct {v2, p0}, Lcom/umeng/commonsdk/statistics/idtracking/c;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v2}, Lcom/umeng/commonsdk/statistics/idtracking/e;->a(Lcom/umeng/commonsdk/statistics/idtracking/a;)Z

    .line 62
    sget-object v0, Lcom/umeng/commonsdk/statistics/idtracking/e;->b:Lcom/umeng/commonsdk/statistics/idtracking/e;

    new-instance v2, Lcom/umeng/commonsdk/statistics/idtracking/g;

    invoke-direct {v2, p0}, Lcom/umeng/commonsdk/statistics/idtracking/g;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v2}, Lcom/umeng/commonsdk/statistics/idtracking/e;->a(Lcom/umeng/commonsdk/statistics/idtracking/a;)Z

    .line 63
    sget-object v0, Lcom/umeng/commonsdk/statistics/idtracking/e;->b:Lcom/umeng/commonsdk/statistics/idtracking/e;

    new-instance v2, Lcom/umeng/commonsdk/statistics/idtracking/j;

    invoke-direct {v2}, Lcom/umeng/commonsdk/statistics/idtracking/j;-><init>()V

    invoke-direct {v0, v2}, Lcom/umeng/commonsdk/statistics/idtracking/e;->a(Lcom/umeng/commonsdk/statistics/idtracking/a;)Z

    .line 64
    sget-object v0, Lcom/umeng/commonsdk/statistics/idtracking/e;->b:Lcom/umeng/commonsdk/statistics/idtracking/e;

    new-instance v2, Lcom/umeng/commonsdk/statistics/idtracking/s;

    invoke-direct {v2, p0}, Lcom/umeng/commonsdk/statistics/idtracking/s;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v2}, Lcom/umeng/commonsdk/statistics/idtracking/e;->a(Lcom/umeng/commonsdk/statistics/idtracking/a;)Z

    .line 65
    new-instance v0, Lcom/umeng/commonsdk/statistics/idtracking/q;

    invoke-direct {v0, p0}, Lcom/umeng/commonsdk/statistics/idtracking/q;-><init>(Landroid/content/Context;)V

    .line 66
    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/idtracking/q;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 67
    sget-object v2, Lcom/umeng/commonsdk/statistics/idtracking/e;->b:Lcom/umeng/commonsdk/statistics/idtracking/e;

    invoke-direct {v2, v0}, Lcom/umeng/commonsdk/statistics/idtracking/e;->a(Lcom/umeng/commonsdk/statistics/idtracking/a;)Z

    .line 70
    :cond_0
    new-instance v0, Lcom/umeng/commonsdk/statistics/idtracking/i;

    invoke-direct {v0, p0}, Lcom/umeng/commonsdk/statistics/idtracking/i;-><init>(Landroid/content/Context;)V

    .line 71
    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/idtracking/i;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 72
    sget-object v2, Lcom/umeng/commonsdk/statistics/idtracking/e;->b:Lcom/umeng/commonsdk/statistics/idtracking/e;

    invoke-direct {v2, v0}, Lcom/umeng/commonsdk/statistics/idtracking/e;->a(Lcom/umeng/commonsdk/statistics/idtracking/a;)Z

    .line 73
    sget-object v2, Lcom/umeng/commonsdk/statistics/idtracking/e;->b:Lcom/umeng/commonsdk/statistics/idtracking/e;

    new-instance v3, Lcom/umeng/commonsdk/statistics/idtracking/h;

    invoke-direct {v3, p0}, Lcom/umeng/commonsdk/statistics/idtracking/h;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, v3}, Lcom/umeng/commonsdk/statistics/idtracking/e;->a(Lcom/umeng/commonsdk/statistics/idtracking/a;)Z

    .line 74
    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/idtracking/i;->i()V

    .line 77
    :cond_1
    sget v0, Lcom/umeng/commonsdk/statistics/d;->b:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    .line 78
    sget-object v0, Lcom/umeng/commonsdk/statistics/idtracking/e;->b:Lcom/umeng/commonsdk/statistics/idtracking/e;

    new-instance v2, Lcom/umeng/commonsdk/statistics/idtracking/p;

    invoke-direct {v2, p0}, Lcom/umeng/commonsdk/statistics/idtracking/p;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v2}, Lcom/umeng/commonsdk/statistics/idtracking/e;->a(Lcom/umeng/commonsdk/statistics/idtracking/a;)Z

    .line 79
    sget-object v0, Lcom/umeng/commonsdk/statistics/idtracking/e;->b:Lcom/umeng/commonsdk/statistics/idtracking/e;

    new-instance v2, Lcom/umeng/commonsdk/statistics/idtracking/m;

    invoke-direct {v2, p0}, Lcom/umeng/commonsdk/statistics/idtracking/m;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v2}, Lcom/umeng/commonsdk/statistics/idtracking/e;->a(Lcom/umeng/commonsdk/statistics/idtracking/a;)Z

    .line 80
    sget-object v0, Lcom/umeng/commonsdk/statistics/idtracking/e;->b:Lcom/umeng/commonsdk/statistics/idtracking/e;

    new-instance v2, Lcom/umeng/commonsdk/statistics/idtracking/o;

    invoke-direct {v2, p0}, Lcom/umeng/commonsdk/statistics/idtracking/o;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v2}, Lcom/umeng/commonsdk/statistics/idtracking/e;->a(Lcom/umeng/commonsdk/statistics/idtracking/a;)Z

    .line 81
    sget-object v0, Lcom/umeng/commonsdk/statistics/idtracking/e;->b:Lcom/umeng/commonsdk/statistics/idtracking/e;

    new-instance v2, Lcom/umeng/commonsdk/statistics/idtracking/n;

    invoke-direct {v2, p0}, Lcom/umeng/commonsdk/statistics/idtracking/n;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v2}, Lcom/umeng/commonsdk/statistics/idtracking/e;->a(Lcom/umeng/commonsdk/statistics/idtracking/a;)Z

    .line 82
    sget-object v0, Lcom/umeng/commonsdk/statistics/idtracking/e;->b:Lcom/umeng/commonsdk/statistics/idtracking/e;

    new-instance v2, Lcom/umeng/commonsdk/statistics/idtracking/l;

    invoke-direct {v2, p0}, Lcom/umeng/commonsdk/statistics/idtracking/l;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v2}, Lcom/umeng/commonsdk/statistics/idtracking/e;->a(Lcom/umeng/commonsdk/statistics/idtracking/a;)Z

    .line 83
    sget-object v0, Lcom/umeng/commonsdk/statistics/idtracking/e;->b:Lcom/umeng/commonsdk/statistics/idtracking/e;

    new-instance v2, Lcom/umeng/commonsdk/statistics/idtracking/k;

    invoke-direct {v2, p0}, Lcom/umeng/commonsdk/statistics/idtracking/k;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v2}, Lcom/umeng/commonsdk/statistics/idtracking/e;->a(Lcom/umeng/commonsdk/statistics/idtracking/a;)Z

    .line 86
    :cond_2
    sget-object v0, Lcom/umeng/commonsdk/statistics/idtracking/e;->b:Lcom/umeng/commonsdk/statistics/idtracking/e;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/idtracking/e;->e()V

    .line 89
    :cond_3
    sget-object v0, Lcom/umeng/commonsdk/statistics/idtracking/e;->b:Lcom/umeng/commonsdk/statistics/idtracking/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Lcom/umeng/commonsdk/statistics/proto/c;)V
    .locals 3

    .prologue
    .line 248
    sget-object v1, Lcom/umeng/commonsdk/statistics/idtracking/e;->j:Ljava/lang/Object;

    monitor-enter v1

    .line 249
    if-eqz p1, :cond_0

    .line 252
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 253
    :try_start_1
    new-instance v0, Lcom/umeng/commonsdk/proguard/u;

    invoke-direct {v0}, Lcom/umeng/commonsdk/proguard/u;-><init>()V

    invoke-virtual {v0, p1}, Lcom/umeng/commonsdk/proguard/u;->a(Lcom/umeng/commonsdk/proguard/l;)[B

    move-result-object v0

    .line 254
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    if-eqz v0, :cond_0

    .line 257
    :try_start_2
    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->d:Ljava/io/File;

    invoke-static {v2, v0}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->writeFile(Ljava/io/File;[B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 263
    :cond_0
    :goto_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 264
    return-void

    .line 254
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 259
    :catch_0
    move-exception v0

    .line 260
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 263
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0
.end method

.method private a(Lcom/umeng/commonsdk/statistics/idtracking/a;)Z
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->i:Lcom/umeng/commonsdk/statistics/idtracking/e$a;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/idtracking/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/commonsdk/statistics/idtracking/e$a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 99
    :goto_0
    return v0

    .line 95
    :cond_0
    sget-boolean v0, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v0, :cond_1

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid domain: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/idtracking/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->w(Ljava/lang/String;)V

    .line 99
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized g()V
    .locals 7

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/umeng/commonsdk/statistics/proto/c;

    invoke-direct {v1}, Lcom/umeng/commonsdk/statistics/proto/c;-><init>()V

    .line 141
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 142
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 144
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/commonsdk/statistics/idtracking/a;

    .line 145
    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/idtracking/a;->c()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 148
    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/idtracking/a;->d()Lcom/umeng/commonsdk/statistics/proto/b;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 149
    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/idtracking/a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/idtracking/a;->d()Lcom/umeng/commonsdk/statistics/proto/b;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_1
    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/idtracking/a;->e()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/idtracking/a;->e()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 153
    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/idtracking/a;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 157
    :cond_2
    :try_start_1
    invoke-virtual {v1, v3}, Lcom/umeng/commonsdk/statistics/proto/c;->a(Ljava/util/List;)Lcom/umeng/commonsdk/statistics/proto/c;

    .line 158
    invoke-virtual {v1, v2}, Lcom/umeng/commonsdk/statistics/proto/c;->a(Ljava/util/Map;)Lcom/umeng/commonsdk/statistics/proto/c;

    .line 160
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    :try_start_2
    iput-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->e:Lcom/umeng/commonsdk/statistics/proto/c;

    .line 163
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 164
    monitor-exit p0

    return-void

    .line 163
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private h()Lcom/umeng/commonsdk/statistics/proto/c;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 224
    sget-object v3, Lcom/umeng/commonsdk/statistics/idtracking/e;->j:Ljava/lang/Object;

    monitor-enter v3

    .line 225
    :try_start_0
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 226
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    :goto_0
    return-object v0

    .line 229
    :cond_0
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->d:Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 230
    :try_start_2
    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->readStreamToByteArray(Ljava/io/InputStream;)[B

    move-result-object v4

    .line 232
    new-instance v1, Lcom/umeng/commonsdk/statistics/proto/c;

    invoke-direct {v1}, Lcom/umeng/commonsdk/statistics/proto/c;-><init>()V

    .line 233
    new-instance v5, Lcom/umeng/commonsdk/proguard/o;

    invoke-direct {v5}, Lcom/umeng/commonsdk/proguard/o;-><init>()V

    invoke-virtual {v5, v1, v4}, Lcom/umeng/commonsdk/proguard/o;->a(Lcom/umeng/commonsdk/proguard/l;[B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 239
    :try_start_3
    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->safeClose(Ljava/io/InputStream;)V

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v1

    goto :goto_0

    .line 236
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 237
    :goto_1
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 239
    :try_start_5
    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->safeClose(Ljava/io/InputStream;)V

    .line 241
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 239
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    :try_start_6
    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->safeClose(Ljava/io/InputStream;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_2
    move-exception v0

    goto :goto_2

    .line 236
    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 6

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 108
    iget-wide v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->f:J

    sub-long v0, v2, v0

    iget-wide v4, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->g:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_4

    .line 109
    const/4 v1, 0x0

    .line 111
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/commonsdk/statistics/idtracking/a;

    .line 112
    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/idtracking/a;->c()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 116
    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/idtracking/a;->a()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 117
    const/4 v1, 0x1

    .line 119
    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/idtracking/a;->c()Z

    move-result v5

    if-nez v5, :cond_1

    .line 120
    iget-object v5, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->i:Lcom/umeng/commonsdk/statistics/idtracking/e$a;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/idtracking/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/umeng/commonsdk/statistics/idtracking/e$a;->b(Ljava/lang/String;)V

    :cond_1
    move v0, v1

    move v1, v0

    .line 123
    goto :goto_0

    .line 125
    :cond_2
    if-eqz v1, :cond_3

    .line 126
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/idtracking/e;->g()V

    .line 127
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->i:Lcom/umeng/commonsdk/statistics/idtracking/e$a;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/idtracking/e$a;->a()V

    .line 128
    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/idtracking/e;->f()V

    .line 131
    :cond_3
    iput-wide v2, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->f:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    :cond_4
    monitor-exit p0

    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 103
    iput-wide p1, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->g:J

    .line 104
    return-void
.end method

.method public declared-synchronized b()Lcom/umeng/commonsdk/statistics/proto/c;
    .locals 1

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->e:Lcom/umeng/commonsdk/statistics/proto/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized d()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 171
    monitor-enter p0

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/commonsdk/statistics/idtracking/a;

    .line 173
    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/idtracking/a;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 176
    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/idtracking/a;->e()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/idtracking/a;->e()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 177
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/umeng/commonsdk/statistics/idtracking/a;->a(Ljava/util/List;)V

    .line 178
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 180
    goto :goto_0

    .line 182
    :cond_1
    if-eqz v1, :cond_2

    .line 183
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->e:Lcom/umeng/commonsdk/statistics/proto/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/umeng/commonsdk/statistics/proto/c;->b(Z)V

    .line 184
    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/idtracking/e;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    :cond_2
    monitor-exit p0

    return-void

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public declared-synchronized e()V
    .locals 4

    .prologue
    .line 189
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/idtracking/e;->h()Lcom/umeng/commonsdk/statistics/proto/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 191
    if-nez v0, :cond_0

    .line 213
    :goto_0
    monitor-exit p0

    return-void

    .line 194
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->h:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 196
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 197
    :try_start_2
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->e:Lcom/umeng/commonsdk/statistics/proto/c;

    .line 199
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/commonsdk/statistics/idtracking/a;

    .line 200
    iget-object v3, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->e:Lcom/umeng/commonsdk/statistics/proto/c;

    invoke-virtual {v0, v3}, Lcom/umeng/commonsdk/statistics/idtracking/a;->a(Lcom/umeng/commonsdk/statistics/proto/c;)V

    .line 202
    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/idtracking/a;->c()Z

    move-result v3

    if-nez v3, :cond_1

    .line 203
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 189
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 207
    :cond_2
    :try_start_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/commonsdk/statistics/idtracking/a;

    .line 208
    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->h:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 210
    :cond_3
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 212
    :try_start_5
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/idtracking/e;->g()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0
.end method

.method public declared-synchronized f()V
    .locals 1

    .prologue
    .line 216
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->e:Lcom/umeng/commonsdk/statistics/proto/c;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->e:Lcom/umeng/commonsdk/statistics/proto/c;

    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/statistics/idtracking/e;->a(Lcom/umeng/commonsdk/statistics/proto/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    :cond_0
    monitor-exit p0

    return-void

    .line 216
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
