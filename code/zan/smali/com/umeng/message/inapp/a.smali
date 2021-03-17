.class Lcom/umeng/message/inapp/a;
.super Ljava/lang/Object;
.source "InAppMsgLog.java"


# instance fields
.field a:J

.field b:Ljava/lang/String;

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:I

.field j:I


# direct methods
.method constructor <init>(Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "MsgId"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/inapp/a;->b:Ljava/lang/String;

    .line 41
    const-string v0, "MsgType"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/umeng/message/inapp/a;->c:I

    .line 42
    const-string v0, "NumDisplay"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/umeng/message/inapp/a;->d:I

    .line 43
    const-string v0, "NumOpenFull"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/umeng/message/inapp/a;->e:I

    .line 44
    const-string v0, "NumOpenTop"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/umeng/message/inapp/a;->f:I

    .line 45
    const-string v0, "NumOpenBottom"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/umeng/message/inapp/a;->g:I

    .line 46
    const-string v0, "NumClose"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/umeng/message/inapp/a;->h:I

    .line 47
    const-string v0, "NumDuration"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/umeng/message/inapp/a;->i:I

    .line 48
    const-string v0, "NumCustom"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/umeng/message/inapp/a;->j:I

    .line 49
    return-void
.end method

.method constructor <init>(Ljava/lang/String;IIIIIIII)V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/message/inapp/a;->a:J

    .line 27
    iput-object p1, p0, Lcom/umeng/message/inapp/a;->b:Ljava/lang/String;

    .line 28
    iput p2, p0, Lcom/umeng/message/inapp/a;->c:I

    .line 29
    iput p3, p0, Lcom/umeng/message/inapp/a;->d:I

    .line 30
    iput p4, p0, Lcom/umeng/message/inapp/a;->e:I

    .line 31
    iput p5, p0, Lcom/umeng/message/inapp/a;->f:I

    .line 32
    iput p6, p0, Lcom/umeng/message/inapp/a;->g:I

    .line 33
    iput p7, p0, Lcom/umeng/message/inapp/a;->h:I

    .line 34
    iput p8, p0, Lcom/umeng/message/inapp/a;->i:I

    .line 35
    iput p9, p0, Lcom/umeng/message/inapp/a;->j:I

    .line 36
    return-void
.end method


# virtual methods
.method a()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 52
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 53
    const-string v1, "Time"

    iget-wide v2, p0, Lcom/umeng/message/inapp/a;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 54
    const-string v1, "MsgId"

    iget-object v2, p0, Lcom/umeng/message/inapp/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v1, "MsgType"

    iget v2, p0, Lcom/umeng/message/inapp/a;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 56
    const-string v1, "NumDisplay"

    iget v2, p0, Lcom/umeng/message/inapp/a;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 57
    const-string v1, "NumOpenFull"

    iget v2, p0, Lcom/umeng/message/inapp/a;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 58
    const-string v1, "NumOpenTop"

    iget v2, p0, Lcom/umeng/message/inapp/a;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 59
    const-string v1, "NumOpenBottom"

    iget v2, p0, Lcom/umeng/message/inapp/a;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 60
    const-string v1, "NumClose"

    iget v2, p0, Lcom/umeng/message/inapp/a;->h:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 61
    const-string v1, "NumDuration"

    iget v2, p0, Lcom/umeng/message/inapp/a;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 62
    const-string v1, "NumCustom"

    iget v2, p0, Lcom/umeng/message/inapp/a;->j:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 63
    return-object v0
.end method
