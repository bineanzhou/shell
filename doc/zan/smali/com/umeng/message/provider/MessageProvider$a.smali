.class Lcom/umeng/message/provider/MessageProvider$a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "MessageProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/message/provider/MessageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/message/provider/MessageProvider;


# direct methods
.method public constructor <init>(Lcom/umeng/message/provider/MessageProvider;Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 376
    iput-object p1, p0, Lcom/umeng/message/provider/MessageProvider$a;->a:Lcom/umeng/message/provider/MessageProvider;

    .line 377
    const-string v0, "MessageStore.db"

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 378
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 382
    invoke-static {}, Lcom/umeng/message/provider/MessageProvider;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MessageStoreHelper-->onCreate-->start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const-string v0, "CREATE TABLE IF NOT EXISTS MessageStore(_id Integer  PRIMARY KEY  AUTOINCREMENT  , MsdId Varchar  , Json Varchar  , SdkVersion Varchar  , ArrivalTime Long  , ActionType Integer )"

    .line 391
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 393
    const-string v0, "create table if not exists MsgTemp(id INTEGER AUTO_INCREMENT,tempkey varchar default NULL, tempvalue varchar default NULL,PRIMARY KEY(id))"

    .line 395
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 398
    const-string v0, "create table if not exists MsgAlias(time long,type varchar default NULL,alias varchar default NULL,exclusive int,error int,message varchar,PRIMARY KEY(time))"

    .line 400
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 401
    invoke-static {}, Lcom/umeng/message/provider/MessageProvider;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MessageStoreHelper-->onCreate-->end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    .prologue
    .line 406
    const/4 v0, 0x2

    if-gt p2, v0, :cond_0

    .line 407
    const-string v0, "drop table MsgTemp"

    .line 408
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 410
    :cond_0
    invoke-virtual {p0, p1}, Lcom/umeng/message/provider/MessageProvider$a;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 411
    invoke-static {}, Lcom/umeng/message/provider/MessageProvider;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MessageStoreHelper-->onUpgrade"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    return-void
.end method
