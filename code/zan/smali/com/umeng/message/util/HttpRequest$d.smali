.class public abstract Lcom/umeng/message/util/HttpRequest$d;
.super Ljava/lang/Object;
.source "HttpRequest.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/message/util/HttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 648
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract b()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract c()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 667
    const/4 v2, 0x0

    .line 669
    :try_start_0
    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest$d;->b()Ljava/lang/Object;
    :try_end_0
    .catch Lcom/umeng/message/util/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 678
    :try_start_1
    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest$d;->c()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 669
    return-object v0

    .line 679
    :catch_0
    move-exception v0

    .line 681
    new-instance v1, Lcom/umeng/message/util/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/umeng/message/util/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 670
    :catch_1
    move-exception v0

    .line 672
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 677
    :catchall_0
    move-exception v0

    .line 678
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest$d;->c()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 682
    :cond_0
    throw v0

    .line 673
    :catch_2
    move-exception v0

    .line 675
    :try_start_4
    new-instance v2, Lcom/umeng/message/util/HttpRequest$HttpRequestException;

    invoke-direct {v2, v0}, Lcom/umeng/message/util/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 679
    :catch_3
    move-exception v2

    .line 680
    if-nez v1, :cond_0

    .line 681
    new-instance v0, Lcom/umeng/message/util/HttpRequest$HttpRequestException;

    invoke-direct {v0, v2}, Lcom/umeng/message/util/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 677
    :catchall_1
    move-exception v0

    move v1, v2

    goto :goto_0
.end method
