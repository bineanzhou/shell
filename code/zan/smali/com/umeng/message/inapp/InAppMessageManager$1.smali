.class Lcom/umeng/message/inapp/InAppMessageManager$1;
.super Ljava/lang/Object;
.source "InAppMessageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/message/inapp/InAppMessageManager;->a(Ljava/lang/String;IIIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:I

.field final synthetic h:I

.field final synthetic i:I

.field final synthetic j:Lcom/umeng/message/inapp/InAppMessageManager;


# direct methods
.method constructor <init>(Lcom/umeng/message/inapp/InAppMessageManager;Ljava/lang/String;IIIIIIII)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/umeng/message/inapp/InAppMessageManager$1;->j:Lcom/umeng/message/inapp/InAppMessageManager;

    iput-object p2, p0, Lcom/umeng/message/inapp/InAppMessageManager$1;->a:Ljava/lang/String;

    iput p3, p0, Lcom/umeng/message/inapp/InAppMessageManager$1;->b:I

    iput p4, p0, Lcom/umeng/message/inapp/InAppMessageManager$1;->c:I

    iput p5, p0, Lcom/umeng/message/inapp/InAppMessageManager$1;->d:I

    iput p6, p0, Lcom/umeng/message/inapp/InAppMessageManager$1;->e:I

    iput p7, p0, Lcom/umeng/message/inapp/InAppMessageManager$1;->f:I

    iput p8, p0, Lcom/umeng/message/inapp/InAppMessageManager$1;->g:I

    iput p9, p0, Lcom/umeng/message/inapp/InAppMessageManager$1;->h:I

    iput p10, p0, Lcom/umeng/message/inapp/InAppMessageManager$1;->i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/umeng/message/inapp/InAppMessageManager$1;->j:Lcom/umeng/message/inapp/InAppMessageManager;

    iget-object v1, p0, Lcom/umeng/message/inapp/InAppMessageManager$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/umeng/message/inapp/InAppMessageManager;->a(Lcom/umeng/message/inapp/InAppMessageManager;Ljava/lang/String;)Lcom/umeng/message/inapp/a;

    move-result-object v9

    .line 227
    if-eqz v9, :cond_0

    .line 228
    new-instance v0, Lcom/umeng/message/inapp/a;

    iget-object v1, p0, Lcom/umeng/message/inapp/InAppMessageManager$1;->a:Ljava/lang/String;

    iget v2, p0, Lcom/umeng/message/inapp/InAppMessageManager$1;->b:I

    iget v3, p0, Lcom/umeng/message/inapp/InAppMessageManager$1;->c:I

    iget v4, v9, Lcom/umeng/message/inapp/a;->d:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/umeng/message/inapp/InAppMessageManager$1;->d:I

    iget v5, v9, Lcom/umeng/message/inapp/a;->e:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/umeng/message/inapp/InAppMessageManager$1;->e:I

    iget v6, v9, Lcom/umeng/message/inapp/a;->f:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/umeng/message/inapp/InAppMessageManager$1;->f:I

    iget v7, v9, Lcom/umeng/message/inapp/a;->g:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/umeng/message/inapp/InAppMessageManager$1;->g:I

    iget v8, v9, Lcom/umeng/message/inapp/a;->h:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/umeng/message/inapp/InAppMessageManager$1;->h:I

    iget v10, v9, Lcom/umeng/message/inapp/a;->i:I

    add-int/2addr v8, v10

    iget v9, v9, Lcom/umeng/message/inapp/a;->j:I

    invoke-direct/range {v0 .. v9}, Lcom/umeng/message/inapp/a;-><init>(Ljava/lang/String;IIIIIIII)V

    .line 232
    const-string v1, "MsgId=?"

    .line 233
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/umeng/message/inapp/InAppMessageManager$1;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 234
    iget-object v3, p0, Lcom/umeng/message/inapp/InAppMessageManager$1;->j:Lcom/umeng/message/inapp/InAppMessageManager;

    invoke-static {v3}, Lcom/umeng/message/inapp/InAppMessageManager;->a(Lcom/umeng/message/inapp/InAppMessageManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/umeng/message/inapp/InAppMessageManager$1;->j:Lcom/umeng/message/inapp/InAppMessageManager;

    .line 235
    invoke-static {v4}, Lcom/umeng/message/inapp/InAppMessageManager;->a(Lcom/umeng/message/inapp/InAppMessageManager;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v4, Lcom/umeng/message/provider/a;->k:Landroid/net/Uri;

    .line 236
    invoke-virtual {v0}, Lcom/umeng/message/inapp/a;->a()Landroid/content/ContentValues;

    move-result-object v0

    .line 234
    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 244
    :goto_0
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    invoke-static {}, Lcom/umeng/message/inapp/InAppMessageManager;->k()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "store in app cache log success"

    aput-object v5, v3, v4

    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 249
    :goto_1
    return-void

    .line 238
    :cond_0
    new-instance v0, Lcom/umeng/message/inapp/a;

    iget-object v1, p0, Lcom/umeng/message/inapp/InAppMessageManager$1;->a:Ljava/lang/String;

    iget v2, p0, Lcom/umeng/message/inapp/InAppMessageManager$1;->b:I

    iget v3, p0, Lcom/umeng/message/inapp/InAppMessageManager$1;->c:I

    iget v4, p0, Lcom/umeng/message/inapp/InAppMessageManager$1;->d:I

    iget v5, p0, Lcom/umeng/message/inapp/InAppMessageManager$1;->e:I

    iget v6, p0, Lcom/umeng/message/inapp/InAppMessageManager$1;->f:I

    iget v7, p0, Lcom/umeng/message/inapp/InAppMessageManager$1;->g:I

    iget v8, p0, Lcom/umeng/message/inapp/InAppMessageManager$1;->h:I

    iget v9, p0, Lcom/umeng/message/inapp/InAppMessageManager$1;->i:I

    invoke-direct/range {v0 .. v9}, Lcom/umeng/message/inapp/a;-><init>(Ljava/lang/String;IIIIIIII)V

    .line 240
    iget-object v1, p0, Lcom/umeng/message/inapp/InAppMessageManager$1;->j:Lcom/umeng/message/inapp/InAppMessageManager;

    invoke-static {v1}, Lcom/umeng/message/inapp/InAppMessageManager;->a(Lcom/umeng/message/inapp/InAppMessageManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/message/inapp/InAppMessageManager$1;->j:Lcom/umeng/message/inapp/InAppMessageManager;

    .line 241
    invoke-static {v2}, Lcom/umeng/message/inapp/InAppMessageManager;->a(Lcom/umeng/message/inapp/InAppMessageManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/message/provider/a;->a(Landroid/content/Context;)Lcom/umeng/message/provider/a;

    sget-object v2, Lcom/umeng/message/provider/a;->k:Landroid/net/Uri;

    .line 242
    invoke-virtual {v0}, Lcom/umeng/message/inapp/a;->a()Landroid/content/ContentValues;

    move-result-object v0

    .line 240
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 245
    :catch_0
    move-exception v0

    .line 246
    sget-object v1, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    invoke-static {}, Lcom/umeng/message/inapp/InAppMessageManager;->k()Ljava/lang/String;

    move-result-object v2

    new-array v3, v12, [Ljava/lang/String;

    const-string v4, "store in app cache log fail"

    aput-object v4, v3, v11

    invoke-interface {v1, v2, v11, v3}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 247
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
