.class Lcom/umeng/message/util/HttpRequest$6;
.super Lcom/umeng/message/util/HttpRequest$b;
.source "HttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/message/util/HttpRequest;->receive(Ljava/io/File;)Lcom/umeng/message/util/HttpRequest;
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
.field final synthetic a:Ljava/io/OutputStream;

.field final synthetic b:Lcom/umeng/message/util/HttpRequest;


# direct methods
.method constructor <init>(Lcom/umeng/message/util/HttpRequest;Ljava/io/Closeable;ZLjava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 1835
    iput-object p1, p0, Lcom/umeng/message/util/HttpRequest$6;->b:Lcom/umeng/message/util/HttpRequest;

    iput-object p4, p0, Lcom/umeng/message/util/HttpRequest$6;->a:Ljava/io/OutputStream;

    invoke-direct {p0, p2, p3}, Lcom/umeng/message/util/HttpRequest$b;-><init>(Ljava/io/Closeable;Z)V

    return-void
.end method


# virtual methods
.method protected a()Lcom/umeng/message/util/HttpRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1839
    iget-object v0, p0, Lcom/umeng/message/util/HttpRequest$6;->b:Lcom/umeng/message/util/HttpRequest;

    iget-object v1, p0, Lcom/umeng/message/util/HttpRequest$6;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Lcom/umeng/message/util/HttpRequest;->receive(Ljava/io/OutputStream;)Lcom/umeng/message/util/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/message/util/HttpRequest$HttpRequestException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1835
    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest$6;->a()Lcom/umeng/message/util/HttpRequest;

    move-result-object v0

    return-object v0
.end method
