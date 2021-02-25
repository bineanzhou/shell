.class Lcom/umeng/message/util/HttpRequest$9;
.super Lcom/umeng/message/util/HttpRequest$b;
.source "HttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/message/util/HttpRequest;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/umeng/message/util/HttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/message/util/HttpRequest$b",
        "<",
        "Lcom/umeng/message/util/HttpRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/io/InputStream;

.field final synthetic b:Ljava/io/OutputStream;

.field final synthetic c:Lcom/umeng/message/util/HttpRequest;


# direct methods
.method constructor <init>(Lcom/umeng/message/util/HttpRequest;Ljava/io/Closeable;ZLjava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 2493
    iput-object p1, p0, Lcom/umeng/message/util/HttpRequest$9;->c:Lcom/umeng/message/util/HttpRequest;

    iput-object p4, p0, Lcom/umeng/message/util/HttpRequest$9;->a:Ljava/io/InputStream;

    iput-object p5, p0, Lcom/umeng/message/util/HttpRequest$9;->b:Ljava/io/OutputStream;

    invoke-direct {p0, p2, p3}, Lcom/umeng/message/util/HttpRequest$b;-><init>(Ljava/io/Closeable;Z)V

    return-void
.end method


# virtual methods
.method public a()Lcom/umeng/message/util/HttpRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2497
    iget-object v0, p0, Lcom/umeng/message/util/HttpRequest$9;->c:Lcom/umeng/message/util/HttpRequest;

    invoke-static {v0}, Lcom/umeng/message/util/HttpRequest;->access$100(Lcom/umeng/message/util/HttpRequest;)I

    move-result v0

    new-array v0, v0, [B

    .line 2499
    :goto_0
    iget-object v1, p0, Lcom/umeng/message/util/HttpRequest$9;->a:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2500
    iget-object v2, p0, Lcom/umeng/message/util/HttpRequest$9;->b:Ljava/io/OutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 2501
    :cond_0
    iget-object v0, p0, Lcom/umeng/message/util/HttpRequest$9;->c:Lcom/umeng/message/util/HttpRequest;

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2493
    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest$9;->a()Lcom/umeng/message/util/HttpRequest;

    move-result-object v0

    return-object v0
.end method
