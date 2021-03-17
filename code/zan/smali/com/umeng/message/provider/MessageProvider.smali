.class public Lcom/umeng/message/provider/MessageProvider;
.super Landroid/content/ContentProvider;
.source "MessageProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/message/provider/MessageProvider$b;,
        Lcom/umeng/message/provider/MessageProvider$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Landroid/content/UriMatcher;

.field private static final g:I = 0x1

.field private static final h:I = 0x2

.field private static final i:I = 0x3

.field private static final j:I = 0x4

.field private static final k:I = 0x5

.field private static final l:I = 0x6

.field private static final m:I = 0x7

.field private static final n:I = 0x8

.field private static final o:I = 0x9

.field private static final p:I = 0xa

.field private static q:Landroid/content/Context;


# instance fields
.field private c:Lcom/umeng/message/provider/MessageProvider$a;

.field private d:Landroid/database/sqlite/SQLiteDatabase;

.field private e:Lcom/umeng/message/provider/MessageProvider$b;

.field private f:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    const-class v0, Lcom/umeng/message/provider/MessageProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/message/provider/MessageProvider;->a:Ljava/lang/String;

    .line 50
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/umeng/message/provider/MessageProvider;->b:Landroid/content/UriMatcher;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/umeng/message/provider/MessageProvider;->a:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 81
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :try_start_1
    new-instance v0, Lcom/umeng/message/provider/MessageProvider$a;

    invoke-virtual {p0}, Lcom/umeng/message/provider/MessageProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/umeng/message/provider/MessageProvider$a;-><init>(Lcom/umeng/message/provider/MessageProvider;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/message/provider/MessageProvider;->c:Lcom/umeng/message/provider/MessageProvider$a;

    .line 83
    new-instance v0, Lcom/umeng/message/provider/MessageProvider$b;

    invoke-virtual {p0}, Lcom/umeng/message/provider/MessageProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/umeng/message/provider/MessageProvider$b;-><init>(Lcom/umeng/message/provider/MessageProvider;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/message/provider/MessageProvider;->e:Lcom/umeng/message/provider/MessageProvider$b;

    .line 84
    iget-object v0, p0, Lcom/umeng/message/provider/MessageProvider;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/umeng/message/provider/MessageProvider;->c:Lcom/umeng/message/provider/MessageProvider$a;

    invoke-virtual {v0}, Lcom/umeng/message/provider/MessageProvider$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/provider/MessageProvider;->d:Landroid/database/sqlite/SQLiteDatabase;

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/umeng/message/provider/MessageProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/umeng/message/provider/MessageProvider;->e:Lcom/umeng/message/provider/MessageProvider$b;

    invoke-virtual {v0}, Lcom/umeng/message/provider/MessageProvider$b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/provider/MessageProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    .line 90
    :cond_1
    monitor-exit p0

    .line 97
    :cond_2
    :goto_0
    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    if-eqz v0, :cond_2

    .line 93
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 355
    iget-object v0, p0, Lcom/umeng/message/provider/MessageProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 357
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v3

    .line 358
    iget-object v0, p0, Lcom/umeng/message/provider/MessageProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    iget-object v0, p0, Lcom/umeng/message/provider/MessageProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 363
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v2

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentProviderOperation;

    .line 364
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 367
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 368
    invoke-virtual {p0}, Lcom/umeng/message/provider/MessageProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 369
    sget-object v5, Lcom/umeng/message/provider/MessageProvider;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notifychange endTransaction..uri:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 361
    :catchall_0
    move-exception v0

    move-object v3, v0

    iget-object v0, p0, Lcom/umeng/message/provider/MessageProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 363
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v2

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentProviderOperation;

    .line 364
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 367
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 368
    invoke-virtual {p0}, Lcom/umeng/message/provider/MessageProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 369
    sget-object v5, Lcom/umeng/message/provider/MessageProvider;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notifychange endTransaction..uri:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 371
    :cond_2
    throw v3

    .line 359
    :cond_3
    return-object v3
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 270
    const/4 v0, 0x0

    .line 271
    sget-object v1, Lcom/umeng/message/provider/MessageProvider;->b:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 316
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/umeng/message/provider/MessageProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 317
    return v0

    .line 278
    :pswitch_1
    iget-object v0, p0, Lcom/umeng/message/provider/MessageProvider;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "MsgTemp"

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 283
    :pswitch_2
    iget-object v0, p0, Lcom/umeng/message/provider/MessageProvider;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "MsgAlias"

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 288
    :pswitch_3
    iget-object v0, p0, Lcom/umeng/message/provider/MessageProvider;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "MsgAlias"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 293
    :pswitch_4
    iget-object v0, p0, Lcom/umeng/message/provider/MessageProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "MsgLogStore"

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 298
    :pswitch_5
    iget-object v0, p0, Lcom/umeng/message/provider/MessageProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "MsgLogIdTypeStore"

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 303
    :pswitch_6
    iget-object v0, p0, Lcom/umeng/message/provider/MessageProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "MsgLogStoreForAgoo"

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 308
    :pswitch_7
    iget-object v0, p0, Lcom/umeng/message/provider/MessageProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "MsgLogIdTypeStoreForAgoo"

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 312
    :pswitch_8
    iget-object v0, p0, Lcom/umeng/message/provider/MessageProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "InAppLogStore"

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 271
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 153
    sget-object v0, Lcom/umeng/message/provider/MessageProvider;->b:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 163
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :pswitch_1
    const-string v0, "vnd.android.cursor.dir/vnd.umeng.message"

    return-object v0

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x5

    const/4 v1, 0x0

    .line 169
    .line 170
    sget-object v0, Lcom/umeng/message/provider/MessageProvider;->b:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :pswitch_0
    move-object v0, v1

    .line 265
    :goto_0
    return-object v0

    .line 173
    :pswitch_1
    iget-object v0, p0, Lcom/umeng/message/provider/MessageProvider;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "MessageStore"

    invoke-virtual {v0, v2, v1, p2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    .line 175
    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 176
    sget-object v0, Lcom/umeng/message/provider/MessageProvider;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v0, Lcom/umeng/message/provider/a;->b:Landroid/net/Uri;

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 178
    invoke-virtual {p0}, Lcom/umeng/message/provider/MessageProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 185
    :pswitch_2
    iget-object v0, p0, Lcom/umeng/message/provider/MessageProvider;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "MsgAlias"

    invoke-virtual {v0, v2, v1, p2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    .line 187
    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 188
    sget-object v0, Lcom/umeng/message/provider/MessageProvider;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v0, Lcom/umeng/message/provider/a;->d:Landroid/net/Uri;

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 190
    invoke-virtual {p0}, Lcom/umeng/message/provider/MessageProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 197
    :pswitch_3
    iget-object v0, p0, Lcom/umeng/message/provider/MessageProvider;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "MsgTemp"

    invoke-virtual {v0, v2, v1, p2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    .line 199
    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 200
    sget-object v0, Lcom/umeng/message/provider/MessageProvider;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v0, Lcom/umeng/message/provider/a;->b:Landroid/net/Uri;

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 202
    invoke-virtual {p0}, Lcom/umeng/message/provider/MessageProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 209
    :pswitch_4
    iget-object v0, p0, Lcom/umeng/message/provider/MessageProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "MsgLogStore"

    invoke-virtual {v0, v2, v1, p2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    .line 211
    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 212
    sget-object v0, Lcom/umeng/message/provider/MessageProvider;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v0, Lcom/umeng/message/provider/a;->f:Landroid/net/Uri;

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 213
    invoke-virtual {p0}, Lcom/umeng/message/provider/MessageProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 220
    :pswitch_5
    iget-object v0, p0, Lcom/umeng/message/provider/MessageProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "MsgLogIdTypeStore"

    invoke-virtual {v0, v2, v1, p2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    .line 221
    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 222
    sget-object v0, Lcom/umeng/message/provider/MessageProvider;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v0, Lcom/umeng/message/provider/a;->g:Landroid/net/Uri;

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_0

    .line 229
    :pswitch_6
    iget-object v0, p0, Lcom/umeng/message/provider/MessageProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "MsgLogStoreForAgoo"

    invoke-virtual {v0, v2, v1, p2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    .line 230
    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 231
    sget-object v0, Lcom/umeng/message/provider/MessageProvider;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v0, Lcom/umeng/message/provider/a;->h:Landroid/net/Uri;

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_0

    .line 238
    :pswitch_7
    iget-object v0, p0, Lcom/umeng/message/provider/MessageProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "MsgLogIdTypeStoreForAgoo"

    invoke-virtual {v0, v2, v1, p2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    .line 239
    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 240
    sget-object v0, Lcom/umeng/message/provider/MessageProvider;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v0, Lcom/umeng/message/provider/a;->i:Landroid/net/Uri;

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_0

    .line 246
    :pswitch_8
    iget-object v0, p0, Lcom/umeng/message/provider/MessageProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "MsgConfigInfo"

    invoke-virtual {v0, v2, v1, p2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    .line 247
    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 248
    sget-object v0, Lcom/umeng/message/provider/MessageProvider;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v0, Lcom/umeng/message/provider/a;->j:Landroid/net/Uri;

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_0

    .line 254
    :pswitch_9
    iget-object v0, p0, Lcom/umeng/message/provider/MessageProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "InAppLogStore"

    invoke-virtual {v0, v2, v1, p2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    .line 255
    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 256
    sget-object v0, Lcom/umeng/message/provider/MessageProvider;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v0, Lcom/umeng/message/provider/a;->k:Landroid/net/Uri;

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_0

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 63
    invoke-virtual {p0}, Lcom/umeng/message/provider/MessageProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/umeng/message/provider/MessageProvider;->q:Landroid/content/Context;

    .line 64
    invoke-direct {p0}, Lcom/umeng/message/provider/MessageProvider;->b()V

    .line 65
    sget-object v0, Lcom/umeng/message/provider/MessageProvider;->b:Landroid/content/UriMatcher;

    sget-object v1, Lcom/umeng/message/provider/MessageProvider;->q:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v1, Lcom/umeng/message/provider/a;->a:Ljava/lang/String;

    const-string v2, "MessageStores"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 66
    sget-object v0, Lcom/umeng/message/provider/MessageProvider;->b:Landroid/content/UriMatcher;

    sget-object v1, Lcom/umeng/message/provider/MessageProvider;->q:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v1, Lcom/umeng/message/provider/a;->a:Ljava/lang/String;

    const-string v2, "MsgTemps"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 67
    sget-object v0, Lcom/umeng/message/provider/MessageProvider;->b:Landroid/content/UriMatcher;

    sget-object v1, Lcom/umeng/message/provider/MessageProvider;->q:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v1, Lcom/umeng/message/provider/a;->a:Ljava/lang/String;

    const-string v2, "MsgAlias"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 68
    sget-object v0, Lcom/umeng/message/provider/MessageProvider;->b:Landroid/content/UriMatcher;

    sget-object v1, Lcom/umeng/message/provider/MessageProvider;->q:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v1, Lcom/umeng/message/provider/a;->a:Ljava/lang/String;

    const-string v2, "MsgAliasDeleteAll"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 69
    sget-object v0, Lcom/umeng/message/provider/MessageProvider;->b:Landroid/content/UriMatcher;

    sget-object v1, Lcom/umeng/message/provider/MessageProvider;->q:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v1, Lcom/umeng/message/provider/a;->a:Ljava/lang/String;

    const-string v2, "MsgLogStores"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 70
    sget-object v0, Lcom/umeng/message/provider/MessageProvider;->b:Landroid/content/UriMatcher;

    sget-object v1, Lcom/umeng/message/provider/MessageProvider;->q:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v1, Lcom/umeng/message/provider/a;->a:Ljava/lang/String;

    const-string v2, "MsgLogIdTypeStores"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 71
    sget-object v0, Lcom/umeng/message/provider/MessageProvider;->b:Landroid/content/UriMatcher;

    sget-object v1, Lcom/umeng/message/provider/MessageProvider;->q:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v1, Lcom/umeng/message/provider/a;->a:Ljava/lang/String;

    const-string v2, "MsgLogStoreForAgoos"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 72
    sget-object v0, Lcom/umeng/message/provider/MessageProvider;->b:Landroid/content/UriMatcher;

    sget-object v1, Lcom/umeng/message/provider/MessageProvider;->q:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v1, Lcom/umeng/message/provider/a;->a:Ljava/lang/String;

    const-string v2, "MsgLogIdTypeStoreForAgoos"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 73
    sget-object v0, Lcom/umeng/message/provider/MessageProvider;->b:Landroid/content/UriMatcher;

    sget-object v1, Lcom/umeng/message/provider/MessageProvider;->q:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v1, Lcom/umeng/message/provider/a;->a:Ljava/lang/String;

    const-string v2, "MsgConfigInfos"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 74
    sget-object v0, Lcom/umeng/message/provider/MessageProvider;->b:Landroid/content/UriMatcher;

    sget-object v1, Lcom/umeng/message/provider/MessageProvider;->q:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v1, Lcom/umeng/message/provider/a;->a:Ljava/lang/String;

    const-string v2, "InAppLogStores"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 76
    return v4
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 101
    .line 102
    sget-object v0, Lcom/umeng/message/provider/MessageProvider;->b:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 145
    :goto_0
    :pswitch_0
    if-eqz v5, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/umeng/message/provider/MessageProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-interface {v5, v0, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 148
    :cond_0
    return-object v5

    .line 109
    :pswitch_1
    iget-object v0, p0, Lcom/umeng/message/provider/MessageProvider;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "MsgTemp"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    goto :goto_0

    .line 114
    :pswitch_2
    iget-object v0, p0, Lcom/umeng/message/provider/MessageProvider;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "MsgAlias"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    goto :goto_0

    .line 119
    :pswitch_3
    iget-object v0, p0, Lcom/umeng/message/provider/MessageProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "MsgLogStore"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    goto :goto_0

    .line 124
    :pswitch_4
    iget-object v0, p0, Lcom/umeng/message/provider/MessageProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "MsgLogStoreForAgoo"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    goto :goto_0

    .line 129
    :pswitch_5
    iget-object v0, p0, Lcom/umeng/message/provider/MessageProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "MsgLogIdTypeStoreForAgoo"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    goto :goto_0

    .line 134
    :pswitch_6
    iget-object v0, p0, Lcom/umeng/message/provider/MessageProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "MsgConfigInfo"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    goto :goto_0

    .line 138
    :pswitch_7
    iget-object v0, p0, Lcom/umeng/message/provider/MessageProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "InAppLogStore"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    goto :goto_0

    .line 102
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7

    .prologue
    const/4 v5, 0x5

    .line 322
    const/4 v6, 0x0

    .line 323
    sget-object v0, Lcom/umeng/message/provider/MessageProvider;->b:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v6

    .line 349
    :goto_0
    invoke-virtual {p0}, Lcom/umeng/message/provider/MessageProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 350
    return v0

    .line 326
    :pswitch_1
    iget-object v0, p0, Lcom/umeng/message/provider/MessageProvider;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "MessageStore"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 331
    :pswitch_2
    iget-object v0, p0, Lcom/umeng/message/provider/MessageProvider;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "MsgTemp"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 336
    :pswitch_3
    iget-object v0, p0, Lcom/umeng/message/provider/MessageProvider;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "MsgAlias"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move v0, v6

    .line 338
    goto :goto_0

    .line 341
    :pswitch_4
    iget-object v0, p0, Lcom/umeng/message/provider/MessageProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "MsgConfigInfo"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 345
    :pswitch_5
    iget-object v0, p0, Lcom/umeng/message/provider/MessageProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "InAppLogStore"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 323
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
