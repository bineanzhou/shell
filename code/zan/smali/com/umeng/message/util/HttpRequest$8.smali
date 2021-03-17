.class Lcom/umeng/message/util/HttpRequest$8;
.super Lcom/umeng/message/util/HttpRequest$b;
.source "HttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/message/util/HttpRequest;->receive(Ljava/io/Writer;)Lcom/umeng/message/util/HttpRequest;
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
.field final synthetic a:Ljava/io/BufferedReader;

.field final synthetic b:Ljava/io/Writer;

.field final synthetic c:Lcom/umeng/message/util/HttpRequest;


# direct methods
.method constructor <init>(Lcom/umeng/message/util/HttpRequest;Ljava/io/Closeable;ZLjava/io/BufferedReader;Ljava/io/Writer;)V
    .locals 0

    .prologue
    .line 1907
    iput-object p1, p0, Lcom/umeng/message/util/HttpRequest$8;->c:Lcom/umeng/message/util/HttpRequest;

    iput-object p4, p0, Lcom/umeng/message/util/HttpRequest$8;->a:Ljava/io/BufferedReader;

    iput-object p5, p0, Lcom/umeng/message/util/HttpRequest$8;->b:Ljava/io/Writer;

    invoke-direct {p0, p2, p3}, Lcom/umeng/message/util/HttpRequest$b;-><init>(Ljava/io/Closeable;Z)V

    return-void
.end method


# virtual methods
.method public a()Lcom/umeng/message/util/HttpRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1911
    iget-object v0, p0, Lcom/umeng/message/util/HttpRequest$8;->c:Lcom/umeng/message/util/HttpRequest;

    iget-object v1, p0, Lcom/umeng/message/util/HttpRequest$8;->a:Ljava/io/BufferedReader;

    iget-object v2, p0, Lcom/umeng/message/util/HttpRequest$8;->b:Ljava/io/Writer;

    invoke-virtual {v0, v1, v2}, Lcom/umeng/message/util/HttpRequest;->copy(Ljava/io/Reader;Ljava/io/Writer;)Lcom/umeng/message/util/HttpRequest;

    move-result-object v0

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
    .line 1907
    invoke-virtual {p0}, Lcom/umeng/message/util/HttpRequest$8;->a()Lcom/umeng/message/util/HttpRequest;

    move-result-object v0

    return-object v0
.end method
