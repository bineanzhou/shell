.class Lcom/umeng/message/inapp/e$3;
.super Ljava/lang/Object;
.source "UmengInAppMessageTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/message/inapp/e;->a(Ljava/lang/String;IIIIIIII)V
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

.field final synthetic j:Lcom/umeng/message/inapp/e;


# direct methods
.method constructor <init>(Lcom/umeng/message/inapp/e;Ljava/lang/String;IIIIIIII)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/umeng/message/inapp/e$3;->j:Lcom/umeng/message/inapp/e;

    iput-object p2, p0, Lcom/umeng/message/inapp/e$3;->a:Ljava/lang/String;

    iput p3, p0, Lcom/umeng/message/inapp/e$3;->b:I

    iput p4, p0, Lcom/umeng/message/inapp/e$3;->c:I

    iput p5, p0, Lcom/umeng/message/inapp/e$3;->d:I

    iput p6, p0, Lcom/umeng/message/inapp/e$3;->e:I

    iput p7, p0, Lcom/umeng/message/inapp/e$3;->f:I

    iput p8, p0, Lcom/umeng/message/inapp/e$3;->g:I

    iput p9, p0, Lcom/umeng/message/inapp/e$3;->h:I

    iput p10, p0, Lcom/umeng/message/inapp/e$3;->i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 155
    .line 157
    :try_start_0
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    invoke-static {}, Lcom/umeng/message/inapp/e;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "track in app msg begin"

    aput-object v5, v3, v4

    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/umeng/message/inapp/e$3;->j:Lcom/umeng/message/inapp/e;

    iget-object v1, p0, Lcom/umeng/message/inapp/e$3;->a:Ljava/lang/String;

    iget v2, p0, Lcom/umeng/message/inapp/e$3;->b:I

    iget v3, p0, Lcom/umeng/message/inapp/e$3;->c:I

    iget v4, p0, Lcom/umeng/message/inapp/e$3;->d:I

    iget v5, p0, Lcom/umeng/message/inapp/e$3;->e:I

    iget v6, p0, Lcom/umeng/message/inapp/e$3;->f:I

    iget v7, p0, Lcom/umeng/message/inapp/e$3;->g:I

    iget v8, p0, Lcom/umeng/message/inapp/e$3;->h:I

    iget v9, p0, Lcom/umeng/message/inapp/e$3;->i:I

    invoke-static/range {v0 .. v9}, Lcom/umeng/message/inapp/e;->a(Lcom/umeng/message/inapp/e;Ljava/lang/String;IIIIIIII)Lorg/json/JSONObject;

    move-result-object v0

    .line 160
    if-eqz v0, :cond_0

    const-string v1, "success"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ok"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    invoke-static {}, Lcom/umeng/message/inapp/e;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "track in app msg success"

    aput-object v5, v3, v4

    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v0

    move-object v10, v0

    .line 164
    iget-object v0, p0, Lcom/umeng/message/inapp/e$3;->j:Lcom/umeng/message/inapp/e;

    invoke-static {v0}, Lcom/umeng/message/inapp/e;->b(Lcom/umeng/message/inapp/e;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/message/inapp/InAppMessageManager;->getInstance(Landroid/content/Context;)Lcom/umeng/message/inapp/InAppMessageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/message/inapp/e$3;->a:Ljava/lang/String;

    iget v2, p0, Lcom/umeng/message/inapp/e$3;->b:I

    iget v3, p0, Lcom/umeng/message/inapp/e$3;->c:I

    iget v4, p0, Lcom/umeng/message/inapp/e$3;->d:I

    iget v5, p0, Lcom/umeng/message/inapp/e$3;->e:I

    iget v6, p0, Lcom/umeng/message/inapp/e$3;->f:I

    iget v7, p0, Lcom/umeng/message/inapp/e$3;->g:I

    iget v8, p0, Lcom/umeng/message/inapp/e$3;->h:I

    iget v9, p0, Lcom/umeng/message/inapp/e$3;->i:I

    invoke-virtual/range {v0 .. v9}, Lcom/umeng/message/inapp/InAppMessageManager;->a(Ljava/lang/String;IIIIIIII)V

    .line 166
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
