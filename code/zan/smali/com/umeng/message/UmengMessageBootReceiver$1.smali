.class Lcom/umeng/message/UmengMessageBootReceiver$1;
.super Ljava/lang/Object;
.source "UmengMessageBootReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/message/UmengMessageBootReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/message/UmengMessageBootReceiver;


# direct methods
.method constructor <init>(Lcom/umeng/message/UmengMessageBootReceiver;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/umeng/message/UmengMessageBootReceiver$1;->a:Lcom/umeng/message/UmengMessageBootReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    .line 51
    :try_start_0
    iget-object v2, p0, Lcom/umeng/message/UmengMessageBootReceiver$1;->a:Lcom/umeng/message/UmengMessageBootReceiver;

    invoke-static {v2}, Lcom/umeng/message/UmengMessageBootReceiver;->a(Lcom/umeng/message/UmengMessageBootReceiver;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/message/proguard/l;->a(Landroid/content/Context;)Lcom/umeng/message/proguard/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/message/proguard/l;->b()Ljava/util/ArrayList;

    move-result-object v2

    .line 52
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/umeng/message/proguard/l$c;

    .line 53
    iget-object v3, p0, Lcom/umeng/message/UmengMessageBootReceiver$1;->a:Lcom/umeng/message/UmengMessageBootReceiver;

    invoke-static {v3}, Lcom/umeng/message/UmengMessageBootReceiver;->a(Lcom/umeng/message/UmengMessageBootReceiver;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/message/proguard/l;->a(Landroid/content/Context;)Lcom/umeng/message/proguard/l;

    move-result-object v3

    iget-object v4, v2, Lcom/umeng/message/proguard/l$c;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/umeng/message/proguard/l;->a(Ljava/lang/String;)Lcom/umeng/message/proguard/l$a;

    move-result-object v3

    .line 54
    if-nez v3, :cond_0

    .line 55
    iget-object v3, v2, Lcom/umeng/message/proguard/l$c;->b:Ljava/lang/String;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 56
    iget-object v3, p0, Lcom/umeng/message/UmengMessageBootReceiver$1;->a:Lcom/umeng/message/UmengMessageBootReceiver;

    invoke-static {v3}, Lcom/umeng/message/UmengMessageBootReceiver;->a(Lcom/umeng/message/UmengMessageBootReceiver;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/message/proguard/l;->a(Landroid/content/Context;)Lcom/umeng/message/proguard/l;

    move-result-object v3

    iget-object v4, v2, Lcom/umeng/message/proguard/l$c;->a:Ljava/lang/String;

    const/4 v5, 0x2

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string v8, ""

    .line 56
    invoke-virtual/range {v3 .. v8}, Lcom/umeng/message/proguard/l;->a(Ljava/lang/String;IJLjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v2

    .line 70
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 71
    sget-object v3, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMDebugLog;

    invoke-static {}, Lcom/umeng/message/UmengMessageBootReceiver;->a()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-interface {v3, v4, v10, v5}, Lcom/umeng/commonsdk/debug/UMDebugLog;->mutlInfo(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 73
    :cond_1
    return-void

    .line 60
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/umeng/message/UmengMessageBootReceiver$1;->a:Lcom/umeng/message/UmengMessageBootReceiver;

    invoke-static {v2}, Lcom/umeng/message/UmengMessageBootReceiver;->a(Lcom/umeng/message/UmengMessageBootReceiver;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/message/proguard/l;->a(Landroid/content/Context;)Lcom/umeng/message/proguard/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/message/proguard/l;->d()Ljava/util/ArrayList;

    move-result-object v2

    .line 61
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/umeng/message/proguard/l$d;

    move-object v4, v0

    .line 62
    iget-object v2, p0, Lcom/umeng/message/UmengMessageBootReceiver$1;->a:Lcom/umeng/message/UmengMessageBootReceiver;

    invoke-static {v2}, Lcom/umeng/message/UmengMessageBootReceiver;->a(Lcom/umeng/message/UmengMessageBootReceiver;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/message/proguard/l;->a(Landroid/content/Context;)Lcom/umeng/message/proguard/l;

    move-result-object v2

    iget-object v3, v4, Lcom/umeng/message/proguard/l$d;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/umeng/message/proguard/l;->c(Ljava/lang/String;)Lcom/umeng/message/proguard/l$b;

    move-result-object v2

    .line 63
    if-nez v2, :cond_3

    .line 64
    iget-object v2, v4, Lcom/umeng/message/proguard/l$d;->c:Ljava/lang/String;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 65
    iget-object v2, p0, Lcom/umeng/message/UmengMessageBootReceiver$1;->a:Lcom/umeng/message/UmengMessageBootReceiver;

    invoke-static {v2}, Lcom/umeng/message/UmengMessageBootReceiver;->a(Lcom/umeng/message/UmengMessageBootReceiver;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/message/proguard/l;->a(Landroid/content/Context;)Lcom/umeng/message/proguard/l;

    move-result-object v2

    iget-object v3, v4, Lcom/umeng/message/proguard/l$d;->a:Ljava/lang/String;

    iget-object v4, v4, Lcom/umeng/message/proguard/l$d;->b:Ljava/lang/String;

    const-string v5, "9"

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 65
    invoke-virtual/range {v2 .. v7}, Lcom/umeng/message/proguard/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
