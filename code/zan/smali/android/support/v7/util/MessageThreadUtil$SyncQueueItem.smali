.class Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
.super Ljava/lang/Object;
.source "MessageThreadUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/util/MessageThreadUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SyncQueueItem"
.end annotation


# static fields
.field private static h:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

.field private static final i:Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Ljava/lang/Object;

.field private j:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 178
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->i:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(III)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 223
    const/4 v6, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v6}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->a(IIIIIILjava/lang/Object;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v0

    return-object v0
.end method

.method static a(IIIIIILjava/lang/Object;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    .locals 3

    .prologue
    .line 202
    sget-object v1, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 204
    :try_start_0
    sget-object v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->h:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    if-nez v0, :cond_0

    .line 205
    new-instance v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    invoke-direct {v0}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;-><init>()V

    .line 211
    :goto_0
    iput p0, v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->a:I

    .line 212
    iput p1, v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->b:I

    .line 213
    iput p2, v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->c:I

    .line 214
    iput p3, v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->d:I

    .line 215
    iput p4, v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->e:I

    .line 216
    iput p5, v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->f:I

    .line 217
    iput-object p6, v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->g:Ljava/lang/Object;

    .line 218
    monitor-exit v1

    return-object v0

    .line 207
    :cond_0
    sget-object v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->h:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    .line 208
    sget-object v2, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->h:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    iget-object v2, v2, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->j:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    sput-object v2, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->h:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    .line 209
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->j:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    goto :goto_0

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static a(IILjava/lang/Object;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 227
    move v0, p0

    move v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->a(IIIIIILjava/lang/Object;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->j:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    return-object v0
.end method

.method static synthetic a(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->j:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    return-object p1
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 189
    iput-object v1, p0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->j:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    .line 190
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->f:I

    iput v0, p0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->e:I

    iput v0, p0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->d:I

    iput v0, p0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->c:I

    iput v0, p0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->b:I

    iput v0, p0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->a:I

    .line 191
    iput-object v1, p0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->g:Ljava/lang/Object;

    .line 192
    sget-object v1, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 193
    :try_start_0
    sget-object v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->h:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    if-eqz v0, :cond_0

    .line 194
    sget-object v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->h:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    iput-object v0, p0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->j:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    .line 196
    :cond_0
    sput-object p0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->h:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    .line 197
    monitor-exit v1

    .line 198
    return-void

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
