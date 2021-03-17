.class Lcom/umeng/message/inapp/e$4;
.super Ljava/lang/Object;
.source "UmengInAppMessageTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/message/inapp/e;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/message/inapp/e;


# direct methods
.method constructor <init>(Lcom/umeng/message/inapp/e;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/umeng/message/inapp/e$4;->a:Lcom/umeng/message/inapp/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 195
    :try_start_0
    iget-object v1, p0, Lcom/umeng/message/inapp/e$4;->a:Lcom/umeng/message/inapp/e;

    invoke-static {v1}, Lcom/umeng/message/inapp/e;->b(Lcom/umeng/message/inapp/e;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/message/inapp/InAppMessageManager;->getInstance(Landroid/content/Context;)Lcom/umeng/message/inapp/InAppMessageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/message/inapp/InAppMessageManager;->j()Ljava/util/ArrayList;

    move-result-object v1

    .line 196
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/umeng/message/inapp/a;

    move-object v11, v0

    .line 197
    iget-object v1, p0, Lcom/umeng/message/inapp/e$4;->a:Lcom/umeng/message/inapp/e;

    iget-object v2, v11, Lcom/umeng/message/inapp/a;->b:Ljava/lang/String;

    iget v3, v11, Lcom/umeng/message/inapp/a;->c:I

    iget v4, v11, Lcom/umeng/message/inapp/a;->d:I

    iget v5, v11, Lcom/umeng/message/inapp/a;->e:I

    iget v6, v11, Lcom/umeng/message/inapp/a;->f:I

    iget v7, v11, Lcom/umeng/message/inapp/a;->g:I

    iget v8, v11, Lcom/umeng/message/inapp/a;->h:I

    iget v9, v11, Lcom/umeng/message/inapp/a;->i:I

    iget v10, v11, Lcom/umeng/message/inapp/a;->j:I

    invoke-static/range {v1 .. v10}, Lcom/umeng/message/inapp/e;->a(Lcom/umeng/message/inapp/e;Ljava/lang/String;IIIIIIII)Lorg/json/JSONObject;

    move-result-object v1

    .line 200
    if-eqz v1, :cond_0

    const-string v2, "success"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ok"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/umeng/message/inapp/e$4;->a:Lcom/umeng/message/inapp/e;

    invoke-static {v1}, Lcom/umeng/message/inapp/e;->b(Lcom/umeng/message/inapp/e;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/message/inapp/InAppMessageManager;->getInstance(Landroid/content/Context;)Lcom/umeng/message/inapp/InAppMessageManager;

    move-result-object v1

    iget-object v2, v11, Lcom/umeng/message/inapp/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/umeng/message/inapp/InAppMessageManager;->h(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 204
    :catch_0
    move-exception v1

    .line 205
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
    invoke-static {v13}, Lcom/umeng/message/inapp/e;->a(Z)Z

    .line 209
    :goto_1
    return-void

    .line 207
    :cond_1
    invoke-static {v13}, Lcom/umeng/message/inapp/e;->a(Z)Z

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-static {v13}, Lcom/umeng/message/inapp/e;->a(Z)Z

    throw v1
.end method
