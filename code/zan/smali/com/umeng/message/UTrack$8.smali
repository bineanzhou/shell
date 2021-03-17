.class Lcom/umeng/message/UTrack$8;
.super Ljava/lang/Object;
.source "UTrack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/message/UTrack;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/message/UTrack;


# direct methods
.method constructor <init>(Lcom/umeng/message/UTrack;)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lcom/umeng/message/UTrack$8;->a:Lcom/umeng/message/UTrack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 395
    :try_start_0
    iget-object v1, p0, Lcom/umeng/message/UTrack$8;->a:Lcom/umeng/message/UTrack;

    .line 396
    invoke-static {v1}, Lcom/umeng/message/UTrack;->a(Lcom/umeng/message/UTrack;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/message/proguard/l;->a(Landroid/content/Context;)Lcom/umeng/message/proguard/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/message/proguard/l;->c()Ljava/util/ArrayList;

    move-result-object v2

    move v1, v0

    .line 397
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 398
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/proguard/l$b;

    .line 399
    iget-object v3, p0, Lcom/umeng/message/UTrack$8;->a:Lcom/umeng/message/UTrack;

    iget-object v4, v0, Lcom/umeng/message/proguard/l$b;->a:Ljava/lang/String;

    iget-object v5, v0, Lcom/umeng/message/proguard/l$b;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/umeng/message/proguard/l$b;->c:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v0}, Lcom/umeng/message/UTrack;->sendMsgLogForAgoo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 401
    :catch_0
    move-exception v0

    .line 402
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 403
    sget-object v1, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    invoke-static {}, Lcom/umeng/message/UTrack;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-interface {v1, v2, v3, v4}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 407
    :cond_0
    return-void

    .line 404
    :catchall_0
    move-exception v0

    throw v0
.end method
