.class Lcom/open/likehelper/util/luban/Luban$1;
.super Ljava/lang/Object;
.source "Luban.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/open/likehelper/util/luban/Luban;->c(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/open/likehelper/util/luban/Luban;


# direct methods
.method constructor <init>(Lcom/open/likehelper/util/luban/Luban;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/open/likehelper/util/luban/Luban$1;->c:Lcom/open/likehelper/util/luban/Luban;

    iput-object p2, p0, Lcom/open/likehelper/util/luban/Luban$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/open/likehelper/util/luban/Luban$1;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/open/likehelper/util/luban/Luban$1;->c:Lcom/open/likehelper/util/luban/Luban;

    invoke-static {v0}, Lcom/open/likehelper/util/luban/Luban;->a(Lcom/open/likehelper/util/luban/Luban;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/open/likehelper/util/luban/Luban$1;->c:Lcom/open/likehelper/util/luban/Luban;

    invoke-static {v1}, Lcom/open/likehelper/util/luban/Luban;->a(Lcom/open/likehelper/util/luban/Luban;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 142
    iget-object v0, p0, Lcom/open/likehelper/util/luban/Luban$1;->c:Lcom/open/likehelper/util/luban/Luban;

    invoke-static {v0}, Lcom/open/likehelper/util/luban/Luban;->b(Lcom/open/likehelper/util/luban/Luban;)I

    move-result v0

    iget-object v1, p0, Lcom/open/likehelper/util/luban/Luban$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/open/likehelper/util/luban/Checker;->a(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/open/likehelper/util/luban/Engine;

    iget-object v1, p0, Lcom/open/likehelper/util/luban/Luban$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/open/likehelper/util/luban/Luban$1;->c:Lcom/open/likehelper/util/luban/Luban;

    iget-object v3, p0, Lcom/open/likehelper/util/luban/Luban$1;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/open/likehelper/util/luban/Luban$1;->a:Ljava/lang/String;

    .line 143
    invoke-static {v4}, Lcom/open/likehelper/util/luban/Checker;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/open/likehelper/util/luban/Luban;->a(Lcom/open/likehelper/util/luban/Luban;Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/open/likehelper/util/luban/Engine;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v0}, Lcom/open/likehelper/util/luban/Engine;->a()Ljava/io/File;

    move-result-object v0

    .line 146
    :goto_0
    iget-object v1, p0, Lcom/open/likehelper/util/luban/Luban$1;->c:Lcom/open/likehelper/util/luban/Luban;

    invoke-static {v1}, Lcom/open/likehelper/util/luban/Luban;->a(Lcom/open/likehelper/util/luban/Luban;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/open/likehelper/util/luban/Luban$1;->c:Lcom/open/likehelper/util/luban/Luban;

    invoke-static {v2}, Lcom/open/likehelper/util/luban/Luban;->a(Lcom/open/likehelper/util/luban/Luban;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 150
    :goto_1
    return-void

    .line 143
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/open/likehelper/util/luban/Luban$1;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    iget-object v1, p0, Lcom/open/likehelper/util/luban/Luban$1;->c:Lcom/open/likehelper/util/luban/Luban;

    invoke-static {v1}, Lcom/open/likehelper/util/luban/Luban;->a(Lcom/open/likehelper/util/luban/Luban;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/open/likehelper/util/luban/Luban$1;->c:Lcom/open/likehelper/util/luban/Luban;

    invoke-static {v2}, Lcom/open/likehelper/util/luban/Luban;->a(Lcom/open/likehelper/util/luban/Luban;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method
