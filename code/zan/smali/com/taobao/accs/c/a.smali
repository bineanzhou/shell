.class public Lcom/taobao/accs/c/a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/accs/c/a$1;,
        Lcom/taobao/accs/c/a$a;
    }
.end annotation


# static fields
.field private static volatile c:Lcom/taobao/accs/c/a;

.field private static final e:Ljava/util/concurrent/locks/Lock;


# instance fields
.field public a:I

.field b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/taobao/accs/c/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/taobao/accs/c/a;->c:Lcom/taobao/accs/c/a;

    .line 37
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/taobao/accs/c/a;->e:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/taobao/accs/c/a;->a:I

    .line 35
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/taobao/accs/c/a;->b:Ljava/util/LinkedList;

    .line 64
    iput-object p1, p0, Lcom/taobao/accs/c/a;->d:Landroid/content/Context;

    .line 65
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/taobao/accs/c/a;
    .locals 5

    .prologue
    .line 52
    sget-object v0, Lcom/taobao/accs/c/a;->c:Lcom/taobao/accs/c/a;

    if-nez v0, :cond_1

    .line 53
    const-class v1, Lcom/taobao/accs/c/a;

    monitor-enter v1

    .line 54
    :try_start_0
    sget-object v0, Lcom/taobao/accs/c/a;->c:Lcom/taobao/accs/c/a;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/taobao/accs/c/a;

    const-string v2, "accs.db"

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/taobao/accs/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    sput-object v0, Lcom/taobao/accs/c/a;->c:Lcom/taobao/accs/c/a;

    .line 57
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :cond_1
    sget-object v0, Lcom/taobao/accs/c/a;->c:Lcom/taobao/accs/c/a;

    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized a(Ljava/lang/String;[Ljava/lang/Object;Z)V
    .locals 4

    .prologue
    .line 188
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/taobao/accs/c/a;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/taobao/accs/c/a$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/taobao/accs/c/a$a;-><init>(Lcom/taobao/accs/c/a;Ljava/lang/String;[Ljava/lang/Object;Lcom/taobao/accs/c/a$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v0, p0, Lcom/taobao/accs/c/a;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    if-eqz p3, :cond_1

    .line 191
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/accs/c/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 192
    if-nez v1, :cond_2

    .line 227
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 196
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/taobao/accs/c/a;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 197
    iget-object v0, p0, Lcom/taobao/accs/c/a;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/c/a$a;

    .line 202
    iget-object v2, v0, Lcom/taobao/accs/c/a$a;->b:[Ljava/lang/Object;

    if-eqz v2, :cond_4

    .line 203
    iget-object v2, v0, Lcom/taobao/accs/c/a$a;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/taobao/accs/c/a$a;->b:[Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    :goto_1
    iget-object v0, v0, Lcom/taobao/accs/c/a$a;->a:Ljava/lang/String;

    const-string v2, "INSERT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 209
    iget v0, p0, Lcom/taobao/accs/c/a;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/taobao/accs/c/a;->a:I

    .line 210
    iget v0, p0, Lcom/taobao/accs/c/a;->a:I

    const/16 v2, 0xfa0

    if-le v0, v2, :cond_2

    .line 211
    const-string v0, "DBHelper"

    const-string v2, "db is full!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/taobao/accs/c/a;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 213
    const/4 v0, 0x0

    iput v0, p0, Lcom/taobao/accs/c/a;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 220
    :cond_3
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    :try_start_3
    const-string v1, "DBHelper"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 205
    :cond_4
    :try_start_4
    iget-object v2, v0, Lcom/taobao/accs/c/a$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 220
    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 10

    .prologue
    .line 113
    monitor-enter p0

    const/4 v9, 0x0

    .line 115
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/accs/c/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 116
    if-nez v0, :cond_1

    .line 117
    const/4 v0, 0x0

    .line 127
    if-eqz v9, :cond_0

    .line 128
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 119
    :cond_1
    :try_start_2
    const-string v1, "traffic"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "date"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "host"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "serviceid"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "bid"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "isbackground"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "size"

    aput-object v4, v2, v3

    const-string v3, "date=? AND host=? AND bid=? AND isbackground=?"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p4, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    const/4 v5, 0x3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x64

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v1

    .line 121
    if-eqz v1, :cond_2

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v0

    if-lez v0, :cond_2

    .line 122
    const/4 v0, 0x1

    .line 127
    if-eqz v1, :cond_0

    .line 128
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 127
    :cond_2
    if-eqz v1, :cond_3

    .line 128
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 132
    :cond_3
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    move-object v1, v9

    .line 125
    :goto_2
    :try_start_6
    const-string v2, "DBHelper"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 127
    if-eqz v1, :cond_3

    .line 128
    :try_start_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 127
    :catchall_1
    move-exception v0

    :goto_3
    if-eqz v9, :cond_4

    .line 128
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 127
    :catchall_2
    move-exception v0

    move-object v9, v1

    goto :goto_3

    .line 124
    :catch_1
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method public a(Z)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 139
    monitor-enter p0

    .line 141
    const/4 v1, 0x0

    .line 142
    :try_start_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    :try_start_1
    invoke-virtual {p0}, Lcom/taobao/accs/c/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 145
    if-nez v0, :cond_1

    .line 178
    if-eqz v9, :cond_0

    .line 179
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v9

    .line 182
    :goto_0
    return-object v0

    .line 148
    :cond_1
    if-eqz p1, :cond_3

    .line 149
    :try_start_3
    const-string v1, "traffic"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "date"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "host"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "serviceid"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "bid"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "isbackground"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "size"

    aput-object v4, v2, v3

    const-string v3, "date=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/taobao/accs/utl/UtilityImpl;->formatDay(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x64

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v8

    .line 156
    :goto_1
    if-nez v8, :cond_4

    .line 178
    if-eqz v8, :cond_2

    .line 179
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v0, v9

    goto :goto_0

    .line 152
    :cond_3
    :try_start_5
    const-string v1, "traffic"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "date"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "host"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "serviceid"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "bid"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "isbackground"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "size"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x64

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v8

    goto :goto_1

    .line 159
    :cond_4
    :try_start_6
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 162
    :cond_5
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 163
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 164
    const/4 v0, 0x3

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 165
    const/4 v0, 0x4

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 166
    const/4 v0, 0x5

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 167
    const/4 v0, 0x6

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 168
    if-eqz v2, :cond_6

    const-wide/16 v12, 0x0

    cmp-long v0, v6, v12

    if-lez v0, :cond_6

    .line 169
    new-instance v0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;

    invoke-direct/range {v0 .. v7}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;J)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    const-string v0, "DBHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resotre traffics from db bid:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " serviceid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " host:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    :cond_6
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result v0

    if-nez v0, :cond_5

    .line 178
    :cond_7
    if-eqz v8, :cond_8

    .line 179
    :try_start_7
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 182
    :cond_8
    :goto_2
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object v0, v10

    goto/16 :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    :goto_3
    :try_start_8
    const-string v1, "DBHelper"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 178
    if-eqz v9, :cond_8

    .line 179
    :try_start_9
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v0

    .line 178
    :catchall_1
    move-exception v0

    :goto_4
    if-eqz v9, :cond_9

    .line 179
    :try_start_a
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 178
    :catchall_2
    move-exception v0

    move-object v9, v8

    goto :goto_4

    .line 175
    :catch_1
    move-exception v0

    move-object v9, v8

    goto :goto_3
.end method

.method public a()V
    .locals 3

    .prologue
    .line 135
    const-string v0, "DELETE FROM traffic"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/taobao/accs/c/a;->a(Ljava/lang/String;[Ljava/lang/Object;Z)V

    .line 136
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;)V
    .locals 11

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 105
    move-object/from16 v0, p7

    invoke-direct {p0, p1, p3, p4, v0}, Lcom/taobao/accs/c/a;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    const-string v1, "INSERT INTO traffic VALUES(null,?,?,?,?,?,?)"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p7, v2, v4

    aput-object p1, v2, v5

    aput-object p2, v2, v6

    aput-object p3, v2, v7

    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x5

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2, v5}, Lcom/taobao/accs/c/a;->a(Ljava/lang/String;[Ljava/lang/Object;Z)V

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    const-string v1, "UPDATE traffic SET size=? WHERE date=? AND host=? AND bid=? AND isbackground=?"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object p7, v2, v5

    aput-object p1, v2, v6

    aput-object p3, v2, v7

    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-direct {p0, v1, v2, v5}, Lcom/taobao/accs/c/a;->a(Ljava/lang/String;[Ljava/lang/Object;Z)V

    goto :goto_0
.end method

.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .prologue
    .line 44
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v0

    const v1, 0x19000

    invoke-static {v0, v1}, Lcom/taobao/accs/utl/a;->a(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    const/4 v0, 0x0

    .line 48
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_0
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 78
    :try_start_0
    sget-object v0, Lcom/taobao/accs/c/a;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    const-string v0, "CREATE TABLE IF NOT EXISTS traffic(_id INTEGER PRIMARY KEY AUTOINCREMENT, date TEXT, host TEXT,serviceid TEXT, bid TEXT, isbackground TEXT, size TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_0
    sget-object v0, Lcom/taobao/accs/c/a;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 85
    return-void

    .line 83
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/taobao/accs/c/a;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .prologue
    .line 89
    if-ge p2, p3, :cond_0

    .line 90
    const-string v0, "DROP TABLE IF EXISTS service"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 91
    const-string v0, "DROP TABLE IF EXISTS network"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 92
    const-string v0, "DROP TABLE IF EXISTS ping"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 93
    const-string v0, "DROP TABLE IF EXISTS msg"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 94
    const-string v0, "DROP TABLE IF EXISTS ack"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 95
    const-string v0, "DROP TABLE IF EXISTS election"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 96
    const-string v0, "DROP TABLE IF EXISTS bindApp"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 97
    const-string v0, "DROP TABLE IF EXISTS bindUser"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 98
    const-string v0, "DROP TABLE IF EXISTS traffic"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0, p1}, Lcom/taobao/accs/c/a;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 101
    :cond_0
    return-void
.end method
