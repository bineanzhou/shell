.class Lcom/umeng/message/inapp/InAppMessageManager$4;
.super Ljava/lang/Object;
.source "InAppMessageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/message/inapp/InAppMessageManager;->a(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lcom/umeng/message/inapp/InAppMessageManager;


# direct methods
.method constructor <init>(Lcom/umeng/message/inapp/InAppMessageManager;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 438
    iput-object p1, p0, Lcom/umeng/message/inapp/InAppMessageManager$4;->b:Lcom/umeng/message/inapp/InAppMessageManager;

    iput-object p2, p0, Lcom/umeng/message/inapp/InAppMessageManager$4;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 441
    iget-object v0, p0, Lcom/umeng/message/inapp/InAppMessageManager$4;->a:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/message/inapp/InAppMessageManager$4;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/message/inapp/InAppMessageManager$4;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/message/inapp/InAppMessageManager$4;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    iget-object v0, p0, Lcom/umeng/message/inapp/InAppMessageManager$4;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 445
    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    .line 446
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_2

    .line 447
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 445
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 450
    :cond_3
    iget-object v0, p0, Lcom/umeng/message/inapp/InAppMessageManager$4;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method
